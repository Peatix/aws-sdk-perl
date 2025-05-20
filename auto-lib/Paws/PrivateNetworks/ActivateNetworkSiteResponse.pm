
package Paws::PrivateNetworks::ActivateNetworkSiteResponse;
  use Moose;
  has NetworkSite => (is => 'ro', isa => 'Paws::PrivateNetworks::NetworkSite', traits => ['NameInRequest'], request_name => 'networkSite');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::ActivateNetworkSiteResponse

=head1 ATTRIBUTES


=head2 NetworkSite => L<Paws::PrivateNetworks::NetworkSite>

Information about the network site.


=head2 _request_id => Str


=cut

