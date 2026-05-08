package Paws::SQS;
  use Moose;
  sub service { 'sqs' }
  sub signing_name { 'sqs' }
  sub version { '2012-11-05' }
  sub target_prefix { 'AmazonSQS' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
       sub { defined $_[0]->http_status and $_[0]->http_status == 403 and $_[0]->code eq 'RequestThrottled' },
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  has '+region_rules' => (default => sub {
    my $regioninfo;
      $regioninfo = [
    {
      constraints => [
        [
          'region',
          'equals',
          'us-east-1'
        ]
      ],
      uri => 'https://queue.amazonaws.com'
    },
    {
      constraints => [
        [
          'region',
          'startsWith',
          'cn-'
        ]
      ],
      uri => 'https://{region}.queue.amazonaws.com.cn'
    },
    {
      constraints => [
        [
          'region',
          'notEquals',
          undef
        ]
      ],
      uri => 'https://{region}.queue.amazonaws.com'
    }
  ];

    return $regioninfo;
  });

  
  sub AddPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::AddPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelMessageMoveTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::CancelMessageMoveTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ChangeMessageVisibility {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::ChangeMessageVisibility', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ChangeMessageVisibilityBatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::ChangeMessageVisibilityBatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::CreateQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::DeleteMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMessageBatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::DeleteMessageBatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::DeleteQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueueAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::GetQueueAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueueUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::GetQueueUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeadLetterSourceQueues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::ListDeadLetterSourceQueues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMessageMoveTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::ListMessageMoveTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQueues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::ListQueues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQueueTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::ListQueueTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurgeQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::PurgeQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReceiveMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::ReceiveMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemovePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::RemovePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::SendMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendMessageBatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::SendMessageBatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetQueueAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::SetQueueAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMessageMoveTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::StartMessageMoveTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::TagQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SQS::UntagQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDeadLetterSourceQueues {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeadLetterSourceQueues(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDeadLetterSourceQueues(@_, NextToken => $next_result->NextToken);
        push @{ $result->queueUrls }, @{ $next_result->queueUrls };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'queueUrls') foreach (@{ $result->queueUrls });
        $result = $self->ListDeadLetterSourceQueues(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'queueUrls') foreach (@{ $result->queueUrls });
    }

    return undef
  }
  sub ListAllQueues {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListQueues(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListQueues(@_, NextToken => $next_result->NextToken);
        push @{ $result->QueueUrls }, @{ $next_result->QueueUrls };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'QueueUrls') foreach (@{ $result->QueueUrls });
        $result = $self->ListQueues(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'QueueUrls') foreach (@{ $result->QueueUrls });
    }

    return undef
  }


  sub operations { qw/AddPermission CancelMessageMoveTask ChangeMessageVisibility ChangeMessageVisibilityBatch CreateQueue DeleteMessage DeleteMessageBatch DeleteQueue GetQueueAttributes GetQueueUrl ListDeadLetterSourceQueues ListMessageMoveTasks ListQueues ListQueueTags PurgeQueue ReceiveMessage RemovePermission SendMessage SendMessageBatch SetQueueAttributes StartMessageMoveTask TagQueue UntagQueue / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS - Perl Interface to AWS Amazon Simple Queue Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SQS');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Welcome to the I<Amazon SQS API Reference>.

Amazon SQS is a reliable, highly-scalable hosted queue for storing
messages as they travel between applications or microservices. Amazon
SQS moves data between distributed application components and helps you
decouple these components.

For information on the permissions you need to use this API, see
Identity and access management
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-authentication-and-access-control.html)
in the I<Amazon SQS Developer Guide.>

You can use Amazon Web Services SDKs (http://aws.amazon.com/tools/#sdk)
to access Amazon SQS using your favorite programming language. The SDKs
perform tasks such as the following automatically:

=over

=item *

Cryptographically sign your service requests

=item *

Retry requests

=item *

Handle error responses

=back

B<Additional information>

=over

=item *

Amazon SQS Product Page (http://aws.amazon.com/sqs/)

=item *

I<Amazon SQS Developer Guide>

=over

=item *

Making API Requests
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-making-api-requests.html)

=item *

Amazon SQS Message Attributes
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes)

=item *

Amazon SQS Dead-Letter Queues
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html)

=back

=item *

