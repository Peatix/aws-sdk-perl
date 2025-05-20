
package Paws::ChimeSDKVoice::ListProxySessionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProxySessions => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKVoice::ProxySession]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::ListProxySessionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to retrieve the next page of results.


=head2 ProxySessions => ArrayRef[L<Paws::ChimeSDKVoice::ProxySession>]

The proxy sessions' details.


=head2 _request_id => Str


=cut

