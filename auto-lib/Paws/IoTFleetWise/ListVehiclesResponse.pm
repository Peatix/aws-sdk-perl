
package Paws::IoTFleetWise::ListVehiclesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has VehicleSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::VehicleSummary]', traits => ['NameInRequest'], request_name => 'vehicleSummaries' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::ListVehiclesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to retrieve the next set of results, or C<null> if there are
no more results.


=head2 VehicleSummaries => ArrayRef[L<Paws::IoTFleetWise::VehicleSummary>]

A list of vehicles and information about them.


=head2 _request_id => Str


=cut

1;