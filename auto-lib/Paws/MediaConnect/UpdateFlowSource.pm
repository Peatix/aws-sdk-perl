
package Paws::MediaConnect::UpdateFlowSource;
  use Moose;
  has Decryption => (is => 'ro', isa => 'Paws::MediaConnect::UpdateEncryption', traits => ['NameInRequest'], request_name => 'decryption');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EntitlementArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entitlementArn');
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FlowArn', required => 1);
  has GatewayBridgeSource => (is => 'ro', isa => 'Paws::MediaConnect::UpdateGatewayBridgeSourceRequest', traits => ['NameInRequest'], request_name => 'gatewayBridgeSource');
  has IngestPort => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'ingestPort');
  has MaxBitrate => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxBitrate');
  has MaxLatency => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxLatency');
  has MaxSyncBuffer => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxSyncBuffer');
  has MediaStreamSourceConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::MediaStreamSourceConfigurationRequest]', traits => ['NameInRequest'], request_name => 'mediaStreamSourceConfigurations');
  has MinLatency => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'minLatency');
  has Protocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protocol');
  has SenderControlPort => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'senderControlPort');
  has SenderIpAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'senderIpAddress');
  has SourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SourceArn', required => 1);
  has SourceListenerAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceListenerAddress');
  has SourceListenerPort => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'sourceListenerPort');
  has StreamId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'streamId');
  has VpcInterfaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcInterfaceName');
  has WhitelistCidr => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'whitelistCidr');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFlowSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/flows/{FlowArn}/source/{SourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::UpdateFlowSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateFlowSource - Arguments for method UpdateFlowSource on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFlowSource on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method UpdateFlowSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFlowSource.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $UpdateFlowSourceResponse = $mediaconnect->UpdateFlowSource(
      FlowArn    => 'MyUpdateFlowSourceRequestFlowArnString',
      SourceArn  => 'MyUpdateFlowSourceRequestSourceArnString',
      Decryption => {
        Algorithm => 'aes128',       # values: aes128, aes192, aes256; OPTIONAL
        ConstantInitializationVector => 'MyString',    # OPTIONAL
        DeviceId                     => 'MyString',    # OPTIONAL
        KeyType => 'speke',  # values: speke, static-key, srt-password; OPTIONAL
        Region     => 'MyString',    # OPTIONAL
        ResourceId => 'MyString',    # OPTIONAL
        RoleArn    => 'MyString',    # OPTIONAL
        SecretArn  => 'MyString',    # OPTIONAL
        Url        => 'MyString',    # OPTIONAL
      },    # OPTIONAL
      Description    => 'MyString',                         # OPTIONAL
      EntitlementArn =>
        'MyUpdateFlowSourceRequestEntitlementArnString',    # OPTIONAL
      GatewayBridgeSource => {
        BridgeArn =>
          'MyUpdateGatewayBridgeSourceRequestBridgeArnString',    # OPTIONAL
        VpcInterfaceAttachment => {
          VpcInterfaceName => 'MyString',                         # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      IngestPort                      => 1,    # OPTIONAL
      MaxBitrate                      => 1,    # OPTIONAL
      MaxLatency                      => 1,    # OPTIONAL
      MaxSyncBuffer                   => 1,    # OPTIONAL
      MediaStreamSourceConfigurations => [
        {
          EncodingName        => 'jxsv',      # values: jxsv, raw, smpte291, pcm
          MediaStreamName     => 'MyString',  # OPTIONAL
          InputConfigurations => [
            {
              InputPort => 1,
              Interface => {
                Name => 'MyString',    # OPTIONAL

              },

            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MinLatency            => 1,              # OPTIONAL
      Protocol              => 'zixi-push',    # OPTIONAL
      SenderControlPort     => 1,              # OPTIONAL
      SenderIpAddress       => 'MyString',     # OPTIONAL
      SourceListenerAddress => 'MyString',     # OPTIONAL
      SourceListenerPort    => 1,              # OPTIONAL
      StreamId              => 'MyString',     # OPTIONAL
      VpcInterfaceName      => 'MyString',     # OPTIONAL
      WhitelistCidr         => 'MyString',     # OPTIONAL
    );

    # Results:
    my $FlowArn = $UpdateFlowSourceResponse->FlowArn;
    my $Source  = $UpdateFlowSourceResponse->Source;

    # Returns a L<Paws::MediaConnect::UpdateFlowSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/UpdateFlowSource>

=head1 ATTRIBUTES


=head2 Decryption => L<Paws::MediaConnect::UpdateEncryption>

The type of encryption that is used on the content ingested from the
source.



=head2 Description => Str

A description of the source. This description is not visible outside of
the current Amazon Web Services account.



=head2 EntitlementArn => Str

The Amazon Resource Name (ARN) of the entitlement that allows you to
subscribe to the flow. The entitlement is set by the content
originator, and the ARN is generated as part of the originator's flow.



=head2 B<REQUIRED> FlowArn => Str

The ARN of the flow that you want to update.



=head2 GatewayBridgeSource => L<Paws::MediaConnect::UpdateGatewayBridgeSourceRequest>

The source configuration for cloud flows receiving a stream from a
bridge.



=head2 IngestPort => Int

The port that the flow listens on for incoming content. If the protocol
of the source is Zixi, the port must be set to 2088.



=head2 MaxBitrate => Int

The maximum bitrate for RIST, RTP, and RTP-FEC streams.



=head2 MaxLatency => Int

The maximum latency in milliseconds. This parameter applies only to
RIST-based and Zixi-based streams.



=head2 MaxSyncBuffer => Int

The size of the buffer (in milliseconds) to use to sync incoming source
data.



=head2 MediaStreamSourceConfigurations => ArrayRef[L<Paws::MediaConnect::MediaStreamSourceConfigurationRequest>]

The media stream that is associated with the source, and the parameters
for that association.



=head2 MinLatency => Int

The minimum latency in milliseconds for SRT-based streams. In streams
that use the SRT protocol, this value that you set on your MediaConnect
source or output represents the minimal potential latency of that
connection. The latency of the stream is set to the highest number
between the senderE<rsquo>s minimum latency and the receiverE<rsquo>s
minimum latency.



=head2 Protocol => Str

The protocol that the source uses to deliver the content to
MediaConnect.

Elemental MediaConnect no longer supports the Fujitsu QoS protocol.
This reference is maintained for legacy purposes only.

Valid values are: C<"zixi-push">, C<"rtp-fec">, C<"rtp">, C<"zixi-pull">, C<"rist">, C<"st2110-jpegxs">, C<"cdi">, C<"srt-listener">, C<"srt-caller">, C<"fujitsu-qos">, C<"udp">, C<"ndi-speed-hq">

=head2 SenderControlPort => Int

The port that the flow uses to send outbound requests to initiate
connection with the sender.



=head2 SenderIpAddress => Str

The IP address that the flow communicates with to initiate connection
with the sender.



=head2 B<REQUIRED> SourceArn => Str

The ARN of the source that you want to update.



=head2 SourceListenerAddress => Str

The source IP or domain name for SRT-caller protocol.



=head2 SourceListenerPort => Int

Source port for SRT-caller protocol.



=head2 StreamId => Str

The stream ID that you want to use for this transport. This parameter
applies only to Zixi and SRT caller-based streams.



=head2 VpcInterfaceName => Str

The name of the VPC interface that you want to send your output to.



=head2 WhitelistCidr => Str

The range of IP addresses that are allowed to contribute content to
your source. Format the IP addresses as a Classless Inter-Domain
Routing (CIDR) block; for example, 10.0.0.0/16.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFlowSource in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

