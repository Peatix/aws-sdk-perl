
package Paws::SocialMessaging::GetLinkedWhatsAppBusinessAccountPhoneNumberOutput;
  use Moose;
  has LinkedWhatsAppBusinessAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'linkedWhatsAppBusinessAccountId');
  has PhoneNumber => (is => 'ro', isa => 'Paws::SocialMessaging::WhatsAppPhoneNumberDetail', traits => ['NameInRequest'], request_name => 'phoneNumber');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SocialMessaging::GetLinkedWhatsAppBusinessAccountPhoneNumberOutput

=head1 ATTRIBUTES


=head2 LinkedWhatsAppBusinessAccountId => Str

The WABA identifier linked to the phone number, formatted as
C<waba-01234567890123456789012345678901>.


=head2 PhoneNumber => L<Paws::SocialMessaging::WhatsAppPhoneNumberDetail>




=head2 _request_id => Str


=cut

