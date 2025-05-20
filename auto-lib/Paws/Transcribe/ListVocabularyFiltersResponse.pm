
package Paws::Transcribe::ListVocabularyFiltersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has VocabularyFilters => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::VocabularyFilterInfo]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::ListVocabularyFiltersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If C<NextToken> is present in your response, it indicates that not all
results are displayed. To view the next set of results, copy the string
associated with the C<NextToken> parameter in your results output, then
run your request again including C<NextToken> with the value of the
copied string. Repeat as needed to view all your results.


=head2 VocabularyFilters => ArrayRef[L<Paws::Transcribe::VocabularyFilterInfo>]

Provides information about the custom vocabulary filters that match the
criteria specified in your request.


=head2 _request_id => Str


=cut

1;