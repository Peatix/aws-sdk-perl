
package Paws::QConnect::UpdateAssistantAIAgentResponse;
  use Moose;
  has Assistant => (is => 'ro', isa => 'Paws::QConnect::AssistantData', traits => ['NameInRequest'], request_name => 'assistant');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::UpdateAssistantAIAgentResponse

=head1 ATTRIBUTES


=head2 Assistant => L<Paws::QConnect::AssistantData>




=head2 _request_id => Str


=cut

