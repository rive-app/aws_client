```dart
import 'package:aws_mediastore_api/mediastore-2017-09-01.dart';

void main() {
  final credentials = AwsClientCredentials(accessKey: '', secretKey: '');
  final service = MediaStore(region: 'eu-west-1', credentials: credentials);
  // See documentation on how to use MediaStore
}
```
