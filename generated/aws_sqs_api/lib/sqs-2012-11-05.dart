// ignore_for_file: unused_element
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: unused_local_variable
// ignore_for_file: unused_shown_name

import 'dart:convert';
import 'dart:typed_data';

import 'package:shared_aws_api/shared.dart' as _s;
import 'package:shared_aws_api/shared.dart'
    show
        Uint8ListConverter,
        Uint8ListListConverter,
        rfc822fromJson,
        rfc822toJson,
        iso8601fromJson,
        iso8601toJson,
        unixFromJson,
        unixToJson;

export 'package:shared_aws_api/shared.dart' show AwsClientCredentials;

part 'sqs-2012-11-05.g.dart';

/// Welcome to the <i>Amazon Simple Queue Service API Reference</i>.
///
/// Amazon Simple Queue Service (Amazon SQS) is a reliable, highly-scalable
/// hosted queue for storing messages as they travel between applications or
/// microservices. Amazon SQS moves data between distributed application
/// components and helps you decouple these components.
///
/// You can use <a href="http://aws.amazon.com/tools/#sdk">AWS SDKs</a> to
/// access Amazon SQS using your favorite programming language. The SDKs perform
/// tasks such as the following automatically:
///
/// <ul>
/// <li>
/// Cryptographically sign your service requests
/// </li>
/// <li>
/// Retry requests
/// </li>
/// <li>
/// Handle error responses
/// </li>
/// </ul>
/// <b>Additional Information</b>
///
/// <ul>
/// <li>
/// <a href="http://aws.amazon.com/sqs/">Amazon SQS Product Page</a>
/// </li>
/// <li>
/// <i>Amazon Simple Queue Service Developer Guide</i>
///
/// <ul>
/// <li>
/// <a
/// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-making-api-requests.html">Making
/// API Requests</a>
/// </li>
/// <li>
/// <a
/// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html">Amazon
/// SQS Message Attributes</a>
/// </li>
/// <li>
/// <a
/// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Amazon
/// SQS Dead-Letter Queues</a>
/// </li>
/// </ul> </li>
/// <li>
/// <a
/// href="http://docs.aws.amazon.com/cli/latest/reference/sqs/index.html">Amazon
/// SQS in the <i>AWS CLI Command Reference</i> </a>
/// </li>
/// <li>
/// <i>Amazon Web Services General Reference</i>
///
/// <ul>
/// <li>
/// <a
/// href="https://docs.aws.amazon.com/general/latest/gr/rande.html#sqs_region">Regions
/// and Endpoints</a>
/// </li>
/// </ul> </li>
/// </ul>
class SQS {
  final _s.QueryProtocol _protocol;

  SQS({
    @_s.required String region,
    @_s.required _s.AwsClientCredentials credentials,
    _s.Client client,
  }) : _protocol = _s.QueryProtocol(
          client: client,
          service: 'sqs',
          region: region,
          credentials: credentials,
        );

  /// Adds a permission to a queue for a specific <a
  /// href="https://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P">principal</a>.
  /// This allows sharing access to the queue.
  ///
  /// When you create a queue, you have full control access rights for the
  /// queue. Only you, the owner of the queue, can grant or deny permissions to
  /// the queue. For more information about these permissions, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-writing-an-sqs-policy.html#write-messages-to-shared-queue">Allow
  /// Developers to Write Messages to a Shared Queue</a> in the <i>Amazon Simple
  /// Queue Service Developer Guide</i>.
  /// <note>
  /// <ul>
  /// <li>
  /// <code>AddPermission</code> generates a policy for you. You can use <code>
  /// <a>SetQueueAttributes</a> </code> to upload your policy. For more
  /// information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-creating-custom-policies.html">Using
  /// Custom Policies with the Amazon SQS Access Policy Language</a> in the
  /// <i>Amazon Simple Queue Service Developer Guide</i>.
  /// </li>
  /// <li>
  /// An Amazon SQS policy can have a maximum of 7 actions.
  /// </li>
  /// <li>
  /// To remove the ability to change queue permissions, you must deny
  /// permission to the <code>AddPermission</code>,
  /// <code>RemovePermission</code>, and <code>SetQueueAttributes</code> actions
  /// in your IAM policy.
  /// </li>
  /// </ul> </note>
  /// Some actions take lists of parameters. These lists are specified using the
  /// <code>param.n</code> notation. Values of <code>n</code> are integers
  /// starting from 1. For example, a parameter list with two elements looks
  /// like this:
  ///
  /// <code>&amp;Attribute.1=first</code>
  ///
  /// <code>&amp;Attribute.2=second</code>
  /// <note>
  /// Cross-account permissions don't apply to this action. For more
  /// information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant
  /// Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon
  /// Simple Queue Service Developer Guide</i>.
  /// </note>
  ///
  /// May throw [OverLimit].
  ///
  /// Parameter [awsAccountIds] :
  /// The AWS account number of the <a
  /// href="https://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P">principal</a>
  /// who is given permission. The principal must have an AWS account, but does
  /// not need to be signed up for Amazon SQS. For information about locating
  /// the AWS account identification, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-making-api-requests.html#sqs-api-request-authentication">Your
  /// AWS Identifiers</a> in the <i>Amazon Simple Queue Service Developer
  /// Guide</i>.
  ///
  /// Parameter [actions] :
  /// The action the client wants to allow for the specified principal. Valid
  /// values: the name of any action or <code>*</code>.
  ///
  /// For more information about these actions, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-overview-of-managing-access.html">Overview
  /// of Managing Access Permissions to Your Amazon Simple Queue Service
  /// Resource</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.
  ///
  /// Specifying <code>SendMessage</code>, <code>DeleteMessage</code>, or
  /// <code>ChangeMessageVisibility</code> for <code>ActionName.n</code> also
  /// grants permissions for the corresponding batch versions of those actions:
  /// <code>SendMessageBatch</code>, <code>DeleteMessageBatch</code>, and
  /// <code>ChangeMessageVisibilityBatch</code>.
  ///
  /// Parameter [label] :
  /// The unique identification of the permission you're setting (for example,
  /// <code>AliceSendMessage</code>). Maximum 80 characters. Allowed characters
  /// include alphanumeric characters, hyphens (<code>-</code>), and underscores
  /// (<code>_</code>).
  ///
  /// Parameter [queueUrl] :
  /// The URL of the Amazon SQS queue to which permissions are added.
  ///
  /// Queue URLs and names are case-sensitive.
  Future<void> addPermission({
    @_s.required List<String> awsAccountIds,
    @_s.required List<String> actions,
    @_s.required String label,
    @_s.required String queueUrl,
  }) async {
    ArgumentError.checkNotNull(awsAccountIds, 'awsAccountIds');
    ArgumentError.checkNotNull(actions, 'actions');
    ArgumentError.checkNotNull(label, 'label');
    ArgumentError.checkNotNull(queueUrl, 'queueUrl');
    final $request = <String, dynamic>{
      'Action': 'AddPermission',
      'Version': '2012-11-05',
    };
    $request['AWSAccountIds'] = awsAccountIds;
    $request['Actions'] = actions;
    $request['Label'] = label;
    $request['QueueUrl'] = queueUrl;
    await _protocol.send(
      $request,
      method: 'POST',
      requestUri: '/',
      exceptionFnMap: _exceptionFns,
    );
  }

  /// Changes the visibility timeout of a specified message in a queue to a new
  /// value. The default visibility timeout for a message is 30 seconds. The
  /// minimum is 0 seconds. The maximum is 12 hours. For more information, see
  /// <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility
  /// Timeout</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.
  ///
  /// For example, you have a message with a visibility timeout of 5 minutes.
  /// After 3 minutes, you call <code>ChangeMessageVisibility</code> with a
  /// timeout of 10 minutes. You can continue to call
  /// <code>ChangeMessageVisibility</code> to extend the visibility timeout to
  /// the maximum allowed time. If you try to extend the visibility timeout
  /// beyond the maximum, your request is rejected.
  ///
  /// An Amazon SQS message has three basic states:
  /// <ol>
  /// <li>
  /// Sent to a queue by a producer.
  /// </li>
  /// <li>
  /// Received from the queue by a consumer.
  /// </li>
  /// <li>
  /// Deleted from the queue.
  /// </li> </ol>
  /// A message is considered to be <i>stored</i> after it is sent to a queue by
  /// a producer, but not yet received from the queue by a consumer (that is,
  /// between states 1 and 2). There is no limit to the number of stored
  /// messages. A message is considered to be <i>in flight</i> after it is
  /// received from a queue by a consumer, but not yet deleted from the queue
  /// (that is, between states 2 and 3). There is a limit to the number of
  /// inflight messages.
  ///
  /// Limits that apply to inflight messages are unrelated to the
  /// <i>unlimited</i> number of stored messages.
  ///
  /// For most standard queues (depending on queue traffic and message backlog),
  /// there can be a maximum of approximately 120,000 inflight messages
  /// (received from a queue by a consumer, but not yet deleted from the queue).
  /// If you reach this limit, Amazon SQS returns the <code>OverLimit</code>
  /// error message. To avoid reaching the limit, you should delete messages
  /// from the queue after they're processed. You can also increase the number
  /// of queues you use to process your messages. To request a limit increase,
  /// <a
  /// href="https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&amp;limitType=service-code-sqs">file
  /// a support request</a>.
  ///
  /// For FIFO queues, there can be a maximum of 20,000 inflight messages
  /// (received from a queue by a consumer, but not yet deleted from the queue).
  /// If you reach this limit, Amazon SQS returns no error messages.
  /// <important>
  /// If you attempt to set the <code>VisibilityTimeout</code> to a value
  /// greater than the maximum time left, Amazon SQS returns an error. Amazon
  /// SQS doesn't automatically recalculate and increase the timeout to the
  /// maximum remaining time.
  ///
  /// Unlike with a queue, when you change the visibility timeout for a specific
  /// message the timeout value is applied immediately but isn't saved in memory
  /// for that message. If you don't delete a message after it is received, the
  /// visibility timeout for the message reverts to the original timeout value
  /// (not to the value you set using the <code>ChangeMessageVisibility</code>
  /// action) the next time the message is received.
  /// </important>
  ///
  /// May throw [MessageNotInflight].
  /// May throw [ReceiptHandleIsInvalid].
  ///
  /// Parameter [queueUrl] :
  /// The URL of the Amazon SQS queue whose message's visibility is changed.
  ///
  /// Queue URLs and names are case-sensitive.
  ///
  /// Parameter [receiptHandle] :
  /// The receipt handle associated with the message whose visibility timeout is
  /// changed. This parameter is returned by the <code> <a>ReceiveMessage</a>
  /// </code> action.
  ///
  /// Parameter [visibilityTimeout] :
  /// The new value for the message's visibility timeout (in seconds). Values
  /// values: <code>0</code> to <code>43200</code>. Maximum: 12 hours.
  Future<void> changeMessageVisibility({
    @_s.required String queueUrl,
    @_s.required String receiptHandle,
    @_s.required int visibilityTimeout,
  }) async {
    ArgumentError.checkNotNull(queueUrl, 'queueUrl');
    ArgumentError.checkNotNull(receiptHandle, 'receiptHandle');
    ArgumentError.checkNotNull(visibilityTimeout, 'visibilityTimeout');
    final $request = <String, dynamic>{
      'Action': 'ChangeMessageVisibility',
      'Version': '2012-11-05',
    };
    $request['QueueUrl'] = queueUrl;
    $request['ReceiptHandle'] = receiptHandle;
    $request['VisibilityTimeout'] = visibilityTimeout;
    await _protocol.send(
      $request,
      method: 'POST',
      requestUri: '/',
      exceptionFnMap: _exceptionFns,
    );
  }

  /// Changes the visibility timeout of multiple messages. This is a batch
  /// version of <code> <a>ChangeMessageVisibility</a>.</code> The result of the
  /// action on each message is reported individually in the response. You can
  /// send up to 10 <code> <a>ChangeMessageVisibility</a> </code> requests with
  /// each <code>ChangeMessageVisibilityBatch</code> action.
  /// <important>
  /// Because the batch request can result in a combination of successful and
  /// unsuccessful actions, you should check for batch errors even when the call
  /// returns an HTTP status code of <code>200</code>.
  /// </important>
  /// Some actions take lists of parameters. These lists are specified using the
  /// <code>param.n</code> notation. Values of <code>n</code> are integers
  /// starting from 1. For example, a parameter list with two elements looks
  /// like this:
  ///
  /// <code>&amp;Attribute.1=first</code>
  ///
  /// <code>&amp;Attribute.2=second</code>
  ///
  /// May throw [TooManyEntriesInBatchRequest].
  /// May throw [EmptyBatchRequest].
  /// May throw [BatchEntryIdsNotDistinct].
  /// May throw [InvalidBatchEntryId].
  ///
  /// Parameter [entries] :
  /// A list of receipt handles of the messages for which the visibility timeout
  /// must be changed.
  ///
  /// Parameter [queueUrl] :
  /// The URL of the Amazon SQS queue whose messages' visibility is changed.
  ///
  /// Queue URLs and names are case-sensitive.
  Future<ChangeMessageVisibilityBatchResult> changeMessageVisibilityBatch({
    @_s.required List<ChangeMessageVisibilityBatchRequestEntry> entries,
    @_s.required String queueUrl,
  }) async {
    ArgumentError.checkNotNull(entries, 'entries');
    ArgumentError.checkNotNull(queueUrl, 'queueUrl');
    final $request = <String, dynamic>{
      'Action': 'ChangeMessageVisibilityBatch',
      'Version': '2012-11-05',
    };
    $request['Entries'] = entries.map((v) => v.toJson()).toList();
    $request['QueueUrl'] = queueUrl;
    final $result = await _protocol.send(
      $request,
      method: 'POST',
      requestUri: '/',
      exceptionFnMap: _exceptionFns,
      resultWrapper: 'ChangeMessageVisibilityBatchResult',
    );
    return ChangeMessageVisibilityBatchResult.fromXml($result);
  }

