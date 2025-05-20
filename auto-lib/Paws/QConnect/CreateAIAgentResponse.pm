
package Paws::QConnect::CreateAIAgentResponse;
  use Moose;
  has AiAgent => (is => 'ro', isa => 'Paws::QConnect::AIAgentData', traits => ['NameInRequest'], request_name => 'aiAgent');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::CreateAIAgentResponse

=head1 ATTRIBUTES


=head2 AiAgent => L<Paws::QConnect::AIAgentData>

The data of the created AI Agent.


=head2 _request_id => Str


=cut

