
package Paws::Billingconductor::ListPricingPlansOutput;
  use Moose;
  has BillingPeriod => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has PricingPlans => (is => 'ro', isa => 'ArrayRef[Paws::Billingconductor::PricingPlanListElement]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListPricingPlansOutput

=head1 ATTRIBUTES


=head2 BillingPeriod => Str

The billing period for which the described pricing plans are
applicable.


=head2 NextToken => Str

The pagination token that's used on subsequent calls to get pricing
plans.


=head2 PricingPlans => ArrayRef[L<Paws::Billingconductor::PricingPlanListElement>]

A list of C<PricingPlanListElement> retrieved.


=head2 _request_id => Str


=cut

