
package Paws::Billingconductor::DeletePricingPlan;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePricingPlan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/delete-pricing-plan');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::DeletePricingPlanOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::DeletePricingPlan - Arguments for method DeletePricingPlan on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePricingPlan on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method DeletePricingPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePricingPlan.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $DeletePricingPlanOutput = $billingconductor->DeletePricingPlan(
      Arn => 'MyPricingPlanArn',

    );

    # Results:
    my $Arn = $DeletePricingPlanOutput->Arn;

    # Returns a L<Paws::Billingconductor::DeletePricingPlanOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/DeletePricingPlan>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the pricing plan that you're
deleting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePricingPlan in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

