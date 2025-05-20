
package Paws::LexModelsV2::CreateBotReplicaResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotReplicaStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botReplicaStatus');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has ReplicaRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicaRegion');
  has SourceRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceRegion');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateBotReplicaResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The unique bot ID of the replicated bot generated.


=head2 BotReplicaStatus => Str

The operational status of the replicated bot generated.

Valid values are: C<"Enabling">, C<"Enabled">, C<"Deleting">, C<"Failed">
=head2 CreationDateTime => Str

The creation date and time of the replicated bot generated.


=head2 ReplicaRegion => Str

The region of the replicated bot generated.


=head2 SourceRegion => Str

The source region for the source bot used for the replicated bot
generated.


=head2 _request_id => Str


=cut

