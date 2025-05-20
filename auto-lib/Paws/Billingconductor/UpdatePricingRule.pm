
package Paws::Billingconductor::UpdatePricingRule;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has ModifierPercentage => (is => 'ro', isa => 'Num');
  has Name => (is => 'ro', isa => 'Str');
  has Tiering => (is => 'ro', isa => 'Paws::Billingconductor::UpdateTieringInput');
  has Type => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePricingRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-pricing-rule');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::UpdatePricingRuleOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::UpdatePricingRule - Arguments for method UpdatePricingRule on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePricingRule on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method UpdatePricingRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePricingRule.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $UpdatePricingRuleOutput = $billingconductor->UpdatePricingRule(
      Arn                => 'MyPricingRuleArn',
      Description        => 'MyPricingRuleDescription',    # OPTIONAL
      ModifierPercentage => 1,                             # OPTIONAL
      Name               => 'MyPricingRuleName',           # OPTIONAL
      Tiering            => {
        FreeTier => {
          Activated => 1,

        },

      },                                                   # OPTIONAL
      Type => 'MARKUP',                                    # OPTIONAL
    );

    # Results:
    my $Arn = $UpdatePricingRuleOutput->Arn;
    my $AssociatedPricingPlanCount =
      $UpdatePricingRuleOutput->AssociatedPricingPlanCount;
    my $BillingEntity      = $UpdatePricingRuleOutput->BillingEntity;
    my $Description        = $UpdatePricingRuleOutput->Description;
    my $LastModifiedTime   = $UpdatePricingRuleOutput->LastModifiedTime;
    my $ModifierPercentage = $UpdatePricingRuleOutput->ModifierPercentage;
    my $Name               = $UpdatePricingRuleOutput->Name;
    my $Operation          = $UpdatePricingRuleOutput->Operation;
    my $Scope              = $UpdatePricingRuleOutput->Scope;
    my $Service            = $UpdatePricingRuleOutput->Service;
    my $Tiering            = $UpdatePricingRuleOutput->Tiering;
    my $Type               = $UpdatePricingRuleOutput->Type;
    my $UsageType          = $UpdatePricingRuleOutput->UsageType;

    # Returns a L<Paws::Billingconductor::UpdatePricingRuleOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/UpdatePricingRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the pricing rule to update.



=head2 Description => Str

The new description for the pricing rule.



=head2 ModifierPercentage => Num

The new modifier to show pricing plan rates as a percentage.



=head2 Name => Str

The new name of the pricing rule. The name must be unique to each
pricing rule.



=head2 Tiering => L<Paws::Billingconductor::UpdateTieringInput>

The set of tiering configurations for the pricing rule.



=head2 Type => Str

The new pricing rule type.

Valid values are: C<"MARKUP">, C<"DISCOUNT">, C<"TIERING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePricingRule in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

