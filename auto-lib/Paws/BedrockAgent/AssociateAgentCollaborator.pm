
package Paws::BedrockAgent::AssociateAgentCollaborator;
  use Moose;
  has AgentDescriptor => (is => 'ro', isa => 'Paws::BedrockAgent::AgentDescriptor', traits => ['NameInRequest'], request_name => 'agentDescriptor', required => 1);
  has AgentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentId', required => 1);
  has AgentVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentVersion', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has CollaborationInstruction => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'collaborationInstruction', required => 1);
  has CollaboratorName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'collaboratorName', required => 1);
  has RelayConversationHistory => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'relayConversationHistory');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateAgentCollaborator');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agents/{agentId}/agentversions/{agentVersion}/agentcollaborators/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::AssociateAgentCollaboratorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::AssociateAgentCollaborator - Arguments for method AssociateAgentCollaborator on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateAgentCollaborator on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method AssociateAgentCollaborator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateAgentCollaborator.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $AssociateAgentCollaboratorResponse =
      $bedrock -agent->AssociateAgentCollaborator(
      AgentDescriptor => {
        AliasArn => 'MyAgentAliasArn',    # max: 2048; OPTIONAL
      },
      AgentId                  => 'MyId',
      AgentVersion             => 'MyDraftVersion',
      CollaborationInstruction => 'MyCollaborationInstruction',
      CollaboratorName         => 'MyName',
      ClientToken              => 'MyClientToken',                # OPTIONAL
      RelayConversationHistory => 'TO_COLLABORATOR',              # OPTIONAL
      );

    # Results:
    my $AgentCollaborator =
      $AssociateAgentCollaboratorResponse->AgentCollaborator;

   # Returns a L<Paws::BedrockAgent::AssociateAgentCollaboratorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/AssociateAgentCollaborator>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentDescriptor => L<Paws::BedrockAgent::AgentDescriptor>

The alias of the collaborator agent.



=head2 B<REQUIRED> AgentId => Str

The agent's ID.



=head2 B<REQUIRED> AgentVersion => Str

An agent version.



=head2 ClientToken => Str

A client token.



=head2 B<REQUIRED> CollaborationInstruction => Str

Instruction for the collaborator.



=head2 B<REQUIRED> CollaboratorName => Str

A name for the collaborator.



=head2 RelayConversationHistory => Str

A relay conversation history for the collaborator.

Valid values are: C<"TO_COLLABORATOR">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateAgentCollaborator in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

