
package Paws::Outposts::ListCapacityTasksOutput;
  use Moose;
  has CapacityTasks => (is => 'ro', isa => 'ArrayRef[Paws::Outposts::CapacityTaskSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::ListCapacityTasksOutput

=head1 ATTRIBUTES


=head2 CapacityTasks => ArrayRef[L<Paws::Outposts::CapacityTaskSummary>]

Lists all the capacity tasks.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

