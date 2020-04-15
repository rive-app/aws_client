import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:xml/xml.dart';

import '../credentials.dart';

import '_sign.dart';
import 'shared.dart';

class QueryProtocol {
  final Client _client;
  final String _service;
  final String _region;
  final String _endpointUrl;
  final AwsClientCredentials _credentials;

  QueryProtocol._(
    this._client,
    this._service,
    this._region,
    this._endpointUrl,
    this._credentials,
  );

  factory QueryProtocol({
    Client client,
    String service,
    String region,
    String endpointUrl,
    AwsClientCredentials credentials,
  }) {
    client ??= Client();
    if (service == null || region == null) {
      ArgumentError.checkNotNull(endpointUrl, 'endpointUrl');
    }
    endpointUrl ??= 'https://$service.$region.amazonaws.com';
    service ??= extractService(Uri.parse(endpointUrl));
    region ??= extractRegion(Uri.parse(endpointUrl));
    return QueryProtocol._(client, service, region, endpointUrl, credentials);
  }

  Future<XmlElement> send(
    Map<String, dynamic> data, {
    @required String method,
    @required String requestUri,
    @required Map<String, AwsExceptionFn> exceptionFnMap,
    String resultWrapper,
  }) async {
    final rq = _buildRequest(data, method, requestUri);
    final rs = await _client.send(rq);
    final body = await rs.stream.bytesToString();
    final root = parse(body);
    var elem = root.rootElement;
    if (elem.name.local == 'ErrorResponse') {
      final error = elem.findElements('Error').first;
      final type = error.findElements('Type').first.text;
      final code = error.findElements('Code').first.text;
      final message = error.findElements('Message').first.text;
      final fn = exceptionFnMap[code];
      final exception = fn != null
          ? fn(type, message)
          : GenericAwsException(type: type, code: code, message: message);
      throw exception;
    }
    if (resultWrapper != null) {
      elem = elem.findElements(resultWrapper).first;
    }
    return elem;
  }

  Request _buildRequest(
      Map<String, dynamic> data, String method, String requestUri) {
    final rq = Request(method, Uri.parse('$_endpointUrl$requestUri'));
    rq.body = _canonical(queryParamsAsFlatMap(data));
    print(rq.body);
    rq.headers['Content-Type'] = 'application/x-www-form-urlencoded';
    // TODO: handle if the API is using different signing
    signAws4HmacSha256(
      rq: rq,
      service: _service,
      region: _region,
      credentials: _credentials,
    );
    return rq;
  }
}

@visibleForTesting
Map<String, String> queryParamsAsFlatMap(dynamic data) {
  return Map.fromEntries(flattenQueryParams([], data));
}

Iterable<MapEntry<String, String>> flattenQueryParams(
    List<String> prefixes, dynamic data,
    {bool flatten}) sync* {
  flatten ??= prefixes.isEmpty;
  if (data == null) {
    return;
  }

  if (data is String) {
    final key = prefixes.join('.');
    yield MapEntry(key, data);
    return;
  }
  if (data is int) {
    final key = prefixes.join('.');
    yield MapEntry(key, data.toString());
    return;
  }

  if (data is List) {
    if (data.isEmpty) {
      final key = prefixes.join('.');
      yield MapEntry(key, '');
    } else {
      for (var i = 0; i < data.length; i++) {
        final newPrefixes = [...prefixes, '${i + 1}'];
        yield* flattenQueryParams(newPrefixes, data[i]);
      }
    }
    return;
  }

  // TODO: to remove it once we call .toJson at request building time.
  if (data is! Map) {
    data = data.toJson();
  }

  if (data is Map) {
    var i = 0;
    for (final e in data.entries) {
      final key = e.key;
      final value = e.value;
      if (flatten && key is String && value is Map) {
        yield* flattenQueryParams([...prefixes, '${i + 1}', 'Name'], key);
        yield* flattenQueryParams([...prefixes, '${i + 1}', 'Value'], value);
      } else if (flatten && key is String) {
        yield* flattenQueryParams([...prefixes, key], e.value);
      } else {
        yield* flattenQueryParams(
            [...prefixes, 'Entry', '${i + 1}', 'Key'], key);
        yield* flattenQueryParams(
            [...prefixes, 'Entry', '${i + 1}', 'Value'], e.value);
      }
      i++;
    }
    return;
  }

  throw ArgumentError(
      'Unknown type at "${prefixes.join('.')}": ${data.runtimeType} ($data)');
}

String _canonical(Map<String, String> data) {
  final list = data.entries
      .map((e) =>
          '${Uri.encodeQueryComponent(e.key)}=${Uri.encodeQueryComponent(e.value)}')
      .toList();
  list.sort();
  return list.join('&');
}
