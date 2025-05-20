
package Paws::DMS::DescribeFleetAdvisorSchemaObjectSummaryResponse;
  use Moose;
  has FleetAdvisorSchemaObjects => (is => 'ro', isa => 'ArrayRef[Paws::DMS::FleetAdvisorSchemaObjectResponse]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeFleetAdvisorSchemaObjectSummaryResponse

=head1 ATTRIBUTES


=head2 FleetAdvisorSchemaObjects => ArrayRef[L<Paws::DMS::FleetAdvisorSchemaObjectResponse>]

A collection of C<FleetAdvisorSchemaObjectResponse> objects.


=head2 NextToken => Str

If C<NextToken> is returned, there are more results available. The
value of C<NextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged.


=head2 _request_id => Str


=cut

1;