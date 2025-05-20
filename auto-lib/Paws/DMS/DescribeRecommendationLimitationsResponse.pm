
package Paws::DMS::DescribeRecommendationLimitationsResponse;
  use Moose;
  has Limitations => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Limitation]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeRecommendationLimitationsResponse

=head1 ATTRIBUTES


=head2 Limitations => ArrayRef[L<Paws::DMS::Limitation>]

The list of limitations for recommendations of target Amazon Web
Services engines.


=head2 NextToken => Str

The unique pagination token returned for you to pass to a subsequent
request. Fleet Advisor returns this token when the number of records in
the response is greater than the C<MaxRecords> value. To retrieve the
next page, make the call again using the returned token and keeping all
other arguments unchanged.


=head2 _request_id => Str


=cut

1;