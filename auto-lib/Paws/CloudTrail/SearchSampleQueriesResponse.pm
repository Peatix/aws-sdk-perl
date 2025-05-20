
package Paws::CloudTrail::SearchSampleQueriesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SearchResults => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::SearchSampleQueriesSearchResult]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::SearchSampleQueriesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token you can use to get the next page of results.


=head2 SearchResults => ArrayRef[L<Paws::CloudTrail::SearchSampleQueriesSearchResult>]

A list of objects containing the search results ordered from most
relevant to least relevant.


=head2 _request_id => Str


=cut

1;