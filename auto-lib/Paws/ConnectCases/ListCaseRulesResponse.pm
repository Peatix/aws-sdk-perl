
package Paws::ConnectCases::ListCaseRulesResponse;
  use Moose;
  has CaseRules => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::CaseRuleSummary]', traits => ['NameInRequest'], request_name => 'caseRules', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::ListCaseRulesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaseRules => ArrayRef[L<Paws::ConnectCases::CaseRuleSummary>]

A list of field summary objects.


=head2 NextToken => Str

The token for the next set of results. This is null if there are no
more results to return.


=head2 _request_id => Str


=cut

