
package Paws::PrivateNetworks::CreateNetworkSiteResponse;
  use Moose;
  has NetworkSite => (is => 'ro', isa => 'Paws::PrivateNetworks::NetworkSite', traits => ['NameInRequest'], request_name => 'networkSite');
  has Tags => (is => 'ro', isa => 'Paws::PrivateNetworks::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::CreateNetworkSiteResponse

=head1 ATTRIBUTES


=head2 NetworkSite => L<Paws::PrivateNetworks::NetworkSite>

Information about the network site.


=head2 Tags => L<Paws::PrivateNetworks::TagMap>

The network site tags.


=head2 _request_id => Str


=cut

