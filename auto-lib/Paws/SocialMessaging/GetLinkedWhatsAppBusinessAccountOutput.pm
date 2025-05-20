
package Paws::SocialMessaging::GetLinkedWhatsAppBusinessAccountOutput;
  use Moose;
  has Account => (is => 'ro', isa => 'Paws::SocialMessaging::LinkedWhatsAppBusinessAccount', traits => ['NameInRequest'], request_name => 'account');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SocialMessaging::GetLinkedWhatsAppBusinessAccountOutput

=head1 ATTRIBUTES


=head2 Account => L<Paws::SocialMessaging::LinkedWhatsAppBusinessAccount>

The details of the linked WhatsApp Business Account.


=head2 _request_id => Str


=cut

