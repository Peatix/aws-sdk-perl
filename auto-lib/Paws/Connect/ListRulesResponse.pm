
package Paws::Connect::ListRulesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RuleSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::RuleSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListRulesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 B<REQUIRED> RuleSummaryList => ArrayRef[L<Paws::Connect::RuleSummary>]

Summary information about a rule.


=head2 _request_id => Str


=cut

