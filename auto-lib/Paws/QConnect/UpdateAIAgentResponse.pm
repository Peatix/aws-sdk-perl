
package Paws::QConnect::UpdateAIAgentResponse;
  use Moose;
  has AiAgent => (is => 'ro', isa => 'Paws::QConnect::AIAgentData', traits => ['NameInRequest'], request_name => 'aiAgent');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::UpdateAIAgentResponse

=head1 ATTRIBUTES


=head2 AiAgent => L<Paws::QConnect::AIAgentData>

The data of the updated Amazon Q in Connect AI Agent.


=head2 _request_id => Str


=cut

