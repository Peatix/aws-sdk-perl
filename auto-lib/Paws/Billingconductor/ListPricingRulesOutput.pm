
package Paws::Billingconductor::ListPricingRulesOutput;
  use Moose;
  has BillingPeriod => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has PricingRules => (is => 'ro', isa => 'ArrayRef[Paws::Billingconductor::PricingRuleListElement]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListPricingRulesOutput

=head1 ATTRIBUTES


=head2 BillingPeriod => Str

The billing period for which the described pricing rules are
applicable.


=head2 NextToken => Str

The pagination token that's used on subsequent calls to get pricing
rules.


=head2 PricingRules => ArrayRef[L<Paws::Billingconductor::PricingRuleListElement>]

A list containing the described pricing rules.


=head2 _request_id => Str


=cut

