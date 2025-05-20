
package Paws::PinpointSMSVoiceV2::SendMediaMessageResult;
  use Moose;
  has MessageId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::SendMediaMessageResult

=head1 ATTRIBUTES


=head2 MessageId => Str

The unique identifier for the message.


=head2 _request_id => Str


=cut

1;