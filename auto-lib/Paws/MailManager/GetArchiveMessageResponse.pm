
package Paws::MailManager::GetArchiveMessageResponse;
  use Moose;
  has Envelope => (is => 'ro', isa => 'Paws::MailManager::Envelope');
  has MessageDownloadLink => (is => 'ro', isa => 'Str');
  has Metadata => (is => 'ro', isa => 'Paws::MailManager::Metadata');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::GetArchiveMessageResponse

=head1 ATTRIBUTES


=head2 Envelope => L<Paws::MailManager::Envelope>

The SMTP envelope information of the email.


=head2 MessageDownloadLink => Str

A pre-signed URL to temporarily download the full message content.


=head2 Metadata => L<Paws::MailManager::Metadata>

The metadata about the email.


=head2 _request_id => Str


=cut

1;