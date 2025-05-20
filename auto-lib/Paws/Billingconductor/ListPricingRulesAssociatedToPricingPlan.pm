
package Paws::Billingconductor::ListPricingRulesAssociatedToPricingPlan;
  use Moose;
  has BillingPeriod => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PricingPlanArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPricingRulesAssociatedToPricingPlan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-pricing-rules-associated-to-pricing-plan');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::ListPricingRulesAssociatedToPricingPlanOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListPricingRulesAssociatedToPricingPlan - Arguments for method ListPricingRulesAssociatedToPricingPlan on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPricingRulesAssociatedToPricingPlan on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method ListPricingRulesAssociatedToPricingPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPricingRulesAssociatedToPricingPlan.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $ListPricingRulesAssociatedToPricingPlanOutput =
      $billingconductor->ListPricingRulesAssociatedToPricingPlan(
      PricingPlanArn => 'MyPricingPlanArn',
      BillingPeriod  => 'MyBillingPeriod',    # OPTIONAL
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyToken',            # OPTIONAL
      );

    # Results:
    my $BillingPeriod =
      $ListPricingRulesAssociatedToPricingPlanOutput->BillingPeriod;
    my $NextToken = $ListPricingRulesAssociatedToPricingPlanOutput->NextToken;
    my $PricingPlanArn =
      $ListPricingRulesAssociatedToPricingPlanOutput->PricingPlanArn;
    my $PricingRuleArns =
      $ListPricingRulesAssociatedToPricingPlanOutput->PricingRuleArns;

# Returns a L<Paws::Billingconductor::ListPricingRulesAssociatedToPricingPlanOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/ListPricingRulesAssociatedToPricingPlan>

=head1 ATTRIBUTES


=head2 BillingPeriod => Str

The billing period for which the pricing rule associations are to be
listed.



=head2 MaxResults => Int

The optional maximum number of pricing rule associations to retrieve.



=head2 NextToken => Str

The optional pagination token returned by a previous call.



=head2 B<REQUIRED> PricingPlanArn => Str

The Amazon Resource Name (ARN) of the pricing plan for which
associations are to be listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPricingRulesAssociatedToPricingPlan in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

