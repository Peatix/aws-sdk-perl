
package Paws::Billingconductor::UpdatePricingPlan;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePricingPlan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-pricing-plan');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::UpdatePricingPlanOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::UpdatePricingPlan - Arguments for method UpdatePricingPlan on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePricingPlan on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method UpdatePricingPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePricingPlan.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $UpdatePricingPlanOutput = $billingconductor->UpdatePricingPlan(
      Arn         => 'MyPricingPlanArn',
      Description => 'MyPricingPlanDescription',    # OPTIONAL
      Name        => 'MyPricingPlanName',           # OPTIONAL
    );

    # Results:
    my $Arn              = $UpdatePricingPlanOutput->Arn;
    my $Description      = $UpdatePricingPlanOutput->Description;
    my $LastModifiedTime = $UpdatePricingPlanOutput->LastModifiedTime;
    my $Name             = $UpdatePricingPlanOutput->Name;
    my $Size             = $UpdatePricingPlanOutput->Size;

    # Returns a L<Paws::Billingconductor::UpdatePricingPlanOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/UpdatePricingPlan>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the pricing plan that you're
updating.



=head2 Description => Str

The description of the pricing plan.



=head2 Name => Str

The name of the pricing plan. The name must be unique to each pricing
plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePricingPlan in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

