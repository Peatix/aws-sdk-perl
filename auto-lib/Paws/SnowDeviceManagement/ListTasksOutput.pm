
package Paws::SnowDeviceManagement::ListTasksOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Tasks => (is => 'ro', isa => 'ArrayRef[Paws::SnowDeviceManagement::TaskSummary]', traits => ['NameInRequest'], request_name => 'tasks');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::ListTasksOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token to continue to the next page of tasks.


=head2 Tasks => ArrayRef[L<Paws::SnowDeviceManagement::TaskSummary>]

A list of task structures containing details about each task.


=head2 _request_id => Str


=cut

