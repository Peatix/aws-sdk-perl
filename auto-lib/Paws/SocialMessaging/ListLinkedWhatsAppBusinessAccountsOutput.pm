
package Paws::SocialMessaging::ListLinkedWhatsAppBusinessAccountsOutput;
  use Moose;
  has LinkedAccounts => (is => 'ro', isa => 'ArrayRef[Paws::SocialMessaging::LinkedWhatsAppBusinessAccountSummary]', traits => ['NameInRequest'], request_name => 'linkedAccounts');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SocialMessaging::ListLinkedWhatsAppBusinessAccountsOutput

=head1 ATTRIBUTES


=head2 LinkedAccounts => ArrayRef[L<Paws::SocialMessaging::LinkedWhatsAppBusinessAccountSummary>]

A list of WhatsApp Business Accounts linked to your Amazon Web Services
account.


=head2 NextToken => Str

The next token for pagination.


=head2 _request_id => Str


=cut

