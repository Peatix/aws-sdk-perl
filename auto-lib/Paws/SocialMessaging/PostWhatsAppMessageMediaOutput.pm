
package Paws::SocialMessaging::PostWhatsAppMessageMediaOutput;
  use Moose;
  has MediaId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mediaId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SocialMessaging::PostWhatsAppMessageMediaOutput

=head1 ATTRIBUTES


=head2 MediaId => Str

The unique identifier of the posted WhatsApp message.


=head2 _request_id => Str


=cut

