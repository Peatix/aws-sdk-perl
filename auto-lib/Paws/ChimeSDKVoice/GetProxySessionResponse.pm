
package Paws::ChimeSDKVoice::GetProxySessionResponse;
  use Moose;
  has ProxySession => (is => 'ro', isa => 'Paws::ChimeSDKVoice::ProxySession');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::GetProxySessionResponse

=head1 ATTRIBUTES


=head2 ProxySession => L<Paws::ChimeSDKVoice::ProxySession>

The proxy session details.


=head2 _request_id => Str


=cut

