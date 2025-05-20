
package Paws::LocationService::SearchPlaceIndexForTextResponse;
  use Moose;
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::SearchForTextResult]', required => 1);
  has Summary => (is => 'ro', isa => 'Paws::LocationService::SearchPlaceIndexForTextSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::SearchPlaceIndexForTextResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Results => ArrayRef[L<Paws::LocationService::SearchForTextResult>]

A list of Places matching the input text. Each result contains
additional information about the specific point of interest.

Not all response properties are included with all responses. Some
properties may only be returned by specific data partners.


=head2 B<REQUIRED> Summary => L<Paws::LocationService::SearchPlaceIndexForTextSummary>

Contains a summary of the request. Echoes the input values for
C<BiasPosition>, C<FilterBBox>, C<FilterCountries>, C<Language>,
C<MaxResults>, and C<Text>. Also includes the C<DataSource> of the
place index and the bounding box, C<ResultBBox>, which surrounds the
search results.


=head2 _request_id => Str


=cut

