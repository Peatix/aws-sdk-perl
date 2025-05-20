
package Paws::SecurityHub::BatchGetAutomationRulesResponse;
  use Moose;
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AutomationRulesConfig]');
  has UnprocessedAutomationRules => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::UnprocessedAutomationRule]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::BatchGetAutomationRulesResponse

=head1 ATTRIBUTES


=head2 Rules => ArrayRef[L<Paws::SecurityHub::AutomationRulesConfig>]

A list of rule details for the provided rule ARNs.


=head2 UnprocessedAutomationRules => ArrayRef[L<Paws::SecurityHub::UnprocessedAutomationRule>]

A list of objects containing C<RuleArn>, C<ErrorCode>, and
C<ErrorMessage>. This parameter tells you which automation rules the
request didn't retrieve and why.


=head2 _request_id => Str


=cut

