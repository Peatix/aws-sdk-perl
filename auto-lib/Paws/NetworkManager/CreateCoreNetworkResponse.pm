
package Paws::NetworkManager::CreateCoreNetworkResponse;
  use Moose;
  has CoreNetwork => (is => 'ro', isa => 'Paws::NetworkManager::CoreNetwork');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CreateCoreNetworkResponse

=head1 ATTRIBUTES


=head2 CoreNetwork => L<Paws::NetworkManager::CoreNetwork>

Returns details about a core network.


=head2 _request_id => Str


=cut