  /// Creates a new standard or FIFO queue. You can pass one or more attributes
  /// in the request. Keep the following caveats in mind:
  ///
  /// <ul>
  /// <li>
  /// If you don't specify the <code>FifoQueue</code> attribute, Amazon SQS
  /// creates a standard queue.
  /// <note>
  /// You can't change the queue type after you create it and you can't convert
  /// an existing standard queue into a FIFO queue. You must either create a new
  /// FIFO queue for your application or delete your existing standard queue and
  /// recreate it as a FIFO queue. For more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-moving">Moving
  /// From a Standard Queue to a FIFO Queue</a> in the <i>Amazon Simple Queue
  /// Service Developer Guide</i>.
  /// </note> </li>
  /// <li>
  /// If you don't provide a value for an attribute, the queue is created with
  /// the default value for the attribute.
  /// </li>
  /// <li>
  /// If you delete a queue, you must wait at least 60 seconds before creating a
  /// queue with the same name.
  /// </li>
  /// </ul>
  /// To successfully create a new queue, you must provide a queue name that
  /// adheres to the <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html">limits
  /// related to queues</a> and is unique within the scope of your queues.
  ///
  /// To get the queue URL, use the <code> <a>GetQueueUrl</a> </code> action.
  /// <code> <a>GetQueueUrl</a> </code> requires only the <code>QueueName</code>
  /// parameter. be aware of existing queue names:
  ///
  /// <ul>
  /// <li>
  /// If you provide the name of an existing queue along with the exact names
  /// and values of all the queue's attributes, <code>CreateQueue</code> returns
  /// the queue URL for the existing queue.
  /// </li>
  /// <li>
  /// If the queue name, attribute names, or attribute values don't match an
  /// existing queue, <code>CreateQueue</code> returns an error.
  /// </li>
  /// </ul>
  /// Some actions take lists of parameters. These lists are specified using the
  /// <code>param.n</code> notation. Values of <code>n</code> are integers
  /// starting from 1. For example, a parameter list with two elements looks
  /// like this:
  ///
  /// <code>&amp;Attribute.1=first</code>
  ///
  /// <code>&amp;Attribute.2=second</code>
  /// <note>
  /// Cross-account permissions don't apply to this action. For more
  /// information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant
  /// Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon
  /// Simple Queue Service Developer Guide</i>.
  /// </note>
  ///
  /// May throw [QueueDeletedRecently].
  /// May throw [QueueNameExists].
  ///
  /// Parameter [queueName] :
  /// The name of the new queue. The following limits apply to this name:
  ///
  /// <ul>
  /// <li>
  /// A queue name can have up to 80 characters.
  /// </li>
  /// <li>
  /// Valid values: alphanumeric characters, hyphens (<code>-</code>), and
  /// underscores (<code>_</code>).
  /// </li>
  /// <li>
  /// A FIFO queue name must end with the <code>.fifo</code> suffix.
  /// </li>
  /// </ul>
  /// Queue URLs and names are case-sensitive.
  ///
  /// Parameter [attributes] :
  /// A map of attributes with their corresponding values.
  ///
  /// The following lists the names, descriptions, and values of the special
  /// request parameters that the <code>CreateQueue</code> action uses:
  ///
  /// <ul>
  /// <li>
  /// <code>DelaySeconds</code> - The length of time, in seconds, for which the
  /// delivery of all messages in the queue is delayed. Valid values: An integer
  /// from 0 to 900 seconds (15 minutes). Default: 0.
  /// </li>
  /// <li>
  /// <code>MaximumMessageSize</code> - The limit of how many bytes a message
  /// can contain before Amazon SQS rejects it. Valid values: An integer from
  /// 1,024 bytes (1 KiB) to 262,144 bytes (256 KiB). Default: 262,144 (256
  /// KiB).
  /// </li>
  /// <li>
  /// <code>MessageRetentionPeriod</code> - The length of time, in seconds, for
  /// which Amazon SQS retains a message. Valid values: An integer from 60
  /// seconds (1 minute) to 1,209,600 seconds (14 days). Default: 345,600 (4
  /// days).
  /// </li>
  /// <li>
  /// <code>Policy</code> - The queue's policy. A valid AWS policy. For more
  /// information about policy structure, see <a
  /// href="https://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html">Overview
  /// of AWS IAM Policies</a> in the <i>Amazon IAM User Guide</i>.
  /// </li>
  /// <li>
  /// <code>ReceiveMessageWaitTimeSeconds</code> - The length of time, in
  /// seconds, for which a <code> <a>ReceiveMessage</a> </code> action waits for
  /// a message to arrive. Valid values: An integer from 0 to 20 (seconds).
  /// Default: 0.
  /// </li>
  /// <li>
  /// <code>RedrivePolicy</code> - The string that includes the parameters for
  /// the dead-letter queue functionality of the source queue. For more
  /// information about the redrive policy and dead-letter queues, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Using
  /// Amazon SQS Dead-Letter Queues</a> in the <i>Amazon Simple Queue Service
  /// Developer Guide</i>.
  ///
  /// <ul>
  /// <li>
  /// <code>deadLetterTargetArn</code> - The Amazon Resource Name (ARN) of the
  /// dead-letter queue to which Amazon SQS moves messages after the value of
  /// <code>maxReceiveCount</code> is exceeded.
  /// </li>
  /// <li>
  /// <code>maxReceiveCount</code> - The number of times a message is delivered
  /// to the source queue before being moved to the dead-letter queue. When the
  /// <code>ReceiveCount</code> for a message exceeds the
  /// <code>maxReceiveCount</code> for a queue, Amazon SQS moves the message to
  /// the dead-letter-queue.
  /// </li>
  /// </ul> <note>
  /// The dead-letter queue of a FIFO queue must also be a FIFO queue.
  /// Similarly, the dead-letter queue of a standard queue must also be a
  /// standard queue.
  /// </note> </li>
  /// <li>
  /// <code>VisibilityTimeout</code> - The visibility timeout for the queue, in
  /// seconds. Valid values: An integer from 0 to 43,200 (12 hours). Default:
  /// 30. For more information about the visibility timeout, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility
  /// Timeout</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.
  /// </li>
  /// </ul>
  /// The following attributes apply only to <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html">server-side-encryption</a>:
  ///
  /// <ul>
  /// <li>
  /// <code>KmsMasterKeyId</code> - The ID of an AWS-managed customer master key
  /// (CMK) for Amazon SQS or a custom CMK. For more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms">Key
  /// Terms</a>. While the alias of the AWS-managed CMK for Amazon SQS is always
  /// <code>alias/aws/sqs</code>, the alias of a custom CMK can, for example, be
  /// <code>alias/<i>MyAlias</i> </code>. For more examples, see <a
  /// href="https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters">KeyId</a>
  /// in the <i>AWS Key Management Service API Reference</i>.
  /// </li>
  /// <li>
  /// <code>KmsDataKeyReusePeriodSeconds</code> - The length of time, in
  /// seconds, for which Amazon SQS can reuse a <a
  /// href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys">data
  /// key</a> to encrypt or decrypt messages before calling AWS KMS again. An
  /// integer representing seconds, between 60 seconds (1 minute) and 86,400
  /// seconds (24 hours). Default: 300 (5 minutes). A shorter time period
  /// provides better security but results in more calls to KMS which might
  /// incur charges after Free Tier. For more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work">How
  /// Does the Data Key Reuse Period Work?</a>.
  /// </li>
  /// </ul>
  /// The following attributes apply only to <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO
  /// (first-in-first-out) queues</a>:
  ///
  /// <ul>
  /// <li>
  /// <code>FifoQueue</code> - Designates a queue as FIFO. Valid values:
  /// <code>true</code>, <code>false</code>. If you don't specify the
  /// <code>FifoQueue</code> attribute, Amazon SQS creates a standard queue. You
  /// can provide this attribute only during queue creation. You can't change it
  /// for an existing queue. When you set this attribute, you must also provide
  /// the <code>MessageGroupId</code> for your messages explicitly.
  ///
  /// For more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-understanding-logic">FIFO
  /// Queue Logic</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.
  /// </li>
  /// <li>
  /// <code>ContentBasedDeduplication</code> - Enables content-based
  /// deduplication. Valid values: <code>true</code>, <code>false</code>. For
  /// more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing">Exactly-Once
  /// Processing</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.
  ///
  /// <ul>
  /// <li>
  /// Every message must have a unique <code>MessageDeduplicationId</code>,
  ///
  /// <ul>
  /// <li>
  /// You may provide a <code>MessageDeduplicationId</code> explicitly.
  /// </li>
  /// <li>
  /// If you aren't able to provide a <code>MessageDeduplicationId</code> and
  /// you enable <code>ContentBasedDeduplication</code> for your queue, Amazon
  /// SQS uses a SHA-256 hash to generate the
  /// <code>MessageDeduplicationId</code> using the body of the message (but not
  /// the attributes of the message).
  /// </li>
  /// <li>
  /// If you don't provide a <code>MessageDeduplicationId</code> and the queue
  /// doesn't have <code>ContentBasedDeduplication</code> set, the action fails
  /// with an error.
  /// </li>
  /// <li>
  /// If the queue has <code>ContentBasedDeduplication</code> set, your
  /// <code>MessageDeduplicationId</code> overrides the generated one.
  /// </li>
  /// </ul> </li>
  /// <li>
  /// When <code>ContentBasedDeduplication</code> is in effect, messages with
  /// identical content sent within the deduplication interval are treated as
  /// duplicates and only one copy of the message is delivered.
  /// </li>
  /// <li>
  /// If you send one message with <code>ContentBasedDeduplication</code>
  /// enabled and then another message with a
  /// <code>MessageDeduplicationId</code> that is the same as the one generated
  /// for the first <code>MessageDeduplicationId</code>, the two messages are
  /// treated as duplicates and only one copy of the message is delivered.
  /// </li>
  /// </ul> </li>
  /// </ul>
  ///
  /// Parameter [tags] :
  /// Add cost allocation tags to the specified Amazon SQS queue. For an
  /// overview, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html">Tagging
  /// Your Amazon SQS Queues</a> in the <i>Amazon Simple Queue Service Developer
  /// Guide</i>.
  ///
  /// When you use queue tags, keep the following guidelines in mind:
  ///
  /// <ul>
  /// <li>
  /// Adding more than 50 tags to a queue isn't recommended.
  /// </li>
  /// <li>
  /// Tags don't have any semantic meaning. Amazon SQS interprets tags as
  /// character strings.
  /// </li>
  /// <li>
  /// Tags are case-sensitive.
  /// </li>
  /// <li>
  /// A new tag with a key identical to that of an existing tag overwrites the
  /// existing tag.
  /// </li>
  /// </ul>
  /// For a full list of tag restrictions, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-limits.html#limits-queues">Limits
  /// Related to Queues</a> in the <i>Amazon Simple Queue Service Developer
  /// Guide</i>.
  /// <note>
  /// To be able to tag a queue on creation, you must have the
  /// <code>sqs:CreateQueue</code> and <code>sqs:TagQueue</code> permissions.
  ///
  /// Cross-account permissions don't apply to this action. For more
  /// information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant
  /// Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon
  /// Simple Queue Service Developer Guide</i>.
  /// </note>
  Future<CreateQueueResult> createQueue({
    @_s.required String queueName,
    Map<String, String> attributes,
    Map<String, String> tags,
  }) async {
    ArgumentError.checkNotNull(queueName, 'queueName');
    final $request = <String, dynamic>{
      'Action': 'CreateQueue',
      'Version': '2012-11-05',
    };
    $request['QueueName'] = queueName;
    attributes?.also((arg) => $request['Attribute'] = arg);
    tags?.also((arg) => $request['Tag'] = arg);
    final $result = await _protocol.send(
      $request,
      method: 'POST',
      requestUri: '/',
      exceptionFnMap: _exceptionFns,
      resultWrapper: 'CreateQueueResult',
    );
    return CreateQueueResult.fromXml($result);
  }

  /// Deletes the specified message from the specified queue. To select the
  /// message to delete, use the <code>ReceiptHandle</code> of the message
  /// (<i>not</i> the <code>MessageId</code> which you receive when you send the
  /// message). Amazon SQS can delete a message from a queue even if a
  /// visibility timeout setting causes the message to be locked by another
  /// consumer. Amazon SQS automatically deletes messages left in a queue longer
  /// than the retention period configured for the queue.
  /// <note>
  /// The <code>ReceiptHandle</code> is associated with a <i>specific
  /// instance</i> of receiving a message. If you receive a message more than
  /// once, the <code>ReceiptHandle</code> is different each time you receive a
  /// message. When you use the <code>DeleteMessage</code> action, you must
  /// provide the most recently received <code>ReceiptHandle</code> for the
  /// message (otherwise, the request succeeds, but the message might not be
  /// deleted).
  ///
  /// For standard queues, it is possible to receive a message even after you
  /// delete it. This might happen on rare occasions if one of the servers which
  /// stores a copy of the message is unavailable when you send the request to
  /// delete the message. The copy remains on the server and might be returned
  /// to you during a subsequent receive request. You should ensure that your
  /// application is idempotent, so that receiving a message more than once does
  /// not cause issues.
  /// </note>
  ///
  /// May throw [InvalidIdFormat].
  /// May throw [ReceiptHandleIsInvalid].
  ///
  /// Parameter [queueUrl] :
  /// The URL of the Amazon SQS queue from which messages are deleted.
  ///
  /// Queue URLs and names are case-sensitive.
  ///
  /// Parameter [receiptHandle] :
  /// The receipt handle associated with the message to delete.
  Future<void> deleteMessage({
    @_s.required String queueUrl,
    @_s.required String receiptHandle,
  }) async {
    ArgumentError.checkNotNull(queueUrl, 'queueUrl');
    ArgumentError.checkNotNull(receiptHandle, 'receiptHandle');
    final $request = <String, dynamic>{
      'Action': 'DeleteMessage',
      'Version': '2012-11-05',
    };
    $request['QueueUrl'] = queueUrl;
    $request['ReceiptHandle'] = receiptHandle;
    await _protocol.send(
      $request,
      method: 'POST',
      requestUri: '/',
      exceptionFnMap: _exceptionFns,
    );
  }

  /// Deletes up to ten messages from the specified queue. This is a batch
  /// version of <code> <a>DeleteMessage</a>.</code> The result of the action on
  /// each message is reported individually in the response.
  /// <important>
  /// Because the batch request can result in a combination of successful and
  /// unsuccessful actions, you should check for batch errors even when the call
  /// returns an HTTP status code of <code>200</code>.
  /// </important>
  /// Some actions take lists of parameters. These lists are specified using the
  /// <code>param.n</code> notation. Values of <code>n</code> are integers
  /// starting from 1. For example, a parameter list with two elements looks
  /// like this:
  ///
  /// <code>&amp;Attribute.1=first</code>
  ///
  /// <code>&amp;Attribute.2=second</code>
  ///
  /// May throw [TooManyEntriesInBatchRequest].
  /// May throw [EmptyBatchRequest].
  /// May throw [BatchEntryIdsNotDistinct].
  /// May throw [InvalidBatchEntryId].
  ///
  /// Parameter [entries] :
  /// A list of receipt handles for the messages to be deleted.
  ///
  /// Parameter [queueUrl] :
  /// The URL of the Amazon SQS queue from which messages are deleted.
  ///
  /// Queue URLs and names are case-sensitive.
  Future<DeleteMessageBatchResult> deleteMessageBatch({
    @_s.required List<DeleteMessageBatchRequestEntry> entries,
    @_s.required String queueUrl,
  }) async {
    ArgumentError.checkNotNull(entries, 'entries');
    ArgumentError.checkNotNull(queueUrl, 'queueUrl');
    final $request = <String, dynamic>{
      'Action': 'DeleteMessageBatch',
      'Version': '2012-11-05',
    };
    $request['Entries'] = entries.map((v) => v.toJson()).toList();
    $request['QueueUrl'] = queueUrl;
    final $result = await _protocol.send(
      $request,
      method: 'POST',
      requestUri: '/',
      exceptionFnMap: _exceptionFns,
      resultWrapper: 'DeleteMessageBatchResult',
    );
    return DeleteMessageBatchResult.fromXml($result);
  }

  /// Deletes the queue specified by the <code>QueueUrl</code>, regardless of
  /// the queue's contents. If the specified queue doesn't exist, Amazon SQS
  /// returns a successful response.
  /// <important>
  /// Be careful with the <code>DeleteQueue</code> action: When you delete a
  /// queue, any messages in the queue are no longer available.
  /// </important>
  /// When you delete a queue, the deletion process takes up to 60 seconds.
  /// Requests you send involving that queue during the 60 seconds might
  /// succeed. For example, a <code> <a>SendMessage</a> </code> request might
  /// succeed, but after 60 seconds the queue and the message you sent no longer
  /// exist.
  ///
  /// When you delete a queue, you must wait at least 60 seconds before creating
  /// a queue with the same name.
  /// <note>
  /// Cross-account permissions don't apply to this action. For more
  /// information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant
  /// Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon
  /// Simple Queue Service Developer Guide</i>.
  /// </note>
  ///
  /// Parameter [queueUrl] :
  /// The URL of the Amazon SQS queue to delete.
  ///
  /// Queue URLs and names are case-sensitive.
  Future<void> deleteQueue({
    @_s.required String queueUrl,
  }) async {
    ArgumentError.checkNotNull(queueUrl, 'queueUrl');
    final $request = <String, dynamic>{
      'Action': 'DeleteQueue',
      'Version': '2012-11-05',
    };
    $request['QueueUrl'] = queueUrl;
    await _protocol.send(
      $request,
      method: 'POST',
      requestUri: '/',
      exceptionFnMap: _exceptionFns,
    );
  }

