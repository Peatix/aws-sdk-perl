
package Paws::SocialMessaging::GetWhatsAppMessageMediaOutput;
  use Moose;
  has FileSize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'fileSize');
  has MimeType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mimeType');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SocialMessaging::GetWhatsAppMessageMediaOutput

=head1 ATTRIBUTES


=head2 FileSize => Int

The file size of the media, in KB.


=head2 MimeType => Str

The MIME type of the media.


=head2 _request_id => Str


=cut

