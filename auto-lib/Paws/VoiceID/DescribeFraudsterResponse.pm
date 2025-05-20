
package Paws::VoiceID::DescribeFraudsterResponse;
  use Moose;
  has Fraudster => (is => 'ro', isa => 'Paws::VoiceID::Fraudster');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::DescribeFraudsterResponse

=head1 ATTRIBUTES


=head2 Fraudster => L<Paws::VoiceID::Fraudster>

Information about the specified fraudster.


=head2 _request_id => Str


=cut

1;