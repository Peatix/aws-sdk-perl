
package Paws::Connect::SearchVocabulariesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has VocabularySummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::VocabularySummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchVocabulariesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 VocabularySummaryList => ArrayRef[L<Paws::Connect::VocabularySummary>]

The list of the available custom vocabularies.


=head2 _request_id => Str


=cut

