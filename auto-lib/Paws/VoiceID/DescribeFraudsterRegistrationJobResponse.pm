
package Paws::VoiceID::DescribeFraudsterRegistrationJobResponse;
  use Moose;
  has Job => (is => 'ro', isa => 'Paws::VoiceID::FraudsterRegistrationJob');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::DescribeFraudsterRegistrationJobResponse

=head1 ATTRIBUTES


=head2 Job => L<Paws::VoiceID::FraudsterRegistrationJob>

Contains details about the specified fraudster registration job.


=head2 _request_id => Str


=cut

1;