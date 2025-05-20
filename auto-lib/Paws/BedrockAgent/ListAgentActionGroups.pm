
package Paws::BedrockAgent::ListAgentActionGroups;
  use Moose;
  has AgentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentId', required => 1);
  has AgentVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentVersion', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAgentActionGroups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agents/{agentId}/agentversions/{agentVersion}/actiongroups/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::ListAgentActionGroupsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::ListAgentActionGroups - Arguments for method ListAgentActionGroups on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAgentActionGroups on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method ListAgentActionGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAgentActionGroups.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $ListAgentActionGroupsResponse = $bedrock -agent->ListAgentActionGroups(
      AgentId      => 'MyId',
      AgentVersion => 'MyVersion',
      MaxResults   => 1,                # OPTIONAL
      NextToken    => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $ActionGroupSummaries =
      $ListAgentActionGroupsResponse->ActionGroupSummaries;
    my $NextToken = $ListAgentActionGroupsResponse->NextToken;

    # Returns a L<Paws::BedrockAgent::ListAgentActionGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/ListAgentActionGroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentId => Str

The unique identifier of the agent.



=head2 B<REQUIRED> AgentVersion => Str

The version of the agent.



=head2 MaxResults => Int

The maximum number of results to return in the response. If the total
number of results is greater than this value, use the token returned in
the response in the C<nextToken> field when making another request to
return the next batch of results.



=head2 NextToken => Str

If the total number of results is greater than the C<maxResults> value
provided in the request, enter the token returned in the C<nextToken>
field in the response in this field to return the next batch of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAgentActionGroups in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