Amazon SQS in the I<Command Line Interface>
(http://docs.aws.amazon.com/cli/latest/reference/sqs/index.html)

=item *

I<Amazon Web Services General Reference>

=over

=item *

Regions and Endpoints
(https://docs.aws.amazon.com/general/latest/gr/rande.html#sqs_region)

=back

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05>


=head1 METHODS

=head2 AddPermission

=over

=item Actions => ArrayRef[Str|Undef]

=item AWSAccountIds => ArrayRef[Str|Undef]

=item Label => Str

=item QueueUrl => Str


=back

Each argument is described in detail in: L<Paws::SQS::AddPermission>

Returns: nothing

Adds a permission to a queue for a specific principal
(https://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P). This
allows sharing access to the queue.

When you create a queue, you have full control access rights for the
queue. Only you, the owner of the queue, can grant or deny permissions
to the queue. For more information about these permissions, see Allow
Developers to Write Messages to a Shared Queue
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-writing-an-sqs-policy.html#write-messages-to-shared-queue)
in the I<Amazon SQS Developer Guide>.

=over

=item *

C<AddPermission> generates a policy for you. You can use C<
SetQueueAttributes > to upload your policy. For more information, see
Using Custom Policies with the Amazon SQS Access Policy Language
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-creating-custom-policies.html)
in the I<Amazon SQS Developer Guide>.

=item *

An Amazon SQS policy can have a maximum of seven actions per statement.

=item *

To remove the ability to change queue permissions, you must deny
permission to the C<AddPermission>, C<RemovePermission>, and
C<SetQueueAttributes> actions in your IAM policy.

=item *

Amazon SQS C<AddPermission> does not support adding a non-account
principal.

=back

Cross-account permissions don't apply to this action. For more
information, see Grant cross-account permissions to a role and a
username
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name)
in the I<Amazon SQS Developer Guide>.


=head2 CancelMessageMoveTask

=over

=item TaskHandle => Str


=back

Each argument is described in detail in: L<Paws::SQS::CancelMessageMoveTask>

Returns: a L<Paws::SQS::CancelMessageMoveTaskResult> instance

Cancels a specified message movement task. A message movement can only
be cancelled when the current status is RUNNING. Cancelling a message
movement task does not revert the messages that have already been
moved. It can only stop the messages that have not been moved yet.

=over

=item *

This action is currently limited to supporting message redrive from
dead-letter queues (DLQs)
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html)
only. In this context, the source queue is the dead-letter queue (DLQ),
while the destination queue can be the original source queue (from
which the messages were driven to the dead-letter-queue), or a custom
destination queue.

=item *

Only one active message movement task is supported per queue at any
given time.

=back



=head2 ChangeMessageVisibility

=over

=item QueueUrl => Str

=item ReceiptHandle => Str

=item VisibilityTimeout => Int


=back

Each argument is described in detail in: L<Paws::SQS::ChangeMessageVisibility>

Returns: nothing

Changes the visibility timeout of a specified message in a queue to a
new value. The default visibility timeout for a message is 30 seconds.
The minimum is 0 seconds. The maximum is 12 hours. For more
information, see Visibility Timeout
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html)
in the I<Amazon SQS Developer Guide>.

For example, if the default timeout for a queue is 60 seconds, 15
seconds have elapsed since you received the message, and you send a
ChangeMessageVisibility call with C<VisibilityTimeout> set to 10
seconds, the 10 seconds begin to count from the time that you make the
C<ChangeMessageVisibility> call. Thus, any attempt to change the
visibility timeout or to delete that message 10 seconds after you
initially change the visibility timeout (a total of 25 seconds) might
result in an error.

An Amazon SQS message has three basic states:

=over

=item 1.

Sent to a queue by a producer.

=item 2.

Received from the queue by a consumer.

=item 3.

Deleted from the queue.

=back

A message is considered to be I<stored> after it is sent to a queue by
a producer, but not yet received from the queue by a consumer (that is,
between states 1 and 2). There is no limit to the number of stored
messages. A message is considered to be I<in flight> after it is
received from a queue by a consumer, but not yet deleted from the queue
(that is, between states 2 and 3). There is a limit to the number of in
flight messages.

Limits that apply to in flight messages are unrelated to the
I<unlimited> number of stored messages.

