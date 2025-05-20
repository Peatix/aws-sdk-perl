
package Paws::IoTFleetWise::UpdateVehicleResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' );
  has VehicleName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vehicleName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::UpdateVehicleResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the updated vehicle.


=head2 VehicleName => Str

The ID of the updated vehicle.


=head2 _request_id => Str


=cut

1;