
package Paws::Deadline::GetTaskResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has EndedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endedAt');
  has FailureRetryCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'failureRetryCount');
  has LatestSessionActionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'latestSessionActionId');
  has Parameters => (is => 'ro', isa => 'Paws::Deadline::TaskParameters', traits => ['NameInRequest'], request_name => 'parameters');
  has RunStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'runStatus', required => 1);
  has StartedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startedAt');
  has TargetRunStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetRunStatus');
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetTaskResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The date and time the resource was created.


=head2 B<REQUIRED> CreatedBy => Str

The user or system that created this resource.


=head2 EndedAt => Str

The date and time the resource ended running.


=head2 FailureRetryCount => Int

The number of times that the task failed and was retried.


=head2 LatestSessionActionId => Str

The latest session ID for the task.


=head2 Parameters => L<Paws::Deadline::TaskParameters>

The parameters for the task.


=head2 B<REQUIRED> RunStatus => Str

The run status for the task.

Valid values are: C<"PENDING">, C<"READY">, C<"ASSIGNED">, C<"STARTING">, C<"SCHEDULED">, C<"INTERRUPTING">, C<"RUNNING">, C<"SUSPENDED">, C<"CANCELED">, C<"FAILED">, C<"SUCCEEDED">, C<"NOT_COMPATIBLE">
=head2 StartedAt => Str

The date and time the resource started running.


=head2 TargetRunStatus => Str

The run status with which to start the task.

Valid values are: C<"READY">, C<"FAILED">, C<"SUCCEEDED">, C<"CANCELED">, C<"SUSPENDED">, C<"PENDING">
=head2 B<REQUIRED> TaskId => Str

The task ID.


=head2 UpdatedAt => Str

The date and time the resource was updated.


=head2 UpdatedBy => Str

The user or system that updated this resource.


=head2 _request_id => Str


=cut

