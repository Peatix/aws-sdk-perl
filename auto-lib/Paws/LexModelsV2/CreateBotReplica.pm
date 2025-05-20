
package Paws::LexModelsV2::CreateBotReplica;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has ReplicaRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicaRegion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBotReplica');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/replicas/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::CreateBotReplicaResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateBotReplica - Arguments for method CreateBotReplica on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBotReplica on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method CreateBotReplica.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBotReplica.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $CreateBotReplicaResponse = $models - v2 -lex->CreateBotReplica(
      BotId         => 'MyId',
      ReplicaRegion => 'MyReplicaRegion',

    );

    # Results:
    my $BotId            = $CreateBotReplicaResponse->BotId;
    my $BotReplicaStatus = $CreateBotReplicaResponse->BotReplicaStatus;
    my $CreationDateTime = $CreateBotReplicaResponse->CreationDateTime;
    my $ReplicaRegion    = $CreateBotReplicaResponse->ReplicaRegion;
    my $SourceRegion     = $CreateBotReplicaResponse->SourceRegion;

    # Returns a L<Paws::LexModelsV2::CreateBotReplicaResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/CreateBotReplica>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The request for the unique bot ID of the source bot to be replicated in
the secondary region.



=head2 B<REQUIRED> ReplicaRegion => Str

The request for the secondary region that will be used in the
replication of the source bot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBotReplica in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