  /// Gets attributes for the specified queue.
  /// <note>
  /// To determine whether a queue is <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO</a>,
  /// you can check whether <code>QueueName</code> ends with the
  /// <code>.fifo</code> suffix.
  /// </note>
  /// Some actions take lists of parameters. These lists are specified using the
  /// <code>param.n</code> notation. Values of <code>n</code> are integers
  /// starting from 1. For example, a parameter list with two elements looks
  /// like this:
  ///
  /// <code>&amp;Attribute.1=first</code>
  ///
  /// <code>&amp;Attribute.2=second</code>
  ///
  /// May throw [InvalidAttributeName].
  ///
  /// Parameter [queueUrl] :
  /// The URL of the Amazon SQS queue whose attribute information is retrieved.
  ///
  /// Queue URLs and names are case-sensitive.
  ///
  /// Parameter [attributeNames] :
  /// A list of attributes for which to retrieve information.
  /// <note>
  /// In the future, new attributes might be added. If you write code that calls
  /// this action, we recommend that you structure your code so that it can
  /// handle new attributes gracefully.
  /// </note>
  /// The following attributes are supported:
  ///
  /// <ul>
  /// <li>
  /// <code>All</code> - Returns all values.
  /// </li>
  /// <li>
  /// <code>ApproximateNumberOfMessages</code> - Returns the approximate number
  /// of messages available for retrieval from the queue.
  /// </li>
  /// <li>
  /// <code>ApproximateNumberOfMessagesDelayed</code> - Returns the approximate
  /// number of messages in the queue that are delayed and not available for
  /// reading immediately. This can happen when the queue is configured as a
  /// delay queue or when a message has been sent with a delay parameter.
  /// </li>
  /// <li>
  /// <code>ApproximateNumberOfMessagesNotVisible</code> - Returns the
  /// approximate number of messages that are in flight. Messages are considered
  /// to be <i>in flight</i> if they have been sent to a client but have not yet
  /// been deleted or have not yet reached the end of their visibility window.
  /// </li>
  /// <li>
  /// <code>CreatedTimestamp</code> - Returns the time when the queue was
  /// created in seconds (<a href="http://en.wikipedia.org/wiki/Unix_time">epoch
  /// time</a>).
  /// </li>
  /// <li>
  /// <code>DelaySeconds</code> - Returns the default delay on the queue in
  /// seconds.
  /// </li>
  /// <li>
  /// <code>LastModifiedTimestamp</code> - Returns the time when the queue was
  /// last changed in seconds (<a
  /// href="http://en.wikipedia.org/wiki/Unix_time">epoch time</a>).
  /// </li>
  /// <li>
  /// <code>MaximumMessageSize</code> - Returns the limit of how many bytes a
  /// message can contain before Amazon SQS rejects it.
  /// </li>
  /// <li>
  /// <code>MessageRetentionPeriod</code> - Returns the length of time, in
  /// seconds, for which Amazon SQS retains a message.
  /// </li>
  /// <li>
  /// <code>Policy</code> - Returns the policy of the queue.
  /// </li>
  /// <li>
  /// <code>QueueArn</code> - Returns the Amazon resource name (ARN) of the
  /// queue.
  /// </li>
  /// <li>
  /// <code>ReceiveMessageWaitTimeSeconds</code> - Returns the length of time,
  /// in seconds, for which the <code>ReceiveMessage</code> action waits for a
  /// message to arrive.
  /// </li>
  /// <li>
  /// <code>RedrivePolicy</code> - Returns the string that includes the
  /// parameters for dead-letter queue functionality of the source queue. For
  /// more information about the redrive policy and dead-letter queues, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Using
  /// Amazon SQS Dead-Letter Queues</a> in the <i>Amazon Simple Queue Service
  /// Developer Guide</i>.
  ///
  /// <ul>
  /// <li>
  /// <code>deadLetterTargetArn</code> - The Amazon Resource Name (ARN) of the
  /// dead-letter queue to which Amazon SQS moves messages after the value of
  /// <code>maxReceiveCount</code> is exceeded.
  /// </li>
  /// <li>
  /// <code>maxReceiveCount</code> - The number of times a message is delivered
  /// to the source queue before being moved to the dead-letter queue. When the
  /// <code>ReceiveCount</code> for a message exceeds the
  /// <code>maxReceiveCount</code> for a queue, Amazon SQS moves the message to
  /// the dead-letter-queue.
  /// </li>
  /// </ul> </li>
  /// <li>
  /// <code>VisibilityTimeout</code> - Returns the visibility timeout for the
  /// queue. For more information about the visibility timeout, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility
  /// Timeout</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.
  /// </li>
  /// </ul>
  /// The following attributes apply only to <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html">server-side-encryption</a>:
  ///
  /// <ul>
  /// <li>
  /// <code>KmsMasterKeyId</code> - Returns the ID of an AWS-managed customer
  /// master key (CMK) for Amazon SQS or a custom CMK. For more information, see
  /// <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms">Key
  /// Terms</a>.
  /// </li>
  /// <li>
  /// <code>KmsDataKeyReusePeriodSeconds</code> - Returns the length of time, in
  /// seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt
  /// messages before calling AWS KMS again. For more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work">How
  /// Does the Data Key Reuse Period Work?</a>.
  /// </li>
  /// </ul>
  /// The following attributes apply only to <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO
  /// (first-in-first-out) queues</a>:
  ///
  /// <ul>
  /// <li>
  /// <code>FifoQueue</code> - Returns whether the queue is FIFO. For more
  /// information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-understanding-logic">FIFO
  /// Queue Logic</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.
  /// <note>
  /// To determine whether a queue is <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO</a>,
  /// you can check whether <code>QueueName</code> ends with the
  /// <code>.fifo</code> suffix.
  /// </note> </li>
  /// <li>
  /// <code>ContentBasedDeduplication</code> - Returns whether content-based
  /// deduplication is enabled for the queue. For more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing">Exactly-Once
  /// Processing</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.
  /// </li>
  /// </ul>
  Future<GetQueueAttributesResult> getQueueAttributes({
    @_s.required String queueUrl,
    List<String> attributeNames,
  }) async {
    ArgumentError.checkNotNull(queueUrl, 'queueUrl');
    final $request = <String, dynamic>{
      'Action': 'GetQueueAttributes',
      'Version': '2012-11-05',
    };
    $request['QueueUrl'] = queueUrl;
    attributeNames?.also((arg) => $request['AttributeNames'] = arg);
    final $result = await _protocol.send(
      $request,
      method: 'POST',
      requestUri: '/',
      exceptionFnMap: _exceptionFns,
      resultWrapper: 'GetQueueAttributesResult',
    );
    return GetQueueAttributesResult.fromXml($result);
  }

  /// Returns the URL of an existing Amazon SQS queue.
  ///
  /// To access a queue that belongs to another AWS account, use the
  /// <code>QueueOwnerAWSAccountId</code> parameter to specify the account ID of
  /// the queue's owner. The queue's owner must grant you permission to access
  /// the queue. For more information about shared queue access, see <code>
  /// <a>AddPermission</a> </code> or see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-writing-an-sqs-policy.html#write-messages-to-shared-queue">Allow
  /// Developers to Write Messages to a Shared Queue</a> in the <i>Amazon Simple
  /// Queue Service Developer Guide</i>.
  ///
  /// May throw [QueueDoesNotExist].
  ///
  /// Parameter [queueName] :
  /// The name of the queue whose URL must be fetched. Maximum 80 characters.
  /// Valid values: alphanumeric characters, hyphens (<code>-</code>), and
  /// underscores (<code>_</code>).
  ///
  /// Queue URLs and names are case-sensitive.
  ///
  /// Parameter [queueOwnerAWSAccountId] :
  /// The AWS account ID of the account that created the queue.
  Future<GetQueueUrlResult> getQueueUrl({
    @_s.required String queueName,
    String queueOwnerAWSAccountId,
  }) async {
    ArgumentError.checkNotNull(queueName, 'queueName');
    final $request = <String, dynamic>{
      'Action': 'GetQueueUrl',
      'Version': '2012-11-05',
    };
    $request['QueueName'] = queueName;
    queueOwnerAWSAccountId
        ?.also((arg) => $request['QueueOwnerAWSAccountId'] = arg);
    final $result = await _protocol.send(
      $request,
      method: 'POST',
      requestUri: '/',
      exceptionFnMap: _exceptionFns,
      resultWrapper: 'GetQueueUrlResult',
    );
    return GetQueueUrlResult.fromXml($result);
  }

  /// Returns a list of your queues that have the <code>RedrivePolicy</code>
  /// queue attribute configured with a dead-letter queue.
  ///
  /// For more information about using dead-letter queues, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Using
  /// Amazon SQS Dead-Letter Queues</a> in the <i>Amazon Simple Queue Service
  /// Developer Guide</i>.
  ///
  /// May throw [QueueDoesNotExist].
  ///
  /// Parameter [queueUrl] :
  /// The URL of a dead-letter queue.
  ///
  /// Queue URLs and names are case-sensitive.
  Future<ListDeadLetterSourceQueuesResult> listDeadLetterSourceQueues({
    @_s.required String queueUrl,
  }) async {
    ArgumentError.checkNotNull(queueUrl, 'queueUrl');
    final $request = <String, dynamic>{
      'Action': 'ListDeadLetterSourceQueues',
      'Version': '2012-11-05',
    };
    $request['QueueUrl'] = queueUrl;
    final $result = await _protocol.send(
      $request,
      method: 'POST',
      requestUri: '/',
      exceptionFnMap: _exceptionFns,
      resultWrapper: 'ListDeadLetterSourceQueuesResult',
    );
    return ListDeadLetterSourceQueuesResult.fromXml($result);
  }

  /// List all cost allocation tags added to the specified Amazon SQS queue. For
  /// an overview, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html">Tagging
  /// Your Amazon SQS Queues</a> in the <i>Amazon Simple Queue Service Developer
  /// Guide</i>.
  /// <note>
  /// Cross-account permissions don't apply to this action. For more
  /// information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant
  /// Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon
  /// Simple Queue Service Developer Guide</i>.
  /// </note>
  ///
  /// Parameter [queueUrl] :
  /// The URL of the queue.
  Future<ListQueueTagsResult> listQueueTags({
    @_s.required String queueUrl,
  }) async {
    ArgumentError.checkNotNull(queueUrl, 'queueUrl');
    final $request = <String, dynamic>{
      'Action': 'ListQueueTags',
      'Version': '2012-11-05',
    };
    $request['QueueUrl'] = queueUrl;
    final $result = await _protocol.send(
      $request,
      method: 'POST',
      requestUri: '/',
      exceptionFnMap: _exceptionFns,
      resultWrapper: 'ListQueueTagsResult',
    );
    return ListQueueTagsResult.fromXml($result);
  }

  /// Returns a list of your queues. The maximum number of queues that can be
  /// returned is 1,000. If you specify a value for the optional
  /// <code>QueueNamePrefix</code> parameter, only queues with a name that
  /// begins with the specified value are returned.
  /// <note>
  /// Cross-account permissions don't apply to this action. For more
  /// information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant
  /// Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon
  /// Simple Queue Service Developer Guide</i>.
  /// </note>
  ///
  /// Parameter [queueNamePrefix] :
  /// A string to use for filtering the list results. Only those queues whose
  /// name begins with the specified string are returned.
  ///
  /// Queue URLs and names are case-sensitive.
  Future<ListQueuesResult> listQueues({
    String queueNamePrefix,
  }) async {
    final $request = <String, dynamic>{
      'Action': 'ListQueues',
      'Version': '2012-11-05',
    };
    queueNamePrefix?.also((arg) => $request['QueueNamePrefix'] = arg);
    final $result = await _protocol.send(
      $request,
      method: 'POST',
      requestUri: '/',
      exceptionFnMap: _exceptionFns,
      resultWrapper: 'ListQueuesResult',
    );
    return ListQueuesResult.fromXml($result);
  }

  /// Deletes the messages in a queue specified by the <code>QueueURL</code>
  /// parameter.
  /// <important>
  /// When you use the <code>PurgeQueue</code> action, you can't retrieve any
  /// messages deleted from a queue.
  ///
  /// The message deletion process takes up to 60 seconds. We recommend waiting
  /// for 60 seconds regardless of your queue's size.
  /// </important>
  /// Messages sent to the queue <i>before</i> you call <code>PurgeQueue</code>
  /// might be received but are deleted within the next minute.
  ///
  /// Messages sent to the queue <i>after</i> you call <code>PurgeQueue</code>
  /// might be deleted while the queue is being purged.
  ///
  /// May throw [QueueDoesNotExist].
  /// May throw [PurgeQueueInProgress].
  ///
  /// Parameter [queueUrl] :
  /// The URL of the queue from which the <code>PurgeQueue</code> action deletes
  /// messages.
  ///
  /// Queue URLs and names are case-sensitive.
  Future<void> purgeQueue({
    @_s.required String queueUrl,
  }) async {
    ArgumentError.checkNotNull(queueUrl, 'queueUrl');
    final $request = <String, dynamic>{
      'Action': 'PurgeQueue',
      'Version': '2012-11-05',
    };
    $request['QueueUrl'] = queueUrl;
    await _protocol.send(
      $request,
      method: 'POST',
      requestUri: '/',
      exceptionFnMap: _exceptionFns,
    );
  }

