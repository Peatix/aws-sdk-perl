
package Paws::QConnect::CreateMessageTemplateAttachment;
  use Moose;
  has Body => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'body', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ContentDisposition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentDisposition', required => 1);
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has MessageTemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'messageTemplateId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMessageTemplateAttachment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/attachments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::CreateMessageTemplateAttachmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::CreateMessageTemplateAttachment - Arguments for method CreateMessageTemplateAttachment on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMessageTemplateAttachment on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method CreateMessageTemplateAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMessageTemplateAttachment.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $CreateMessageTemplateAttachmentResponse =
      $wisdom->CreateMessageTemplateAttachment(
      Body               => 'MyNonEmptyUnlimitedString',
      ContentDisposition => 'ATTACHMENT',
      KnowledgeBaseId    => 'MyUuidOrArn',
      MessageTemplateId  => 'MyUuidOrArnOrEitherWithQualifier',
      Name               => 'MyAttachmentFileName',
      ClientToken        => 'MyClientToken',                      # OPTIONAL
      );

    # Results:
    my $Attachment = $CreateMessageTemplateAttachmentResponse->Attachment;

  # Returns a L<Paws::QConnect::CreateMessageTemplateAttachmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/CreateMessageTemplateAttachment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => Str

The body of the attachment file being uploaded. It should be encoded
using base64 encoding.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 B<REQUIRED> ContentDisposition => Str

The presentation information for the attachment file.

Valid values are: C<"ATTACHMENT">

=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base. Can be either the ID or the ARN.
URLs cannot contain the ARN.



=head2 B<REQUIRED> MessageTemplateId => Str

The identifier of the message template. Can be either the ID or the
ARN. It cannot contain any qualifier.



=head2 B<REQUIRED> Name => Str

The name of the attachment file being uploaded. The name should include
the file extension.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMessageTemplateAttachment in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

