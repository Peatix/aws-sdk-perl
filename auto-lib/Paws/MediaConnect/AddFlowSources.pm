
package Paws::MediaConnect::AddFlowSources;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FlowArn', required => 1);
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::SetSourceRequest]', traits => ['NameInRequest'], request_name => 'sources', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddFlowSources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/flows/{FlowArn}/source');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::AddFlowSourcesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::AddFlowSources - Arguments for method AddFlowSources on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddFlowSources on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method AddFlowSources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddFlowSources.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $AddFlowSourcesResponse = $mediaconnect->AddFlowSources(
      FlowArn => 'MyAddFlowSourcesRequestFlowArnString',
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
          , # values: zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq; OPTIONAL
          SenderControlPort     => 1,            # OPTIONAL
          SenderIpAddress       => 'MyString',
          SourceListenerAddress => 'MyString',
          SourceListenerPort    => 1,            # OPTIONAL
          StreamId              => 'MyString',
          VpcInterfaceName      => 'MyString',
          WhitelistCidr         => 'MyString',
        },
        ...
      ],

    );

    # Results:
    my $FlowArn = $AddFlowSourcesResponse->FlowArn;
    my $Sources = $AddFlowSourcesResponse->Sources;

    # Returns a L<Paws::MediaConnect::AddFlowSourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/AddFlowSources>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowArn => Str

The Amazon Resource Name (ARN) of the flow that you want to update.



=head2 B<REQUIRED> Sources => ArrayRef[L<Paws::MediaConnect::SetSourceRequest>]

A list of sources that you want to add to the flow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddFlowSources in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

