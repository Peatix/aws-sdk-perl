
package Paws::Bedrock::GetModelInvocationJobResponse;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has InputDataConfig => (is => 'ro', isa => 'Paws::Bedrock::ModelInvocationJobInputDataConfig', traits => ['NameInRequest'], request_name => 'inputDataConfig', required => 1);
  has JobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobArn', required => 1);
  has JobExpirationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobExpirationTime');
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName');
  has LastModifiedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTime');
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message');
  has ModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelId', required => 1);
  has OutputDataConfig => (is => 'ro', isa => 'Paws::Bedrock::ModelInvocationJobOutputDataConfig', traits => ['NameInRequest'], request_name => 'outputDataConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has SubmitTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'submitTime', required => 1);
  has TimeoutDurationInHours => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'timeoutDurationInHours');
  has VpcConfig => (is => 'ro', isa => 'Paws::Bedrock::VpcConfig', traits => ['NameInRequest'], request_name => 'vpcConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetModelInvocationJobResponse

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


=head2 EndTime => Str

The time at which the batch inference job ended.


=head2 B<REQUIRED> InputDataConfig => L<Paws::Bedrock::ModelInvocationJobInputDataConfig>

Details about the location of the input to the batch inference job.


=head2 B<REQUIRED> JobArn => Str

The Amazon Resource Name (ARN) of the batch inference job.


=head2 JobExpirationTime => Str

The time at which the batch inference job times or timed out.


=head2 JobName => Str

The name of the batch inference job.


=head2 LastModifiedTime => Str

The time at which the batch inference job was last modified.


=head2 Message => Str

If the batch inference job failed, this field contains a message
describing why the job failed.


=head2 B<REQUIRED> ModelId => Str

The unique identifier of the foundation model used for model inference.


=head2 B<REQUIRED> OutputDataConfig => L<Paws::Bedrock::ModelInvocationJobOutputDataConfig>

Details about the location of the output of the batch inference job.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the service role with permissions to
carry out and manage batch inference. You can use the console to create
a default service role or follow the steps at Create a service role for
batch inference
(https://docs.aws.amazon.com/bedrock/latest/userguide/batch-iam-sr.html).


=head2 Status => Str

The status of the batch inference job.

The following statuses are possible:

=over

=item *

Submitted E<ndash> This job has been submitted to a queue for
validation.

=item *

Validating E<ndash> This job is being validated for the requirements
described in Format and upload your batch inference data
(https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-data.html).
The criteria include the following:

=over

=item *

Your IAM service role has access to the Amazon S3 buckets containing
your files.

=item *

Your files are .jsonl files and each individual record is a JSON object
in the correct format. Note that validation doesn't check if the
C<modelInput> value matches the request body for the model.

=item *

Your files fulfill the requirements for file size and number of
records. For more information, see Quotas for Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/quotas.html).

=back

=item *

Scheduled E<ndash> This job has been validated and is now in a queue.
The job will automatically start when it reaches its turn.

=item *

Expired E<ndash> This job timed out because it was scheduled but didn't
begin before the set timeout duration. Submit a new job request.

=item *

InProgress E<ndash> This job has begun. You can start viewing the
results in the output S3 location.

=item *

Completed E<ndash> This job has successfully completed. View the output
files in the output S3 location.

=item *

PartiallyCompleted E<ndash> This job has partially completed. Not all
of your records could be processed in time. View the output files in
the output S3 location.

=item *

Failed E<ndash> This job has failed. Check the failure message for any
further details. For further assistance, reach out to the Amazon Web
ServicesSupport Center (https://console.aws.amazon.com/support/home/).

=item *

Stopped E<ndash> This job was stopped by a user.

=item *

Stopping E<ndash> This job is being stopped by a user.

=back


Valid values are: C<"Submitted">, C<"InProgress">, C<"Completed">, C<"Failed">, C<"Stopping">, C<"Stopped">, C<"PartiallyCompleted">, C<"Expired">, C<"Validating">, C<"Scheduled">
=head2 B<REQUIRED> SubmitTime => Str

The time at which the batch inference job was submitted.


=head2 TimeoutDurationInHours => Int

The number of hours after which batch inference job was set to time
out.


=head2 VpcConfig => L<Paws::Bedrock::VpcConfig>

The configuration of the Virtual Private Cloud (VPC) for the data in
the batch inference job. For more information, see Protect batch
inference jobs using a VPC
(https://docs.aws.amazon.com/bedrock/latest/userguide/batch-vpc).


=head2 _request_id => Str


=cut

