
package Paws::GameLift::ListLocationsOutput;
  use Moose;
  has Locations => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::LocationModel]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ListLocationsOutput

=head1 ATTRIBUTES


=head2 Locations => ArrayRef[L<Paws::GameLift::LocationModel>]

A collection of locations.


=head2 NextToken => Str

A token that indicates where to resume retrieving results on the next
call to this operation. If no token is returned, these results
represent the end of the list.


=head2 _request_id => Str


=cut

1;