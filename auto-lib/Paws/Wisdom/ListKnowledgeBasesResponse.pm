
package Paws::Wisdom::ListKnowledgeBasesResponse;
  use Moose;
  has KnowledgeBaseSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Wisdom::KnowledgeBaseSummary]', traits => ['NameInRequest'], request_name => 'knowledgeBaseSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::ListKnowledgeBasesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> KnowledgeBaseSummaries => ArrayRef[L<Paws::Wisdom::KnowledgeBaseSummary>]

Information about the knowledge bases.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

