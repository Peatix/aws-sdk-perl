
package Paws::LocationService::SearchPlaceIndexForSuggestionsResponse;
  use Moose;
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::SearchForSuggestionsResult]', required => 1);
  has Summary => (is => 'ro', isa => 'Paws::LocationService::SearchPlaceIndexForSuggestionsSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::SearchPlaceIndexForSuggestionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Results => ArrayRef[L<Paws::LocationService::SearchForSuggestionsResult>]

A list of place suggestions that best match the search text.


=head2 B<REQUIRED> Summary => L<Paws::LocationService::SearchPlaceIndexForSuggestionsSummary>

Contains a summary of the request. Echoes the input values for
C<BiasPosition>, C<FilterBBox>, C<FilterCountries>, C<Language>,
C<MaxResults>, and C<Text>. Also includes the C<DataSource> of the
place index.


=head2 _request_id => Str


=cut

