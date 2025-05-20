
package Paws::PrivateNetworks::DeleteNetworkResponse;
  use Moose;
  has Network => (is => 'ro', isa => 'Paws::PrivateNetworks::Network', traits => ['NameInRequest'], request_name => 'network', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::DeleteNetworkResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Network => L<Paws::PrivateNetworks::Network>

Information about the network.


=head2 _request_id => Str


=cut

