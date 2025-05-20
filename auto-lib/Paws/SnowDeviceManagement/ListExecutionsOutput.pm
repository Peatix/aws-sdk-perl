
package Paws::SnowDeviceManagement::ListExecutionsOutput;
  use Moose;
  has Executions => (is => 'ro', isa => 'ArrayRef[Paws::SnowDeviceManagement::ExecutionSummary]', traits => ['NameInRequest'], request_name => 'executions');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::ListExecutionsOutput

=head1 ATTRIBUTES


=head2 Executions => ArrayRef[L<Paws::SnowDeviceManagement::ExecutionSummary>]

A list of executions. Each execution contains the task ID, the device
that the task is executing on, the execution ID, and the status of the
execution.


=head2 NextToken => Str

A pagination token to continue to the next page of executions.


=head2 _request_id => Str


=cut

