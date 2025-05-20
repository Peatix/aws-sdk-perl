
package Paws::QConnect::UpdateAIGuardrailResponse;
  use Moose;
  has AiGuardrail => (is => 'ro', isa => 'Paws::QConnect::AIGuardrailData', traits => ['NameInRequest'], request_name => 'aiGuardrail');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::UpdateAIGuardrailResponse

=head1 ATTRIBUTES


=head2 AiGuardrail => L<Paws::QConnect::AIGuardrailData>

The data of the updated Amazon Q in Connect AI Guardrail.


=head2 _request_id => Str


=cut

