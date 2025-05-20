
package Paws::MailManager::CreateRuleSetResponse;
  use Moose;
  has RuleSetId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::CreateRuleSetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> RuleSetId => Str

The identifier of the created rule set.


=head2 _request_id => Str


=cut

1;