
package Paws::Wisdom::SearchQuickResponsesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::Wisdom::QuickResponseSearchResultData]', traits => ['NameInRequest'], request_name => 'results', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::SearchQuickResponsesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 B<REQUIRED> Results => ArrayRef[L<Paws::Wisdom::QuickResponseSearchResultData>]

The results of the quick response search.


=head2 _request_id => Str


=cut