  /// Retrieves one or more messages (up to 10), from the specified queue. Using
  /// the <code>WaitTimeSeconds</code> parameter enables long-poll support. For
  /// more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-long-polling.html">Amazon
  /// SQS Long Polling</a> in the <i>Amazon Simple Queue Service Developer
  /// Guide</i>.
  ///
  /// Short poll is the default behavior where a weighted random set of machines
  /// is sampled on a <code>ReceiveMessage</code> call. Thus, only the messages
  /// on the sampled machines are returned. If the number of messages in the
  /// queue is small (fewer than 1,000), you most likely get fewer messages than
  /// you requested per <code>ReceiveMessage</code> call. If the number of
  /// messages in the queue is extremely small, you might not receive any
  /// messages in a particular <code>ReceiveMessage</code> response. If this
  /// happens, repeat the request.
  ///
  /// For each message returned, the response includes the following:
  ///
  /// <ul>
  /// <li>
  /// The message body.
  /// </li>
  /// <li>
  /// An MD5 digest of the message body. For information about MD5, see <a
  /// href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.
  /// </li>
  /// <li>
  /// The <code>MessageId</code> you received when you sent the message to the
  /// queue.
  /// </li>
  /// <li>
  /// The receipt handle.
  /// </li>
  /// <li>
  /// The message attributes.
  /// </li>
  /// <li>
  /// An MD5 digest of the message attributes.
  /// </li>
  /// </ul>
  /// The receipt handle is the identifier you must provide when deleting the
  /// message. For more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html">Queue
  /// and Message Identifiers</a> in the <i>Amazon Simple Queue Service
  /// Developer Guide</i>.
  ///
  /// You can provide the <code>VisibilityTimeout</code> parameter in your
  /// request. The parameter is applied to the messages that Amazon SQS returns
  /// in the response. If you don't include the parameter, the overall
  /// visibility timeout for the queue is used for the returned messages. For
  /// more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility
  /// Timeout</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.
  ///
  /// A message that isn't deleted or a message whose visibility isn't extended
  /// before the visibility timeout expires counts as a failed receive.
  /// Depending on the configuration of the queue, the message might be sent to
  /// the dead-letter queue.
  /// <note>
  /// In the future, new attributes might be added. If you write code that calls
  /// this action, we recommend that you structure your code so that it can
  /// handle new attributes gracefully.
  /// </note>
  ///
  /// May throw [OverLimit].
  ///
  /// Parameter [queueUrl] :
  /// The URL of the Amazon SQS queue from which messages are received.
  ///
  /// Queue URLs and names are case-sensitive.
  ///
  /// Parameter [attributeNames] :
  /// A list of attributes that need to be returned along with each message.
  /// These attributes include:
  ///
  /// <ul>
  /// <li>
  /// <code>All</code> - Returns all values.
  /// </li>
  /// <li>
  /// <code>ApproximateFirstReceiveTimestamp</code> - Returns the time the
  /// message was first received from the queue (<a
  /// href="http://en.wikipedia.org/wiki/Unix_time">epoch time</a> in
  /// milliseconds).
  /// </li>
  /// <li>
  /// <code>ApproximateReceiveCount</code> - Returns the number of times a
  /// message has been received from the queue but not deleted.
  /// </li>
  /// <li>
  /// <code>AWSTraceHeader</code> - Returns the AWS X-Ray trace header string.
  /// </li>
  /// <li>
  /// <code>SenderId</code>
  ///
  /// <ul>
  /// <li>
  /// For an IAM user, returns the IAM user ID, for example
  /// <code>ABCDEFGHI1JKLMNOPQ23R</code>.
  /// </li>
  /// <li>
  /// For an IAM role, returns the IAM role ID, for example
  /// <code>ABCDE1F2GH3I4JK5LMNOP:i-a123b456</code>.
  /// </li>
  /// </ul> </li>
  /// <li>
  /// <code>SentTimestamp</code> - Returns the time the message was sent to the
  /// queue (<a href="http://en.wikipedia.org/wiki/Unix_time">epoch time</a> in
  /// milliseconds).
  /// </li>
  /// <li>
  /// <code>MessageDeduplicationId</code> - Returns the value provided by the
  /// producer that calls the <code> <a>SendMessage</a> </code> action.
  /// </li>
  /// <li>
  /// <code>MessageGroupId</code> - Returns the value provided by the producer
  /// that calls the <code> <a>SendMessage</a> </code> action. Messages with the
  /// same <code>MessageGroupId</code> are returned in sequence.
  /// </li>
  /// <li>
  /// <code>SequenceNumber</code> - Returns the value provided by Amazon SQS.
  /// </li>
  /// </ul>
  ///
  /// Parameter [maxNumberOfMessages] :
  /// The maximum number of messages to return. Amazon SQS never returns more
  /// messages than this value (however, fewer messages might be returned).
  /// Valid values: 1 to 10. Default: 1.
  ///
  /// Parameter [messageAttributeNames] :
  /// The name of the message attribute, where <i>N</i> is the index.
  ///
  /// <ul>
  /// <li>
  /// The name can contain alphanumeric characters and the underscore
  /// (<code>_</code>), hyphen (<code>-</code>), and period (<code>.</code>).
  /// </li>
  /// <li>
  /// The name is case-sensitive and must be unique among all attribute names
  /// for the message.
  /// </li>
  /// <li>
  /// The name must not start with AWS-reserved prefixes such as
  /// <code>AWS.</code> or <code>Amazon.</code> (or any casing variants).
  /// </li>
  /// <li>
  /// The name must not start or end with a period (<code>.</code>), and it
  /// should not have periods in succession (<code>..</code>).
  /// </li>
  /// <li>
  /// The name can be up to 256 characters long.
  /// </li>
  /// </ul>
  /// When using <code>ReceiveMessage</code>, you can send a list of attribute
  /// names to receive, or you can return all of the attributes by specifying
  /// <code>All</code> or <code>.*</code> in your request. You can also use all
  /// message attributes starting with a prefix, for example <code>bar.*</code>.
  ///
  /// Parameter [receiveRequestAttemptId] :
  /// This parameter applies only to FIFO (first-in-first-out) queues.
  ///
  /// The token used for deduplication of <code>ReceiveMessage</code> calls. If
  /// a networking issue occurs after a <code>ReceiveMessage</code> action, and
  /// instead of a response you receive a generic error, you can retry the same
  /// action with an identical <code>ReceiveRequestAttemptId</code> to retrieve
  /// the same set of messages, even if their visibility timeout has not yet
  /// expired.
  ///
  /// <ul>
  /// <li>
  /// You can use <code>ReceiveRequestAttemptId</code> only for 5 minutes after
  /// a <code>ReceiveMessage</code> action.
  /// </li>
  /// <li>
  /// When you set <code>FifoQueue</code>, a caller of the
  /// <code>ReceiveMessage</code> action can provide a
  /// <code>ReceiveRequestAttemptId</code> explicitly.
  /// </li>
  /// <li>
  /// If a caller of the <code>ReceiveMessage</code> action doesn't provide a
  /// <code>ReceiveRequestAttemptId</code>, Amazon SQS generates a
  /// <code>ReceiveRequestAttemptId</code>.
  /// </li>
  /// <li>
  /// You can retry the <code>ReceiveMessage</code> action with the same
  /// <code>ReceiveRequestAttemptId</code> if none of the messages have been
  /// modified (deleted or had their visibility changes).
  /// </li>
  /// <li>
  /// During a visibility timeout, subsequent calls with the same
  /// <code>ReceiveRequestAttemptId</code> return the same messages and receipt
  /// handles. If a retry occurs within the deduplication interval, it resets
  /// the visibility timeout. For more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility
  /// Timeout</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.
  /// <important>
  /// If a caller of the <code>ReceiveMessage</code> action still processes
  /// messages when the visibility timeout expires and messages become visible,
  /// another worker consuming from the same queue can receive the same messages
  /// and therefore process duplicates. Also, if a consumer whose message
  /// processing time is longer than the visibility timeout tries to delete the
  /// processed messages, the action fails with an error.
  ///
  /// To mitigate this effect, ensure that your application observes a safe
  /// threshold before the visibility timeout expires and extend the visibility
  /// timeout as necessary.
  /// </important> </li>
  /// <li>
  /// While messages with a particular <code>MessageGroupId</code> are
  /// invisible, no more messages belonging to the same
  /// <code>MessageGroupId</code> are returned until the visibility timeout
  /// expires. You can still receive messages with another
  /// <code>MessageGroupId</code> as long as it is also visible.
  /// </li>
  /// <li>
  /// If a caller of <code>ReceiveMessage</code> can't track the
  /// <code>ReceiveRequestAttemptId</code>, no retries work until the original
  /// visibility timeout expires. As a result, delays might occur but the
  /// messages in the queue remain in a strict order.
  /// </li>
  /// </ul>
  /// The length of <code>ReceiveRequestAttemptId</code> is 128 characters.
  /// <code>ReceiveRequestAttemptId</code> can contain alphanumeric characters
  /// (<code>a-z</code>, <code>A-Z</code>, <code>0-9</code>) and punctuation
  /// (<code>!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~</code>).
  ///
  /// For best practices of using <code>ReceiveRequestAttemptId</code>, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-receiverequestattemptid-request-parameter.html">Using
  /// the ReceiveRequestAttemptId Request Parameter</a> in the <i>Amazon Simple
  /// Queue Service Developer Guide</i>.
  ///
  /// Parameter [visibilityTimeout] :
  /// The duration (in seconds) that the received messages are hidden from
  /// subsequent retrieve requests after being retrieved by a
  /// <code>ReceiveMessage</code> request.
  ///
  /// Parameter [waitTimeSeconds] :
  /// The duration (in seconds) for which the call waits for a message to arrive
  /// in the queue before returning. If a message is available, the call returns
  /// sooner than <code>WaitTimeSeconds</code>. If no messages are available and
  /// the wait time expires, the call returns successfully with an empty list of
  /// messages.
  Future<ReceiveMessageResult> receiveMessage({
    @_s.required String queueUrl,
    List<String> attributeNames,
    int maxNumberOfMessages,
    List<String> messageAttributeNames,
    String receiveRequestAttemptId,
    int visibilityTimeout,
    int waitTimeSeconds,
  }) async {
    ArgumentError.checkNotNull(queueUrl, 'queueUrl');
    final $request = <String, dynamic>{
      'Action': 'ReceiveMessage',
      'Version': '2012-11-05',
    };
    $request['QueueUrl'] = queueUrl;
    attributeNames?.also((arg) => $request['AttributeNames'] = arg);
    maxNumberOfMessages?.also((arg) => $request['MaxNumberOfMessages'] = arg);
    messageAttributeNames
        ?.also((arg) => $request['MessageAttributeNames'] = arg);
    receiveRequestAttemptId
        ?.also((arg) => $request['ReceiveRequestAttemptId'] = arg);
    visibilityTimeout?.also((arg) => $request['VisibilityTimeout'] = arg);
    waitTimeSeconds?.also((arg) => $request['WaitTimeSeconds'] = arg);
    final $result = await _protocol.send(
      $request,
      method: 'POST',
      requestUri: '/',
      exceptionFnMap: _exceptionFns,
      resultWrapper: 'ReceiveMessageResult',
    );
    return ReceiveMessageResult.fromXml($result);
  }

  /// Revokes any permissions in the queue policy that matches the specified
  /// <code>Label</code> parameter.
  /// <note>
  /// <ul>
  /// <li>
  /// Only the owner of a queue can remove permissions from it.
  /// </li>
  /// <li>
  /// Cross-account permissions don't apply to this action. For more
  /// information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant
  /// Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon
  /// Simple Queue Service Developer Guide</i>.
  /// </li>
  /// <li>
  /// To remove the ability to change queue permissions, you must deny
  /// permission to the <code>AddPermission</code>,
  /// <code>RemovePermission</code>, and <code>SetQueueAttributes</code> actions
  /// in your IAM policy.
  /// </li>
  /// </ul> </note>
  ///
  /// Parameter [label] :
  /// The identification of the permission to remove. This is the label added
  /// using the <code> <a>AddPermission</a> </code> action.
  ///
  /// Parameter [queueUrl] :
  /// The URL of the Amazon SQS queue from which permissions are removed.
  ///
  /// Queue URLs and names are case-sensitive.
  Future<void> removePermission({
    @_s.required String label,
    @_s.required String queueUrl,
  }) async {
    ArgumentError.checkNotNull(label, 'label');
    ArgumentError.checkNotNull(queueUrl, 'queueUrl');
    final $request = <String, dynamic>{
      'Action': 'RemovePermission',
      'Version': '2012-11-05',
    };
    $request['Label'] = label;
    $request['QueueUrl'] = queueUrl;
    await _protocol.send(
      $request,
      method: 'POST',
      requestUri: '/',
      exceptionFnMap: _exceptionFns,
    );
  }

  /// Delivers a message to the specified queue.
  /// <important>
  /// A message can include only XML, JSON, and unformatted text. The following
  /// Unicode characters are allowed:
  ///
  /// <code>#x9</code> | <code>#xA</code> | <code>#xD</code> | <code>#x20</code>
  /// to <code>#xD7FF</code> | <code>#xE000</code> to <code>#xFFFD</code> |
  /// <code>#x10000</code> to <code>#x10FFFF</code>
  ///
  /// Any characters not included in this list will be rejected. For more
  /// information, see the <a href="http://www.w3.org/TR/REC-xml/#charsets">W3C
  /// specification for characters</a>.
  /// </important>
  ///
  /// May throw [InvalidMessageContents].
  /// May throw [UnsupportedOperation].
  ///
  /// Parameter [messageBody] :
  /// The message to send. The maximum string size is 256 KB.
  /// <important>
  /// A message can include only XML, JSON, and unformatted text. The following
  /// Unicode characters are allowed:
  ///
  /// <code>#x9</code> | <code>#xA</code> | <code>#xD</code> | <code>#x20</code>
  /// to <code>#xD7FF</code> | <code>#xE000</code> to <code>#xFFFD</code> |
  /// <code>#x10000</code> to <code>#x10FFFF</code>
  ///
  /// Any characters not included in this list will be rejected. For more
  /// information, see the <a href="http://www.w3.org/TR/REC-xml/#charsets">W3C
  /// specification for characters</a>.
  /// </important>
  ///
  /// Parameter [queueUrl] :
  /// The URL of the Amazon SQS queue to which a message is sent.
  ///
  /// Queue URLs and names are case-sensitive.
  ///
  /// Parameter [delaySeconds] :
  /// The length of time, in seconds, for which to delay a specific message.
  /// Valid values: 0 to 900. Maximum: 15 minutes. Messages with a positive
  /// <code>DelaySeconds</code> value become available for processing after the
  /// delay period is finished. If you don't specify a value, the default value
  /// for the queue applies.
  /// <note>
  /// When you set <code>FifoQueue</code>, you can't set
  /// <code>DelaySeconds</code> per message. You can set this parameter only on
  /// a queue level.
  /// </note>
  ///
  /// Parameter [messageAttributes] :
  /// Each message attribute consists of a <code>Name</code>, <code>Type</code>,
  /// and <code>Value</code>. For more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html">Amazon
  /// SQS Message Attributes</a> in the <i>Amazon Simple Queue Service Developer
  /// Guide</i>.
  ///
  /// Parameter [messageDeduplicationId] :
  /// This parameter applies only to FIFO (first-in-first-out) queues.
  ///
  /// The token used for deduplication of sent messages. If a message with a
  /// particular <code>MessageDeduplicationId</code> is sent successfully, any
  /// messages sent with the same <code>MessageDeduplicationId</code> are
  /// accepted successfully but aren't delivered during the 5-minute
  /// deduplication interval. For more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing">
  /// Exactly-Once Processing</a> in the <i>Amazon Simple Queue Service
  /// Developer Guide</i>.
  ///
  /// <ul>
  /// <li>
  /// Every message must have a unique <code>MessageDeduplicationId</code>,
  ///
  /// <ul>
  /// <li>
  /// You may provide a <code>MessageDeduplicationId</code> explicitly.
  /// </li>
  /// <li>
  /// If you aren't able to provide a <code>MessageDeduplicationId</code> and
  /// you enable <code>ContentBasedDeduplication</code> for your queue, Amazon
  /// SQS uses a SHA-256 hash to generate the
  /// <code>MessageDeduplicationId</code> using the body of the message (but not
  /// the attributes of the message).
  /// </li>
  /// <li>
  /// If you don't provide a <code>MessageDeduplicationId</code> and the queue
  /// doesn't have <code>ContentBasedDeduplication</code> set, the action fails
  /// with an error.
  /// </li>
  /// <li>
  /// If the queue has <code>ContentBasedDeduplication</code> set, your
  /// <code>MessageDeduplicationId</code> overrides the generated one.
  /// </li>
  /// </ul> </li>
  /// <li>
  /// When <code>ContentBasedDeduplication</code> is in effect, messages with
  /// identical content sent within the deduplication interval are treated as
  /// duplicates and only one copy of the message is delivered.
  /// </li>
  /// <li>
  /// If you send one message with <code>ContentBasedDeduplication</code>
  /// enabled and then another message with a
  /// <code>MessageDeduplicationId</code> that is the same as the one generated
  /// for the first <code>MessageDeduplicationId</code>, the two messages are
  /// treated as duplicates and only one copy of the message is delivered.
  /// </li>
  /// </ul> <note>
  /// The <code>MessageDeduplicationId</code> is available to the consumer of
  /// the message (this can be useful for troubleshooting delivery issues).
  ///
  /// If a message is sent successfully but the acknowledgement is lost and the
  /// message is resent with the same <code>MessageDeduplicationId</code> after
  /// the deduplication interval, Amazon SQS can't detect duplicate messages.
  ///
  /// Amazon SQS continues to keep track of the message deduplication ID even
  /// after the message is received and deleted.
  /// </note>
  /// The length of <code>MessageDeduplicationId</code> is 128 characters.
  /// <code>MessageDeduplicationId</code> can contain alphanumeric characters
  /// (<code>a-z</code>, <code>A-Z</code>, <code>0-9</code>) and punctuation
  /// (<code>!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~</code>).
  ///
  /// For best practices of using <code>MessageDeduplicationId</code>, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagededuplicationid-property.html">Using
  /// the MessageDeduplicationId Property</a> in the <i>Amazon Simple Queue
  /// Service Developer Guide</i>.
  ///
  /// Parameter [messageGroupId] :
  /// This parameter applies only to FIFO (first-in-first-out) queues.
  ///
  /// The tag that specifies that a message belongs to a specific message group.
  /// Messages that belong to the same message group are processed in a FIFO
  /// manner (however, messages in different message groups might be processed
  /// out of order). To interleave multiple ordered streams within a single
  /// queue, use <code>MessageGroupId</code> values (for example, session data
  /// for multiple users). In this scenario, multiple consumers can process the
  /// queue, but the session data of each user is processed in a FIFO fashion.
  ///
  /// <ul>
  /// <li>
  /// You must associate a non-empty <code>MessageGroupId</code> with a message.
  /// If you don't provide a <code>MessageGroupId</code>, the action fails.
  /// </li>
  /// <li>
  /// <code>ReceiveMessage</code> might return messages with multiple
  /// <code>MessageGroupId</code> values. For each <code>MessageGroupId</code>,
  /// the messages are sorted by time sent. The caller can't specify a
  /// <code>MessageGroupId</code>.
  /// </li>
  /// </ul>
  /// The length of <code>MessageGroupId</code> is 128 characters. Valid values:
  /// alphanumeric characters and punctuation
  /// <code>(!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~)</code>.
  ///
  /// For best practices of using <code>MessageGroupId</code>, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagegroupid-property.html">Using
  /// the MessageGroupId Property</a> in the <i>Amazon Simple Queue Service
  /// Developer Guide</i>.
  /// <important>
  /// <code>MessageGroupId</code> is required for FIFO queues. You can't use it
  /// for Standard queues.
  /// </important>
  ///
  /// Parameter [messageSystemAttributes] :
  /// The message system attribute to send. Each message system attribute
  /// consists of a <code>Name</code>, <code>Type</code>, and
  /// <code>Value</code>.
  /// <important>
  /// <ul>
  /// <li>
  /// Currently, the only supported message system attribute is
  /// <code>AWSTraceHeader</code>. Its type must be <code>String</code> and its
  /// value must be a correctly formatted AWS X-Ray trace string.
  /// </li>
  /// <li>
  /// The size of a message system attribute doesn't count towards the total
  /// size of a message.
  /// </li>
  /// </ul> </important>
  Future<SendMessageResult> sendMessage({
    @_s.required String messageBody,
    @_s.required String queueUrl,
    int delaySeconds,
    Map<String, MessageAttributeValue> messageAttributes,
    String messageDeduplicationId,
    String messageGroupId,
    Map<String, MessageSystemAttributeValue> messageSystemAttributes,
  }) async {
    ArgumentError.checkNotNull(messageBody, 'messageBody');
    ArgumentError.checkNotNull(queueUrl, 'queueUrl');
    final $request = <String, dynamic>{
      'Action': 'SendMessage',
      'Version': '2012-11-05',
    };
    $request['MessageBody'] = messageBody;
    $request['QueueUrl'] = queueUrl;
    delaySeconds?.also((arg) => $request['DelaySeconds'] = arg);
    messageAttributes?.also((arg) => $request['MessageAttribute'] =
        Map.fromEntries(
            arg.entries.map((e) => MapEntry(e.key, e.value.toJson()))));
    messageDeduplicationId
        ?.also((arg) => $request['MessageDeduplicationId'] = arg);
    messageGroupId?.also((arg) => $request['MessageGroupId'] = arg);
    messageSystemAttributes?.also((arg) => $request['MessageSystemAttribute'] =
        Map.fromEntries(
            arg.entries.map((e) => MapEntry(e.key, e.value.toJson()))));
    final $result = await _protocol.send(
      $request,
      method: 'POST',
      requestUri: '/',
      exceptionFnMap: _exceptionFns,
      resultWrapper: 'SendMessageResult',
    );
    return SendMessageResult.fromXml($result);
  }

