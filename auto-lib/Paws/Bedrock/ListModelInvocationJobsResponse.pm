
package Paws::Bedrock::ListModelInvocationJobsResponse;
  use Moose;
  has InvocationJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::ModelInvocationJobSummary]', traits => ['NameInRequest'], request_name => 'invocationJobSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListModelInvocationJobsResponse

=head1 ATTRIBUTES


=head2 InvocationJobSummaries => ArrayRef[L<Paws::Bedrock::ModelInvocationJobSummary>]

A list of items, each of which contains a summary about a batch
inference job.


=head2 NextToken => Str

If there are more results than can fit in the response, a C<nextToken>
is returned. Use the C<nextToken> in a request to return the next batch
of results.


=head2 _request_id => Str


=cut

