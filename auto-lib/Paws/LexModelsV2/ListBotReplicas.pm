
package Paws::LexModelsV2::ListBotReplicas;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBotReplicas');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/replicas/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListBotReplicasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListBotReplicas - Arguments for method ListBotReplicas on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBotReplicas on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListBotReplicas.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBotReplicas.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListBotReplicasResponse = $models - v2 -lex->ListBotReplicas(
      BotId => 'MyId',

    );

    # Results:
    my $BotId               = $ListBotReplicasResponse->BotId;
    my $BotReplicaSummaries = $ListBotReplicasResponse->BotReplicaSummaries;
    my $SourceRegion        = $ListBotReplicasResponse->SourceRegion;

    # Returns a L<Paws::LexModelsV2::ListBotReplicasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListBotReplicas>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The request for the unique bot IDs in the list of replicated bots.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBotReplicas in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