  /// Delivers up to ten messages to the specified queue. This is a batch
  /// version of <code> <a>SendMessage</a>.</code> For a FIFO queue, multiple
  /// messages within a single batch are enqueued in the order they are sent.
  ///
  /// The result of sending each message is reported individually in the
  /// response. Because the batch request can result in a combination of
  /// successful and unsuccessful actions, you should check for batch errors
  /// even when the call returns an HTTP status code of <code>200</code>.
  ///
  /// The maximum allowed individual message size and the maximum total payload
  /// size (the sum of the individual lengths of all of the batched messages)
  /// are both 256 KB (262,144 bytes).
  /// <important>
  /// A message can include only XML, JSON, and unformatted text. The following
  /// Unicode characters are allowed:
  ///
  /// <code>#x9</code> | <code>#xA</code> | <code>#xD</code> | <code>#x20</code>
  /// to <code>#xD7FF</code> | <code>#xE000</code> to <code>#xFFFD</code> |
  /// <code>#x10000</code> to <code>#x10FFFF</code>
  ///
  /// Any characters not included in this list will be rejected. For more
  /// information, see the <a href="http://www.w3.org/TR/REC-xml/#charsets">W3C
  /// specification for characters</a>.
  /// </important>
  /// If you don't specify the <code>DelaySeconds</code> parameter for an entry,
  /// Amazon SQS uses the default value for the queue.
  ///
  /// Some actions take lists of parameters. These lists are specified using the
  /// <code>param.n</code> notation. Values of <code>n</code> are integers
  /// starting from 1. For example, a parameter list with two elements looks
  /// like this:
  ///
  /// <code>&amp;Attribute.1=first</code>
  ///
  /// <code>&amp;Attribute.2=second</code>
  ///
  /// May throw [TooManyEntriesInBatchRequest].
  /// May throw [EmptyBatchRequest].
  /// May throw [BatchEntryIdsNotDistinct].
  /// May throw [BatchRequestTooLong].
  /// May throw [InvalidBatchEntryId].
  /// May throw [UnsupportedOperation].
  ///
  /// Parameter [entries] :
  /// A list of <code> <a>SendMessageBatchRequestEntry</a> </code> items.
  ///
  /// Parameter [queueUrl] :
  /// The URL of the Amazon SQS queue to which batched messages are sent.
  ///
  /// Queue URLs and names are case-sensitive.
  Future<SendMessageBatchResult> sendMessageBatch({
    @_s.required List<SendMessageBatchRequestEntry> entries,
    @_s.required String queueUrl,
  }) async {
    ArgumentError.checkNotNull(entries, 'entries');
    ArgumentError.checkNotNull(queueUrl, 'queueUrl');
    final $request = <String, dynamic>{
      'Action': 'SendMessageBatch',
      'Version': '2012-11-05',
    };
    $request['Entries'] = entries.map((v) => v.toJson()).toList();
    $request['QueueUrl'] = queueUrl;
    final $result = await _protocol.send(
      $request,
      method: 'POST',
      requestUri: '/',
      exceptionFnMap: _exceptionFns,
      resultWrapper: 'SendMessageBatchResult',
    );
    return SendMessageBatchResult.fromXml($result);
  }

  /// Sets the value of one or more queue attributes. When you change a queue's
  /// attributes, the change can take up to 60 seconds for most of the
  /// attributes to propagate throughout the Amazon SQS system. Changes made to
  /// the <code>MessageRetentionPeriod</code> attribute can take up to 15
  /// minutes.
  /// <note>
  /// <ul>
  /// <li>
  /// In the future, new attributes might be added. If you write code that calls
  /// this action, we recommend that you structure your code so that it can
  /// handle new attributes gracefully.
  /// </li>
  /// <li>
  /// Cross-account permissions don't apply to this action. For more
  /// information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant
  /// Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon
  /// Simple Queue Service Developer Guide</i>.
  /// </li>
  /// <li>
  /// To remove the ability to change queue permissions, you must deny
  /// permission to the <code>AddPermission</code>,
  /// <code>RemovePermission</code>, and <code>SetQueueAttributes</code> actions
  /// in your IAM policy.
  /// </li>
  /// </ul> </note>
  ///
  /// May throw [InvalidAttributeName].
  ///
  /// Parameter [attributes] :
  /// A map of attributes to set.
  ///
  /// The following lists the names, descriptions, and values of the special
  /// request parameters that the <code>SetQueueAttributes</code> action uses:
  ///
  /// <ul>
  /// <li>
  /// <code>DelaySeconds</code> - The length of time, in seconds, for which the
  /// delivery of all messages in the queue is delayed. Valid values: An integer
  /// from 0 to 900 (15 minutes). Default: 0.
  /// </li>
  /// <li>
  /// <code>MaximumMessageSize</code> - The limit of how many bytes a message
  /// can contain before Amazon SQS rejects it. Valid values: An integer from
  /// 1,024 bytes (1 KiB) up to 262,144 bytes (256 KiB). Default: 262,144 (256
  /// KiB).
  /// </li>
  /// <li>
  /// <code>MessageRetentionPeriod</code> - The length of time, in seconds, for
  /// which Amazon SQS retains a message. Valid values: An integer representing
  /// seconds, from 60 (1 minute) to 1,209,600 (14 days). Default: 345,600 (4
  /// days).
  /// </li>
  /// <li>
  /// <code>Policy</code> - The queue's policy. A valid AWS policy. For more
  /// information about policy structure, see <a
  /// href="https://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html">Overview
  /// of AWS IAM Policies</a> in the <i>Amazon IAM User Guide</i>.
  /// </li>
  /// <li>
  /// <code>ReceiveMessageWaitTimeSeconds</code> - The length of time, in
  /// seconds, for which a <code> <a>ReceiveMessage</a> </code> action waits for
  /// a message to arrive. Valid values: an integer from 0 to 20 (seconds).
  /// Default: 0.
  /// </li>
  /// <li>
  /// <code>RedrivePolicy</code> - The string that includes the parameters for
  /// the dead-letter queue functionality of the source queue. For more
  /// information about the redrive policy and dead-letter queues, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Using
  /// Amazon SQS Dead-Letter Queues</a> in the <i>Amazon Simple Queue Service
  /// Developer Guide</i>.
  ///
  /// <ul>
  /// <li>
  /// <code>deadLetterTargetArn</code> - The Amazon Resource Name (ARN) of the
  /// dead-letter queue to which Amazon SQS moves messages after the value of
  /// <code>maxReceiveCount</code> is exceeded.
  /// </li>
  /// <li>
  /// <code>maxReceiveCount</code> - The number of times a message is delivered
  /// to the source queue before being moved to the dead-letter queue. When the
  /// <code>ReceiveCount</code> for a message exceeds the
  /// <code>maxReceiveCount</code> for a queue, Amazon SQS moves the message to
  /// the dead-letter-queue.
  /// </li>
  /// </ul> <note>
  /// The dead-letter queue of a FIFO queue must also be a FIFO queue.
  /// Similarly, the dead-letter queue of a standard queue must also be a
  /// standard queue.
  /// </note> </li>
  /// <li>
  /// <code>VisibilityTimeout</code> - The visibility timeout for the queue, in
  /// seconds. Valid values: an integer from 0 to 43,200 (12 hours). Default:
  /// 30. For more information about the visibility timeout, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility
  /// Timeout</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.
  /// </li>
  /// </ul>
  /// The following attributes apply only to <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html">server-side-encryption</a>:
  ///
  /// <ul>
  /// <li>
  /// <code>KmsMasterKeyId</code> - The ID of an AWS-managed customer master key
  /// (CMK) for Amazon SQS or a custom CMK. For more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms">Key
  /// Terms</a>. While the alias of the AWS-managed CMK for Amazon SQS is always
  /// <code>alias/aws/sqs</code>, the alias of a custom CMK can, for example, be
  /// <code>alias/<i>MyAlias</i> </code>. For more examples, see <a
  /// href="https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters">KeyId</a>
  /// in the <i>AWS Key Management Service API Reference</i>.
  /// </li>
  /// <li>
  /// <code>KmsDataKeyReusePeriodSeconds</code> - The length of time, in
  /// seconds, for which Amazon SQS can reuse a <a
  /// href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys">data
  /// key</a> to encrypt or decrypt messages before calling AWS KMS again. An
  /// integer representing seconds, between 60 seconds (1 minute) and 86,400
  /// seconds (24 hours). Default: 300 (5 minutes). A shorter time period
  /// provides better security but results in more calls to KMS which might
  /// incur charges after Free Tier. For more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work">How
  /// Does the Data Key Reuse Period Work?</a>.
  /// </li>
  /// </ul>
  /// The following attribute applies only to <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO
  /// (first-in-first-out) queues</a>:
  ///
  /// <ul>
  /// <li>
  /// <code>ContentBasedDeduplication</code> - Enables content-based
  /// deduplication. For more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing">Exactly-Once
  /// Processing</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.
  ///
  /// <ul>
  /// <li>
  /// Every message must have a unique <code>MessageDeduplicationId</code>,
  ///
  /// <ul>
  /// <li>
  /// You may provide a <code>MessageDeduplicationId</code> explicitly.
  /// </li>
  /// <li>
  /// If you aren't able to provide a <code>MessageDeduplicationId</code> and
  /// you enable <code>ContentBasedDeduplication</code> for your queue, Amazon
  /// SQS uses a SHA-256 hash to generate the
  /// <code>MessageDeduplicationId</code> using the body of the message (but not
  /// the attributes of the message).
  /// </li>
  /// <li>
  /// If you don't provide a <code>MessageDeduplicationId</code> and the queue
  /// doesn't have <code>ContentBasedDeduplication</code> set, the action fails
  /// with an error.
  /// </li>
  /// <li>
  /// If the queue has <code>ContentBasedDeduplication</code> set, your
  /// <code>MessageDeduplicationId</code> overrides the generated one.
  /// </li>
  /// </ul> </li>
  /// <li>
  /// When <code>ContentBasedDeduplication</code> is in effect, messages with
  /// identical content sent within the deduplication interval are treated as
  /// duplicates and only one copy of the message is delivered.
  /// </li>
  /// <li>
  /// If you send one message with <code>ContentBasedDeduplication</code>
  /// enabled and then another message with a
  /// <code>MessageDeduplicationId</code> that is the same as the one generated
  /// for the first <code>MessageDeduplicationId</code>, the two messages are
  /// treated as duplicates and only one copy of the message is delivered.
  /// </li>
  /// </ul> </li>
  /// </ul>
  ///
  /// Parameter [queueUrl] :
  /// The URL of the Amazon SQS queue whose attributes are set.
  ///
  /// Queue URLs and names are case-sensitive.
  Future<void> setQueueAttributes({
    @_s.required Map<String, String> attributes,
    @_s.required String queueUrl,
  }) async {
    ArgumentError.checkNotNull(attributes, 'attributes');
    ArgumentError.checkNotNull(queueUrl, 'queueUrl');
    final $request = <String, dynamic>{
      'Action': 'SetQueueAttributes',
      'Version': '2012-11-05',
    };
    $request['Attribute'] = attributes;
    $request['QueueUrl'] = queueUrl;
    await _protocol.send(
      $request,
      method: 'POST',
      requestUri: '/',
      exceptionFnMap: _exceptionFns,
    );
  }

