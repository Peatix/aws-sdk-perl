
package Paws::Deadline::UpdateWorkerScheduleResponse;
  use Moose;
  has AssignedSessions => (is => 'ro', isa => 'Paws::Deadline::AssignedSessions', traits => ['NameInRequest'], request_name => 'assignedSessions', required => 1);
  has CancelSessionActions => (is => 'ro', isa => 'Paws::Deadline::CancelSessionActions', traits => ['NameInRequest'], request_name => 'cancelSessionActions', required => 1);
  has DesiredWorkerStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'desiredWorkerStatus');
  has UpdateIntervalSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'updateIntervalSeconds', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::UpdateWorkerScheduleResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssignedSessions => L<Paws::Deadline::AssignedSessions>

The assigned sessions to update.


=head2 B<REQUIRED> CancelSessionActions => L<Paws::Deadline::CancelSessionActions>

The session actions associated with the worker schedule to cancel.


=head2 DesiredWorkerStatus => Str

The status to update the worker to.

Valid values are: C<"STOPPED">
=head2 B<REQUIRED> UpdateIntervalSeconds => Int

Updates the time interval (in seconds) for the schedule.


=head2 _request_id => Str


=cut

