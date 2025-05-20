
package Paws::QConnect::CreateAIGuardrailVersionResponse;
  use Moose;
  has AiGuardrail => (is => 'ro', isa => 'Paws::QConnect::AIGuardrailData', traits => ['NameInRequest'], request_name => 'aiGuardrail');
  has VersionNumber => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'versionNumber');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::CreateAIGuardrailVersionResponse

=head1 ATTRIBUTES


=head2 AiGuardrail => L<Paws::QConnect::AIGuardrailData>

The data of the AI Guardrail version.


=head2 VersionNumber => Int

The version number of the AI Guardrail version.


=head2 _request_id => Str


=cut