  /// Add cost allocation tags to the specified Amazon SQS queue. For an
  /// overview, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html">Tagging
  /// Your Amazon SQS Queues</a> in the <i>Amazon Simple Queue Service Developer
  /// Guide</i>.
  ///
  /// When you use queue tags, keep the following guidelines in mind:
  ///
  /// <ul>
  /// <li>
  /// Adding more than 50 tags to a queue isn't recommended.
  /// </li>
  /// <li>
  /// Tags don't have any semantic meaning. Amazon SQS interprets tags as
  /// character strings.
  /// </li>
  /// <li>
  /// Tags are case-sensitive.
  /// </li>
  /// <li>
  /// A new tag with a key identical to that of an existing tag overwrites the
  /// existing tag.
  /// </li>
  /// </ul>
  /// For a full list of tag restrictions, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-limits.html#limits-queues">Limits
  /// Related to Queues</a> in the <i>Amazon Simple Queue Service Developer
  /// Guide</i>.
  /// <note>
  /// Cross-account permissions don't apply to this action. For more
  /// information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant
  /// Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon
  /// Simple Queue Service Developer Guide</i>.
  /// </note>
  ///
  /// Parameter [queueUrl] :
  /// The URL of the queue.
  ///
  /// Parameter [tags] :
  /// The list of tags to be added to the specified queue.
  Future<void> tagQueue({
    @_s.required String queueUrl,
    @_s.required Map<String, String> tags,
  }) async {
    ArgumentError.checkNotNull(queueUrl, 'queueUrl');
    ArgumentError.checkNotNull(tags, 'tags');
    final $request = <String, dynamic>{
      'Action': 'TagQueue',
      'Version': '2012-11-05',
    };
    $request['QueueUrl'] = queueUrl;
    $request['Tags'] = tags;
    await _protocol.send(
      $request,
      method: 'POST',
      requestUri: '/',
      exceptionFnMap: _exceptionFns,
    );
  }

  /// Remove cost allocation tags from the specified Amazon SQS queue. For an
  /// overview, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html">Tagging
  /// Your Amazon SQS Queues</a> in the <i>Amazon Simple Queue Service Developer
  /// Guide</i>.
  /// <note>
  /// Cross-account permissions don't apply to this action. For more
  /// information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant
  /// Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon
  /// Simple Queue Service Developer Guide</i>.
  /// </note>
  ///
  /// Parameter [queueUrl] :
  /// The URL of the queue.
  ///
  /// Parameter [tagKeys] :
  /// The list of tags to be removed from the specified queue.
  Future<void> untagQueue({
    @_s.required String queueUrl,
    @_s.required List<String> tagKeys,
  }) async {
    ArgumentError.checkNotNull(queueUrl, 'queueUrl');
    ArgumentError.checkNotNull(tagKeys, 'tagKeys');
    final $request = <String, dynamic>{
      'Action': 'UntagQueue',
      'Version': '2012-11-05',
    };
    $request['QueueUrl'] = queueUrl;
    $request['TagKeys'] = tagKeys;
    await _protocol.send(
      $request,
      method: 'POST',
      requestUri: '/',
      exceptionFnMap: _exceptionFns,
    );
  }
}

/// Gives a detailed description of the result of an action on each entry in the
/// request.
@_s.JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
    createFactory: false,
    createToJson: false)
class BatchResultErrorEntry {
  /// An error code representing why the action failed on this entry.
  @_s.JsonKey(name: 'Code')
  final String code;

  /// The <code>Id</code> of an entry in a batch request.
  @_s.JsonKey(name: 'Id')
  final String id;

  /// Specifies whether the error happened due to the producer.
  @_s.JsonKey(name: 'SenderFault')
  final bool senderFault;

  /// A message explaining why the action failed on this entry.
  @_s.JsonKey(name: 'Message')
  final String message;

  BatchResultErrorEntry({
    @_s.required this.code,
    @_s.required this.id,
    @_s.required this.senderFault,
    this.message,
  });
  factory BatchResultErrorEntry.fromXml(_s.XmlElement elem) {
    return BatchResultErrorEntry(
      code: _s.extractXmlStringValue(elem, 'Code'),
      id: _s.extractXmlStringValue(elem, 'Id'),
      senderFault: _s.extractXmlBoolValue(elem, 'SenderFault'),
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// Encloses a receipt handle and an entry id for each message in <code>
/// <a>ChangeMessageVisibilityBatch</a>.</code>
/// <important>
/// All of the following list parameters must be prefixed with
/// <code>ChangeMessageVisibilityBatchRequestEntry.n</code>, where
/// <code>n</code> is an integer value starting with <code>1</code>. For
/// example, a parameter list for this action might look like this:
/// </important>
/// <code>&amp;ChangeMessageVisibilityBatchRequestEntry.1.Id=change_visibility_msg_2</code>
///
/// <code>&amp;ChangeMessageVisibilityBatchRequestEntry.1.ReceiptHandle=your_receipt_handle</code>
///
/// <code>&amp;ChangeMessageVisibilityBatchRequestEntry.1.VisibilityTimeout=45</code>
@_s.JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
    createFactory: false,
    createToJson: true)
class ChangeMessageVisibilityBatchRequestEntry {
  /// An identifier for this particular receipt handle used to communicate the
  /// result.
  /// <note>
  /// The <code>Id</code>s of a batch request need to be unique within a request
  /// </note>
  @_s.JsonKey(name: 'Id')
  final String id;

  /// A receipt handle.
  @_s.JsonKey(name: 'ReceiptHandle')
  final String receiptHandle;

  /// The new value (in seconds) for the message's visibility timeout.
  @_s.JsonKey(name: 'VisibilityTimeout')
  final int visibilityTimeout;

  ChangeMessageVisibilityBatchRequestEntry({
    @_s.required this.id,
    @_s.required this.receiptHandle,
    this.visibilityTimeout,
  });
  Map<String, dynamic> toJson() =>
      _$ChangeMessageVisibilityBatchRequestEntryToJson(this);
}

/// For each message in the batch, the response contains a <code>
/// <a>ChangeMessageVisibilityBatchResultEntry</a> </code> tag if the message
/// succeeds or a <code> <a>BatchResultErrorEntry</a> </code> tag if the message
/// fails.
@_s.JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
    createFactory: false,
    createToJson: false)
class ChangeMessageVisibilityBatchResult {
  /// A list of <code> <a>BatchResultErrorEntry</a> </code> items.
  @_s.JsonKey(name: 'Failed')
  final List<BatchResultErrorEntry> failed;

  /// A list of <code> <a>ChangeMessageVisibilityBatchResultEntry</a> </code>
  /// items.
  @_s.JsonKey(name: 'Successful')
  final List<ChangeMessageVisibilityBatchResultEntry> successful;

  ChangeMessageVisibilityBatchResult({
    @_s.required this.failed,
    @_s.required this.successful,
  });
  factory ChangeMessageVisibilityBatchResult.fromXml(_s.XmlElement elem) {
    return ChangeMessageVisibilityBatchResult(
      failed: elem
          .findElements('BatchResultErrorEntry')
          .map((c) => BatchResultErrorEntry.fromXml(c))
          .toList(),
      successful: elem
          .findElements('ChangeMessageVisibilityBatchResultEntry')
          .map((c) => ChangeMessageVisibilityBatchResultEntry.fromXml(c))
          .toList(),
    );
  }
}

/// Encloses the <code>Id</code> of an entry in <code>
/// <a>ChangeMessageVisibilityBatch</a>.</code>
@_s.JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
    createFactory: false,
    createToJson: false)
class ChangeMessageVisibilityBatchResultEntry {
  /// Represents a message whose visibility timeout has been changed successfully.
  @_s.JsonKey(name: 'Id')
  final String id;

  ChangeMessageVisibilityBatchResultEntry({
    @_s.required this.id,
  });
  factory ChangeMessageVisibilityBatchResultEntry.fromXml(_s.XmlElement elem) {
    return ChangeMessageVisibilityBatchResultEntry(
      id: _s.extractXmlStringValue(elem, 'Id'),
    );
  }
}

/// Returns the <code>QueueUrl</code> attribute of the created queue.
@_s.JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
    createFactory: false,
    createToJson: false)
class CreateQueueResult {
  /// The URL of the created Amazon SQS queue.
  @_s.JsonKey(name: 'QueueUrl')
  final String queueUrl;

  CreateQueueResult({
    this.queueUrl,
  });
  factory CreateQueueResult.fromXml(_s.XmlElement elem) {
    return CreateQueueResult(
      queueUrl: _s.extractXmlStringValue(elem, 'QueueUrl'),
    );
  }
}

/// Encloses a receipt handle and an identifier for it.
@_s.JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
    createFactory: false,
    createToJson: true)
class DeleteMessageBatchRequestEntry {
  /// An identifier for this particular receipt handle. This is used to
  /// communicate the result.
  /// <note>
  /// The <code>Id</code>s of a batch request need to be unique within a request
  /// </note>
  @_s.JsonKey(name: 'Id')
  final String id;

  /// A receipt handle.
  @_s.JsonKey(name: 'ReceiptHandle')
  final String receiptHandle;

  DeleteMessageBatchRequestEntry({
    @_s.required this.id,
    @_s.required this.receiptHandle,
  });
  Map<String, dynamic> toJson() => _$DeleteMessageBatchRequestEntryToJson(this);
}

/// For each message in the batch, the response contains a <code>
/// <a>DeleteMessageBatchResultEntry</a> </code> tag if the message is deleted
/// or a <code> <a>BatchResultErrorEntry</a> </code> tag if the message can't be
/// deleted.
@_s.JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
    createFactory: false,
    createToJson: false)
class DeleteMessageBatchResult {
  /// A list of <code> <a>BatchResultErrorEntry</a> </code> items.
  @_s.JsonKey(name: 'Failed')
  final List<BatchResultErrorEntry> failed;

  /// A list of <code> <a>DeleteMessageBatchResultEntry</a> </code> items.
  @_s.JsonKey(name: 'Successful')
  final List<DeleteMessageBatchResultEntry> successful;

  DeleteMessageBatchResult({
    @_s.required this.failed,
    @_s.required this.successful,
  });
  factory DeleteMessageBatchResult.fromXml(_s.XmlElement elem) {
    return DeleteMessageBatchResult(
      failed: elem
          .findElements('BatchResultErrorEntry')
          .map((c) => BatchResultErrorEntry.fromXml(c))
          .toList(),
      successful: elem
          .findElements('DeleteMessageBatchResultEntry')
          .map((c) => DeleteMessageBatchResultEntry.fromXml(c))
          .toList(),
    );
  }
}

/// Encloses the <code>Id</code> of an entry in <code>
/// <a>DeleteMessageBatch</a>.</code>
@_s.JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
    createFactory: false,
    createToJson: false)
class DeleteMessageBatchResultEntry {
  /// Represents a successfully deleted message.
  @_s.JsonKey(name: 'Id')
  final String id;

  DeleteMessageBatchResultEntry({
    @_s.required this.id,
  });
  factory DeleteMessageBatchResultEntry.fromXml(_s.XmlElement elem) {
    return DeleteMessageBatchResultEntry(
      id: _s.extractXmlStringValue(elem, 'Id'),
    );
  }
}

/// A list of returned queue attributes.
@_s.JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
    createFactory: false,
    createToJson: false)
class GetQueueAttributesResult {
  /// A map of attributes to their respective values.
  @_s.JsonKey(name: 'Attributes')
  final Map<String, String> attributes;

  GetQueueAttributesResult({
    this.attributes,
  });
  factory GetQueueAttributesResult.fromXml(_s.XmlElement elem) {
    return GetQueueAttributesResult(
      attributes: Map.fromEntries(
        elem.findElements('Attribute').map(
              (c) => MapEntry(
                _s.extractXmlStringValue(c, 'Name'),
                _s.extractXmlStringValue(c, 'Value'),
              ),
            ),
      ),
    );
  }
}

/// For more information, see <a
/// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-api-responses.html">Interpreting
/// Responses</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.
@_s.JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
    createFactory: false,
    createToJson: false)
class GetQueueUrlResult {
  /// The URL of the queue.
  @_s.JsonKey(name: 'QueueUrl')
  final String queueUrl;

  GetQueueUrlResult({
    this.queueUrl,
  });
  factory GetQueueUrlResult.fromXml(_s.XmlElement elem) {
    return GetQueueUrlResult(
      queueUrl: _s.extractXmlStringValue(elem, 'QueueUrl'),
    );
  }
}

/// A list of your dead letter source queues.
@_s.JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
    createFactory: false,
    createToJson: false)
class ListDeadLetterSourceQueuesResult {
  /// A list of source queue URLs that have the <code>RedrivePolicy</code> queue
  /// attribute configured with a dead-letter queue.
  @_s.JsonKey(name: 'queueUrls')
  final List<String> queueUrls;

  ListDeadLetterSourceQueuesResult({
    @_s.required this.queueUrls,
  });
  factory ListDeadLetterSourceQueuesResult.fromXml(_s.XmlElement elem) {
    return ListDeadLetterSourceQueuesResult(
      queueUrls: _s.extractXmlStringListValues(elem, 'QueueUrl'),
    );
  }
}

@_s.JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
    createFactory: false,
    createToJson: false)
class ListQueueTagsResult {
  /// The list of all tags added to the specified queue.
  @_s.JsonKey(name: 'Tags')
  final Map<String, String> tags;

  ListQueueTagsResult({
    this.tags,
  });
  factory ListQueueTagsResult.fromXml(_s.XmlElement elem) {
    return ListQueueTagsResult(
      tags: Map.fromEntries(
        elem.findElements('Tag').map(
              (c) => MapEntry(
                _s.extractXmlStringValue(c, 'Key'),
                _s.extractXmlStringValue(c, 'Value'),
              ),
            ),
      ),
    );
  }
}

/// A list of your queues.
@_s.JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
    createFactory: false,
    createToJson: false)
class ListQueuesResult {
  /// A list of queue URLs, up to 1,000 entries.
  @_s.JsonKey(name: 'QueueUrls')
  final List<String> queueUrls;

  ListQueuesResult({
    this.queueUrls,
  });
  factory ListQueuesResult.fromXml(_s.XmlElement elem) {
    return ListQueuesResult(
      queueUrls: _s.extractXmlStringListValues(elem, 'QueueUrl'),
    );
  }
}

/// An Amazon SQS message.
@_s.JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
    createFactory: false,
    createToJson: false)
class Message {
  /// A map of the attributes requested in <code> <a>ReceiveMessage</a> </code> to
  /// their respective values. Supported attributes:
  ///
  /// <ul>
  /// <li>
  /// <code>ApproximateReceiveCount</code>
  /// </li>
  /// <li>
  /// <code>ApproximateFirstReceiveTimestamp</code>
  /// </li>
  /// <li>
  /// <code>MessageDeduplicationId</code>
  /// </li>
  /// <li>
  /// <code>MessageGroupId</code>
  /// </li>
  /// <li>
  /// <code>SenderId</code>
  /// </li>
  /// <li>
  /// <code>SentTimestamp</code>
  /// </li>
  /// <li>
  /// <code>SequenceNumber</code>
  /// </li>
  /// </ul>
  /// <code>ApproximateFirstReceiveTimestamp</code> and <code>SentTimestamp</code>
  /// are each returned as an integer representing the <a
  /// href="http://en.wikipedia.org/wiki/Unix_time">epoch time</a> in
  /// milliseconds.
  @_s.JsonKey(name: 'Attributes')
  final Map<String, String> attributes;

  /// The message's contents (not URL-encoded).
  @_s.JsonKey(name: 'Body')
  final String body;

  /// An MD5 digest of the non-URL-encoded message body string.
  @_s.JsonKey(name: 'MD5OfBody')
  final String mD5OfBody;

  /// An MD5 digest of the non-URL-encoded message attribute string. You can use
  /// this attribute to verify that Amazon SQS received the message correctly.
  /// Amazon SQS URL-decodes the message before creating the MD5 digest. For
  /// information about MD5, see <a
  /// href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.
  @_s.JsonKey(name: 'MD5OfMessageAttributes')
  final String mD5OfMessageAttributes;

