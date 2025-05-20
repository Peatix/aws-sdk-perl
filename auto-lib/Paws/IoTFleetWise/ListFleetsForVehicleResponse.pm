
package Paws::IoTFleetWise::ListFleetsForVehicleResponse;
  use Moose;
  has Fleets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'fleets' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::ListFleetsForVehicleResponse

=head1 ATTRIBUTES


=head2 Fleets => ArrayRef[Str|Undef]

A list of fleet IDs that the vehicle is associated with.


=head2 NextToken => Str

The token to retrieve the next set of results, or C<null> if there are
no more results.


=head2 _request_id => Str


=cut

1;