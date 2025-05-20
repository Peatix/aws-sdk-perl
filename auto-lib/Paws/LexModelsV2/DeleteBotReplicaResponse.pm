
package Paws::LexModelsV2::DeleteBotReplicaResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotReplicaStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botReplicaStatus');
  has ReplicaRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicaRegion');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DeleteBotReplicaResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The unique bot ID of the replicated bot generated.


=head2 BotReplicaStatus => Str

The operational status of the replicated bot generated.

Valid values are: C<"Enabling">, C<"Enabled">, C<"Deleting">, C<"Failed">
=head2 ReplicaRegion => Str

The region of the replicated bot generated.


=head2 _request_id => Str


=cut

