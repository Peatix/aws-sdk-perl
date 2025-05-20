
package Paws::Scheduler::ListSchedulesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Schedules => (is => 'ro', isa => 'ArrayRef[Paws::Scheduler::ScheduleSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Scheduler::ListSchedulesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

Indicates whether there are additional results to retrieve. If the
value is null, there are no more results.


=head2 B<REQUIRED> Schedules => ArrayRef[L<Paws::Scheduler::ScheduleSummary>]

The schedules that match the specified criteria.


=head2 _request_id => Str


=cut

