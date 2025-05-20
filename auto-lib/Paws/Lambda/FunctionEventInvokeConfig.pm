
package Paws::Lambda::FunctionEventInvokeConfig;
  use Moose;
  has DestinationConfig => (is => 'ro', isa => 'Paws::Lambda::DestinationConfig');
  has FunctionArn => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has MaximumEventAgeInSeconds => (is => 'ro', isa => 'Int');
  has MaximumRetryAttempts => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::FunctionEventInvokeConfig

=head1 ATTRIBUTES


=head2 DestinationConfig => L<Paws::Lambda::DestinationConfig>

A destination for events after they have been sent to a function for
processing.

B<Destinations>

=over

=item *

B<Function> - The Amazon Resource Name (ARN) of a Lambda function.

=item *

B<Queue> - The ARN of a standard SQS queue.

=item *

B<Bucket> - The ARN of an Amazon S3 bucket.

=item *

B<Topic> - The ARN of a standard SNS topic.

=item *

B<Event Bus> - The ARN of an Amazon EventBridge event bus.

=back

S3 buckets are supported only for on-failure destinations. To retain
records of successful invocations, use another destination type.


=head2 FunctionArn => Str

The Amazon Resource Name (ARN) of the function.


=head2 LastModified => Str

The date and time that the configuration was last updated.


=head2 MaximumEventAgeInSeconds => Int

The maximum age of a request that Lambda sends to a function for
processing.


=head2 MaximumRetryAttempts => Int

The maximum number of times to retry when the function returns an
error.


=head2 _request_id => Str


=cut