For most standard queues (depending on queue traffic and message
backlog), there can be a maximum of approximately 120,000 in flight
messages (received from a queue by a consumer, but not yet deleted from
the queue). If you reach this limit, Amazon SQS returns the
C<OverLimit> error message. To avoid reaching the limit, you should
delete messages from the queue after they're processed. You can also
increase the number of queues you use to process your messages. To
request a limit increase, file a support request
(https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-sqs).

For FIFO queues, there can be a maximum of 120,000 in flight messages
(received from a queue by a consumer, but not yet deleted from the
queue). If you reach this limit, Amazon SQS returns no error messages.

If you attempt to set the C<VisibilityTimeout> to a value greater than
the maximum time left, Amazon SQS returns an error. Amazon SQS doesn't
automatically recalculate and increase the timeout to the maximum
remaining time.

Unlike with a queue, when you change the visibility timeout for a
specific message the timeout value is applied immediately but isn't
saved in memory for that message. If you don't delete a message after
it is received, the visibility timeout for the message reverts to the
original timeout value (not to the value you set using the
C<ChangeMessageVisibility> action) the next time the message is
received.


=head2 ChangeMessageVisibilityBatch

=over

=item Entries => ArrayRef[L<Paws::SQS::ChangeMessageVisibilityBatchRequestEntry>]

=item QueueUrl => Str


=back

Each argument is described in detail in: L<Paws::SQS::ChangeMessageVisibilityBatch>

Returns: a L<Paws::SQS::ChangeMessageVisibilityBatchResult> instance

Changes the visibility timeout of multiple messages. This is a batch
version of C< ChangeMessageVisibility.> The result of the action on
each message is reported individually in the response. You can send up
to 10 C< ChangeMessageVisibility > requests with each
C<ChangeMessageVisibilityBatch> action.

Because the batch request can result in a combination of successful and
unsuccessful actions, you should check for batch errors even when the
call returns an HTTP status code of C<200>.


=head2 CreateQueue

=over

=item QueueName => Str

=item [Attributes => L<Paws::SQS::QueueAttributeMap>]

=item [Tags => L<Paws::SQS::TagMap>]


=back

Each argument is described in detail in: L<Paws::SQS::CreateQueue>

Returns: a L<Paws::SQS::CreateQueueResult> instance

Creates a new standard or FIFO queue. You can pass one or more
attributes in the request. Keep the following in mind:

=over

=item *

If you don't specify the C<FifoQueue> attribute, Amazon SQS creates a
standard queue.

You can't change the queue type after you create it and you can't
convert an existing standard queue into a FIFO queue. You must either
create a new FIFO queue for your application or delete your existing
standard queue and recreate it as a FIFO queue. For more information,
see Moving From a Standard Queue to a FIFO Queue
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-moving)
in the I<Amazon SQS Developer Guide>.

=item *

If you don't provide a value for an attribute, the queue is created
with the default value for the attribute.

=item *

If you delete a queue, you must wait at least 60 seconds before
creating a queue with the same name.

=back

To successfully create a new queue, you must provide a queue name that
adheres to the limits related to queues
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html)
and is unique within the scope of your queues.

After you create a queue, you must wait at least one second after the
queue is created to be able to use the queue.

To retrieve the URL of a queue, use the C<GetQueueUrl>
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_GetQueueUrl.html)
action. This action only requires the C<QueueName>
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_CreateQueue.html#API_CreateQueue_RequestSyntax)
parameter.

When creating queues, keep the following points in mind:

=over

=item *

If you specify the name of an existing queue and provide the exact same
names and values for all its attributes, the C<CreateQueue>
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_CreateQueue.html)
action will return the URL of the existing queue instead of creating a
new one.

=item *

If you attempt to create a queue with a name that already exists but
with different attribute names or values, the C<CreateQueue> action
will return an error. This ensures that existing queues are not
inadvertently altered.

=back

Cross-account permissions don't apply to this action. For more
information, see Grant cross-account permissions to a role and a
username
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name)
in the I<Amazon SQS Developer Guide>.


=head2 DeleteMessage

=over

=item QueueUrl => Str

=item ReceiptHandle => Str


=back

Each argument is described in detail in: L<Paws::SQS::DeleteMessage>

Returns: nothing

Deletes the specified message from the specified queue. To select the
message to delete, use the C<ReceiptHandle> of the message (I<not> the
C<MessageId> which you receive when you send the message). Amazon SQS
can delete a message from a queue even if a visibility timeout setting
causes the message to be locked by another consumer. Amazon SQS
automatically deletes messages left in a queue longer than the
retention period configured for the queue.

