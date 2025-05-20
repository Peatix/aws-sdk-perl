
package Paws::Braket::GetJobResponse;
  use Moose;
  has AlgorithmSpecification => (is => 'ro', isa => 'Paws::Braket::AlgorithmSpecification', traits => ['NameInRequest'], request_name => 'algorithmSpecification', required => 1);
  has Associations => (is => 'ro', isa => 'ArrayRef[Paws::Braket::Association]', traits => ['NameInRequest'], request_name => 'associations');
  has BillableDuration => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'billableDuration');
  has CheckpointConfig => (is => 'ro', isa => 'Paws::Braket::JobCheckpointConfig', traits => ['NameInRequest'], request_name => 'checkpointConfig');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has DeviceConfig => (is => 'ro', isa => 'Paws::Braket::DeviceConfig', traits => ['NameInRequest'], request_name => 'deviceConfig');
  has EndedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endedAt');
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::Braket::JobEventDetails]', traits => ['NameInRequest'], request_name => 'events');
  has FailureReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureReason');
  has HyperParameters => (is => 'ro', isa => 'Paws::Braket::HyperParameters', traits => ['NameInRequest'], request_name => 'hyperParameters');
  has InputDataConfig => (is => 'ro', isa => 'ArrayRef[Paws::Braket::InputFileConfig]', traits => ['NameInRequest'], request_name => 'inputDataConfig');
  has InstanceConfig => (is => 'ro', isa => 'Paws::Braket::InstanceConfig', traits => ['NameInRequest'], request_name => 'instanceConfig', required => 1);
  has JobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobArn', required => 1);
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName', required => 1);
  has OutputDataConfig => (is => 'ro', isa => 'Paws::Braket::JobOutputDataConfig', traits => ['NameInRequest'], request_name => 'outputDataConfig', required => 1);
  has QueueInfo => (is => 'ro', isa => 'Paws::Braket::HybridJobQueueInfo', traits => ['NameInRequest'], request_name => 'queueInfo');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has StartedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startedAt');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StoppingCondition => (is => 'ro', isa => 'Paws::Braket::JobStoppingCondition', traits => ['NameInRequest'], request_name => 'stoppingCondition');
  has Tags => (is => 'ro', isa => 'Paws::Braket::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Braket::GetJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlgorithmSpecification => L<Paws::Braket::AlgorithmSpecification>

Definition of the Amazon Braket job created. Specifies the container
image the job uses, information about the Python scripts used for entry
and training, and the user-defined metrics used to evaluation the job.


=head2 Associations => ArrayRef[L<Paws::Braket::Association>]

The list of Amazon Braket resources associated with the hybrid job.


=head2 BillableDuration => Int

The billable time the Amazon Braket job used to complete.


=head2 CheckpointConfig => L<Paws::Braket::JobCheckpointConfig>

Information about the output locations for job checkpoint data.


=head2 B<REQUIRED> CreatedAt => Str

The date and time that the Amazon Braket job was created.


=head2 DeviceConfig => L<Paws::Braket::DeviceConfig>

The quantum processing unit (QPU) or simulator used to run the Amazon
Braket job.


=head2 EndedAt => Str

The date and time that the Amazon Braket job ended.


=head2 Events => ArrayRef[L<Paws::Braket::JobEventDetails>]

Details about the type and time events occurred related to the Amazon
Braket job.


=head2 FailureReason => Str

A description of the reason why an Amazon Braket job failed, if it
failed.


=head2 HyperParameters => L<Paws::Braket::HyperParameters>

Algorithm-specific parameters used by an Amazon Braket job that
influence the quality of the traiing job. The values are set with a
string of JSON key:value pairs, where the key is the name of the
hyperparameter and the value is the value of th hyperparameter.


=head2 InputDataConfig => ArrayRef[L<Paws::Braket::InputFileConfig>]

A list of parameters that specify the name and type of input data and
where it is located.


=head2 B<REQUIRED> InstanceConfig => L<Paws::Braket::InstanceConfig>

The resource instances to use while running the hybrid job on Amazon
Braket.


=head2 B<REQUIRED> JobArn => Str

The ARN of the Amazon Braket job.


=head2 B<REQUIRED> JobName => Str

The name of the Amazon Braket job.


=head2 B<REQUIRED> OutputDataConfig => L<Paws::Braket::JobOutputDataConfig>

The path to the S3 location where job artifacts are stored and the
encryption key used to store them there.


=head2 QueueInfo => L<Paws::Braket::HybridJobQueueInfo>

Queue information for the requested job. Only returned if C<QueueInfo>
is specified in the C<additionalAttributeNames"> field in the C<GetJob>
API request.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that Amazon Braket can
assume to perform tasks on behalf of a user. It can access user
resources, run an Amazon Braket job container on behalf of user, and
output resources to the s3 buckets of a user.


=head2 StartedAt => Str

The date and time that the Amazon Braket job was started.


=head2 B<REQUIRED> Status => Str

The status of the Amazon Braket job.

Valid values are: C<"QUEUED">, C<"RUNNING">, C<"COMPLETED">, C<"FAILED">, C<"CANCELLING">, C<"CANCELLED">
=head2 StoppingCondition => L<Paws::Braket::JobStoppingCondition>

The user-defined criteria that specifies when to stop a job running.


=head2 Tags => L<Paws::Braket::TagsMap>

A tag object that consists of a key and an optional value, used to
manage metadata for Amazon Braket resources.


=head2 _request_id => Str


=cut

