
package Paws::SecurityHub::ListAutomationRulesResponse;
  use Moose;
  has AutomationRulesMetadata => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AutomationRulesMetadata]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListAutomationRulesResponse

=head1 ATTRIBUTES


=head2 AutomationRulesMetadata => ArrayRef[L<Paws::SecurityHub::AutomationRulesMetadata>]

Metadata for rules in the calling account. The response includes rules
with a C<RuleStatus> of C<ENABLED> and C<DISABLED>.


=head2 NextToken => Str

A pagination token for the response.


=head2 _request_id => Str


=cut

