
package Paws::GameLift::ListComputeOutput;
  use Moose;
  has ComputeList => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::Compute]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ListComputeOutput

=head1 ATTRIBUTES


=head2 ComputeList => ArrayRef[L<Paws::GameLift::Compute>]

A list of compute resources in the specified fleet.


=head2 NextToken => Str

A token that indicates where to resume retrieving results on the next
call to this operation. If no token is returned, these results
represent the end of the list.


=head2 _request_id => Str


=cut

1;