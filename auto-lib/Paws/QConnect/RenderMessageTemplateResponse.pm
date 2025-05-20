
package Paws::QConnect::RenderMessageTemplateResponse;
  use Moose;
  has Attachments => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::MessageTemplateAttachment]', traits => ['NameInRequest'], request_name => 'attachments');
  has AttributesNotInterpolated => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'attributesNotInterpolated');
  has Content => (is => 'ro', isa => 'Paws::QConnect::MessageTemplateContentProvider', traits => ['NameInRequest'], request_name => 'content', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::RenderMessageTemplateResponse

=head1 ATTRIBUTES


=head2 Attachments => ArrayRef[L<Paws::QConnect::MessageTemplateAttachment>]

The message template attachments.


=head2 AttributesNotInterpolated => ArrayRef[Str|Undef]

The attribute keys that are not resolved.


=head2 B<REQUIRED> Content => L<Paws::QConnect::MessageTemplateContentProvider>

The content of the message template.


=head2 _request_id => Str


=cut

