
package Paws::BedrockAgent::CreateFlowAliasResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has ConcurrencyConfiguration => (is => 'ro', isa => 'Paws::BedrockAgent::FlowAliasConcurrencyConfiguration', traits => ['NameInRequest'], request_name => 'concurrencyConfiguration');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FlowId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowId', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RoutingConfiguration => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::FlowAliasRoutingConfigurationListItem]', traits => ['NameInRequest'], request_name => 'routingConfiguration', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::CreateFlowAliasResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the alias.


=head2 ConcurrencyConfiguration => L<Paws::BedrockAgent::FlowAliasConcurrencyConfiguration>

The configuration that specifies how nodes in the flow are executed in
parallel.


=head2 B<REQUIRED> CreatedAt => Str

The time at which the alias was created.


=head2 Description => Str

The description of the alias.


=head2 B<REQUIRED> FlowId => Str

The unique identifier of the flow that the alias belongs to.


=head2 B<REQUIRED> Id => Str

The unique identifier of the alias.


=head2 B<REQUIRED> Name => Str

The name of the alias.


=head2 B<REQUIRED> RoutingConfiguration => ArrayRef[L<Paws::BedrockAgent::FlowAliasRoutingConfigurationListItem>]

Contains information about the version that the alias is mapped to.


=head2 B<REQUIRED> UpdatedAt => Str

The time at which the alias of the flow was last updated.


=head2 _request_id => Str


=cut

