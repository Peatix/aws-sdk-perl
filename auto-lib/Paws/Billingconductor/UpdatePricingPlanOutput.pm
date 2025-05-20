
package Paws::Billingconductor::UpdatePricingPlanOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has Size => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::UpdatePricingPlanOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the updated pricing plan.


=head2 Description => Str

The new description for the pricing rule.


=head2 LastModifiedTime => Int

The most recent time when the pricing plan was modified.


=head2 Name => Str

The name of the pricing plan. The name must be unique to each pricing
plan.


=head2 Size => Int

The pricing rules count that's currently associated with this pricing
plan list.


=head2 _request_id => Str


=cut

