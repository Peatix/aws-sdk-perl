
package Paws::Billingconductor::ListPricingPlans;
  use Moose;
  has BillingPeriod => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'Paws::Billingconductor::ListPricingPlansFilter');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPricingPlans');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-pricing-plans');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::ListPricingPlansOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListPricingPlans - Arguments for method ListPricingPlans on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPricingPlans on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method ListPricingPlans.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPricingPlans.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $ListPricingPlansOutput = $billingconductor->ListPricingPlans(
      BillingPeriod => 'MyBillingPeriod',    # OPTIONAL
      Filters       => {
        Arns => [ 'MyPricingPlanArn', ... ],    # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $BillingPeriod = $ListPricingPlansOutput->BillingPeriod;
    my $NextToken     = $ListPricingPlansOutput->NextToken;
    my $PricingPlans  = $ListPricingPlansOutput->PricingPlans;

    # Returns a L<Paws::Billingconductor::ListPricingPlansOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/ListPricingPlans>

=head1 ATTRIBUTES


=head2 BillingPeriod => Str

The preferred billing period to get pricing plan.



=head2 Filters => L<Paws::Billingconductor::ListPricingPlansFilter>

A C<ListPricingPlansFilter> that specifies the Amazon Resource Name
(ARNs) of pricing plans to retrieve pricing plans information.



=head2 MaxResults => Int

The maximum number of pricing plans to retrieve.



=head2 NextToken => Str

The pagination token that's used on subsequent call to get pricing
plans.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPricingPlans in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

