
package Paws::Outposts::ListBlockingInstancesForCapacityTaskOutput;
  use Moose;
  has BlockingInstances => (is => 'ro', isa => 'ArrayRef[Paws::Outposts::BlockingInstance]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::ListBlockingInstancesForCapacityTaskOutput

=head1 ATTRIBUTES


=head2 BlockingInstances => ArrayRef[L<Paws::Outposts::BlockingInstance>]

A list of all running Amazon EC2 instances on the Outpost. Stopping one
or more of these instances can free up the capacity needed to run the
capacity task.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

