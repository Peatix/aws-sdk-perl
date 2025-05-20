
package Paws::Connect::ListAnalyticsDataLakeDataSetsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::Connect::AnalyticsDataSetsResult]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListAnalyticsDataLakeDataSetsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 Results => ArrayRef[L<Paws::Connect::AnalyticsDataSetsResult>]

An array of successful results: C<DataSetId>, C<DataSetName>. This is a
paginated API, so C<nextToken> is given if there are more results to be
returned.


=head2 _request_id => Str


=cut

