
package Paws::DMS::DescribeFleetAdvisorCollectorsResponse;
  use Moose;
  has Collectors => (is => 'ro', isa => 'ArrayRef[Paws::DMS::CollectorResponse]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeFleetAdvisorCollectorsResponse

=head1 ATTRIBUTES


=head2 Collectors => ArrayRef[L<Paws::DMS::CollectorResponse>]

Provides descriptions of the Fleet Advisor collectors, including the
collectors' name and ID, and the latest inventory data.


=head2 NextToken => Str

If C<NextToken> is returned, there are more results available. The
value of C<NextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged.


=head2 _request_id => Str


=cut

1;