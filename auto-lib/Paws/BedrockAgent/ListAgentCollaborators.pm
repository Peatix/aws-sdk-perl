
package Paws::BedrockAgent::ListAgentCollaborators;
  use Moose;
  has AgentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentId', required => 1);
  has AgentVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentVersion', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAgentCollaborators');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agents/{agentId}/agentversions/{agentVersion}/agentcollaborators/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::ListAgentCollaboratorsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::ListAgentCollaborators - Arguments for method ListAgentCollaborators on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAgentCollaborators on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method ListAgentCollaborators.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAgentCollaborators.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $ListAgentCollaboratorsResponse =
      $bedrock -agent->ListAgentCollaborators(
      AgentId      => 'MyId',
      AgentVersion => 'MyVersion',
      MaxResults   => 1,                # OPTIONAL
      NextToken    => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $AgentCollaboratorSummaries =
      $ListAgentCollaboratorsResponse->AgentCollaboratorSummaries;
    my $NextToken = $ListAgentCollaboratorsResponse->NextToken;

    # Returns a L<Paws::BedrockAgent::ListAgentCollaboratorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/ListAgentCollaborators>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentId => Str

The agent's ID.



=head2 B<REQUIRED> AgentVersion => Str

The agent's version.



=head2 MaxResults => Int

The maximum number of agent collaborators to return in one page of
results.



=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAgentCollaborators in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

