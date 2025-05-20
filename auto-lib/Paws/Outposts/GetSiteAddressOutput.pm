
package Paws::Outposts::GetSiteAddressOutput;
  use Moose;
  has Address => (is => 'ro', isa => 'Paws::Outposts::Address');
  has AddressType => (is => 'ro', isa => 'Str');
  has SiteId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::GetSiteAddressOutput

=head1 ATTRIBUTES


=head2 Address => L<Paws::Outposts::Address>

Information about the address.


=head2 AddressType => Str

The type of the address you receive.

Valid values are: C<"SHIPPING_ADDRESS">, C<"OPERATING_ADDRESS">
=head2 SiteId => Str




=head2 _request_id => Str


=cut

