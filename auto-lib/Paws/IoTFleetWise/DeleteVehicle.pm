
package Paws::IoTFleetWise::DeleteVehicle;
  use Moose;
  has VehicleName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vehicleName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVehicle');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::DeleteVehicleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::DeleteVehicle - Arguments for method DeleteVehicle on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteVehicle on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method DeleteVehicle.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteVehicle.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $DeleteVehicleResponse = $iotfleetwise->DeleteVehicle(
      VehicleName => 'MyvehicleName',

    );

    # Results:
    my $Arn         = $DeleteVehicleResponse->Arn;
    my $VehicleName = $DeleteVehicleResponse->VehicleName;

    # Returns a L<Paws::IoTFleetWise::DeleteVehicleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/DeleteVehicle>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VehicleName => Str

The ID of the vehicle to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteVehicle in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

