
package Paws::SnowDeviceManagement::DescribeExecutionOutput;
  use Moose;
  has ExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionId');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has ManagedDeviceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'managedDeviceId');
  has StartedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startedAt');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::DescribeExecutionOutput

=head1 ATTRIBUTES


=head2 ExecutionId => Str

The ID of the execution.


=head2 LastUpdatedAt => Str

When the status of the execution was last updated.


=head2 ManagedDeviceId => Str

The ID of the managed device that the task is being executed on.


=head2 StartedAt => Str

When the execution began.


=head2 State => Str

The current state of the execution.

Valid values are: C<"QUEUED">, C<"IN_PROGRESS">, C<"CANCELED">, C<"FAILED">, C<"SUCCEEDED">, C<"REJECTED">, C<"TIMED_OUT">
=head2 TaskId => Str

The ID of the task being executed on the device.


=head2 _request_id => Str


=cut

