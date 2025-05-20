
package Paws::VoiceID::DescribeSpeakerEnrollmentJobResponse;
  use Moose;
  has Job => (is => 'ro', isa => 'Paws::VoiceID::SpeakerEnrollmentJob');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::DescribeSpeakerEnrollmentJobResponse

=head1 ATTRIBUTES


=head2 Job => L<Paws::VoiceID::SpeakerEnrollmentJob>

Contains details about the specified speaker enrollment job.


=head2 _request_id => Str


=cut

1;