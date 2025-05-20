
package Paws::Billingconductor::DisassociatePricingRules;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has PricingRuleArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociatePricingRules');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/disassociate-pricing-rules');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::DisassociatePricingRulesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::DisassociatePricingRules - Arguments for method DisassociatePricingRules on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociatePricingRules on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method DisassociatePricingRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociatePricingRules.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $DisassociatePricingRulesOutput =
      $billingconductor->DisassociatePricingRules(
      Arn             => 'MyPricingPlanArn',
      PricingRuleArns => [ 'MyPricingRuleArn', ... ],

      );

    # Results:
    my $Arn = $DisassociatePricingRulesOutput->Arn;

   # Returns a L<Paws::Billingconductor::DisassociatePricingRulesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/DisassociatePricingRules>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The pricing plan Amazon Resource Name (ARN) to disassociate pricing
rules from.



=head2 B<REQUIRED> PricingRuleArns => ArrayRef[Str|Undef]

A list containing the Amazon Resource Name (ARN) of the pricing rules
that will be disassociated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociatePricingRules in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

