
package Paws::BedrockAgent::DisassociateAgentCollaborator;
  use Moose;
  has AgentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentId', required => 1);
  has AgentVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentVersion', required => 1);
  has CollaboratorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'collaboratorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateAgentCollaborator');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agents/{agentId}/agentversions/{agentVersion}/agentcollaborators/{collaboratorId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::DisassociateAgentCollaboratorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::DisassociateAgentCollaborator - Arguments for method DisassociateAgentCollaborator on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateAgentCollaborator on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method DisassociateAgentCollaborator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateAgentCollaborator.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $DisassociateAgentCollaboratorResponse =
      $bedrock -agent->DisassociateAgentCollaborator(
      AgentId        => 'MyId',
      AgentVersion   => 'MyDraftVersion',
      CollaboratorId => 'MyId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/DisassociateAgentCollaborator>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentId => Str

An agent ID.



=head2 B<REQUIRED> AgentVersion => Str

The agent's version.



=head2 B<REQUIRED> CollaboratorId => Str

The collaborator's ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateAgentCollaborator in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

