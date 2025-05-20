
package Paws::BedrockAgent::DeleteAgentActionGroup;
  use Moose;
  has ActionGroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'actionGroupId', required => 1);
  has AgentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentId', required => 1);
  has AgentVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentVersion', required => 1);
  has SkipResourceInUseCheck => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'skipResourceInUseCheck');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAgentActionGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agents/{agentId}/agentversions/{agentVersion}/actiongroups/{actionGroupId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::DeleteAgentActionGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::DeleteAgentActionGroup - Arguments for method DeleteAgentActionGroup on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAgentActionGroup on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method DeleteAgentActionGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAgentActionGroup.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $DeleteAgentActionGroupResponse =
      $bedrock -agent->DeleteAgentActionGroup(
      ActionGroupId          => 'MyId',
      AgentId                => 'MyId',
      AgentVersion           => 'MyDraftVersion',
      SkipResourceInUseCheck => 1,                  # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/DeleteAgentActionGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionGroupId => Str

The unique identifier of the action group to delete.



=head2 B<REQUIRED> AgentId => Str

The unique identifier of the agent that the action group belongs to.



=head2 B<REQUIRED> AgentVersion => Str

The version of the agent that the action group belongs to.



=head2 SkipResourceInUseCheck => Bool

By default, this value is C<false> and deletion is stopped if the
resource is in use. If you set it to C<true>, the resource will be
deleted even if the resource is in use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAgentActionGroup in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

