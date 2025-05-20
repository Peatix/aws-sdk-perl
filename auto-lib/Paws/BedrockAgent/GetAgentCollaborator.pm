
package Paws::BedrockAgent::GetAgentCollaborator;
  use Moose;
  has AgentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentId', required => 1);
  has AgentVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentVersion', required => 1);
  has CollaboratorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'collaboratorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAgentCollaborator');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agents/{agentId}/agentversions/{agentVersion}/agentcollaborators/{collaboratorId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::GetAgentCollaboratorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::GetAgentCollaborator - Arguments for method GetAgentCollaborator on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAgentCollaborator on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method GetAgentCollaborator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAgentCollaborator.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $GetAgentCollaboratorResponse = $bedrock -agent->GetAgentCollaborator(
      AgentId        => 'MyId',
      AgentVersion   => 'MyVersion',
      CollaboratorId => 'MyId',

    );

    # Results:
    my $AgentCollaborator = $GetAgentCollaboratorResponse->AgentCollaborator;

    # Returns a L<Paws::BedrockAgent::GetAgentCollaboratorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/GetAgentCollaborator>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentId => Str

The agent's ID.



=head2 B<REQUIRED> AgentVersion => Str

The agent's version.



=head2 B<REQUIRED> CollaboratorId => Str

The collaborator's ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAgentCollaborator in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

