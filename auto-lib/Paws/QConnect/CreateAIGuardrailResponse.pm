
package Paws::QConnect::CreateAIGuardrailResponse;
  use Moose;
  has AiGuardrail => (is => 'ro', isa => 'Paws::QConnect::AIGuardrailData', traits => ['NameInRequest'], request_name => 'aiGuardrail');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::CreateAIGuardrailResponse

=head1 ATTRIBUTES


=head2 AiGuardrail => L<Paws::QConnect::AIGuardrailData>

The data of the AI Guardrail.


=head2 _request_id => Str


=cut

