
package Paws::Billingconductor::ListPricingPlansAssociatedWithPricingRuleOutput;
  use Moose;
  has BillingPeriod => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has PricingPlanArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PricingRuleArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListPricingPlansAssociatedWithPricingRuleOutput

=head1 ATTRIBUTES


=head2 BillingPeriod => Str

The pricing plan billing period for which associations will be listed.


=head2 NextToken => Str

The pagination token to be used on subsequent calls.


=head2 PricingPlanArns => ArrayRef[Str|Undef]

The list containing pricing plans that are associated with the
requested pricing rule.


=head2 PricingRuleArn => Str

The pricing rule Amazon Resource Name (ARN) for which associations will
be listed.


=head2 _request_id => Str


=cut

