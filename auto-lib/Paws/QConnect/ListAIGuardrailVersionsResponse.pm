
package Paws::QConnect::ListAIGuardrailVersionsResponse;
  use Moose;
  has AiGuardrailVersionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::AIGuardrailVersionSummary]', traits => ['NameInRequest'], request_name => 'aiGuardrailVersionSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::ListAIGuardrailVersionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AiGuardrailVersionSummaries => ArrayRef[L<Paws::QConnect::AIGuardrailVersionSummary>]

The summaries of the AI Guardrail versions.


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 _request_id => Str


=cut

