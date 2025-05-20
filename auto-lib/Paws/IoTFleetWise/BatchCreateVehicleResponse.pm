
package Paws::IoTFleetWise::BatchCreateVehicleResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::CreateVehicleError]', traits => ['NameInRequest'], request_name => 'errors' );
  has Vehicles => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::CreateVehicleResponseItem]', traits => ['NameInRequest'], request_name => 'vehicles' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::BatchCreateVehicleResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::IoTFleetWise::CreateVehicleError>]

A list of information about creation errors, or an empty list if there
aren't any errors.


=head2 Vehicles => ArrayRef[L<Paws::IoTFleetWise::CreateVehicleResponseItem>]

A list of information about a batch of created vehicles. For more
information, see the API data type.


=head2 _request_id => Str


=cut

1;