
package Paws::LexModelsV2::ListBotAliasReplicasResponse;
  use Moose;
  has BotAliasReplicaSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::BotAliasReplicaSummary]', traits => ['NameInRequest'], request_name => 'botAliasReplicaSummaries');
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ReplicaRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicaRegion');
  has SourceRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceRegion');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListBotAliasReplicasResponse

=head1 ATTRIBUTES


=head2 BotAliasReplicaSummaries => ArrayRef[L<Paws::LexModelsV2::BotAliasReplicaSummary>]

The summary information of the replicated bot created from the source
bot alias.


=head2 BotId => Str

The unique bot ID of the replicated bot created from the source bot
alias.


=head2 NextToken => Str

The next token for the replicated bots created from the source bot
alias.


=head2 ReplicaRegion => Str

The secondary region of the replicated bot created from the source bot
alias.


=head2 SourceRegion => Str

The source region of the replicated bot created from the source bot
alias.


=head2 _request_id => Str


=cut

