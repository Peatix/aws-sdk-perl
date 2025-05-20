
package Paws::VoiceID::DescribeSpeakerResponse;
  use Moose;
  has Speaker => (is => 'ro', isa => 'Paws::VoiceID::Speaker');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::DescribeSpeakerResponse

=head1 ATTRIBUTES


=head2 Speaker => L<Paws::VoiceID::Speaker>

Information about the specified speaker.


=head2 _request_id => Str


=cut

1;