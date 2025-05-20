
package Paws::ChimeSDKVoice::GetProxySession;
  use Moose;
  has ProxySessionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'proxySessionId', required => 1);
  has VoiceConnectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'voiceConnectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetProxySession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-connectors/{voiceConnectorId}/proxy-sessions/{proxySessionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::GetProxySessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::GetProxySession - Arguments for method GetProxySession on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetProxySession on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method GetProxySession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetProxySession.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $GetProxySessionResponse = $voice -chime->GetProxySession(
      ProxySessionId   => 'MyNonEmptyString128',
      VoiceConnectorId => 'MyNonEmptyString128',

    );

    # Results:
    my $ProxySession = $GetProxySessionResponse->ProxySession;

    # Returns a L<Paws::ChimeSDKVoice::GetProxySessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/GetProxySession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProxySessionId => Str

The proxy session ID.



=head2 B<REQUIRED> VoiceConnectorId => Str

The Voice Connector ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProxySession in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

