
package Paws::VoiceID::OptOutSpeakerResponse;
  use Moose;
  has Speaker => (is => 'ro', isa => 'Paws::VoiceID::Speaker');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::OptOutSpeakerResponse

=head1 ATTRIBUTES


=head2 Speaker => L<Paws::VoiceID::Speaker>

Details about the opted-out speaker.


=head2 _request_id => Str


=cut

1;