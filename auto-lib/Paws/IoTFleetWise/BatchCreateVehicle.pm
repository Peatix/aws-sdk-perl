
package Paws::IoTFleetWise::BatchCreateVehicle;
  use Moose;
  has Vehicles => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::CreateVehicleRequestItem]', traits => ['NameInRequest'], request_name => 'vehicles' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchCreateVehicle');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::BatchCreateVehicleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::BatchCreateVehicle - Arguments for method BatchCreateVehicle on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchCreateVehicle on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method BatchCreateVehicle.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchCreateVehicle.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $BatchCreateVehicleResponse = $iotfleetwise->BatchCreateVehicle(
      Vehicles => [
        {
          DecoderManifestArn  => 'Myarn',
          ModelManifestArn    => 'Myarn',
          VehicleName         => 'MyvehicleName',    # min: 1, max: 100
          AssociationBehavior => 'CreateIotThing'
          ,    # values: CreateIotThing, ValidateIotThingExists; OPTIONAL
          Attributes => {
            'MyattributeName' => 'MyattributeValue',    # key: min: 1, max: 150
          },    # OPTIONAL
          StateTemplates => [
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
          Tags => [
            {
              Key   => 'MyTagKey',      # min: 1, max: 128
              Value => 'MyTagValue',    # max: 256

            },
            ...
          ],    # max: 50; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $Errors   = $BatchCreateVehicleResponse->Errors;
    my $Vehicles = $BatchCreateVehicleResponse->Vehicles;

    # Returns a L<Paws::IoTFleetWise::BatchCreateVehicleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/BatchCreateVehicle>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Vehicles => ArrayRef[L<Paws::IoTFleetWise::CreateVehicleRequestItem>]

A list of information about each vehicle to create. For more
information, see the API data type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchCreateVehicle in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

