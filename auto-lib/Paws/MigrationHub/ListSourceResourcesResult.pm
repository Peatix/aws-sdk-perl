
package Paws::MigrationHub::ListSourceResourcesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SourceResourceList => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHub::SourceResource]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::ListSourceResourcesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response includes a C<NextToken> value, that means that there
are more results available. The value of C<NextToken> is a unique
pagination token for each page. To retrieve the next page of results,
call this API again and specify this C<NextToken> value in the request.
Keep all other arguments unchanged. Each pagination token expires after
24 hours. Using an expired pagination token will return an HTTP 400
InvalidToken error.


=head2 SourceResourceList => ArrayRef[L<Paws::MigrationHub::SourceResource>]

The list of source resources.


=head2 _request_id => Str


=cut

1;