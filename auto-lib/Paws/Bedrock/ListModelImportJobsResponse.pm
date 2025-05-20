
package Paws::Bedrock::ListModelImportJobsResponse;
  use Moose;
  has ModelImportJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::ModelImportJobSummary]', traits => ['NameInRequest'], request_name => 'modelImportJobSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListModelImportJobsResponse

=head1 ATTRIBUTES


=head2 ModelImportJobSummaries => ArrayRef[L<Paws::Bedrock::ModelImportJobSummary>]

Import job summaries.


=head2 NextToken => Str

If the total number of results is greater than the C<maxResults> value
provided in the request, enter the token returned in the C<nextToken>
field in the response in this field to return the next batch of
results.


=head2 _request_id => Str


=cut

