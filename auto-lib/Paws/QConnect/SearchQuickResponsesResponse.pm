
package Paws::QConnect::SearchQuickResponsesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::QuickResponseSearchResultData]', traits => ['NameInRequest'], request_name => 'results', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::SearchQuickResponsesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 B<REQUIRED> Results => ArrayRef[L<Paws::QConnect::QuickResponseSearchResultData>]

The results of the quick response search.


=head2 _request_id => Str


=cut

