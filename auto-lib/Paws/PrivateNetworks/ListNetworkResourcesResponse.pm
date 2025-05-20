
package Paws::PrivateNetworks::ListNetworkResourcesResponse;
  use Moose;
  has NetworkResources => (is => 'ro', isa => 'ArrayRef[Paws::PrivateNetworks::NetworkResource]', traits => ['NameInRequest'], request_name => 'networkResources');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::ListNetworkResourcesResponse

=head1 ATTRIBUTES


=head2 NetworkResources => ArrayRef[L<Paws::PrivateNetworks::NetworkResource>]

Information about network resources.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

