
package Paws::IVSRealTime::CreateParticipantTokenResponse;
  use Moose;
  has ParticipantToken => (is => 'ro', isa => 'Paws::IVSRealTime::ParticipantToken', traits => ['NameInRequest'], request_name => 'participantToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::CreateParticipantTokenResponse

=head1 ATTRIBUTES


=head2 ParticipantToken => L<Paws::IVSRealTime::ParticipantToken>

The participant token that was created.


=head2 _request_id => Str


=cut

