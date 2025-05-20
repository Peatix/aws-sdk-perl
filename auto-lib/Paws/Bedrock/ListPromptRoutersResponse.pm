
package Paws::Bedrock::ListPromptRoutersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PromptRouterSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::PromptRouterSummary]', traits => ['NameInRequest'], request_name => 'promptRouterSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListPromptRoutersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.


=head2 PromptRouterSummaries => ArrayRef[L<Paws::Bedrock::PromptRouterSummary>]

A list of prompt router summaries.


=head2 _request_id => Str


=cut

