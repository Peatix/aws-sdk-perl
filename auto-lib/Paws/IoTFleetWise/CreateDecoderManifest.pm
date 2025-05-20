
package Paws::IoTFleetWise::CreateDecoderManifest;
  use Moose;
  has DefaultForUnmappedSignals => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultForUnmappedSignals' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has ModelManifestArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelManifestArn' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::NetworkInterface]', traits => ['NameInRequest'], request_name => 'networkInterfaces' );
  has SignalDecoders => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::SignalDecoder]', traits => ['NameInRequest'], request_name => 'signalDecoders' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDecoderManifest');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::CreateDecoderManifestResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::CreateDecoderManifest - Arguments for method CreateDecoderManifest on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDecoderManifest on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method CreateDecoderManifest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDecoderManifest.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $CreateDecoderManifestResponse = $iotfleetwise->CreateDecoderManifest(
      ModelManifestArn =>
        'MyCreateDecoderManifestRequestModelManifestArnString',
      Name                      => 'MyresourceName',
      DefaultForUnmappedSignals => 'CUSTOM_DECODING',    # OPTIONAL
      Description               => 'Mydescription',      # OPTIONAL
      NetworkInterfaces         => [
        {
          InterfaceId => 'MyInterfaceId',    # min: 1, max: 50
          Type        => 'CAN_INTERFACE'
          , # values: CAN_INTERFACE, OBD_INTERFACE, VEHICLE_MIDDLEWARE, CUSTOM_DECODING_INTERFACE
          CanInterface => {
            Name            => 'MyCanInterfaceName', # min: 1, max: 100
            ProtocolName    => 'MyProtocolName',     # min: 1, max: 50; OPTIONAL
            ProtocolVersion => 'MyProtocolVersion',  # min: 1, max: 50; OPTIONAL
          },    # OPTIONAL
          CustomDecodingInterface => {
            Name => 'MyCustomDecodingSignalInterfaceName',    # min: 1, max: 100

          },    # OPTIONAL
          ObdInterface => {
            Name             => 'MyObdInterfaceName',    # min: 1, max: 100
            RequestMessageId => 1,                       # max: 2147483647
            DtcRequestIntervalSeconds => 1,              # max: 2147483647
            HasTransmissionEcu        => 1,              # OPTIONAL
            ObdStandard => 'MyObdStandard',    # min: 1, max: 50; OPTIONAL
            PidRequestIntervalSeconds => 1,    # max: 2147483647
            UseExtendedIds            => 1,    # OPTIONAL
          },    # OPTIONAL
          VehicleMiddleware => {
            Name         => 'MyVehicleMiddlewareName',    # min: 1, max: 100
            ProtocolName => 'ROS_2',                      # values: ROS_2

          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      SignalDecoders => [
        {
          FullyQualifiedName => 'MyFullyQualifiedName',    # min: 1, max: 150
          InterfaceId        => 'MyInterfaceId',           # min: 1, max: 50
          Type               => 'CAN_SIGNAL'
          , # values: CAN_SIGNAL, OBD_SIGNAL, MESSAGE_SIGNAL, CUSTOM_DECODING_SIGNAL
          CanSignal => {
            Factor          => 1,
            IsBigEndian     => 1,                   # OPTIONAL
            IsSigned        => 1,                   # OPTIONAL
            Length          => 1,                   # max: 2147483647
            MessageId       => 1,                   # max: 2147483647
            Offset          => 1,
            StartBit        => 1,                   # max: 2147483647
            Name            => 'MyCanSignalName',   # min: 1, max: 100; OPTIONAL
            SignalValueType =>
              'INTEGER',    # values: INTEGER, FLOATING_POINT; OPTIONAL
          },    # OPTIONAL
          CustomDecodingSignal => {
            Id => 'MyCustomDecodingId',    # min: 1, max: 150

          },    # OPTIONAL
          MessageSignal => {
            StructuredMessage => {
              PrimitiveMessageDefinition => {
                Ros2PrimitiveMessageDefinition => {
                  PrimitiveType => 'BOOL'
                  , # values: BOOL, BYTE, CHAR, FLOAT32, FLOAT64, INT8, UINT8, INT16, UINT16, INT32, UINT32, INT64, UINT64, STRING, WSTRING
                  Offset     => 1,
                  Scaling    => 1,
                  UpperBound => 1,    # max: 2048; OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              StructuredMessageDefinition => [
                {
                  DataType  => <StructuredMessage>,
                  FieldName => 'MyStructureMessageName',    # min: 1, max: 150

                },
                ...
              ],    # min: 1, max: 500; OPTIONAL
              StructuredMessageListDefinition => {
                ListType => 'FIXED_CAPACITY'
                , # values: FIXED_CAPACITY, DYNAMIC_UNBOUNDED_CAPACITY, DYNAMIC_BOUNDED_CAPACITY
                MemberType => <StructuredMessage>,
                Name       => 'MyStructureMessageName',    # min: 1, max: 150
                Capacity   => 1,                           # max: 2147483647
              },    # OPTIONAL
            },
            TopicName => 'MyTopicName',    # min: 1, max: 150

          },    # OPTIONAL
          ObdSignal => {
            ByteLength        => 1,    # min: 1, max: 8
            Offset            => 1,
            Pid               => 1,    # max: 2147483647
            PidResponseLength => 1,    # min: 1, max: 2147483647
            Scaling           => 1,
            ServiceMode       => 1,    # max: 2147483647
            StartByte         => 1,    # max: 2147483647
            BitMaskLength     => 1,    # min: 1, max: 8; OPTIONAL
            BitRightShift     => 1,    # max: 2147483647
            IsSigned          => 1,    # OPTIONAL
            SignalValueType   =>
              'INTEGER',    # values: INTEGER, FLOATING_POINT; OPTIONAL
          },    # OPTIONAL
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
    my $Arn  = $CreateDecoderManifestResponse->Arn;
    my $Name = $CreateDecoderManifestResponse->Name;

    # Returns a L<Paws::IoTFleetWise::CreateDecoderManifestResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/CreateDecoderManifest>

=head1 ATTRIBUTES


=head2 DefaultForUnmappedSignals => Str

Use default decoders for all unmapped signals in the model. You don't
need to provide any detailed decoding information.

Access to certain Amazon Web Services IoT FleetWise features is
currently gated. For more information, see Amazon Web Services Region
and feature availability
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html)
in the I<Amazon Web Services IoT FleetWise Developer Guide>.

Valid values are: C<"CUSTOM_DECODING">

=head2 Description => Str

A brief description of the decoder manifest.



=head2 B<REQUIRED> ModelManifestArn => Str

The Amazon Resource Name (ARN) of the vehicle model (model manifest).



=head2 B<REQUIRED> Name => Str

The unique name of the decoder manifest to create.



=head2 NetworkInterfaces => ArrayRef[L<Paws::IoTFleetWise::NetworkInterface>]

A list of information about available network interfaces.



=head2 SignalDecoders => ArrayRef[L<Paws::IoTFleetWise::SignalDecoder>]

A list of information about signal decoders.



=head2 Tags => ArrayRef[L<Paws::IoTFleetWise::Tag>]

Metadata that can be used to manage the decoder manifest.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDecoderManifest in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

