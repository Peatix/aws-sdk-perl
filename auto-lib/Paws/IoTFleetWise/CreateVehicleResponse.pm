
package Paws::IoTFleetWise::CreateVehicleResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' );
  has ThingArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingArn' );
  has VehicleName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vehicleName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::CreateVehicleResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the created vehicle.


=head2 ThingArn => Str

The ARN of a created or validated Amazon Web Services IoT thing.


=head2 VehicleName => Str

The unique ID of the created vehicle.


=head2 _request_id => Str


=cut

1;