
package Paws::Route53RecoveryControlConfig::DescribeSafetyRule;
  use Moose;
  has SafetyRuleArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SafetyRuleArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSafetyRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/safetyrule/{SafetyRuleArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryControlConfig::DescribeSafetyRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::DescribeSafetyRule - Arguments for method DescribeSafetyRule on L<Paws::Route53RecoveryControlConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSafetyRule on the
L<AWS Route53 Recovery Control Config|Paws::Route53RecoveryControlConfig> service. Use the attributes of this class
as arguments to method DescribeSafetyRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSafetyRule.

=head1 SYNOPSIS

    my $route53-recovery-control-config = Paws->service('Route53RecoveryControlConfig');
    my $DescribeSafetyRuleResponse =
      $route53 -recovery-control-config->DescribeSafetyRule(
      SafetyRuleArn => 'My__string',

      );

    # Results:
    my $AssertionRule = $DescribeSafetyRuleResponse->AssertionRule;
    my $GatingRule    = $DescribeSafetyRuleResponse->GatingRule;

# Returns a L<Paws::Route53RecoveryControlConfig::DescribeSafetyRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config/DescribeSafetyRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SafetyRuleArn => Str

The ARN of the safety rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSafetyRule in L<Paws::Route53RecoveryControlConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

