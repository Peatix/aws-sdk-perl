
package Paws::DMS::DescribeFleetAdvisorDatabasesResponse;
  use Moose;
  has Databases => (is => 'ro', isa => 'ArrayRef[Paws::DMS::DatabaseResponse]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeFleetAdvisorDatabasesResponse

=head1 ATTRIBUTES


=head2 Databases => ArrayRef[L<Paws::DMS::DatabaseResponse>]

Provides descriptions of the Fleet Advisor collector databases,
including the database's collector, ID, and name.


=head2 NextToken => Str

If C<NextToken> is returned, there are more results available. The
value of C<NextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged.


=head2 _request_id => Str


=cut

1;