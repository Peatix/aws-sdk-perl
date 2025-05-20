
package Paws::VoiceID::DisassociateFraudsterResponse;
  use Moose;
  has Fraudster => (is => 'ro', isa => 'Paws::VoiceID::Fraudster');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::DisassociateFraudsterResponse

=head1 ATTRIBUTES


=head2 Fraudster => L<Paws::VoiceID::Fraudster>




=head2 _request_id => Str


=cut

1;