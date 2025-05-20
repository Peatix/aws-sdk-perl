
package Paws::Bedrock::ListGuardrailsResponse;
  use Moose;
  has Guardrails => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::GuardrailSummary]', traits => ['NameInRequest'], request_name => 'guardrails', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListGuardrailsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Guardrails => ArrayRef[L<Paws::Bedrock::GuardrailSummary>]

A list of objects, each of which contains details about a guardrail.


=head2 NextToken => Str

If there are more results than were returned in the response, the
response returns a C<nextToken> that you can send in another
C<ListGuardrails> request to see the next batch of results.


=head2 _request_id => Str


=cut

