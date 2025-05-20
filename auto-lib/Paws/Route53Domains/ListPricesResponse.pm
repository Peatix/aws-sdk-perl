
package Paws::Route53Domains::ListPricesResponse;
  use Moose;
  has NextPageMarker => (is => 'ro', isa => 'Str');
  has Prices => (is => 'ro', isa => 'ArrayRef[Paws::Route53Domains::DomainPrice]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::ListPricesResponse

=head1 ATTRIBUTES


=head2 NextPageMarker => Str

If there are more prices than you specified for C<MaxItems> in the
request, submit another request and include the value of
C<NextPageMarker> in the value of C<Marker>.

Used only for all TLDs. If you specify a TLD, don't specify a
C<NextPageMarker>.


=head2 Prices => ArrayRef[L<Paws::Route53Domains::DomainPrice>]

A complex type that includes all the pricing information. If you
specify a TLD, this array contains only the pricing for that TLD.


=head2 _request_id => Str


=cut

1;