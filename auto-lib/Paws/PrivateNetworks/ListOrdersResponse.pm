
package Paws::PrivateNetworks::ListOrdersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Orders => (is => 'ro', isa => 'ArrayRef[Paws::PrivateNetworks::Order]', traits => ['NameInRequest'], request_name => 'orders');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::ListOrdersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next page of results.


=head2 Orders => ArrayRef[L<Paws::PrivateNetworks::Order>]

Information about the orders.


=head2 _request_id => Str


=cut

