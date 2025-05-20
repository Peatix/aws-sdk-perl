
package Paws::LexModelsV2::DescribeBotReplica;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has ReplicaRegion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'replicaRegion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBotReplica');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/replicas/{replicaRegion}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DescribeBotReplicaResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeBotReplica - Arguments for method DescribeBotReplica on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBotReplica on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DescribeBotReplica.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBotReplica.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DescribeBotReplicaResponse = $models - v2 -lex->DescribeBotReplica(
      BotId         => 'MyId',
      ReplicaRegion => 'MyReplicaRegion',

    );

    # Results:
    my $BotId            = $DescribeBotReplicaResponse->BotId;
    my $BotReplicaStatus = $DescribeBotReplicaResponse->BotReplicaStatus;
    my $CreationDateTime = $DescribeBotReplicaResponse->CreationDateTime;
    my $FailureReasons   = $DescribeBotReplicaResponse->FailureReasons;
    my $ReplicaRegion    = $DescribeBotReplicaResponse->ReplicaRegion;
    my $SourceRegion     = $DescribeBotReplicaResponse->SourceRegion;

    # Returns a L<Paws::LexModelsV2::DescribeBotReplicaResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DescribeBotReplica>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The request for the unique bot ID of the replicated bot being
monitored.



=head2 B<REQUIRED> ReplicaRegion => Str

The request for the region of the replicated bot being monitored.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBotReplica in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

