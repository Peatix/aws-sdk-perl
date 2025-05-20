
package Paws::SecurityHub::CreateAutomationRuleResponse;
  use Moose;
  has RuleArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::CreateAutomationRuleResponse

=head1 ATTRIBUTES


=head2 RuleArn => Str

The Amazon Resource Name (ARN) of the automation rule that you created.


=head2 _request_id => Str


=cut