Each time you receive a message, meaning when a consumer retrieves a
message from the queue, it comes with a unique C<ReceiptHandle>. If you
receive the same message more than once, you will get a different
C<ReceiptHandle> each time. When you want to delete a message using the
C<DeleteMessage> action, you must use the C<ReceiptHandle> from the
most recent time you received the message. If you use an old
C<ReceiptHandle>, the request will succeed, but the message might not
be deleted.

For standard queues, it is possible to receive a message even after you
delete it. This might happen on rare occasions if one of the servers
which stores a copy of the message is unavailable when you send the
request to delete the message. The copy remains on the server and might
be returned to you during a subsequent receive request. You should
ensure that your application is idempotent, so that receiving a message
more than once does not cause issues.


=head2 DeleteMessageBatch

=over

=item Entries => ArrayRef[L<Paws::SQS::DeleteMessageBatchRequestEntry>]

=item QueueUrl => Str


=back

Each argument is described in detail in: L<Paws::SQS::DeleteMessageBatch>

Returns: a L<Paws::SQS::DeleteMessageBatchResult> instance

Deletes up to ten messages from the specified queue. This is a batch
version of C< DeleteMessage.> The result of the action on each message
is reported individually in the response.

Because the batch request can result in a combination of successful and
unsuccessful actions, you should check for batch errors even when the
call returns an HTTP status code of C<200>.


=head2 DeleteQueue

=over

=item QueueUrl => Str


=back

Each argument is described in detail in: L<Paws::SQS::DeleteQueue>

Returns: nothing

Deletes the queue specified by the C<QueueUrl>, regardless of the
queue's contents.

Be careful with the C<DeleteQueue> action: When you delete a queue, any
messages in the queue are no longer available.

When you delete a queue, the deletion process takes up to 60 seconds.
Requests you send involving that queue during the 60 seconds might
succeed. For example, a C< SendMessage > request might succeed, but
after 60 seconds the queue and the message you sent no longer exist.

When you delete a queue, you must wait at least 60 seconds before
creating a queue with the same name.

Cross-account permissions don't apply to this action. For more
information, see Grant cross-account permissions to a role and a
username
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name)
in the I<Amazon SQS Developer Guide>.

The delete operation uses the HTTP C<GET> verb.


=head2 GetQueueAttributes

=over

=item QueueUrl => Str

=item [AttributeNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SQS::GetQueueAttributes>

Returns: a L<Paws::SQS::GetQueueAttributesResult> instance

Gets attributes for the specified queue.

To determine whether a queue is FIFO
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html),
you can check whether C<QueueName> ends with the C<.fifo> suffix.


=head2 GetQueueUrl

=over

=item QueueName => Str

=item [QueueOwnerAWSAccountId => Str]


=back

Each argument is described in detail in: L<Paws::SQS::GetQueueUrl>

Returns: a L<Paws::SQS::GetQueueUrlResult> instance

The C<GetQueueUrl> API returns the URL of an existing Amazon SQS queue.
This is useful when you know the queue's name but need to retrieve its
URL for further operations.

To access a queue owned by another Amazon Web Services account, use the
C<QueueOwnerAWSAccountId> parameter to specify the account ID of the
queue's owner. Note that the queue owner must grant you the necessary
permissions to access the queue. For more information about accessing
shared queues, see the C< AddPermission > API or Allow developers to
write messages to a shared queue
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-writing-an-sqs-policy.html#write-messages-to-shared-queue)
in the I<Amazon SQS Developer Guide>.


=head2 ListDeadLetterSourceQueues

=over

=item QueueUrl => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SQS::ListDeadLetterSourceQueues>

Returns: a L<Paws::SQS::ListDeadLetterSourceQueuesResult> instance

Returns a list of your queues that have the C<RedrivePolicy> queue
attribute configured with a dead-letter queue.

The C<ListDeadLetterSourceQueues> methods supports pagination. Set
parameter C<MaxResults> in the request to specify the maximum number of
results to be returned in the response. If you do not set
C<MaxResults>, the response includes a maximum of 1,000 results. If you
set C<MaxResults> and there are additional results to display, the
response includes a value for C<NextToken>. Use C<NextToken> as a
parameter in your next request to C<ListDeadLetterSourceQueues> to
receive the next page of results.

