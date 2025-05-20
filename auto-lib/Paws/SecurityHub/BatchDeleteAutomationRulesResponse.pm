
package Paws::SecurityHub::BatchDeleteAutomationRulesResponse;
  use Moose;
  has ProcessedAutomationRules => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has UnprocessedAutomationRules => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::UnprocessedAutomationRule]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::BatchDeleteAutomationRulesResponse

=head1 ATTRIBUTES


=head2 ProcessedAutomationRules => ArrayRef[Str|Undef]

A list of properly processed rule ARNs.


=head2 UnprocessedAutomationRules => ArrayRef[L<Paws::SecurityHub::UnprocessedAutomationRule>]

A list of objects containing C<RuleArn>, C<ErrorCode>, and
C<ErrorMessage>. This parameter tells you which automation rules the
request didn't delete and why.


=head2 _request_id => Str


=cut

