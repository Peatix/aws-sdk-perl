
package Paws::IoTFleetWise::CreateVehicle;
  use Moose;
  has AssociationBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'associationBehavior' );
  has Attributes => (is => 'ro', isa => 'Paws::IoTFleetWise::AttributesMap', traits => ['NameInRequest'], request_name => 'attributes' );
  has DecoderManifestArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'decoderManifestArn' , required => 1);
  has ModelManifestArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelManifestArn' , required => 1);
  has StateTemplates => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::StateTemplateAssociation]', traits => ['NameInRequest'], request_name => 'stateTemplates' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has VehicleName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vehicleName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVehicle');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::CreateVehicleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::CreateVehicle - Arguments for method CreateVehicle on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVehicle on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method CreateVehicle.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVehicle.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $CreateVehicleResponse = $iotfleetwise->CreateVehicle(
      DecoderManifestArn  => 'Myarn',
      ModelManifestArn    => 'Myarn',
      VehicleName         => 'MyvehicleName',
      AssociationBehavior => 'CreateIotThing',    # OPTIONAL
      Attributes          => {
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
                  'MILLISECOND',    # values: MILLISECOND, SECOND, MINUTE, HOUR
                Value => 1,         # min: 1, max: 2147483647

              },

            },    # OPTIONAL
          },

        },
        ...
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Arn         = $CreateVehicleResponse->Arn;
    my $ThingArn    = $CreateVehicleResponse->ThingArn;
    my $VehicleName = $CreateVehicleResponse->VehicleName;

    # Returns a L<Paws::IoTFleetWise::CreateVehicleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/CreateVehicle>

=head1 ATTRIBUTES


=head2 AssociationBehavior => Str

An option to create a new Amazon Web Services IoT thing when creating a
vehicle, or to validate an existing Amazon Web Services IoT thing as a
vehicle.

Default: C<>

Valid values are: C<"CreateIotThing">, C<"ValidateIotThingExists">

=head2 Attributes => L<Paws::IoTFleetWise::AttributesMap>

Static information about a vehicle in a key-value pair. For example:
C<"engineType"> : C<"1.3 L R2">

To use attributes with Campaigns or State Templates, you must include
them using the request parameters C<dataExtraDimensions> and/or
C<metadataExtraDimensions> (for state templates only) when creating
your campaign/state template.



=head2 B<REQUIRED> DecoderManifestArn => Str

The ARN of a decoder manifest.



=head2 B<REQUIRED> ModelManifestArn => Str

The Amazon Resource Name ARN of a vehicle model.



=head2 StateTemplates => ArrayRef[L<Paws::IoTFleetWise::StateTemplateAssociation>]

Associate state templates with the vehicle. You can monitor the last
known state of the vehicle in near real time.



=head2 Tags => ArrayRef[L<Paws::IoTFleetWise::Tag>]

Metadata that can be used to manage the vehicle.



=head2 B<REQUIRED> VehicleName => Str

The unique ID of the vehicle to create.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVehicle in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

