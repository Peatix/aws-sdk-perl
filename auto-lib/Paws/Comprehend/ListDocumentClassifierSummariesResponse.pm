
package Paws::Comprehend::ListDocumentClassifierSummariesResponse;
  use Moose;
  has DocumentClassifierSummariesList => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::DocumentClassifierSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListDocumentClassifierSummariesResponse

=head1 ATTRIBUTES


=head2 DocumentClassifierSummariesList => ArrayRef[L<Paws::Comprehend::DocumentClassifierSummary>]

The list of summaries of document classifiers.


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 _request_id => Str


=cut

1;