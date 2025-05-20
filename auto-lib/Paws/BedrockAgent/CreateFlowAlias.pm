
package Paws::BedrockAgent::CreateFlowAlias;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ConcurrencyConfiguration => (is => 'ro', isa => 'Paws::BedrockAgent::FlowAliasConcurrencyConfiguration', traits => ['NameInRequest'], request_name => 'concurrencyConfiguration');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FlowIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RoutingConfiguration => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::FlowAliasRoutingConfigurationListItem]', traits => ['NameInRequest'], request_name => 'routingConfiguration', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::BedrockAgent::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFlowAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/flows/{flowIdentifier}/aliases');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::CreateFlowAliasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::CreateFlowAlias - Arguments for method CreateFlowAlias on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFlowAlias on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method CreateFlowAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFlowAlias.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $CreateFlowAliasResponse = $bedrock -agent->CreateFlowAlias(
      FlowIdentifier       => 'MyFlowIdentifier',
      Name                 => 'MyName',
      RoutingConfiguration => [
        {
          FlowVersion => 'MyVersion',    # min: 1, max: 5; OPTIONAL
        },
        ...
      ],
      ClientToken              => 'MyClientToken',    # OPTIONAL
      ConcurrencyConfiguration => {
        Type           => 'Automatic',    # values: Automatic, Manual
        MaxConcurrency => 1,              # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateFlowAliasResponse->Arn;
    my $ConcurrencyConfiguration =
      $CreateFlowAliasResponse->ConcurrencyConfiguration;
    my $CreatedAt            = $CreateFlowAliasResponse->CreatedAt;
    my $Description          = $CreateFlowAliasResponse->Description;
    my $FlowId               = $CreateFlowAliasResponse->FlowId;
    my $Id                   = $CreateFlowAliasResponse->Id;
    my $Name                 = $CreateFlowAliasResponse->Name;
    my $RoutingConfiguration = $CreateFlowAliasResponse->RoutingConfiguration;
    my $UpdatedAt            = $CreateFlowAliasResponse->UpdatedAt;

    # Returns a L<Paws::BedrockAgent::CreateFlowAliasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/CreateFlowAlias>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 ConcurrencyConfiguration => L<Paws::BedrockAgent::FlowAliasConcurrencyConfiguration>

The configuration that specifies how nodes in the flow are executed in
parallel.



=head2 Description => Str

A description for the alias.



=head2 B<REQUIRED> FlowIdentifier => Str

The unique identifier of the flow for which to create an alias.



=head2 B<REQUIRED> Name => Str

A name for the alias.



=head2 B<REQUIRED> RoutingConfiguration => ArrayRef[L<Paws::BedrockAgent::FlowAliasRoutingConfigurationListItem>]

Contains information about the version to which to map the alias.



=head2 Tags => L<Paws::BedrockAgent::TagsMap>

Any tags that you want to attach to the alias of the flow. For more
information, see Tagging resources in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFlowAlias in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

