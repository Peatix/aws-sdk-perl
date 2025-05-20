
package Paws::MailManager::ListRuleSetsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RuleSets => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::RuleSet]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::ListRuleSetsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If NextToken is returned, there are more results available. The value
of NextToken is a unique pagination token for each page. Make the call
again using the returned token to retrieve the next page.


=head2 B<REQUIRED> RuleSets => ArrayRef[L<Paws::MailManager::RuleSet>]

The list of rule sets.


=head2 _request_id => Str


=cut

1;