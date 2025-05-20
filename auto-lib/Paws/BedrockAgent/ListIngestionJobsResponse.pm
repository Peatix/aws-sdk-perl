
package Paws::BedrockAgent::ListIngestionJobsResponse;
  use Moose;
  has IngestionJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::IngestionJobSummary]', traits => ['NameInRequest'], request_name => 'ingestionJobSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::ListIngestionJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IngestionJobSummaries => ArrayRef[L<Paws::BedrockAgent::IngestionJobSummary>]

A list of data ingestion jobs with information about each job.


=head2 NextToken => Str

If the total number of results is greater than the C<maxResults> value
provided in the request, use this token when making another request in
the C<nextToken> field to return the next batch of results.


=head2 _request_id => Str


=cut

