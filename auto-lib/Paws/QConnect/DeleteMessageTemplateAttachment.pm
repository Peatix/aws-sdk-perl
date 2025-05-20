
package Paws::QConnect::DeleteMessageTemplateAttachment;
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'attachmentId', required => 1);
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has MessageTemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'messageTemplateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMessageTemplateAttachment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/attachments/{attachmentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::DeleteMessageTemplateAttachmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::DeleteMessageTemplateAttachment - Arguments for method DeleteMessageTemplateAttachment on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMessageTemplateAttachment on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method DeleteMessageTemplateAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMessageTemplateAttachment.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $DeleteMessageTemplateAttachmentResponse =
      $wisdom->DeleteMessageTemplateAttachment(
      AttachmentId      => 'MyUuid',
      KnowledgeBaseId   => 'MyUuidOrArn',
      MessageTemplateId => 'MyUuidOrArnOrEitherWithQualifier',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/DeleteMessageTemplateAttachment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttachmentId => Str

The identifier of the attachment file.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base. Can be either the ID or the ARN.
URLs cannot contain the ARN.



=head2 B<REQUIRED> MessageTemplateId => Str

The identifier of the message template. Can be either the ID or the
ARN. It cannot contain any qualifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMessageTemplateAttachment in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

