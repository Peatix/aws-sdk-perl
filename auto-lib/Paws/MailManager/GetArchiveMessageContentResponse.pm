
package Paws::MailManager::GetArchiveMessageContentResponse;
  use Moose;
  has Body => (is => 'ro', isa => 'Paws::MailManager::MessageBody');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::GetArchiveMessageContentResponse

=head1 ATTRIBUTES


=head2 Body => L<Paws::MailManager::MessageBody>

The textual body content of the email message.


=head2 _request_id => Str


=cut

1;