
package Paws::Billingconductor::DisassociatePricingRulesOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::DisassociatePricingRulesOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the pricing plan that the pricing
rules successfully disassociated from.


=head2 _request_id => Str


=cut

