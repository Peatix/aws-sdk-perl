
package Paws::LexModelsV2::ListBotAliasReplicas;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ReplicaRegion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'replicaRegion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBotAliasReplicas');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/replicas/{replicaRegion}/botaliases/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListBotAliasReplicasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListBotAliasReplicas - Arguments for method ListBotAliasReplicas on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBotAliasReplicas on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListBotAliasReplicas.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBotAliasReplicas.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListBotAliasReplicasResponse = $models - v2 -lex->ListBotAliasReplicas(
      BotId         => 'MyId',
      ReplicaRegion => 'MyReplicaRegion',
      MaxResults    => 1,                   # OPTIONAL
      NextToken     => 'MyNextToken',       # OPTIONAL
    );

    # Results:
    my $BotAliasReplicaSummaries =
      $ListBotAliasReplicasResponse->BotAliasReplicaSummaries;
    my $BotId         = $ListBotAliasReplicasResponse->BotId;
    my $NextToken     = $ListBotAliasReplicasResponse->NextToken;
    my $ReplicaRegion = $ListBotAliasReplicasResponse->ReplicaRegion;
    my $SourceRegion  = $ListBotAliasReplicasResponse->SourceRegion;

    # Returns a L<Paws::LexModelsV2::ListBotAliasReplicasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListBotAliasReplicas>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The request for the unique bot ID of the replicated bot created from
the source bot alias.



=head2 MaxResults => Int

The request for maximum results to list the replicated bots created
from the source bot alias.



=head2 NextToken => Str

The request for the next token for the replicated bot created from the
source bot alias.



=head2 B<REQUIRED> ReplicaRegion => Str

The request for the secondary region of the replicated bot created from
the source bot alias.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBotAliasReplicas in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

