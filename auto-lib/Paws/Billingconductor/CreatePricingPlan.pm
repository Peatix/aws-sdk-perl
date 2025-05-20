
package Paws::Billingconductor::CreatePricingPlan;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has PricingRuleArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Tags => (is => 'ro', isa => 'Paws::Billingconductor::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePricingPlan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/create-pricing-plan');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::CreatePricingPlanOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::CreatePricingPlan - Arguments for method CreatePricingPlan on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePricingPlan on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method CreatePricingPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePricingPlan.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $CreatePricingPlanOutput = $billingconductor->CreatePricingPlan(
      Name            => 'MyPricingPlanName',
      ClientToken     => 'MyClientToken',                # OPTIONAL
      Description     => 'MyPricingPlanDescription',     # OPTIONAL
      PricingRuleArns => [ 'MyPricingRuleArn', ... ],    # OPTIONAL
      Tags            => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn = $CreatePricingPlanOutput->Arn;

    # Returns a L<Paws::Billingconductor::CreatePricingPlanOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/CreatePricingPlan>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The token that is needed to support idempotency. Idempotency isn't
currently supported, but will be implemented in a future update.



=head2 Description => Str

The description of the pricing plan.



=head2 B<REQUIRED> Name => Str

The name of the pricing plan. The names must be unique to each pricing
plan.



=head2 PricingRuleArns => ArrayRef[Str|Undef]

A list of Amazon Resource Names (ARNs) that define the pricing plan
parameters.



=head2 Tags => L<Paws::Billingconductor::TagMap>

A map that contains tag keys and tag values that are attached to a
pricing plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePricingPlan in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

