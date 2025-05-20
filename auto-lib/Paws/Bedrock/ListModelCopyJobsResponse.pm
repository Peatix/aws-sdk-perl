
package Paws::Bedrock::ListModelCopyJobsResponse;
  use Moose;
  has ModelCopyJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::ModelCopyJobSummary]', traits => ['NameInRequest'], request_name => 'modelCopyJobSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListModelCopyJobsResponse

=head1 ATTRIBUTES


=head2 ModelCopyJobSummaries => ArrayRef[L<Paws::Bedrock::ModelCopyJobSummary>]

A list of information about each model copy job.


=head2 NextToken => Str

If the total number of results is greater than the C<maxResults> value
provided in the request, use this token when making another request in
the C<nextToken> field to return the next batch of results.


=head2 _request_id => Str


=cut

