
package Paws::QConnect::GetAIAgentResponse;
  use Moose;
  has AiAgent => (is => 'ro', isa => 'Paws::QConnect::AIAgentData', traits => ['NameInRequest'], request_name => 'aiAgent');
  has VersionNumber => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'versionNumber');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::GetAIAgentResponse

=head1 ATTRIBUTES


=head2 AiAgent => L<Paws::QConnect::AIAgentData>

The data of the AI Agent.


=head2 VersionNumber => Int

The version number of the AI Agent version (returned if an AI Agent
version was specified via use of a qualifier for the C<aiAgentId> on
the request).


=head2 _request_id => Str


=cut

