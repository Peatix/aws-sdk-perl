
package Paws::Billingconductor::AssociatePricingRulesOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::AssociatePricingRulesOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The C<PricingPlanArn> that the C<PricingRuleArns> are associated with.


=head2 _request_id => Str


=cut

