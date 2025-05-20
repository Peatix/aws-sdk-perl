
package Paws::Route53RecoveryControlConfig::UpdateSafetyRuleResponse;
  use Moose;
  has AssertionRule => (is => 'ro', isa => 'Paws::Route53RecoveryControlConfig::AssertionRule');
  has GatingRule => (is => 'ro', isa => 'Paws::Route53RecoveryControlConfig::GatingRule');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::UpdateSafetyRuleResponse

=head1 ATTRIBUTES


=head2 AssertionRule => L<Paws::Route53RecoveryControlConfig::AssertionRule>

The assertion rule updated.


=head2 GatingRule => L<Paws::Route53RecoveryControlConfig::GatingRule>

The gating rule updated.


=head2 _request_id => Str


=cut