For more information about using dead-letter queues, see Using Amazon
SQS Dead-Letter Queues
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html)
in the I<Amazon SQS Developer Guide>.


=head2 ListMessageMoveTasks

=over

=item SourceArn => Str

=item [MaxResults => Int]


=back

Each argument is described in detail in: L<Paws::SQS::ListMessageMoveTasks>

Returns: a L<Paws::SQS::ListMessageMoveTasksResult> instance

Gets the most recent message movement tasks (up to 10) under a specific
source queue.

=over

=item *

This action is currently limited to supporting message redrive from
dead-letter queues (DLQs)
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html)
only. In this context, the source queue is the dead-letter queue (DLQ),
while the destination queue can be the original source queue (from
which the messages were driven to the dead-letter-queue), or a custom
destination queue.

=item *

Only one active message movement task is supported per queue at any
given time.

=back



=head2 ListQueues

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [QueueNamePrefix => Str]


=back

Each argument is described in detail in: L<Paws::SQS::ListQueues>

Returns: a L<Paws::SQS::ListQueuesResult> instance

Returns a list of your queues in the current region. The response
includes a maximum of 1,000 results. If you specify a value for the
optional C<QueueNamePrefix> parameter, only queues with a name that
begins with the specified value are returned.

The C<listQueues> methods supports pagination. Set parameter
C<MaxResults> in the request to specify the maximum number of results
to be returned in the response. If you do not set C<MaxResults>, the
response includes a maximum of 1,000 results. If you set C<MaxResults>
and there are additional results to display, the response includes a
value for C<NextToken>. Use C<NextToken> as a parameter in your next
request to C<listQueues> to receive the next page of results.

Cross-account permissions don't apply to this action. For more
information, see Grant cross-account permissions to a role and a
username
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name)
in the I<Amazon SQS Developer Guide>.


=head2 ListQueueTags

=over

=item QueueUrl => Str


=back

Each argument is described in detail in: L<Paws::SQS::ListQueueTags>

Returns: a L<Paws::SQS::ListQueueTagsResult> instance

List all cost allocation tags added to the specified Amazon SQS queue.
For an overview, see Tagging Your Amazon SQS Queues
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html)
in the I<Amazon SQS Developer Guide>.

Cross-account permissions don't apply to this action. For more
information, see Grant cross-account permissions to a role and a
username
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name)
in the I<Amazon SQS Developer Guide>.


=head2 PurgeQueue

=over

=item QueueUrl => Str


=back

Each argument is described in detail in: L<Paws::SQS::PurgeQueue>

Returns: nothing

Deletes available messages in a queue (including in-flight messages)
specified by the C<QueueURL> parameter.

When you use the C<PurgeQueue> action, you can't retrieve any messages
deleted from a queue.

The message deletion process takes up to 60 seconds. We recommend
waiting for 60 seconds regardless of your queue's size.

Messages sent to the queue I<before> you call C<PurgeQueue> might be
received but are deleted within the next minute.

Messages sent to the queue I<after> you call C<PurgeQueue> might be
deleted while the queue is being purged.


=head2 ReceiveMessage

=over

=item QueueUrl => Str

=item [AttributeNames => ArrayRef[Str|Undef]]

=item [MaxNumberOfMessages => Int]

=item [MessageAttributeNames => ArrayRef[Str|Undef]]

=item [MessageSystemAttributeNames => ArrayRef[Str|Undef]]

=item [ReceiveRequestAttemptId => Str]

=item [VisibilityTimeout => Int]

=item [WaitTimeSeconds => Int]


=back

Each argument is described in detail in: L<Paws::SQS::ReceiveMessage>

Returns: a L<Paws::SQS::ReceiveMessageResult> instance

Retrieves one or more messages (up to 10), from the specified queue.
Using the C<WaitTimeSeconds> parameter enables long-poll support. For
more information, see Amazon SQS Long Polling
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-long-polling.html)
in the I<Amazon SQS Developer Guide>.

Short poll is the default behavior where a weighted random set of
machines is sampled on a C<ReceiveMessage> call. Therefore, only the
messages on the sampled machines are returned. If the number of
messages in the queue is small (fewer than 1,000), you most likely get
fewer messages than you requested per C<ReceiveMessage> call. If the
number of messages in the queue is extremely small, you might not
receive any messages in a particular C<ReceiveMessage> response. If
this happens, repeat the request.

