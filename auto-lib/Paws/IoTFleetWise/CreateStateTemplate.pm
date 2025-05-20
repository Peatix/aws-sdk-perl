
package Paws::IoTFleetWise::CreateStateTemplate;
  use Moose;
  has DataExtraDimensions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'dataExtraDimensions' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has MetadataExtraDimensions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'metadataExtraDimensions' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has SignalCatalogArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'signalCatalogArn' , required => 1);
  has StateTemplateProperties => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'stateTemplateProperties' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStateTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::CreateStateTemplateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::CreateStateTemplate - Arguments for method CreateStateTemplate on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStateTemplate on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method CreateStateTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStateTemplate.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $CreateStateTemplateResponse = $iotfleetwise->CreateStateTemplate(
      Name                    => 'MyresourceName',
      SignalCatalogArn        => 'Myarn',
      StateTemplateProperties => [
        'MyNodePath', ...    # min: 1, max: 150
      ],
      DataExtraDimensions => [
        'MyNodePath', ...    # min: 1, max: 150
      ],    # OPTIONAL
      Description             => 'Mydescription',    # OPTIONAL
      MetadataExtraDimensions => [
        'MyNodePath', ...                            # min: 1, max: 150
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
    my $Arn  = $CreateStateTemplateResponse->Arn;
    my $Id   = $CreateStateTemplateResponse->Id;
    my $Name = $CreateStateTemplateResponse->Name;

    # Returns a L<Paws::IoTFleetWise::CreateStateTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/CreateStateTemplate>

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



=head2 Description => Str

A brief description of the state template.



=head2 MetadataExtraDimensions => ArrayRef[Str|Undef]

A list of vehicle attributes to associate with user properties of the
messages published on the state template's MQTT topic. (See Processing
last known state vehicle data using MQTT messaging
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/process-visualize-data.html#process-last-known-state-vehicle-data)).
For example, if you add C<Vehicle.Attributes.Make> and
C<Vehicle.Attributes.Model> attributes, Amazon Web Services IoT
FleetWise will include these attributes as User Properties with the
MQTT message.

Default: An empty array



=head2 B<REQUIRED> Name => Str

The name of the state template.



=head2 B<REQUIRED> SignalCatalogArn => Str

The ARN of the signal catalog associated with the state template.



=head2 B<REQUIRED> StateTemplateProperties => ArrayRef[Str|Undef]

A list of signals from which data is collected. The state template
properties contain the fully qualified names of the signals.



=head2 Tags => ArrayRef[L<Paws::IoTFleetWise::Tag>]

Metadata that can be used to manage the state template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStateTemplate in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

