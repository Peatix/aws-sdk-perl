
package Paws::NetworkManager::UpdateCoreNetworkResponse;
  use Moose;
  has CoreNetwork => (is => 'ro', isa => 'Paws::NetworkManager::CoreNetwork');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::UpdateCoreNetworkResponse

=head1 ATTRIBUTES


=head2 CoreNetwork => L<Paws::NetworkManager::CoreNetwork>

Returns information about a core network update.


=head2 _request_id => Str


=cut

