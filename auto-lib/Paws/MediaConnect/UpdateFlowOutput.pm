
package Paws::MediaConnect::UpdateFlowOutput;
  use Moose;
  has CidrAllowList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'cidrAllowList');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Destination => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destination');
  has Encryption => (is => 'ro', isa => 'Paws::MediaConnect::UpdateEncryption', traits => ['NameInRequest'], request_name => 'encryption');
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FlowArn', required => 1);
  has MaxLatency => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxLatency');
  has MediaStreamOutputConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::MediaStreamOutputConfigurationRequest]', traits => ['NameInRequest'], request_name => 'mediaStreamOutputConfigurations');
  has MinLatency => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'minLatency');
  has NdiProgramName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ndiProgramName');
  has NdiSpeedHqQuality => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'ndiSpeedHqQuality');
  has OutputArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'OutputArn', required => 1);
  has OutputStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'outputStatus');
  has Port => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'port');
  has Protocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protocol');
  has RemoteId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'remoteId');
  has SenderControlPort => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'senderControlPort');
  has SenderIpAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'senderIpAddress');
  has SmoothingLatency => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'smoothingLatency');
  has StreamId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'streamId');
  has VpcInterfaceAttachment => (is => 'ro', isa => 'Paws::MediaConnect::VpcInterfaceAttachment', traits => ['NameInRequest'], request_name => 'vpcInterfaceAttachment');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFlowOutput');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/flows/{FlowArn}/outputs/{OutputArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::UpdateFlowOutputResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateFlowOutput - Arguments for method UpdateFlowOutput on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFlowOutput on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method UpdateFlowOutput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFlowOutput.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $UpdateFlowOutputResponse = $mediaconnect->UpdateFlowOutput(
      FlowArn       => 'MyUpdateFlowOutputRequestFlowArnString',
      OutputArn     => 'MyUpdateFlowOutputRequestOutputArnString',
      CidrAllowList => [ 'MyString', ... ],                          # OPTIONAL
      Description   => 'MyString',                                   # OPTIONAL
      Destination   => 'MyString',                                   # OPTIONAL
      Encryption    => {
        Algorithm => 'aes128',    # values: aes128, aes192, aes256; OPTIONAL
        ConstantInitializationVector => 'MyString',
        DeviceId                     => 'MyString',
        KeyType => 'speke',  # values: speke, static-key, srt-password; OPTIONAL
        Region     => 'MyString',
        ResourceId => 'MyString',
        RoleArn    => 'MyString',
        SecretArn  => 'MyString',
        Url        => 'MyString',
      },    # OPTIONAL
      MaxLatency                      => 1,    # OPTIONAL
      MediaStreamOutputConfigurations => [
        {
          EncodingName    => 'jxsv',       # values: jxsv, raw, smpte291, pcm
          MediaStreamName => 'MyString',
          DestinationConfigurations => [
            {
              DestinationIp   => 'MyString',
              DestinationPort => 1,
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
      MinLatency             => 1,                                    # OPTIONAL
      NdiProgramName         => 'MyString',                           # OPTIONAL
      NdiSpeedHqQuality      => 1,                                    # OPTIONAL
      OutputStatus           => 'ENABLED',                            # OPTIONAL
      Port                   => 1,                                    # OPTIONAL
      Protocol               => 'zixi-push',                          # OPTIONAL
      RemoteId               => 'MyString',                           # OPTIONAL
      SenderControlPort      => 1,                                    # OPTIONAL
      SenderIpAddress        => 'MyString',                           # OPTIONAL
      SmoothingLatency       => 1,                                    # OPTIONAL
      StreamId               => 'MyString',                           # OPTIONAL
      VpcInterfaceAttachment => { VpcInterfaceName => 'MyString', },  # OPTIONAL
    );

    # Results:
    my $FlowArn = $UpdateFlowOutputResponse->FlowArn;
    my $Output  = $UpdateFlowOutputResponse->Output;

    # Returns a L<Paws::MediaConnect::UpdateFlowOutputResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/UpdateFlowOutput>

=head1 ATTRIBUTES


=head2 CidrAllowList => ArrayRef[Str|Undef]

The range of IP addresses that should be allowed to initiate output
requests to this flow. These IP addresses should be in the form of a
Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.



=head2 Description => Str

A description of the output. This description appears only on the
MediaConnect console and will not be seen by the end user.



=head2 Destination => Str

The IP address where you want to send the output.



=head2 Encryption => L<Paws::MediaConnect::UpdateEncryption>

The type of key used for the encryption. If no C<keyType> is provided,
the service will use the default setting (static-key). Allowable
encryption types: static-key.



=head2 B<REQUIRED> FlowArn => Str

The Amazon Resource Name (ARN) of the flow that is associated with the
output that you want to update.



=head2 MaxLatency => Int

The maximum latency in milliseconds. This parameter applies only to
RIST-based and Zixi-based streams.



=head2 MediaStreamOutputConfigurations => ArrayRef[L<Paws::MediaConnect::MediaStreamOutputConfigurationRequest>]

The media streams that are associated with the output, and the
parameters for those associations.



=head2 MinLatency => Int

The minimum latency in milliseconds for SRT-based streams. In streams
that use the SRT protocol, this value that you set on your MediaConnect
source or output represents the minimal potential latency of that
connection. The latency of the stream is set to the highest number
between the senderE<rsquo>s minimum latency and the receiverE<rsquo>s
minimum latency.



=head2 NdiProgramName => Str

A suffix for the names of the NDI sources that the flow creates. If a
custom name isn't specified, MediaConnect uses the output name.



=head2 NdiSpeedHqQuality => Int

A quality setting for the NDI Speed HQ encoder.



=head2 B<REQUIRED> OutputArn => Str

The ARN of the output that you want to update.



=head2 OutputStatus => Str

An indication of whether the output should transmit data or not. If you
don't specify the C<outputStatus> field in your request, MediaConnect
leaves the value unchanged.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 Port => Int

The port to use when content is distributed to this output.



=head2 Protocol => Str

The protocol to use for the output.

Elemental MediaConnect no longer supports the Fujitsu QoS protocol.
This reference is maintained for legacy purposes only.

Valid values are: C<"zixi-push">, C<"rtp-fec">, C<"rtp">, C<"zixi-pull">, C<"rist">, C<"st2110-jpegxs">, C<"cdi">, C<"srt-listener">, C<"srt-caller">, C<"fujitsu-qos">, C<"udp">, C<"ndi-speed-hq">

=head2 RemoteId => Str

The remote ID for the Zixi-pull stream.



=head2 SenderControlPort => Int

The port that the flow uses to send outbound requests to initiate
connection with the sender.



=head2 SenderIpAddress => Str

The IP address that the flow communicates with to initiate connection
with the sender.



=head2 SmoothingLatency => Int

The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC
streams.



=head2 StreamId => Str

The stream ID that you want to use for this transport. This parameter
applies only to Zixi and SRT caller-based streams.



=head2 VpcInterfaceAttachment => L<Paws::MediaConnect::VpcInterfaceAttachment>

The name of the VPC interface attachment to use for this output.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFlowOutput in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

