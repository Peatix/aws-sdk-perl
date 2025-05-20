
package Paws::PrivateNetworks::AcknowledgeOrderReceiptResponse;
  use Moose;
  has Order => (is => 'ro', isa => 'Paws::PrivateNetworks::Order', traits => ['NameInRequest'], request_name => 'order', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::AcknowledgeOrderReceiptResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Order => L<Paws::PrivateNetworks::Order>

Information about the order.


=head2 _request_id => Str


=cut

