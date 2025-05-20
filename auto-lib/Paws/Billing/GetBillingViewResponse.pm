
package Paws::Billing::GetBillingViewResponse;
  use Moose;
  has BillingView => (is => 'ro', isa => 'Paws::Billing::BillingViewElement', traits => ['NameInRequest'], request_name => 'billingView' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Billing::GetBillingViewResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BillingView => L<Paws::Billing::BillingViewElement>

The billing view element associated with the specified ARN.


=head2 _request_id => Str


=cut

1;