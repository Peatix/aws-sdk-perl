
package Paws::TimestreamQuery::ListScheduledQueriesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ScheduledQueries => (is => 'ro', isa => 'ArrayRef[Paws::TimestreamQuery::ScheduledQuery]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::ListScheduledQueriesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to specify where to start paginating. This is the NextToken
from a previously truncated response.


=head2 B<REQUIRED> ScheduledQueries => ArrayRef[L<Paws::TimestreamQuery::ScheduledQuery>]

A list of scheduled queries.


=head2 _request_id => Str


=cut

1;