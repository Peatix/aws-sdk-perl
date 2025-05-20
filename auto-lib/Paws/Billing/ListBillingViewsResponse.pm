
package Paws::Billing::ListBillingViewsResponse;
  use Moose;
  has BillingViews => (is => 'ro', isa => 'ArrayRef[Paws::Billing::BillingViewListElement]', traits => ['NameInRequest'], request_name => 'billingViews' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Billing::ListBillingViewsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BillingViews => ArrayRef[L<Paws::Billing::BillingViewListElement>]

A list of C<BillingViewListElement> retrieved.


=head2 NextToken => Str

The pagination token to use on subsequent calls to list billing views.


=head2 _request_id => Str


=cut

1;