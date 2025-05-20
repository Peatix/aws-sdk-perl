
package Paws::QConnect::ListAIPromptsResponse;
  use Moose;
  has AiPromptSummaries => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::AIPromptSummary]', traits => ['NameInRequest'], request_name => 'aiPromptSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::ListAIPromptsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AiPromptSummaries => ArrayRef[L<Paws::QConnect::AIPromptSummary>]

The summaries of the AI Prompts.


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 _request_id => Str


=cut

