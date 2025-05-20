
package Paws::Billingconductor::ListPricingPlansAssociatedWithPricingRule;
  use Moose;
  has BillingPeriod => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PricingRuleArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPricingPlansAssociatedWithPricingRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-pricing-plans-associated-with-pricing-rule');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::ListPricingPlansAssociatedWithPricingRuleOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListPricingPlansAssociatedWithPricingRule - Arguments for method ListPricingPlansAssociatedWithPricingRule on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPricingPlansAssociatedWithPricingRule on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method ListPricingPlansAssociatedWithPricingRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPricingPlansAssociatedWithPricingRule.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $ListPricingPlansAssociatedWithPricingRuleOutput =
      $billingconductor->ListPricingPlansAssociatedWithPricingRule(
      PricingRuleArn => 'MyPricingRuleArn',
      BillingPeriod  => 'MyBillingPeriod',    # OPTIONAL
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyToken',            # OPTIONAL
      );

    # Results:
    my $BillingPeriod =
      $ListPricingPlansAssociatedWithPricingRuleOutput->BillingPeriod;
    my $NextToken = $ListPricingPlansAssociatedWithPricingRuleOutput->NextToken;
    my $PricingPlanArns =
      $ListPricingPlansAssociatedWithPricingRuleOutput->PricingPlanArns;
    my $PricingRuleArn =
      $ListPricingPlansAssociatedWithPricingRuleOutput->PricingRuleArn;

# Returns a L<Paws::Billingconductor::ListPricingPlansAssociatedWithPricingRuleOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/ListPricingPlansAssociatedWithPricingRule>

=head1 ATTRIBUTES


=head2 BillingPeriod => Str

The pricing plan billing period for which associations will be listed.



=head2 MaxResults => Int

The optional maximum number of pricing rule associations to retrieve.



=head2 NextToken => Str

The optional pagination token returned by a previous call.



=head2 B<REQUIRED> PricingRuleArn => Str

The pricing rule Amazon Resource Name (ARN) for which associations will
be listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPricingPlansAssociatedWithPricingRule in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

