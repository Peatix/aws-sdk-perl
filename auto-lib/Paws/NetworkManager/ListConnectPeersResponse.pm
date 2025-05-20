
package Paws::NetworkManager::ListConnectPeersResponse;
  use Moose;
  has ConnectPeers => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::ConnectPeerSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::ListConnectPeersResponse

=head1 ATTRIBUTES


=head2 ConnectPeers => ArrayRef[L<Paws::NetworkManager::ConnectPeerSummary>]

Describes the Connect peers.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

