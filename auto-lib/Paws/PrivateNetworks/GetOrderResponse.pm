
package Paws::PrivateNetworks::GetOrderResponse;
  use Moose;
  has Order => (is => 'ro', isa => 'Paws::PrivateNetworks::Order', traits => ['NameInRequest'], request_name => 'order', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::PrivateNetworks::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::GetOrderResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Order => L<Paws::PrivateNetworks::Order>

Information about the order.


=head2 Tags => L<Paws::PrivateNetworks::TagMap>

The order tags.


=head2 _request_id => Str


=cut

