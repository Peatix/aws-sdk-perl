
package Paws::Route53RecoveryControlConfig::UpdateSafetyRule;
  use Moose;
  has AssertionRuleUpdate => (is => 'ro', isa => 'Paws::Route53RecoveryControlConfig::AssertionRuleUpdate');
  has GatingRuleUpdate => (is => 'ro', isa => 'Paws::Route53RecoveryControlConfig::GatingRuleUpdate');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSafetyRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/safetyrule');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryControlConfig::UpdateSafetyRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::UpdateSafetyRule - Arguments for method UpdateSafetyRule on L<Paws::Route53RecoveryControlConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSafetyRule on the
L<AWS Route53 Recovery Control Config|Paws::Route53RecoveryControlConfig> service. Use the attributes of this class
as arguments to method UpdateSafetyRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSafetyRule.

=head1 SYNOPSIS

    my $route53-recovery-control-config = Paws->service('Route53RecoveryControlConfig');
    my $UpdateSafetyRuleResponse =
      $route53 -recovery-control-config->UpdateSafetyRule(
      AssertionRuleUpdate => {
        Name          => 'My__stringMin1Max64PatternS',       # min: 1, max: 64
        SafetyRuleArn => 'My__stringMin1Max256PatternAZaZ09', # min: 1, max: 256
        WaitPeriodMs  => 1,

      },    # OPTIONAL
      GatingRuleUpdate => {
        Name          => 'My__stringMin1Max64PatternS',       # min: 1, max: 64
        SafetyRuleArn => 'My__stringMin1Max256PatternAZaZ09', # min: 1, max: 256
        WaitPeriodMs  => 1,

      },    # OPTIONAL
      );

    # Results:
    my $AssertionRule = $UpdateSafetyRuleResponse->AssertionRule;
    my $GatingRule    = $UpdateSafetyRuleResponse->GatingRule;

# Returns a L<Paws::Route53RecoveryControlConfig::UpdateSafetyRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config/UpdateSafetyRule>

=head1 ATTRIBUTES


=head2 AssertionRuleUpdate => L<Paws::Route53RecoveryControlConfig::AssertionRuleUpdate>

The assertion rule to update.



=head2 GatingRuleUpdate => L<Paws::Route53RecoveryControlConfig::GatingRuleUpdate>

The gating rule to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSafetyRule in L<Paws::Route53RecoveryControlConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

