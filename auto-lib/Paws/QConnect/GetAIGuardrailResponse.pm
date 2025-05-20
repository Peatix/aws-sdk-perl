
package Paws::QConnect::GetAIGuardrailResponse;
  use Moose;
  has AiGuardrail => (is => 'ro', isa => 'Paws::QConnect::AIGuardrailData', traits => ['NameInRequest'], request_name => 'aiGuardrail');
  has VersionNumber => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'versionNumber');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::GetAIGuardrailResponse

=head1 ATTRIBUTES


=head2 AiGuardrail => L<Paws::QConnect::AIGuardrailData>

The data of the AI Guardrail.


=head2 VersionNumber => Int

The version number of the AI Guardrail version (returned if an AI
Guardrail version was specified via use of a qualifier for the
C<aiGuardrailId> on the request).


=head2 _request_id => Str


=cut

