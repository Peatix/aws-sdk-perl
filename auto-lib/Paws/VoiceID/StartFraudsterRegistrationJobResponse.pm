
package Paws::VoiceID::StartFraudsterRegistrationJobResponse;
  use Moose;
  has Job => (is => 'ro', isa => 'Paws::VoiceID::FraudsterRegistrationJob');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::StartFraudsterRegistrationJobResponse

=head1 ATTRIBUTES


=head2 Job => L<Paws::VoiceID::FraudsterRegistrationJob>

Details about the started fraudster registration job.


=head2 _request_id => Str


=cut

1;