
package Paws::Scheduler::ListScheduleGroupsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ScheduleGroups => (is => 'ro', isa => 'ArrayRef[Paws::Scheduler::ScheduleGroupSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Scheduler::ListScheduleGroupsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

Indicates whether there are additional results to retrieve. If the
value is null, there are no more results.


=head2 B<REQUIRED> ScheduleGroups => ArrayRef[L<Paws::Scheduler::ScheduleGroupSummary>]

The schedule groups that match the specified criteria.


=head2 _request_id => Str


=cut

