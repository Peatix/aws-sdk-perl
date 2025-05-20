
package Paws::Billingconductor::ListPricingRulesAssociatedToPricingPlanOutput;
  use Moose;
  has BillingPeriod => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has PricingPlanArn => (is => 'ro', isa => 'Str');
  has PricingRuleArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListPricingRulesAssociatedToPricingPlanOutput

=head1 ATTRIBUTES


=head2 BillingPeriod => Str

The billing period for which the pricing rule associations are listed.


=head2 NextToken => Str

The pagination token to be used on subsequent calls.


=head2 PricingPlanArn => Str

The Amazon Resource Name (ARN) of the pricing plan for which
associations are listed.


=head2 PricingRuleArns => ArrayRef[Str|Undef]

A list containing pricing rules that are associated with the requested
pricing plan.


=head2 _request_id => Str


=cut

