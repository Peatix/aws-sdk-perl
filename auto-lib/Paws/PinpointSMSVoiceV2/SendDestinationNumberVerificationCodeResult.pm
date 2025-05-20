
package Paws::PinpointSMSVoiceV2::SendDestinationNumberVerificationCodeResult;
  use Moose;
  has MessageId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::SendDestinationNumberVerificationCodeResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> MessageId => Str

The unique identifier for the message.


=head2 _request_id => Str


=cut

1;