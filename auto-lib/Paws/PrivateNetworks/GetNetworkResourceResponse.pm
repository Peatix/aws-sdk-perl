
package Paws::PrivateNetworks::GetNetworkResourceResponse;
  use Moose;
  has NetworkResource => (is => 'ro', isa => 'Paws::PrivateNetworks::NetworkResource', traits => ['NameInRequest'], request_name => 'networkResource', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::PrivateNetworks::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::GetNetworkResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> NetworkResource => L<Paws::PrivateNetworks::NetworkResource>

Information about the network resource.


=head2 Tags => L<Paws::PrivateNetworks::TagMap>

The network resource tags.


=head2 _request_id => Str


=cut

