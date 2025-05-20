
package Paws::LexModelsV2::ListBotReplicasResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotReplicaSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::BotReplicaSummary]', traits => ['NameInRequest'], request_name => 'botReplicaSummaries');
  has SourceRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceRegion');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListBotReplicasResponse

=head1 ATTRIBUTES


=head2 BotId => Str

the unique bot IDs in the list of replicated bots.


=head2 BotReplicaSummaries => ArrayRef[L<Paws::LexModelsV2::BotReplicaSummary>]

The summary details for the replicated bots.


=head2 SourceRegion => Str

The source region of the source bots in the list of replicated bots.


=head2 _request_id => Str


=cut

