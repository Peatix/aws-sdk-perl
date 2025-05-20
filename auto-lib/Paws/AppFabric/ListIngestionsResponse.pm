
package Paws::AppFabric::ListIngestionsResponse;
  use Moose;
  has Ingestions => (is => 'ro', isa => 'ArrayRef[Paws::AppFabric::IngestionSummary]', traits => ['NameInRequest'], request_name => 'ingestions', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppFabric::ListIngestionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Ingestions => ArrayRef[L<Paws::AppFabric::IngestionSummary>]

Contains a list of ingestion summaries.


=head2 NextToken => Str

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged. Each pagination token expires after 24
hours. Using an expired pagination token will return an I<HTTP 400
InvalidToken error>.


=head2 _request_id => Str


=cut

