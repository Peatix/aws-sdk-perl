
package Paws::Route53RecoveryControlConfig::ListSafetyRulesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SafetyRules => (is => 'ro', isa => 'ArrayRef[Paws::Route53RecoveryControlConfig::Rule]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::ListSafetyRulesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that identifies which batch of results you want to see.


=head2 SafetyRules => ArrayRef[L<Paws::Route53RecoveryControlConfig::Rule>]

The list of safety rules in a control panel.


=head2 _request_id => Str


=cut

