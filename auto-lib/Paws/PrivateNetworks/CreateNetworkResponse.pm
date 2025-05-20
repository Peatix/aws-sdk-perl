
package Paws::PrivateNetworks::CreateNetworkResponse;
  use Moose;
  has Network => (is => 'ro', isa => 'Paws::PrivateNetworks::Network', traits => ['NameInRequest'], request_name => 'network', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::PrivateNetworks::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::CreateNetworkResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Network => L<Paws::PrivateNetworks::Network>

Information about the network.


=head2 Tags => L<Paws::PrivateNetworks::TagMap>

The network tags.


=head2 _request_id => Str


=cut

