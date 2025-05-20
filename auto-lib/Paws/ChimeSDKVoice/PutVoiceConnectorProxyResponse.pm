
package Paws::ChimeSDKVoice::PutVoiceConnectorProxyResponse;
  use Moose;
  has Proxy => (is => 'ro', isa => 'Paws::ChimeSDKVoice::Proxy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::PutVoiceConnectorProxyResponse

=head1 ATTRIBUTES


=head2 Proxy => L<Paws::ChimeSDKVoice::Proxy>

The proxy configuration details.


=head2 _request_id => Str


=cut

