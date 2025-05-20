
package Paws::PinpointSMSVoiceV2::PutMessageFeedbackResult;
  use Moose;
  has MessageFeedbackStatus => (is => 'ro', isa => 'Str', required => 1);
  has MessageId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::PutMessageFeedbackResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> MessageFeedbackStatus => Str

The current status of the message.

Valid values are: C<"RECEIVED">, C<"FAILED">
=head2 B<REQUIRED> MessageId => Str

The unique identifier for the message.


=head2 _request_id => Str


=cut

1;