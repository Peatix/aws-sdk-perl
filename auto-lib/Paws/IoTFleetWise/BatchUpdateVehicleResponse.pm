
package Paws::IoTFleetWise::BatchUpdateVehicleResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::UpdateVehicleError]', traits => ['NameInRequest'], request_name => 'errors' );
  has Vehicles => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::UpdateVehicleResponseItem]', traits => ['NameInRequest'], request_name => 'vehicles' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::BatchUpdateVehicleResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::IoTFleetWise::UpdateVehicleError>]

A list of information about errors returned while updating a batch of
vehicles, or, if there aren't any errors, an empty list.


=head2 Vehicles => ArrayRef[L<Paws::IoTFleetWise::UpdateVehicleResponseItem>]

A list of information about the batch of updated vehicles.

This list contains only unique IDs for the vehicles that were updated.


=head2 _request_id => Str


=cut

1;