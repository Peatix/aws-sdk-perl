
package Paws::BedrockAgent::UpdateFlowAlias;
  use Moose;
  has AliasIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'aliasIdentifier', required => 1);
  has ConcurrencyConfiguration => (is => 'ro', isa => 'Paws::BedrockAgent::FlowAliasConcurrencyConfiguration', traits => ['NameInRequest'], request_name => 'concurrencyConfiguration');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FlowIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RoutingConfiguration => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::FlowAliasRoutingConfigurationListItem]', traits => ['NameInRequest'], request_name => 'routingConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFlowAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/flows/{flowIdentifier}/aliases/{aliasIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::UpdateFlowAliasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::UpdateFlowAlias - Arguments for method UpdateFlowAlias on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFlowAlias on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method UpdateFlowAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFlowAlias.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $UpdateFlowAliasResponse = $bedrock -agent->UpdateFlowAlias(
      AliasIdentifier      => 'MyFlowAliasIdentifier',
      FlowIdentifier       => 'MyFlowIdentifier',
      Name                 => 'MyName',
      RoutingConfiguration => [
        {
          FlowVersion => 'MyVersion',    # min: 1, max: 5; OPTIONAL
        },
        ...
      ],
      ConcurrencyConfiguration => {
        Type           => 'Automatic',    # values: Automatic, Manual
        MaxConcurrency => 1,              # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $Arn = $UpdateFlowAliasResponse->Arn;
    my $ConcurrencyConfiguration =
      $UpdateFlowAliasResponse->ConcurrencyConfiguration;
    my $CreatedAt            = $UpdateFlowAliasResponse->CreatedAt;
    my $Description          = $UpdateFlowAliasResponse->Description;
    my $FlowId               = $UpdateFlowAliasResponse->FlowId;
    my $Id                   = $UpdateFlowAliasResponse->Id;
    my $Name                 = $UpdateFlowAliasResponse->Name;
    my $RoutingConfiguration = $UpdateFlowAliasResponse->RoutingConfiguration;
    my $UpdatedAt            = $UpdateFlowAliasResponse->UpdatedAt;

    # Returns a L<Paws::BedrockAgent::UpdateFlowAliasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/UpdateFlowAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AliasIdentifier => Str

The unique identifier of the alias.



=head2 ConcurrencyConfiguration => L<Paws::BedrockAgent::FlowAliasConcurrencyConfiguration>

The configuration that specifies how nodes in the flow are executed in
parallel.



=head2 Description => Str

A description for the alias.



=head2 B<REQUIRED> FlowIdentifier => Str

The unique identifier of the flow.



=head2 B<REQUIRED> Name => Str

The name of the alias.



=head2 B<REQUIRED> RoutingConfiguration => ArrayRef[L<Paws::BedrockAgent::FlowAliasRoutingConfigurationListItem>]

Contains information about the version to which to map the alias.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFlowAlias in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

