
package Paws::Billingconductor::CreatePricingRule;
  use Moose;
  has BillingEntity => (is => 'ro', isa => 'Str');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has Description => (is => 'ro', isa => 'Str');
  has ModifierPercentage => (is => 'ro', isa => 'Num');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Operation => (is => 'ro', isa => 'Str');
  has Scope => (is => 'ro', isa => 'Str', required => 1);
  has Service => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Billingconductor::TagMap');
  has Tiering => (is => 'ro', isa => 'Paws::Billingconductor::CreateTieringInput');
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has UsageType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePricingRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/create-pricing-rule');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::CreatePricingRuleOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::CreatePricingRule - Arguments for method CreatePricingRule on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePricingRule on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method CreatePricingRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePricingRule.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $CreatePricingRuleOutput = $billingconductor->CreatePricingRule(
      Name               => 'MyPricingRuleName',
      Scope              => 'GLOBAL',
      Type               => 'MARKUP',
      BillingEntity      => 'MyBillingEntity',             # OPTIONAL
      ClientToken        => 'MyClientToken',               # OPTIONAL
      Description        => 'MyPricingRuleDescription',    # OPTIONAL
      ModifierPercentage => 1,                             # OPTIONAL
      Operation          => 'MyOperation',                 # OPTIONAL
      Service            => 'MyService',                   # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Tiering => {
        FreeTier => {
          Activated => 1,

        },

      },    # OPTIONAL
      UsageType => 'MyUsageType',    # OPTIONAL
    );

    # Results:
    my $Arn = $CreatePricingRuleOutput->Arn;

    # Returns a L<Paws::Billingconductor::CreatePricingRuleOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/CreatePricingRule>

=head1 ATTRIBUTES


=head2 BillingEntity => Str

The seller of services provided by Amazon Web Services, their
affiliates, or third-party providers selling services via Amazon Web
Services Marketplace.



=head2 ClientToken => Str

The token that's needed to support idempotency. Idempotency isn't
currently supported, but will be implemented in a future update.



=head2 Description => Str

The pricing rule description.



=head2 ModifierPercentage => Num

A percentage modifier that's applied on the public pricing rates.



=head2 B<REQUIRED> Name => Str

The pricing rule name. The names must be unique to each pricing rule.



=head2 Operation => Str

Operation is the specific Amazon Web Services action covered by this
line item. This describes the specific usage of the line item.

If the C<Scope> attribute is set to C<SKU>, this attribute indicates
which operation the C<PricingRule> is modifying. For example, a value
of C<RunInstances:0202> indicates the operation of running an Amazon
EC2 instance.



=head2 B<REQUIRED> Scope => Str

The scope of pricing rule that indicates if it's globally applicable,
or it's service-specific.

Valid values are: C<"GLOBAL">, C<"SERVICE">, C<"BILLING_ENTITY">, C<"SKU">

=head2 Service => Str

If the C<Scope> attribute is set to C<SERVICE> or C<SKU>, the attribute
indicates which service the C<PricingRule> is applicable for.



=head2 Tags => L<Paws::Billingconductor::TagMap>

A map that contains tag keys and tag values that are attached to a
pricing rule.



=head2 Tiering => L<Paws::Billingconductor::CreateTieringInput>

The set of tiering configurations for the pricing rule.



=head2 B<REQUIRED> Type => Str

The type of pricing rule.

Valid values are: C<"MARKUP">, C<"DISCOUNT">, C<"TIERING">

=head2 UsageType => Str

Usage type is the unit that each service uses to measure the usage of a
specific type of resource.

If the C<Scope> attribute is set to C<SKU>, this attribute indicates
which usage type the C<PricingRule> is modifying. For example,
C<USW2-BoxUsage:m2.2xlarge> describes anC< M2 High Memory Double Extra
Large> instance in the US West (Oregon) Region.

 </p>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePricingRule in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