For each message returned, the response includes the following:

=over

=item *

The message body.

=item *

An MD5 digest of the message body. For information about MD5, see
RFC1321 (https://www.ietf.org/rfc/rfc1321.txt).

=item *

The C<MessageId> you received when you sent the message to the queue.

=item *

The receipt handle.

=item *

The message attributes.

=item *

An MD5 digest of the message attributes.

=back

The receipt handle is the identifier you must provide when deleting the
message. For more information, see Queue and Message Identifiers
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html)
in the I<Amazon SQS Developer Guide>.

You can provide the C<VisibilityTimeout> parameter in your request. The
parameter is applied to the messages that Amazon SQS returns in the
response. If you don't include the parameter, the overall visibility
timeout for the queue is used for the returned messages. The default
visibility timeout for a queue is 30 seconds.

In the future, new attributes might be added. If you write code that
calls this action, we recommend that you structure your code so that it
can handle new attributes gracefully.


=head2 RemovePermission

=over

=item Label => Str

=item QueueUrl => Str


=back

Each argument is described in detail in: L<Paws::SQS::RemovePermission>

Returns: nothing

Revokes any permissions in the queue policy that matches the specified
C<Label> parameter.

=over

=item *

Only the owner of a queue can remove permissions from it.

=item *

Cross-account permissions don't apply to this action. For more
information, see Grant cross-account permissions to a role and a
username
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name)
in the I<Amazon SQS Developer Guide>.

=item *

To remove the ability to change queue permissions, you must deny
permission to the C<AddPermission>, C<RemovePermission>, and
C<SetQueueAttributes> actions in your IAM policy.

=back



=head2 SendMessage

=over

=item MessageBody => Str

=item QueueUrl => Str

=item [DelaySeconds => Int]

=item [MessageAttributes => L<Paws::SQS::MessageBodyAttributeMap>]

=item [MessageDeduplicationId => Str]

=item [MessageGroupId => Str]

=item [MessageSystemAttributes => L<Paws::SQS::MessageBodySystemAttributeMap>]


=back

Each argument is described in detail in: L<Paws::SQS::SendMessage>

Returns: a L<Paws::SQS::SendMessageResult> instance

Delivers a message to the specified queue.

A message can include only XML, JSON, and unformatted text. The
following Unicode characters are allowed. For more information, see the
W3C specification for characters
(http://www.w3.org/TR/REC-xml/#charsets).

C<#x9> | C<#xA> | C<#xD> | C<#x20> to C<#xD7FF> | C<#xE000> to
C<#xFFFD> | C<#x10000> to C<#x10FFFF>

Amazon SQS does not throw an exception or completely reject the message
if it contains invalid characters. Instead, it replaces those invalid
characters with C<U+FFFD> before storing the message in the queue, as
long as the message body contains at least one valid character.


=head2 SendMessageBatch

=over

=item Entries => ArrayRef[L<Paws::SQS::SendMessageBatchRequestEntry>]

=item QueueUrl => Str


=back

Each argument is described in detail in: L<Paws::SQS::SendMessageBatch>

Returns: a L<Paws::SQS::SendMessageBatchResult> instance

You can use C<SendMessageBatch> to send up to 10 messages to the
specified queue by assigning either identical or different values to
each message (or by not assigning values at all). This is a batch
version of C< SendMessage.> For a FIFO queue, multiple messages within
a single batch are enqueued in the order they are sent.

The result of sending each message is reported individually in the
response. Because the batch request can result in a combination of
successful and unsuccessful actions, you should check for batch errors
even when the call returns an HTTP status code of C<200>.

The maximum allowed individual message size and the maximum total
payload size (the sum of the individual lengths of all of the batched
messages) are both 256 KiB (262,144 bytes).

A message can include only XML, JSON, and unformatted text. The
following Unicode characters are allowed. For more information, see the
W3C specification for characters
(http://www.w3.org/TR/REC-xml/#charsets).

C<#x9> | C<#xA> | C<#xD> | C<#x20> to C<#xD7FF> | C<#xE000> to
C<#xFFFD> | C<#x10000> to C<#x10FFFF>

Amazon SQS does not throw an exception or completely reject the message
if it contains invalid characters. Instead, it replaces those invalid
characters with C<U+FFFD> before storing the message in the queue, as
long as the message body contains at least one valid character.

If you don't specify the C<DelaySeconds> parameter for an entry, Amazon
SQS uses the default value for the queue.


=head2 SetQueueAttributes

=over

=item Attributes => L<Paws::SQS::QueueAttributeMap>

=item QueueUrl => Str


=back

Each argument is described in detail in: L<Paws::SQS::SetQueueAttributes>

Returns: nothing

Sets the value of one or more queue attributes, like a policy. When you
change a queue's attributes, the change can take up to 60 seconds for
most of the attributes to propagate throughout the Amazon SQS system.
Changes made to the C<MessageRetentionPeriod> attribute can take up to
15 minutes and will impact existing messages in the queue potentially
causing them to be expired and deleted if the C<MessageRetentionPeriod>
is reduced below the age of existing messages.

=over

=item *

In the future, new attributes might be added. If you write code that
calls this action, we recommend that you structure your code so that it
can handle new attributes gracefully.

=item *

Cross-account permissions don't apply to this action. For more
information, see Grant cross-account permissions to a role and a
username
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name)
in the I<Amazon SQS Developer Guide>.

=item *

To remove the ability to change queue permissions, you must deny
permission to the C<AddPermission>, C<RemovePermission>, and
C<SetQueueAttributes> actions in your IAM policy.

=back



=head2 StartMessageMoveTask

=over

=item SourceArn => Str

=item [DestinationArn => Str]

=item [MaxNumberOfMessagesPerSecond => Int]


=back

Each argument is described in detail in: L<Paws::SQS::StartMessageMoveTask>

Returns: a L<Paws::SQS::StartMessageMoveTaskResult> instance

Starts an asynchronous task to move messages from a specified source
queue to a specified destination queue.

=over

=item *

This action is currently limited to supporting message redrive from
queues that are configured as dead-letter queues (DLQs)
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html)
of other Amazon SQS queues only. Non-SQS queue sources of dead-letter
queues, such as Lambda or Amazon SNS topics, are currently not
supported.

