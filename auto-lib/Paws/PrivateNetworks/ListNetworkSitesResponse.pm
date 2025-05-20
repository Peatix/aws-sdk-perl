
package Paws::PrivateNetworks::ListNetworkSitesResponse;
  use Moose;
  has NetworkSites => (is => 'ro', isa => 'ArrayRef[Paws::PrivateNetworks::NetworkSite]', traits => ['NameInRequest'], request_name => 'networkSites');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::ListNetworkSitesResponse

=head1 ATTRIBUTES


=head2 NetworkSites => ArrayRef[L<Paws::PrivateNetworks::NetworkSite>]

Information about the network sites.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

