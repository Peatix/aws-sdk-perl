
package Paws::PrivateNetworks::ListNetworksResponse;
  use Moose;
  has Networks => (is => 'ro', isa => 'ArrayRef[Paws::PrivateNetworks::Network]', traits => ['NameInRequest'], request_name => 'networks');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::ListNetworksResponse

=head1 ATTRIBUTES


=head2 Networks => ArrayRef[L<Paws::PrivateNetworks::Network>]

The networks.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

