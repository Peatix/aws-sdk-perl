
package Paws::IoTFleetWise::BatchUpdateVehicle;
  use Moose;
  has Vehicles => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::UpdateVehicleRequestItem]', traits => ['NameInRequest'], request_name => 'vehicles' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchUpdateVehicle');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::BatchUpdateVehicleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::BatchUpdateVehicle - Arguments for method BatchUpdateVehicle on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchUpdateVehicle on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method BatchUpdateVehicle.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchUpdateVehicle.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $BatchUpdateVehicleResponse = $iotfleetwise->BatchUpdateVehicle(
      Vehicles => [
        {
          VehicleName         => 'MyvehicleName',    # min: 1, max: 100
          AttributeUpdateMode =>
            'Overwrite',    # values: Overwrite, Merge; OPTIONAL
          Attributes => {
            'MyattributeName' => 'MyattributeValue',    # key: min: 1, max: 150
          },    # OPTIONAL
          DecoderManifestArn  => 'Myarn',    # OPTIONAL
          ModelManifestArn    => 'Myarn',    # OPTIONAL
          StateTemplatesToAdd => [
            {
              Identifier => 'MyResourceIdentifier',    # min: 1, max: 100
              StateTemplateUpdateStrategy => {
                OnChange => {

                },                                     # OPTIONAL
                Periodic => {
                  StateTemplateUpdateRate => {
                    Unit =>
                      'MILLISECOND', # values: MILLISECOND, SECOND, MINUTE, HOUR
                    Value => 1,      # min: 1, max: 2147483647

                  },

                },    # OPTIONAL
              },

            },
            ...
          ],    # min: 1, max: 20; OPTIONAL
          StateTemplatesToRemove => [
            'MyResourceIdentifier', ...    # min: 1, max: 100
          ],    # min: 1, max: 20; OPTIONAL
          StateTemplatesToUpdate => [
            {
              Identifier => 'MyResourceIdentifier',    # min: 1, max: 100
              StateTemplateUpdateStrategy => {
                OnChange => {

                },                                     # OPTIONAL
                Periodic => {
                  StateTemplateUpdateRate => {
                    Unit =>
                      'MILLISECOND', # values: MILLISECOND, SECOND, MINUTE, HOUR
                    Value => 1,      # min: 1, max: 2147483647

                  },

                },    # OPTIONAL
              },

            },
            ...
          ],    # min: 1, max: 20; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $Errors   = $BatchUpdateVehicleResponse->Errors;
    my $Vehicles = $BatchUpdateVehicleResponse->Vehicles;

    # Returns a L<Paws::IoTFleetWise::BatchUpdateVehicleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/BatchUpdateVehicle>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Vehicles => ArrayRef[L<Paws::IoTFleetWise::UpdateVehicleRequestItem>]

A list of information about the vehicles to update. For more
information, see the API data type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchUpdateVehicle in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

