
package Paws::Comprehend::ListEntityRecognizerSummariesResponse;
  use Moose;
  has EntityRecognizerSummariesList => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::EntityRecognizerSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListEntityRecognizerSummariesResponse

=head1 ATTRIBUTES


=head2 EntityRecognizerSummariesList => ArrayRef[L<Paws::Comprehend::EntityRecognizerSummary>]

The list entity recognizer summaries.


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 _request_id => Str


=cut

1;