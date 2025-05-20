
package Paws::Route53RecoveryControlConfig::CreateSafetyRule;
  use Moose;
  has AssertionRule => (is => 'ro', isa => 'Paws::Route53RecoveryControlConfig::NewAssertionRule');
  has ClientToken => (is => 'ro', isa => 'Str');
  has GatingRule => (is => 'ro', isa => 'Paws::Route53RecoveryControlConfig::NewGatingRule');
  has Tags => (is => 'ro', isa => 'Paws::Route53RecoveryControlConfig::__mapOf__stringMin0Max256PatternS');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSafetyRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/safetyrule');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryControlConfig::CreateSafetyRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::CreateSafetyRule - Arguments for method CreateSafetyRule on L<Paws::Route53RecoveryControlConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSafetyRule on the
L<AWS Route53 Recovery Control Config|Paws::Route53RecoveryControlConfig> service. Use the attributes of this class
as arguments to method CreateSafetyRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSafetyRule.

=head1 SYNOPSIS

    my $route53-recovery-control-config = Paws->service('Route53RecoveryControlConfig');
    my $CreateSafetyRuleResponse =
      $route53 -recovery-control-config->CreateSafetyRule(
      AssertionRule => {
        AssertedControls => [
          'My__stringMin1Max256PatternAZaZ09', ...    # min: 1, max: 256
        ],
        ControlPanelArn =>
          'My__stringMin1Max256PatternAZaZ09',        # min: 1, max: 256
        Name       => 'My__stringMin1Max64PatternS',  # min: 1, max: 64
        RuleConfig => {
          Inverted  => 1,
          Threshold => 1,
          Type      => 'ATLEAST',                     # values: ATLEAST, AND, OR

        },
        WaitPeriodMs => 1,

      },    # OPTIONAL
      ClientToken => 'My__stringMin1Max64PatternS',    # OPTIONAL
      GatingRule  => {
        ControlPanelArn =>
          'My__stringMin1Max256PatternAZaZ09',         # min: 1, max: 256
        GatingControls => [
          'My__stringMin1Max256PatternAZaZ09', ...     # min: 1, max: 256
        ],
        Name       => 'My__stringMin1Max64PatternS',    # min: 1, max: 64
        RuleConfig => {
          Inverted  => 1,
          Threshold => 1,
          Type      => 'ATLEAST',    # values: ATLEAST, AND, OR

        },
        TargetControls => [
          'My__stringMin1Max256PatternAZaZ09', ...    # min: 1, max: 256
        ],
        WaitPeriodMs => 1,

      },    # OPTIONAL
      Tags => {
        'My__string' => 'My__stringMin0Max256PatternS',    # , value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $AssertionRule = $CreateSafetyRuleResponse->AssertionRule;
    my $GatingRule    = $CreateSafetyRuleResponse->GatingRule;

# Returns a L<Paws::Route53RecoveryControlConfig::CreateSafetyRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config/CreateSafetyRule>

=head1 ATTRIBUTES


=head2 AssertionRule => L<Paws::Route53RecoveryControlConfig::NewAssertionRule>

The assertion rule requested.



=head2 ClientToken => Str

A unique, case-sensitive string of up to 64 ASCII characters. To make
an idempotent API request with an action, specify a client token in the
request.



=head2 GatingRule => L<Paws::Route53RecoveryControlConfig::NewGatingRule>

The gating rule requested.



=head2 Tags => L<Paws::Route53RecoveryControlConfig::__mapOf__stringMin0Max256PatternS>

The tags associated with the safety rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSafetyRule in L<Paws::Route53RecoveryControlConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

