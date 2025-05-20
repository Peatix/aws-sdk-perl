
package Paws::Billingconductor::UpdatePricingRuleOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has AssociatedPricingPlanCount => (is => 'ro', isa => 'Int');
  has BillingEntity => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Int');
  has ModifierPercentage => (is => 'ro', isa => 'Num');
  has Name => (is => 'ro', isa => 'Str');
  has Operation => (is => 'ro', isa => 'Str');
  has Scope => (is => 'ro', isa => 'Str');
  has Service => (is => 'ro', isa => 'Str');
  has Tiering => (is => 'ro', isa => 'Paws::Billingconductor::UpdateTieringInput');
  has Type => (is => 'ro', isa => 'Str');
  has UsageType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::UpdatePricingRuleOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the successfully updated pricing
rule.


=head2 AssociatedPricingPlanCount => Int

The pricing plans count that this pricing rule is associated with.


=head2 BillingEntity => Str

The seller of services provided by Amazon Web Services, their
affiliates, or third-party providers selling services via Amazon Web
Services Marketplace.


=head2 Description => Str

The new description for the pricing rule.


=head2 LastModifiedTime => Int

The most recent time the pricing rule was modified.


=head2 ModifierPercentage => Num

The new modifier to show pricing plan rates as a percentage.


=head2 Name => Str

The new name of the pricing rule. The name must be unique to each
pricing rule.


=head2 Operation => Str

Operation refers to the specific Amazon Web Services covered by this
line item. This describes the specific usage of the line item.

If the C<Scope> attribute is set to C<SKU>, this attribute indicates
which operation the C<PricingRule> is modifying. For example, a value
of C<RunInstances:0202> indicates the operation of running an Amazon
EC2 instance.


=head2 Scope => Str

The scope of pricing rule that indicates if it's globally applicable,
or it's service-specific.

Valid values are: C<"GLOBAL">, C<"SERVICE">, C<"BILLING_ENTITY">, C<"SKU">
=head2 Service => Str

If the C<Scope> attribute is set to C<SERVICE>, the attribute indicates
which service the C<PricingRule> is applicable for.


=head2 Tiering => L<Paws::Billingconductor::UpdateTieringInput>

The set of tiering configurations for the pricing rule.


=head2 Type => Str

The new pricing rule type.

Valid values are: C<"MARKUP">, C<"DISCOUNT">, C<"TIERING">
=head2 UsageType => Str

Usage type is the unit that each service uses to measure the usage of a
specific type of resource.

If the C<Scope> attribute is set to C<SKU>, this attribute indicates
which usage type the C<PricingRule> is modifying. For example,
C<USW2-BoxUsage:m2.2xlarge> describes an C<M2 High Memory Double Extra
Large> instance in the US West (Oregon) Region.


=head2 _request_id => Str


=cut

