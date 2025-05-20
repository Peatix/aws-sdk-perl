
package Paws::DMS::DescribeFleetAdvisorSchemasResponse;
  use Moose;
  has FleetAdvisorSchemas => (is => 'ro', isa => 'ArrayRef[Paws::DMS::SchemaResponse]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeFleetAdvisorSchemasResponse

=head1 ATTRIBUTES


=head2 FleetAdvisorSchemas => ArrayRef[L<Paws::DMS::SchemaResponse>]

A collection of C<SchemaResponse> objects.


=head2 NextToken => Str

If C<NextToken> is returned, there are more results available. The
value of C<NextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged.


=head2 _request_id => Str


=cut

1;