=item *

In dead-letter queues redrive context, the C<StartMessageMoveTask> the
source queue is the DLQ, while the destination queue can be the
original source queue (from which the messages were driven to the
dead-letter-queue), or a custom destination queue.

=item *

Only one active message movement task is supported per queue at any
given time.

=back



=head2 TagQueue

=over

=item QueueUrl => Str

=item Tags => L<Paws::SQS::TagMap>


=back

Each argument is described in detail in: L<Paws::SQS::TagQueue>

Returns: nothing

Add cost allocation tags to the specified Amazon SQS queue. For an
overview, see Tagging Your Amazon SQS Queues
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html)
in the I<Amazon SQS Developer Guide>.

When you use queue tags, keep the following guidelines in mind:

=over

=item *

Adding more than 50 tags to a queue isn't recommended.

=item *

Tags don't have any semantic meaning. Amazon SQS interprets tags as
character strings.

=item *

Tags are case-sensitive.

=item *

A new tag with a key identical to that of an existing tag overwrites
the existing tag.

=back

For a full list of tag restrictions, see Quotas related to queues
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-limits.html#limits-queues)
in the I<Amazon SQS Developer Guide>.

Cross-account permissions don't apply to this action. For more
information, see Grant cross-account permissions to a role and a
username
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name)
in the I<Amazon SQS Developer Guide>.


=head2 UntagQueue

=over

=item QueueUrl => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SQS::UntagQueue>

Returns: nothing

Remove cost allocation tags from the specified Amazon SQS queue. For an
overview, see Tagging Your Amazon SQS Queues
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html)
in the I<Amazon SQS Developer Guide>.

Cross-account permissions don't apply to this action. For more
information, see Grant cross-account permissions to a role and a
username
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name)
in the I<Amazon SQS Developer Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDeadLetterSourceQueues(sub { },QueueUrl => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDeadLetterSourceQueues(QueueUrl => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - queueUrls, passing the object as the first parameter, and the string 'queueUrls' as the second parameter 

If not, it will return a a L<Paws::SQS::ListDeadLetterSourceQueuesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllQueues(sub { },[MaxResults => Int, NextToken => Str, QueueNamePrefix => Str])

=head2 ListAllQueues([MaxResults => Int, NextToken => Str, QueueNamePrefix => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - QueueUrls, passing the object as the first parameter, and the string 'QueueUrls' as the second parameter 

If not, it will return a a L<Paws::SQS::ListQueuesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