  /// Each message attribute consists of a <code>Name</code>, <code>Type</code>,
  /// and <code>Value</code>. For more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html">Amazon
  /// SQS Message Attributes</a> in the <i>Amazon Simple Queue Service Developer
  /// Guide</i>.
  @_s.JsonKey(name: 'MessageAttributes')
  final Map<String, MessageAttributeValue> messageAttributes;

  /// A unique identifier for the message. A <code>MessageId</code>is considered
  /// unique across all AWS accounts for an extended period of time.
  @_s.JsonKey(name: 'MessageId')
  final String messageId;

  /// An identifier associated with the act of receiving the message. A new
  /// receipt handle is returned every time you receive a message. When deleting a
  /// message, you provide the last received receipt handle to delete the message.
  @_s.JsonKey(name: 'ReceiptHandle')
  final String receiptHandle;

  Message({
    this.attributes,
    this.body,
    this.mD5OfBody,
    this.mD5OfMessageAttributes,
    this.messageAttributes,
    this.messageId,
    this.receiptHandle,
  });
  factory Message.fromXml(_s.XmlElement elem) {
    return Message(
      attributes: Map.fromEntries(
        elem.findElements('Attribute').map(
              (c) => MapEntry(
                _s.extractXmlStringValue(c, 'Name'),
                _s.extractXmlStringValue(c, 'Value'),
              ),
            ),
      ),
      body: _s.extractXmlStringValue(elem, 'Body'),
      mD5OfBody: _s.extractXmlStringValue(elem, 'MD5OfBody'),
      mD5OfMessageAttributes:
          _s.extractXmlStringValue(elem, 'MD5OfMessageAttributes'),
      messageAttributes: Map.fromEntries(
        elem.findElements('MessageAttribute').map(
              (c) => MapEntry(
                _s.extractXmlStringValue(c, 'Name'),
                _s
                    .extractXmlChild(c, 'Value')
                    ?.let((e) => MessageAttributeValue.fromXml(e)),
              ),
            ),
      ),
      messageId: _s.extractXmlStringValue(elem, 'MessageId'),
      receiptHandle: _s.extractXmlStringValue(elem, 'ReceiptHandle'),
    );
  }
}

/// The user-specified message attribute value. For string data types, the
/// <code>Value</code> attribute has the same restrictions on the content as the
/// message body. For more information, see <code> <a>SendMessage</a>.</code>
///
/// <code>Name</code>, <code>type</code>, <code>value</code> and the message
/// body must not be empty or null. All parts of the message attribute,
/// including <code>Name</code>, <code>Type</code>, and <code>Value</code>, are
/// part of the message size restriction (256 KB or 262,144 bytes).
@_s.JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
    createFactory: false,
    createToJson: true)
class MessageAttributeValue {
  /// Amazon SQS supports the following logical data types: <code>String</code>,
  /// <code>Number</code>, and <code>Binary</code>. For the <code>Number</code>
  /// data type, you must use <code>StringValue</code>.
  ///
  /// You can also append custom labels. For more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html">Amazon
  /// SQS Message Attributes</a> in the <i>Amazon Simple Queue Service Developer
  /// Guide</i>.
  @_s.JsonKey(name: 'DataType')
  final String dataType;

  /// Not implemented. Reserved for future use.
  @Uint8ListListConverter()
  @_s.JsonKey(name: 'BinaryListValues')
  final List<Uint8List> binaryListValues;

  /// Binary type attributes can store any binary data, such as compressed data,
  /// encrypted data, or images.
  @Uint8ListConverter()
  @_s.JsonKey(name: 'BinaryValue')
  final Uint8List binaryValue;

  /// Not implemented. Reserved for future use.
  @_s.JsonKey(name: 'StringListValues')
  final List<String> stringListValues;

  /// Strings are Unicode with UTF-8 binary encoding. For a list of code values,
  /// see <a
  /// href="http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters">ASCII
  /// Printable Characters</a>.
  @_s.JsonKey(name: 'StringValue')
  final String stringValue;

  MessageAttributeValue({
    @_s.required this.dataType,
    this.binaryListValues,
    this.binaryValue,
    this.stringListValues,
    this.stringValue,
  });
  factory MessageAttributeValue.fromXml(_s.XmlElement elem) {
    return MessageAttributeValue(
      dataType: _s.extractXmlStringValue(elem, 'DataType'),
      binaryListValues:
          _s.extractXmlUint8ListListValues(elem, 'BinaryListValue'),
      binaryValue: _s.extractXmlUint8ListValue(elem, 'BinaryValue'),
      stringListValues: _s.extractXmlStringListValues(elem, 'StringListValue'),
      stringValue: _s.extractXmlStringValue(elem, 'StringValue'),
    );
  }

  Map<String, dynamic> toJson() => _$MessageAttributeValueToJson(this);
}

enum MessageSystemAttributeName {
  @_s.JsonValue('SenderId')
  senderId,
  @_s.JsonValue('SentTimestamp')
  sentTimestamp,
  @_s.JsonValue('ApproximateReceiveCount')
  approximateReceiveCount,
  @_s.JsonValue('ApproximateFirstReceiveTimestamp')
  approximateFirstReceiveTimestamp,
  @_s.JsonValue('SequenceNumber')
  sequenceNumber,
  @_s.JsonValue('MessageDeduplicationId')
  messageDeduplicationId,
  @_s.JsonValue('MessageGroupId')
  messageGroupId,
  @_s.JsonValue('AWSTraceHeader')
  awsTraceHeader,
}

extension on String {
  MessageSystemAttributeName toMessageSystemAttributeName() {
    switch (this) {
      case 'SenderId':
        return MessageSystemAttributeName.senderId;
      case 'SentTimestamp':
        return MessageSystemAttributeName.sentTimestamp;
      case 'ApproximateReceiveCount':
        return MessageSystemAttributeName.approximateReceiveCount;
      case 'ApproximateFirstReceiveTimestamp':
        return MessageSystemAttributeName.approximateFirstReceiveTimestamp;
      case 'SequenceNumber':
        return MessageSystemAttributeName.sequenceNumber;
      case 'MessageDeduplicationId':
        return MessageSystemAttributeName.messageDeduplicationId;
      case 'MessageGroupId':
        return MessageSystemAttributeName.messageGroupId;
      case 'AWSTraceHeader':
        return MessageSystemAttributeName.awsTraceHeader;
    }
    throw Exception('Unknown enum value: $this');
  }
}

enum MessageSystemAttributeNameForSends {
  @_s.JsonValue('AWSTraceHeader')
  awsTraceHeader,
}

extension on String {
  MessageSystemAttributeNameForSends toMessageSystemAttributeNameForSends() {
    switch (this) {
      case 'AWSTraceHeader':
        return MessageSystemAttributeNameForSends.awsTraceHeader;
    }
    throw Exception('Unknown enum value: $this');
  }
}

/// The user-specified message system attribute value. For string data types,
/// the <code>Value</code> attribute has the same restrictions on the content as
/// the message body. For more information, see <code>
/// <a>SendMessage</a>.</code>
///
/// <code>Name</code>, <code>type</code>, <code>value</code> and the message
/// body must not be empty or null.
@_s.JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
    createFactory: false,
    createToJson: true)
class MessageSystemAttributeValue {
  /// Amazon SQS supports the following logical data types: <code>String</code>,
  /// <code>Number</code>, and <code>Binary</code>. For the <code>Number</code>
  /// data type, you must use <code>StringValue</code>.
  ///
  /// You can also append custom labels. For more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html">Amazon
  /// SQS Message Attributes</a> in the <i>Amazon Simple Queue Service Developer
  /// Guide</i>.
  @_s.JsonKey(name: 'DataType')
  final String dataType;

  /// Not implemented. Reserved for future use.
  @Uint8ListListConverter()
  @_s.JsonKey(name: 'BinaryListValues')
  final List<Uint8List> binaryListValues;

  /// Binary type attributes can store any binary data, such as compressed data,
  /// encrypted data, or images.
  @Uint8ListConverter()
  @_s.JsonKey(name: 'BinaryValue')
  final Uint8List binaryValue;

  /// Not implemented. Reserved for future use.
  @_s.JsonKey(name: 'StringListValues')
  final List<String> stringListValues;

  /// Strings are Unicode with UTF-8 binary encoding. For a list of code values,
  /// see <a
  /// href="http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters">ASCII
  /// Printable Characters</a>.
  @_s.JsonKey(name: 'StringValue')
  final String stringValue;

  MessageSystemAttributeValue({
    @_s.required this.dataType,
    this.binaryListValues,
    this.binaryValue,
    this.stringListValues,
    this.stringValue,
  });
  Map<String, dynamic> toJson() => _$MessageSystemAttributeValueToJson(this);
}

enum QueueAttributeName {
  @_s.JsonValue('All')
  all,
  @_s.JsonValue('Policy')
  policy,
  @_s.JsonValue('VisibilityTimeout')
  visibilityTimeout,
  @_s.JsonValue('MaximumMessageSize')
  maximumMessageSize,
  @_s.JsonValue('MessageRetentionPeriod')
  messageRetentionPeriod,
  @_s.JsonValue('ApproximateNumberOfMessages')
  approximateNumberOfMessages,
  @_s.JsonValue('ApproximateNumberOfMessagesNotVisible')
  approximateNumberOfMessagesNotVisible,
  @_s.JsonValue('CreatedTimestamp')
  createdTimestamp,
  @_s.JsonValue('LastModifiedTimestamp')
  lastModifiedTimestamp,
  @_s.JsonValue('QueueArn')
  queueArn,
  @_s.JsonValue('ApproximateNumberOfMessagesDelayed')
  approximateNumberOfMessagesDelayed,
  @_s.JsonValue('DelaySeconds')
  delaySeconds,
  @_s.JsonValue('ReceiveMessageWaitTimeSeconds')
  receiveMessageWaitTimeSeconds,
  @_s.JsonValue('RedrivePolicy')
  redrivePolicy,
  @_s.JsonValue('FifoQueue')
  fifoQueue,
  @_s.JsonValue('ContentBasedDeduplication')
  contentBasedDeduplication,
  @_s.JsonValue('KmsMasterKeyId')
  kmsMasterKeyId,
  @_s.JsonValue('KmsDataKeyReusePeriodSeconds')
  kmsDataKeyReusePeriodSeconds,
}

extension on String {
  QueueAttributeName toQueueAttributeName() {
    switch (this) {
      case 'All':
        return QueueAttributeName.all;
      case 'Policy':
        return QueueAttributeName.policy;
      case 'VisibilityTimeout':
        return QueueAttributeName.visibilityTimeout;
      case 'MaximumMessageSize':
        return QueueAttributeName.maximumMessageSize;
      case 'MessageRetentionPeriod':
        return QueueAttributeName.messageRetentionPeriod;
      case 'ApproximateNumberOfMessages':
        return QueueAttributeName.approximateNumberOfMessages;
      case 'ApproximateNumberOfMessagesNotVisible':
        return QueueAttributeName.approximateNumberOfMessagesNotVisible;
      case 'CreatedTimestamp':
        return QueueAttributeName.createdTimestamp;
      case 'LastModifiedTimestamp':
        return QueueAttributeName.lastModifiedTimestamp;
      case 'QueueArn':
        return QueueAttributeName.queueArn;
      case 'ApproximateNumberOfMessagesDelayed':
        return QueueAttributeName.approximateNumberOfMessagesDelayed;
      case 'DelaySeconds':
        return QueueAttributeName.delaySeconds;
      case 'ReceiveMessageWaitTimeSeconds':
        return QueueAttributeName.receiveMessageWaitTimeSeconds;
      case 'RedrivePolicy':
        return QueueAttributeName.redrivePolicy;
      case 'FifoQueue':
        return QueueAttributeName.fifoQueue;
      case 'ContentBasedDeduplication':
        return QueueAttributeName.contentBasedDeduplication;
      case 'KmsMasterKeyId':
        return QueueAttributeName.kmsMasterKeyId;
      case 'KmsDataKeyReusePeriodSeconds':
        return QueueAttributeName.kmsDataKeyReusePeriodSeconds;
    }
    throw Exception('Unknown enum value: $this');
  }
}

/// A list of received messages.
@_s.JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
    createFactory: false,
    createToJson: false)
class ReceiveMessageResult {
  /// A list of messages.
  @_s.JsonKey(name: 'Messages')
  final List<Message> messages;

  ReceiveMessageResult({
    this.messages,
  });
  factory ReceiveMessageResult.fromXml(_s.XmlElement elem) {
    return ReceiveMessageResult(
      messages:
          elem.findElements('Message').map((c) => Message.fromXml(c)).toList(),
    );
  }
}

/// Contains the details of a single Amazon SQS message along with an
/// <code>Id</code>.
@_s.JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
    createFactory: false,
    createToJson: true)
class SendMessageBatchRequestEntry {
  /// An identifier for a message in this batch used to communicate the result.
  /// <note>
  /// The <code>Id</code>s of a batch request need to be unique within a request
  ///
  /// This identifier can have up to 80 characters. The following characters are
  /// accepted: alphanumeric characters, hyphens(-), and underscores (_).
  /// </note>
  @_s.JsonKey(name: 'Id')
  final String id;

  /// The body of the message.
  @_s.JsonKey(name: 'MessageBody')
  final String messageBody;

  /// The length of time, in seconds, for which a specific message is delayed.
  /// Valid values: 0 to 900. Maximum: 15 minutes. Messages with a positive
  /// <code>DelaySeconds</code> value become available for processing after the
  /// delay period is finished. If you don't specify a value, the default value
  /// for the queue is applied.
  /// <note>
  /// When you set <code>FifoQueue</code>, you can't set <code>DelaySeconds</code>
  /// per message. You can set this parameter only on a queue level.
  /// </note>
  @_s.JsonKey(name: 'DelaySeconds')
  final int delaySeconds;

  /// Each message attribute consists of a <code>Name</code>, <code>Type</code>,
  /// and <code>Value</code>. For more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html">Amazon
  /// SQS Message Attributes</a> in the <i>Amazon Simple Queue Service Developer
  /// Guide</i>.
  @_s.JsonKey(name: 'MessageAttributes')
  final Map<String, MessageAttributeValue> messageAttributes;

  /// This parameter applies only to FIFO (first-in-first-out) queues.
  ///
  /// The token used for deduplication of messages within a 5-minute minimum
  /// deduplication interval. If a message with a particular
  /// <code>MessageDeduplicationId</code> is sent successfully, subsequent
  /// messages with the same <code>MessageDeduplicationId</code> are accepted
  /// successfully but aren't delivered. For more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing">
  /// Exactly-Once Processing</a> in the <i>Amazon Simple Queue Service Developer
  /// Guide</i>.
  ///
  /// <ul>
  /// <li>
  /// Every message must have a unique <code>MessageDeduplicationId</code>,
  ///
  /// <ul>
  /// <li>
  /// You may provide a <code>MessageDeduplicationId</code> explicitly.
  /// </li>
  /// <li>
  /// If you aren't able to provide a <code>MessageDeduplicationId</code> and you
  /// enable <code>ContentBasedDeduplication</code> for your queue, Amazon SQS
  /// uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code>
  /// using the body of the message (but not the attributes of the message).
  /// </li>
  /// <li>
  /// If you don't provide a <code>MessageDeduplicationId</code> and the queue
  /// doesn't have <code>ContentBasedDeduplication</code> set, the action fails
  /// with an error.
  /// </li>
  /// <li>
  /// If the queue has <code>ContentBasedDeduplication</code> set, your
  /// <code>MessageDeduplicationId</code> overrides the generated one.
  /// </li>
  /// </ul> </li>
  /// <li>
  /// When <code>ContentBasedDeduplication</code> is in effect, messages with
  /// identical content sent within the deduplication interval are treated as
  /// duplicates and only one copy of the message is delivered.
  /// </li>
  /// <li>
  /// If you send one message with <code>ContentBasedDeduplication</code> enabled
  /// and then another message with a <code>MessageDeduplicationId</code> that is
  /// the same as the one generated for the first
  /// <code>MessageDeduplicationId</code>, the two messages are treated as
  /// duplicates and only one copy of the message is delivered.
  /// </li>
  /// </ul> <note>
  /// The <code>MessageDeduplicationId</code> is available to the consumer of the
  /// message (this can be useful for troubleshooting delivery issues).
  ///
  /// If a message is sent successfully but the acknowledgement is lost and the
  /// message is resent with the same <code>MessageDeduplicationId</code> after
  /// the deduplication interval, Amazon SQS can't detect duplicate messages.
  ///
  /// Amazon SQS continues to keep track of the message deduplication ID even
  /// after the message is received and deleted.
  /// </note>
  /// The length of <code>MessageDeduplicationId</code> is 128 characters.
  /// <code>MessageDeduplicationId</code> can contain alphanumeric characters
  /// (<code>a-z</code>, <code>A-Z</code>, <code>0-9</code>) and punctuation
  /// (<code>!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~</code>).
  ///
  /// For best practices of using <code>MessageDeduplicationId</code>, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagededuplicationid-property.html">Using
  /// the MessageDeduplicationId Property</a> in the <i>Amazon Simple Queue
  /// Service Developer Guide</i>.
  @_s.JsonKey(name: 'MessageDeduplicationId')
  final String messageDeduplicationId;

