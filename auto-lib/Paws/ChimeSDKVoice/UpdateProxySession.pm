
package Paws::ChimeSDKVoice::UpdateProxySession;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has ExpiryMinutes => (is => 'ro', isa => 'Int');
  has ProxySessionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'proxySessionId', required => 1);
  has VoiceConnectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'voiceConnectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProxySession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-connectors/{voiceConnectorId}/proxy-sessions/{proxySessionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::UpdateProxySessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::UpdateProxySession - Arguments for method UpdateProxySession on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProxySession on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method UpdateProxySession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProxySession.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $UpdateProxySessionResponse = $voice -chime->UpdateProxySession(
      Capabilities => [
        'Voice', ...    # values: Voice, SMS
      ],
      ProxySessionId   => 'MyNonEmptyString128',
      VoiceConnectorId => 'MyNonEmptyString128',
      ExpiryMinutes    => 1,                       # OPTIONAL
    );

    # Results:
    my $ProxySession = $UpdateProxySessionResponse->ProxySession;

    # Returns a L<Paws::ChimeSDKVoice::UpdateProxySessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/UpdateProxySession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Capabilities => ArrayRef[Str|Undef]

The proxy session capabilities.



=head2 ExpiryMinutes => Int

The number of minutes allowed for the proxy session.



=head2 B<REQUIRED> ProxySessionId => Str

The proxy session ID.



=head2 B<REQUIRED> VoiceConnectorId => Str

The Voice Connector ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProxySession in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

