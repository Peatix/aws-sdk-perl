
package Paws::IoTFleetWise::UpdateVehicle;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::IoTFleetWise::AttributesMap', traits => ['NameInRequest'], request_name => 'attributes' );
  has AttributeUpdateMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attributeUpdateMode' );
  has DecoderManifestArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'decoderManifestArn' );
  has ModelManifestArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelManifestArn' );
  has StateTemplatesToAdd => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::StateTemplateAssociation]', traits => ['NameInRequest'], request_name => 'stateTemplatesToAdd' );
  has StateTemplatesToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'stateTemplatesToRemove' );
  has StateTemplatesToUpdate => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::StateTemplateAssociation]', traits => ['NameInRequest'], request_name => 'stateTemplatesToUpdate' );
  has VehicleName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vehicleName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVehicle');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::UpdateVehicleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::UpdateVehicle - Arguments for method UpdateVehicle on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateVehicle on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method UpdateVehicle.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateVehicle.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $UpdateVehicleResponse = $iotfleetwise->UpdateVehicle(
      VehicleName         => 'MyvehicleName',
      AttributeUpdateMode => 'Overwrite',       # OPTIONAL
      Attributes          => {
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
                  'MILLISECOND',    # values: MILLISECOND, SECOND, MINUTE, HOUR
                Value => 1,         # min: 1, max: 2147483647

              },

            },    # OPTIONAL
          },

        },
        ...
      ],    # OPTIONAL
      StateTemplatesToRemove => [
        'MyResourceIdentifier', ...    # min: 1, max: 100
      ],    # OPTIONAL
      StateTemplatesToUpdate => [
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
    );

    # Results:
    my $Arn         = $UpdateVehicleResponse->Arn;
    my $VehicleName = $UpdateVehicleResponse->VehicleName;

    # Returns a L<Paws::IoTFleetWise::UpdateVehicleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/UpdateVehicle>

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::IoTFleetWise::AttributesMap>

Static information about a vehicle in a key-value pair. For example:

C<"engineType"> : C<"1.3 L R2">



=head2 AttributeUpdateMode => Str

The method the specified attributes will update the existing attributes
on the vehicle. UseC<Overwite> to replace the vehicle attributes with
the specified attributes. Or use C<Merge> to combine all attributes.

This is required if attributes are present in the input.

Valid values are: C<"Overwrite">, C<"Merge">

=head2 DecoderManifestArn => Str

The ARN of the decoder manifest associated with this vehicle.



=head2 ModelManifestArn => Str

The ARN of a vehicle model (model manifest) associated with the
vehicle.



=head2 StateTemplatesToAdd => ArrayRef[L<Paws::IoTFleetWise::StateTemplateAssociation>]

Associate state templates with the vehicle.



=head2 StateTemplatesToRemove => ArrayRef[Str|Undef]

Remove state templates from the vehicle.



=head2 StateTemplatesToUpdate => ArrayRef[L<Paws::IoTFleetWise::StateTemplateAssociation>]

Change the C<stateTemplateUpdateStrategy> of state templates already
associated with the vehicle.



=head2 B<REQUIRED> VehicleName => Str

The unique ID of the vehicle to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateVehicle in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

