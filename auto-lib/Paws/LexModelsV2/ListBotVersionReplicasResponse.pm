
package Paws::LexModelsV2::ListBotVersionReplicasResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersionReplicaSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::BotVersionReplicaSummary]', traits => ['NameInRequest'], request_name => 'botVersionReplicaSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ReplicaRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicaRegion');
  has SourceRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceRegion');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListBotVersionReplicasResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The unique ID of the bots in the list of replicated bots.


=head2 BotVersionReplicaSummaries => ArrayRef[L<Paws::LexModelsV2::BotVersionReplicaSummary>]

The information summary used for the replicated bots in the list of
replicated bots.


=head2 NextToken => Str

The next token used for the replicated bots in the list of replicated
bots.


=head2 ReplicaRegion => Str

The region used for the replicated bots in the list of replicated bots.


=head2 SourceRegion => Str

The source region used for the bots in the list of replicated bots.


=head2 _request_id => Str


=cut

