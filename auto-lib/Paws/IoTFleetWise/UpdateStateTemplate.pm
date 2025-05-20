
package Paws::IoTFleetWise::UpdateStateTemplate;
  use Moose;
  has DataExtraDimensions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'dataExtraDimensions' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Identifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identifier' , required => 1);
  has MetadataExtraDimensions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'metadataExtraDimensions' );
  has StateTemplatePropertiesToAdd => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'stateTemplatePropertiesToAdd' );
  has StateTemplatePropertiesToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'stateTemplatePropertiesToRemove' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStateTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::UpdateStateTemplateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::UpdateStateTemplate - Arguments for method UpdateStateTemplate on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStateTemplate on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method UpdateStateTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStateTemplate.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $UpdateStateTemplateResponse = $iotfleetwise->UpdateStateTemplate(
      Identifier          => 'MyResourceIdentifier',
      DataExtraDimensions => [
        'MyNodePath', ...    # min: 1, max: 150
      ],    # OPTIONAL
      Description             => 'Mydescription',    # OPTIONAL
      MetadataExtraDimensions => [
        'MyNodePath', ...                            # min: 1, max: 150
      ],    # OPTIONAL
      StateTemplatePropertiesToAdd => [
        'MyNodePath', ...    # min: 1, max: 150
      ],    # OPTIONAL
      StateTemplatePropertiesToRemove => [
        'MyNodePath', ...    # min: 1, max: 150
      ],    # OPTIONAL
    );

    # Results:
    my $Arn  = $UpdateStateTemplateResponse->Arn;
    my $Id   = $UpdateStateTemplateResponse->Id;
    my $Name = $UpdateStateTemplateResponse->Name;

    # Returns a L<Paws::IoTFleetWise::UpdateStateTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/UpdateStateTemplate>

=head1 ATTRIBUTES


=head2 DataExtraDimensions => ArrayRef[Str|Undef]

A list of vehicle attributes to associate with the payload published on
the state template's MQTT topic. (See Processing last known state
vehicle data using MQTT messaging
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/process-visualize-data.html#process-last-known-state-vehicle-data)).
For example, if you add C<Vehicle.Attributes.Make> and
C<Vehicle.Attributes.Model> attributes, Amazon Web Services IoT
FleetWise will enrich the protobuf encoded payload with those
attributes in the C<extraDimensions> field.

Default: An empty array



=head2 Description => Str

A brief description of the state template.



=head2 B<REQUIRED> Identifier => Str

The unique ID of the state template.



=head2 MetadataExtraDimensions => ArrayRef[Str|Undef]

A list of vehicle attributes to associate with user properties of the
messages published on the state template's MQTT topic. (See Processing
last known state vehicle data using MQTT messaging
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/process-visualize-data.html#process-last-known-state-vehicle-data)).
For example, if you add C<Vehicle.Attributes.Make> and
C<Vehicle.Attributes.Model> attributes, Amazon Web Services IoT
FleetWise will include these attributes as User Properties with the
MQTT message.



=head2 StateTemplatePropertiesToAdd => ArrayRef[Str|Undef]

Add signals from which data is collected as part of the state template.



=head2 StateTemplatePropertiesToRemove => ArrayRef[Str|Undef]

Remove signals from which data is collected as part of the state
template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStateTemplate in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

