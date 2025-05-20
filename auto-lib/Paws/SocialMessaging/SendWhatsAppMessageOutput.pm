
package Paws::SocialMessaging::SendWhatsAppMessageOutput;
  use Moose;
  has MessageId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'messageId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SocialMessaging::SendWhatsAppMessageOutput

=head1 ATTRIBUTES


=head2 MessageId => Str

The unique identifier of the message.


=head2 _request_id => Str


=cut

