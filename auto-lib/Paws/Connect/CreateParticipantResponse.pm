
package Paws::Connect::CreateParticipantResponse;
  use Moose;
  has ParticipantCredentials => (is => 'ro', isa => 'Paws::Connect::ParticipantTokenCredentials');
  has ParticipantId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateParticipantResponse

=head1 ATTRIBUTES


=head2 ParticipantCredentials => L<Paws::Connect::ParticipantTokenCredentials>

The token used by the chat participant to call
C<CreateParticipantConnection>. The participant token is valid for the
lifetime of a chat participant.


=head2 ParticipantId => Str

The identifier for a chat participant. The participantId for a chat
participant is the same throughout the chat lifecycle.


=head2 _request_id => Str


=cut

