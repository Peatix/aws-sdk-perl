
package Paws::BedrockRuntime::ListAsyncInvokesResponse;
  use Moose;
  has AsyncInvokeSummaries => (is => 'ro', isa => 'ArrayRef[Paws::BedrockRuntime::AsyncInvokeSummary]', traits => ['NameInRequest'], request_name => 'asyncInvokeSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockRuntime::ListAsyncInvokesResponse

=head1 ATTRIBUTES


=head2 AsyncInvokeSummaries => ArrayRef[L<Paws::BedrockRuntime::AsyncInvokeSummary>]

A list of invocation summaries.


=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.


=head2 _request_id => Str


=cut

