
package Paws::IoTFleetWise::DeleteVehicleResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has VehicleName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vehicleName' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::DeleteVehicleResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the deleted vehicle.


=head2 B<REQUIRED> VehicleName => Str

The ID of the deleted vehicle.


=head2 _request_id => Str


=cut

1;