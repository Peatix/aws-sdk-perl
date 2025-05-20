
package Paws::IoTFleetWise::ListVehiclesInFleetResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Vehicles => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'vehicles' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::ListVehiclesInFleetResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to retrieve the next set of results, or C<null> if there are
no more results.


=head2 Vehicles => ArrayRef[Str|Undef]

A list of vehicles associated with the fleet.


=head2 _request_id => Str


=cut

1;