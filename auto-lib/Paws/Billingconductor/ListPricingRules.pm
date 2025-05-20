
package Paws::Billingconductor::ListPricingRules;
  use Moose;
  has BillingPeriod => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'Paws::Billingconductor::ListPricingRulesFilter');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPricingRules');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-pricing-rules');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::ListPricingRulesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListPricingRules - Arguments for method ListPricingRules on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPricingRules on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method ListPricingRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPricingRules.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $ListPricingRulesOutput = $billingconductor->ListPricingRules(
      BillingPeriod => 'MyBillingPeriod',    # OPTIONAL
      Filters       => {
        Arns => [ 'MyPricingRuleArn', ... ],    # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $BillingPeriod = $ListPricingRulesOutput->BillingPeriod;
    my $NextToken     = $ListPricingRulesOutput->NextToken;
    my $PricingRules  = $ListPricingRulesOutput->PricingRules;

    # Returns a L<Paws::Billingconductor::ListPricingRulesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/ListPricingRules>

=head1 ATTRIBUTES


=head2 BillingPeriod => Str

The preferred billing period to get the pricing plan.



=head2 Filters => L<Paws::Billingconductor::ListPricingRulesFilter>

A C<DescribePricingRuleFilter> that specifies the Amazon Resource Name
(ARNs) of pricing rules to retrieve pricing rules information.



=head2 MaxResults => Int

The maximum number of pricing rules to retrieve.



=head2 NextToken => Str

The pagination token that's used on subsequent call to get pricing
rules.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPricingRules in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

