
package Paws::MediaConnect::CreateFlow;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZone');
  has Entitlements => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::GrantEntitlementRequest]', traits => ['NameInRequest'], request_name => 'entitlements');
  has FlowSize => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowSize');
  has Maintenance => (is => 'ro', isa => 'Paws::MediaConnect::AddMaintenance', traits => ['NameInRequest'], request_name => 'maintenance');
  has MediaStreams => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::AddMediaStreamRequest]', traits => ['NameInRequest'], request_name => 'mediaStreams');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has NdiConfig => (is => 'ro', isa => 'Paws::MediaConnect::NdiConfig', traits => ['NameInRequest'], request_name => 'ndiConfig');
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::AddOutputRequest]', traits => ['NameInRequest'], request_name => 'outputs');
  has Source => (is => 'ro', isa => 'Paws::MediaConnect::SetSourceRequest', traits => ['NameInRequest'], request_name => 'source');
  has SourceFailoverConfig => (is => 'ro', isa => 'Paws::MediaConnect::FailoverConfig', traits => ['NameInRequest'], request_name => 'sourceFailoverConfig');
  has SourceMonitoringConfig => (is => 'ro', isa => 'Paws::MediaConnect::MonitoringConfig', traits => ['NameInRequest'], request_name => 'sourceMonitoringConfig');
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::SetSourceRequest]', traits => ['NameInRequest'], request_name => 'sources');
  has VpcInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::VpcInterfaceRequest]', traits => ['NameInRequest'], request_name => 'vpcInterfaces');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/flows');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::CreateFlowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::CreateFlow - Arguments for method CreateFlow on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFlow on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method CreateFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFlow.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $CreateFlowResponse = $mediaconnect->CreateFlow(
      Name             => 'MyString',
      AvailabilityZone => 'MyString',    # OPTIONAL
      Entitlements     => [
        {
          Subscribers                      => [ 'MyString', ... ],
          DataTransferSubscriberFeePercent => 1,                     # OPTIONAL
          Description                      => 'MyString',
          Encryption                       => {
            RoleArn   => 'MyString',
            Algorithm => 'aes128',    # values: aes128, aes192, aes256; OPTIONAL
            ConstantInitializationVector => 'MyString',
            DeviceId                     => 'MyString',
            KeyType                      =>
              'speke',    # values: speke, static-key, srt-password; OPTIONAL
            Region     => 'MyString',
            ResourceId => 'MyString',
            SecretArn  => 'MyString',
            Url        => 'MyString',
          },    # OPTIONAL
          EntitlementStatus => 'ENABLED',  # values: ENABLED, DISABLED; OPTIONAL
          Name              => 'MyString',
        },
        ...
      ],    # OPTIONAL
      FlowSize    => 'MEDIUM',    # OPTIONAL
      Maintenance => {
        MaintenanceDay => 'Monday'
        , # values: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
        MaintenanceStartHour => 'MyString',

      },    # OPTIONAL
      MediaStreams => [
        {
          MediaStreamId   => 1,           # OPTIONAL
          MediaStreamName => 'MyString',
          MediaStreamType => 'video',     # values: video, audio, ancillary-data
          Attributes      => {
            Fmtp => {
              ChannelOrder => 'MyString',
              Colorimetry  => 'BT601'
              , # values: BT601, BT709, BT2020, BT2100, ST2065-1, ST2065-3, XYZ; OPTIONAL
              ExactFramerate => 'MyString',
              Par            => 'MyString',
              Range => 'NARROW',   # values: NARROW, FULL, FULLPROTECT; OPTIONAL
              ScanMode => 'progressive'
              , # values: progressive, interlace, progressive-segmented-frame; OPTIONAL
              Tcs => 'SDR'
              , # values: SDR, PQ, HLG, LINEAR, BT2100LINPQ, BT2100LINHLG, ST2065-1, ST428-1, DENSITY; OPTIONAL
            },    # OPTIONAL
            Lang => 'MyString',
          },    # OPTIONAL
          ClockRate   => 1,            # OPTIONAL
          Description => 'MyString',
          VideoFormat => 'MyString',
        },
        ...
      ],    # OPTIONAL
      NdiConfig => {
        MachineName         => 'MyString',
        NdiDiscoveryServers => [
          {
            DiscoveryServerAddress => 'MyString',
            VpcInterfaceAdapter    => 'MyString',
            DiscoveryServerPort    => 1,            # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        NdiState => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
      },    # OPTIONAL
      Outputs => [
        {
          Protocol => 'zixi-push'
          , # values: zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq
          CidrAllowList => [ 'MyString', ... ],
          Description   => 'MyString',
          Destination   => 'MyString',
          Encryption    => {
            RoleArn   => 'MyString',
            Algorithm => 'aes128',    # values: aes128, aes192, aes256; OPTIONAL
            ConstantInitializationVector => 'MyString',
            DeviceId                     => 'MyString',
            KeyType                      =>
              'speke',    # values: speke, static-key, srt-password; OPTIONAL
            Region     => 'MyString',
            ResourceId => 'MyString',
            SecretArn  => 'MyString',
            Url        => 'MyString',
          },    # OPTIONAL
          MaxLatency                      => 1,    # OPTIONAL
          MediaStreamOutputConfigurations => [
            {
              EncodingName    => 'jxsv',      # values: jxsv, raw, smpte291, pcm
              MediaStreamName => 'MyString',
              DestinationConfigurations => [
                {
                  DestinationIp   => 'MyString',
                  DestinationPort => 1,            # OPTIONAL
                  Interface       => {
                    Name => 'MyString',

                  },

                },
                ...
              ],    # OPTIONAL
              EncodingParameters => {
                CompressionFactor => 1,
                EncoderProfile    => 'main',    # values: main, high

              },    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
          MinLatency        => 1,          # OPTIONAL
          Name              => 'MyString',
          NdiProgramName    => 'MyString',
          NdiSpeedHqQuality => 1,          # OPTIONAL
          OutputStatus      => 'ENABLED',  # values: ENABLED, DISABLED; OPTIONAL
          Port              => 1,          # OPTIONAL
          RemoteId          => 'MyString',
          SenderControlPort => 1,          # OPTIONAL
          SmoothingLatency  => 1,          # OPTIONAL
          StreamId          => 'MyString',
          VpcInterfaceAttachment => { VpcInterfaceName => 'MyString', }
          ,                                # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Source => {
        Decryption => {
          RoleArn   => 'MyString',
          Algorithm => 'aes128',     # values: aes128, aes192, aes256; OPTIONAL
          ConstantInitializationVector => 'MyString',
          DeviceId                     => 'MyString',
          KeyType                      =>
            'speke',    # values: speke, static-key, srt-password; OPTIONAL
          Region     => 'MyString',
          ResourceId => 'MyString',
          SecretArn  => 'MyString',
          Url        => 'MyString',
        },    # OPTIONAL
        Description    => 'MyString',
        EntitlementArn => 'MySetSourceRequestEntitlementArnString',   # OPTIONAL
        GatewayBridgeSource => {
          BridgeArn => 'MySetGatewayBridgeSourceRequestBridgeArnString',
          VpcInterfaceAttachment => { VpcInterfaceName => 'MyString', }
          ,                                                           # OPTIONAL
        },    # OPTIONAL
        IngestPort                      => 1,    # OPTIONAL
        MaxBitrate                      => 1,    # OPTIONAL
        MaxLatency                      => 1,    # OPTIONAL
        MaxSyncBuffer                   => 1,    # OPTIONAL
        MediaStreamSourceConfigurations => [
          {
            EncodingName        => 'jxsv',    # values: jxsv, raw, smpte291, pcm
            MediaStreamName     => 'MyString',
            InputConfigurations => [
              {
                InputPort => 1,               # OPTIONAL
                Interface => {
                  Name => 'MyString',

                },

              },
              ...
            ],    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        MinLatency => 1,                       # OPTIONAL
        Name       => 'MyString',
        Protocol   => 'zixi-push'
        , # values: zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq
        SenderControlPort     => 1,            # OPTIONAL
        SenderIpAddress       => 'MyString',
        SourceListenerAddress => 'MyString',
        SourceListenerPort    => 1,            # OPTIONAL
        StreamId              => 'MyString',
        VpcInterfaceName      => 'MyString',
        WhitelistCidr         => 'MyString',
      },    # OPTIONAL
      SourceFailoverConfig => {
        FailoverMode   => 'MERGE',      # values: MERGE, FAILOVER; OPTIONAL
        RecoveryWindow => 1,            # OPTIONAL
        SourcePriority => { PrimarySource => 'MyString', },    # OPTIONAL
        State          => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
      },    # OPTIONAL
      SourceMonitoringConfig => {
        AudioMonitoringSettings => [
          {
            SilentAudio => {
              State => 'ENABLED',       # values: ENABLED, DISABLED; OPTIONAL
              ThresholdSeconds => 1,    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        ContentQualityAnalysisState =>
          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        ThumbnailState => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        VideoMonitoringSettings => [
          {
            BlackFrames => {
              State => 'ENABLED',       # values: ENABLED, DISABLED; OPTIONAL
              ThresholdSeconds => 1,    # OPTIONAL
            },    # OPTIONAL
            FrozenFrames => {
              State => 'ENABLED',       # values: ENABLED, DISABLED; OPTIONAL
              ThresholdSeconds => 1,    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      Sources => [
        {
          Decryption => {
            RoleArn   => 'MyString',
            Algorithm => 'aes128',    # values: aes128, aes192, aes256; OPTIONAL
            ConstantInitializationVector => 'MyString',
            DeviceId                     => 'MyString',
            KeyType                      =>
              'speke',    # values: speke, static-key, srt-password; OPTIONAL
            Region     => 'MyString',
            ResourceId => 'MyString',
            SecretArn  => 'MyString',
            Url        => 'MyString',
          },    # OPTIONAL
          Description    => 'MyString',
          EntitlementArn => 'MySetSourceRequestEntitlementArnString', # OPTIONAL
          GatewayBridgeSource => {
            BridgeArn => 'MySetGatewayBridgeSourceRequestBridgeArnString',
            VpcInterfaceAttachment => { VpcInterfaceName => 'MyString', }
            ,                                                         # OPTIONAL
          },    # OPTIONAL
          IngestPort                      => 1,    # OPTIONAL
          MaxBitrate                      => 1,    # OPTIONAL
          MaxLatency                      => 1,    # OPTIONAL
          MaxSyncBuffer                   => 1,    # OPTIONAL
          MediaStreamSourceConfigurations => [
            {
              EncodingName    => 'jxsv',      # values: jxsv, raw, smpte291, pcm
              MediaStreamName => 'MyString',
              InputConfigurations => [
                {
                  InputPort => 1,             # OPTIONAL
                  Interface => {
                    Name => 'MyString',

                  },

                },
                ...
              ],    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
          MinLatency => 1,                       # OPTIONAL
          Name       => 'MyString',
          Protocol   => 'zixi-push'
          , # values: zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq
          SenderControlPort     => 1,            # OPTIONAL
          SenderIpAddress       => 'MyString',
          SourceListenerAddress => 'MyString',
          SourceListenerPort    => 1,            # OPTIONAL
          StreamId              => 'MyString',
          VpcInterfaceName      => 'MyString',
          WhitelistCidr         => 'MyString',
        },
        ...
      ],    # OPTIONAL
      VpcInterfaces => [
        {
          Name                 => 'MyString',
          RoleArn              => 'MyString',
          SecurityGroupIds     => [ 'MyString', ... ],
          SubnetId             => 'MyString',
          NetworkInterfaceType => 'ena',    # values: ena, efa; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Flow = $CreateFlowResponse->Flow;

    # Returns a L<Paws::MediaConnect::CreateFlowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/CreateFlow>

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone that you want to create the flow in. These
options are limited to the Availability Zones within the current Amazon
Web Services Region.



=head2 Entitlements => ArrayRef[L<Paws::MediaConnect::GrantEntitlementRequest>]

The entitlements that you want to grant on a flow.



=head2 FlowSize => Str

Determines the processing capacity and feature set of the flow. Set
this optional parameter to C<LARGE> if you want to enable NDI outputs
on the flow.

Valid values are: C<"MEDIUM">, C<"LARGE">

=head2 Maintenance => L<Paws::MediaConnect::AddMaintenance>

The maintenance settings you want to use for the flow.



=head2 MediaStreams => ArrayRef[L<Paws::MediaConnect::AddMediaStreamRequest>]

The media streams that you want to add to the flow. You can associate
these media streams with sources and outputs on the flow.



=head2 B<REQUIRED> Name => Str

The name of the flow.



=head2 NdiConfig => L<Paws::MediaConnect::NdiConfig>

Specifies the configuration settings for NDI outputs. Required when the
flow includes NDI outputs.



=head2 Outputs => ArrayRef[L<Paws::MediaConnect::AddOutputRequest>]

The outputs that you want to add to this flow.



=head2 Source => L<Paws::MediaConnect::SetSourceRequest>

The settings for the source that you want to use for the new flow.



=head2 SourceFailoverConfig => L<Paws::MediaConnect::FailoverConfig>

The settings for source failover.



=head2 SourceMonitoringConfig => L<Paws::MediaConnect::MonitoringConfig>

The settings for source monitoring.



=head2 Sources => ArrayRef[L<Paws::MediaConnect::SetSourceRequest>]

The sources that are assigned to the flow.



=head2 VpcInterfaces => ArrayRef[L<Paws::MediaConnect::VpcInterfaceRequest>]

The VPC interfaces you want on the flow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFlow in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

