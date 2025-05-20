
package Paws::Braket::GetQuantumTaskResponse;
  use Moose;
  has Associations => (is => 'ro', isa => 'ArrayRef[Paws::Braket::Association]', traits => ['NameInRequest'], request_name => 'associations');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has DeviceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deviceArn', required => 1);
  has DeviceParameters => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deviceParameters', required => 1);
  has EndedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endedAt');
  has FailureReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureReason');
  has JobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobArn');
  has OutputS3Bucket => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'outputS3Bucket', required => 1);
  has OutputS3Directory => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'outputS3Directory', required => 1);
  has QuantumTaskArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'quantumTaskArn', required => 1);
  has QueueInfo => (is => 'ro', isa => 'Paws::Braket::QuantumTaskQueueInfo', traits => ['NameInRequest'], request_name => 'queueInfo');
  has Shots => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'shots', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Braket::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Braket::GetQuantumTaskResponse

=head1 ATTRIBUTES


=head2 Associations => ArrayRef[L<Paws::Braket::Association>]

The list of Amazon Braket resources associated with the quantum task.


=head2 B<REQUIRED> CreatedAt => Str

The time at which the task was created.


=head2 B<REQUIRED> DeviceArn => Str

The ARN of the device the task was run on.


=head2 B<REQUIRED> DeviceParameters => Str

The parameters for the device on which the task ran.


=head2 EndedAt => Str

The time at which the task ended.


=head2 FailureReason => Str

The reason that a task failed.


=head2 JobArn => Str

The ARN of the Amazon Braket job associated with the quantum task.


=head2 B<REQUIRED> OutputS3Bucket => Str

The S3 bucket where task results are stored.


=head2 B<REQUIRED> OutputS3Directory => Str

The folder in the S3 bucket where task results are stored.


=head2 B<REQUIRED> QuantumTaskArn => Str

The ARN of the task.


=head2 QueueInfo => L<Paws::Braket::QuantumTaskQueueInfo>

Queue information for the requested quantum task. Only returned if
C<QueueInfo> is specified in the C<additionalAttributeNames"> field in
the C<GetQuantumTask> API request.


=head2 B<REQUIRED> Shots => Int

The number of shots used in the task.


=head2 B<REQUIRED> Status => Str

The status of the task.

Valid values are: C<"CREATED">, C<"QUEUED">, C<"RUNNING">, C<"COMPLETED">, C<"FAILED">, C<"CANCELLING">, C<"CANCELLED">
=head2 Tags => L<Paws::Braket::TagsMap>

The tags that belong to this task.


=head2 _request_id => Str


=cut

