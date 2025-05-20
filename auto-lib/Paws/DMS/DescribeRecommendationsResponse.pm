
package Paws::DMS::DescribeRecommendationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Recommendations => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Recommendation]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeRecommendationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The unique pagination token returned for you to pass to a subsequent
request. Fleet Advisor returns this token when the number of records in
the response is greater than the C<MaxRecords> value. To retrieve the
next page, make the call again using the returned token and keeping all
other arguments unchanged.


=head2 Recommendations => ArrayRef[L<Paws::DMS::Recommendation>]

The list of recommendations of target engines that Fleet Advisor
created for the source database.


=head2 _request_id => Str


=cut

1;