
package Paws::QConnect::CreateMessageTemplateAttachmentResponse;
  use Moose;
  has Attachment => (is => 'ro', isa => 'Paws::QConnect::MessageTemplateAttachment', traits => ['NameInRequest'], request_name => 'attachment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::CreateMessageTemplateAttachmentResponse

=head1 ATTRIBUTES


=head2 Attachment => L<Paws::QConnect::MessageTemplateAttachment>

The message template attachment.


=head2 _request_id => Str


=cut