  /// This parameter applies only to FIFO (first-in-first-out) queues.
  ///
  /// The tag that specifies that a message belongs to a specific message group.
  /// Messages that belong to the same message group are processed in a FIFO
  /// manner (however, messages in different message groups might be processed out
  /// of order). To interleave multiple ordered streams within a single queue, use
  /// <code>MessageGroupId</code> values (for example, session data for multiple
  /// users). In this scenario, multiple consumers can process the queue, but the
  /// session data of each user is processed in a FIFO fashion.
  ///
  /// <ul>
  /// <li>
  /// You must associate a non-empty <code>MessageGroupId</code> with a message.
  /// If you don't provide a <code>MessageGroupId</code>, the action fails.
  /// </li>
  /// <li>
  /// <code>ReceiveMessage</code> might return messages with multiple
  /// <code>MessageGroupId</code> values. For each <code>MessageGroupId</code>,
  /// the messages are sorted by time sent. The caller can't specify a
  /// <code>MessageGroupId</code>.
  /// </li>
  /// </ul>
  /// The length of <code>MessageGroupId</code> is 128 characters. Valid values:
  /// alphanumeric characters and punctuation
  /// <code>(!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~)</code>.
  ///
  /// For best practices of using <code>MessageGroupId</code>, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagegroupid-property.html">Using
  /// the MessageGroupId Property</a> in the <i>Amazon Simple Queue Service
  /// Developer Guide</i>.
  /// <important>
  /// <code>MessageGroupId</code> is required for FIFO queues. You can't use it
  /// for Standard queues.
  /// </important>
  @_s.JsonKey(name: 'MessageGroupId')
  final String messageGroupId;

  /// The message system attribute to send Each message system attribute consists
  /// of a <code>Name</code>, <code>Type</code>, and <code>Value</code>.
  /// <important>
  /// <ul>
  /// <li>
  /// Currently, the only supported message system attribute is
  /// <code>AWSTraceHeader</code>. Its type must be <code>String</code> and its
  /// value must be a correctly formatted AWS X-Ray trace string.
  /// </li>
  /// <li>
  /// The size of a message system attribute doesn't count towards the total size
  /// of a message.
  /// </li>
  /// </ul> </important>
  @_s.JsonKey(name: 'MessageSystemAttributes')
  final Map<String, MessageSystemAttributeValue> messageSystemAttributes;

  SendMessageBatchRequestEntry({
    @_s.required this.id,
    @_s.required this.messageBody,
    this.delaySeconds,
    this.messageAttributes,
    this.messageDeduplicationId,
    this.messageGroupId,
    this.messageSystemAttributes,
  });
  Map<String, dynamic> toJson() => _$SendMessageBatchRequestEntryToJson(this);
}

/// For each message in the batch, the response contains a <code>
/// <a>SendMessageBatchResultEntry</a> </code> tag if the message succeeds or a
/// <code> <a>BatchResultErrorEntry</a> </code> tag if the message fails.
@_s.JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
    createFactory: false,
    createToJson: false)
class SendMessageBatchResult {
  /// A list of <code> <a>BatchResultErrorEntry</a> </code> items with error
  /// details about each message that can't be enqueued.
  @_s.JsonKey(name: 'Failed')
  final List<BatchResultErrorEntry> failed;

  /// A list of <code> <a>SendMessageBatchResultEntry</a> </code> items.
  @_s.JsonKey(name: 'Successful')
  final List<SendMessageBatchResultEntry> successful;

  SendMessageBatchResult({
    @_s.required this.failed,
    @_s.required this.successful,
  });
  factory SendMessageBatchResult.fromXml(_s.XmlElement elem) {
    return SendMessageBatchResult(
      failed: elem
          .findElements('BatchResultErrorEntry')
          .map((c) => BatchResultErrorEntry.fromXml(c))
          .toList(),
      successful: elem
          .findElements('SendMessageBatchResultEntry')
          .map((c) => SendMessageBatchResultEntry.fromXml(c))
          .toList(),
    );
  }
}

/// Encloses a <code>MessageId</code> for a successfully-enqueued message in a
/// <code> <a>SendMessageBatch</a>.</code>
@_s.JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
    createFactory: false,
    createToJson: false)
class SendMessageBatchResultEntry {
  /// An identifier for the message in this batch.
  @_s.JsonKey(name: 'Id')
  final String id;

  /// An MD5 digest of the non-URL-encoded message attribute string. You can use
  /// this attribute to verify that Amazon SQS received the message correctly.
  /// Amazon SQS URL-decodes the message before creating the MD5 digest. For
  /// information about MD5, see <a
  /// href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.
  @_s.JsonKey(name: 'MD5OfMessageBody')
  final String mD5OfMessageBody;

  /// An identifier for the message.
  @_s.JsonKey(name: 'MessageId')
  final String messageId;

  /// An MD5 digest of the non-URL-encoded message attribute string. You can use
  /// this attribute to verify that Amazon SQS received the message correctly.
  /// Amazon SQS URL-decodes the message before creating the MD5 digest. For
  /// information about MD5, see <a
  /// href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.
  @_s.JsonKey(name: 'MD5OfMessageAttributes')
  final String mD5OfMessageAttributes;

  /// An MD5 digest of the non-URL-encoded message system attribute string. You
  /// can use this attribute to verify that Amazon SQS received the message
  /// correctly. Amazon SQS URL-decodes the message before creating the MD5
  /// digest. For information about MD5, see <a
  /// href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.
  @_s.JsonKey(name: 'MD5OfMessageSystemAttributes')
  final String mD5OfMessageSystemAttributes;

  /// This parameter applies only to FIFO (first-in-first-out) queues.
  ///
  /// The large, non-consecutive number that Amazon SQS assigns to each message.
  ///
  /// The length of <code>SequenceNumber</code> is 128 bits. As
  /// <code>SequenceNumber</code> continues to increase for a particular
  /// <code>MessageGroupId</code>.
  @_s.JsonKey(name: 'SequenceNumber')
  final String sequenceNumber;

  SendMessageBatchResultEntry({
    @_s.required this.id,
    @_s.required this.mD5OfMessageBody,
    @_s.required this.messageId,
    this.mD5OfMessageAttributes,
    this.mD5OfMessageSystemAttributes,
    this.sequenceNumber,
  });
  factory SendMessageBatchResultEntry.fromXml(_s.XmlElement elem) {
    return SendMessageBatchResultEntry(
      id: _s.extractXmlStringValue(elem, 'Id'),
      mD5OfMessageBody: _s.extractXmlStringValue(elem, 'MD5OfMessageBody'),
      messageId: _s.extractXmlStringValue(elem, 'MessageId'),
      mD5OfMessageAttributes:
          _s.extractXmlStringValue(elem, 'MD5OfMessageAttributes'),
      mD5OfMessageSystemAttributes:
          _s.extractXmlStringValue(elem, 'MD5OfMessageSystemAttributes'),
      sequenceNumber: _s.extractXmlStringValue(elem, 'SequenceNumber'),
    );
  }
}

/// The <code>MD5OfMessageBody</code> and <code>MessageId</code> elements.
@_s.JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
    createFactory: false,
    createToJson: false)
class SendMessageResult {
  /// An MD5 digest of the non-URL-encoded message attribute string. You can use
  /// this attribute to verify that Amazon SQS received the message correctly.
  /// Amazon SQS URL-decodes the message before creating the MD5 digest. For
  /// information about MD5, see <a
  /// href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.
  @_s.JsonKey(name: 'MD5OfMessageAttributes')
  final String mD5OfMessageAttributes;

  /// An MD5 digest of the non-URL-encoded message attribute string. You can use
  /// this attribute to verify that Amazon SQS received the message correctly.
  /// Amazon SQS URL-decodes the message before creating the MD5 digest. For
  /// information about MD5, see <a
  /// href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.
  @_s.JsonKey(name: 'MD5OfMessageBody')
  final String mD5OfMessageBody;

  /// An MD5 digest of the non-URL-encoded message system attribute string. You
  /// can use this attribute to verify that Amazon SQS received the message
  /// correctly. Amazon SQS URL-decodes the message before creating the MD5
  /// digest.
  @_s.JsonKey(name: 'MD5OfMessageSystemAttributes')
  final String mD5OfMessageSystemAttributes;

  /// An attribute containing the <code>MessageId</code> of the message sent to
  /// the queue. For more information, see <a
  /// href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html">Queue
  /// and Message Identifiers</a> in the <i>Amazon Simple Queue Service Developer
  /// Guide</i>.
  @_s.JsonKey(name: 'MessageId')
  final String messageId;

  /// This parameter applies only to FIFO (first-in-first-out) queues.
  ///
  /// The large, non-consecutive number that Amazon SQS assigns to each message.
  ///
  /// The length of <code>SequenceNumber</code> is 128 bits.
  /// <code>SequenceNumber</code> continues to increase for a particular
  /// <code>MessageGroupId</code>.
  @_s.JsonKey(name: 'SequenceNumber')
  final String sequenceNumber;

  SendMessageResult({
    this.mD5OfMessageAttributes,
    this.mD5OfMessageBody,
    this.mD5OfMessageSystemAttributes,
    this.messageId,
    this.sequenceNumber,
  });
  factory SendMessageResult.fromXml(_s.XmlElement elem) {
    return SendMessageResult(
      mD5OfMessageAttributes:
          _s.extractXmlStringValue(elem, 'MD5OfMessageAttributes'),
      mD5OfMessageBody: _s.extractXmlStringValue(elem, 'MD5OfMessageBody'),
      mD5OfMessageSystemAttributes:
          _s.extractXmlStringValue(elem, 'MD5OfMessageSystemAttributes'),
      messageId: _s.extractXmlStringValue(elem, 'MessageId'),
      sequenceNumber: _s.extractXmlStringValue(elem, 'SequenceNumber'),
    );
  }
}

class BatchEntryIdsNotDistinct extends _s.GenericAwsException {
  BatchEntryIdsNotDistinct({String type, String message})
      : super(type: type, code: 'BatchEntryIdsNotDistinct', message: message);
}

class BatchRequestTooLong extends _s.GenericAwsException {
  BatchRequestTooLong({String type, String message})
      : super(type: type, code: 'BatchRequestTooLong', message: message);
}

class EmptyBatchRequest extends _s.GenericAwsException {
  EmptyBatchRequest({String type, String message})
      : super(type: type, code: 'EmptyBatchRequest', message: message);
}

class InvalidAttributeName extends _s.GenericAwsException {
  InvalidAttributeName({String type, String message})
      : super(type: type, code: 'InvalidAttributeName', message: message);
}

class InvalidBatchEntryId extends _s.GenericAwsException {
  InvalidBatchEntryId({String type, String message})
      : super(type: type, code: 'InvalidBatchEntryId', message: message);
}

class InvalidIdFormat extends _s.GenericAwsException {
  InvalidIdFormat({String type, String message})
      : super(type: type, code: 'InvalidIdFormat', message: message);
}

class InvalidMessageContents extends _s.GenericAwsException {
  InvalidMessageContents({String type, String message})
      : super(type: type, code: 'InvalidMessageContents', message: message);
}

class MessageNotInflight extends _s.GenericAwsException {
  MessageNotInflight({String type, String message})
      : super(type: type, code: 'MessageNotInflight', message: message);
}

class OverLimit extends _s.GenericAwsException {
  OverLimit({String type, String message})
      : super(type: type, code: 'OverLimit', message: message);
}

class PurgeQueueInProgress extends _s.GenericAwsException {
  PurgeQueueInProgress({String type, String message})
      : super(type: type, code: 'PurgeQueueInProgress', message: message);
}

class QueueDeletedRecently extends _s.GenericAwsException {
  QueueDeletedRecently({String type, String message})
      : super(type: type, code: 'QueueDeletedRecently', message: message);
}

class QueueDoesNotExist extends _s.GenericAwsException {
  QueueDoesNotExist({String type, String message})
      : super(type: type, code: 'QueueDoesNotExist', message: message);
}

class QueueNameExists extends _s.GenericAwsException {
  QueueNameExists({String type, String message})
      : super(type: type, code: 'QueueNameExists', message: message);
}

class ReceiptHandleIsInvalid extends _s.GenericAwsException {
  ReceiptHandleIsInvalid({String type, String message})
      : super(type: type, code: 'ReceiptHandleIsInvalid', message: message);
}

class TooManyEntriesInBatchRequest extends _s.GenericAwsException {
  TooManyEntriesInBatchRequest({String type, String message})
      : super(
            type: type, code: 'TooManyEntriesInBatchRequest', message: message);
}

class UnsupportedOperation extends _s.GenericAwsException {
  UnsupportedOperation({String type, String message})
      : super(type: type, code: 'UnsupportedOperation', message: message);
}

final _exceptionFns = <String, _s.AwsExceptionFn>{
  'BatchEntryIdsNotDistinct': (type, message) =>
      BatchEntryIdsNotDistinct(type: type, message: message),
  'BatchRequestTooLong': (type, message) =>
      BatchRequestTooLong(type: type, message: message),
  'EmptyBatchRequest': (type, message) =>
      EmptyBatchRequest(type: type, message: message),
  'InvalidAttributeName': (type, message) =>
      InvalidAttributeName(type: type, message: message),
  'InvalidBatchEntryId': (type, message) =>
      InvalidBatchEntryId(type: type, message: message),
  'InvalidIdFormat': (type, message) =>
      InvalidIdFormat(type: type, message: message),
  'InvalidMessageContents': (type, message) =>
      InvalidMessageContents(type: type, message: message),
  'MessageNotInflight': (type, message) =>
      MessageNotInflight(type: type, message: message),
  'OverLimit': (type, message) => OverLimit(type: type, message: message),
  'PurgeQueueInProgress': (type, message) =>
      PurgeQueueInProgress(type: type, message: message),
  'QueueDeletedRecently': (type, message) =>
      QueueDeletedRecently(type: type, message: message),
  'QueueDoesNotExist': (type, message) =>
      QueueDoesNotExist(type: type, message: message),
  'QueueNameExists': (type, message) =>
      QueueNameExists(type: type, message: message),
  'ReceiptHandleIsInvalid': (type, message) =>
      ReceiptHandleIsInvalid(type: type, message: message),
  'TooManyEntriesInBatchRequest': (type, message) =>
      TooManyEntriesInBatchRequest(type: type, message: message),
  'UnsupportedOperation': (type, message) =>
      UnsupportedOperation(type: type, message: message),
};
