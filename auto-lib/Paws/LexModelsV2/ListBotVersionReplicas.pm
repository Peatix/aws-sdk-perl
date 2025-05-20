
package Paws::LexModelsV2::ListBotVersionReplicas;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ReplicaRegion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'replicaRegion', required => 1);
  has SortBy => (is => 'ro', isa => 'Paws::LexModelsV2::BotVersionReplicaSortBy', traits => ['NameInRequest'], request_name => 'sortBy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBotVersionReplicas');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/replicas/{replicaRegion}/botversions/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListBotVersionReplicasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListBotVersionReplicas - Arguments for method ListBotVersionReplicas on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBotVersionReplicas on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListBotVersionReplicas.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBotVersionReplicas.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListBotVersionReplicasResponse =
      $models - v2 -lex->ListBotVersionReplicas(
      BotId         => 'MyId',
      ReplicaRegion => 'MyReplicaRegion',
      MaxResults    => 1,                   # OPTIONAL
      NextToken     => 'MyNextToken',       # OPTIONAL
      SortBy        => {
        Attribute => 'BotVersion',          # values: BotVersion
        Order     => 'Ascending',           # values: Ascending, Descending

      },    # OPTIONAL
      );

    # Results:
    my $BotId = $ListBotVersionReplicasResponse->BotId;
    my $BotVersionReplicaSummaries =
      $ListBotVersionReplicasResponse->BotVersionReplicaSummaries;
    my $NextToken     = $ListBotVersionReplicasResponse->NextToken;
    my $ReplicaRegion = $ListBotVersionReplicasResponse->ReplicaRegion;
    my $SourceRegion  = $ListBotVersionReplicasResponse->SourceRegion;

    # Returns a L<Paws::LexModelsV2::ListBotVersionReplicasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListBotVersionReplicas>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The request for the unique ID in the list of replicated bots.



=head2 MaxResults => Int

The maximum results given in the list of replicated bots.



=head2 NextToken => Str

The next token given in the list of replicated bots.



=head2 B<REQUIRED> ReplicaRegion => Str

The request for the region used in the list of replicated bots.



=head2 SortBy => L<Paws::LexModelsV2::BotVersionReplicaSortBy>

The requested sort category for the list of replicated bots.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBotVersionReplicas in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

