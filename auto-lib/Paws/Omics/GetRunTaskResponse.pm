
package Paws::Omics::GetRunTaskResponse;
  use Moose;
  has CacheHit => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'cacheHit');
  has CacheS3Uri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheS3Uri');
  has Cpus => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'cpus');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has FailureReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureReason');
  has Gpus => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'gpus');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceType');
  has LogStream => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logStream');
  has Memory => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'memory');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusMessage');
  has StopTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stopTime');
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetRunTaskResponse

=head1 ATTRIBUTES


=head2 CacheHit => Bool

Set to true if Amazon Web Services HealthOmics found a matching entry
in the run cache for this task.


=head2 CacheS3Uri => Str

The S3 URI of the cache location.


=head2 Cpus => Int

The task's CPU usage.


=head2 CreationTime => Str

When the task was created.


=head2 FailureReason => Str

The reason a task has failed.


=head2 Gpus => Int

The number of Graphics Processing Units (GPU) specified in the task.


=head2 InstanceType => Str

The instance type for a task.


=head2 LogStream => Str

The task's log stream.


=head2 Memory => Int

The task's memory use in gigabytes.


=head2 Name => Str

The task's name.


=head2 StartTime => Str

The task's start time.


=head2 Status => Str

The task's status.

Valid values are: C<"PENDING">, C<"STARTING">, C<"RUNNING">, C<"STOPPING">, C<"COMPLETED">, C<"CANCELLED">, C<"FAILED">
=head2 StatusMessage => Str

The task's status message.


=head2 StopTime => Str

The task's stop time.


=head2 TaskId => Str

The task's ID.


=head2 _request_id => Str


=cut

