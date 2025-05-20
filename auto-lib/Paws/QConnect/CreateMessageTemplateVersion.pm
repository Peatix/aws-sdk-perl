
package Paws::QConnect::CreateMessageTemplateVersion;
  use Moose;
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has MessageTemplateContentSha256 => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'messageTemplateContentSha256');
  has MessageTemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'messageTemplateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMessageTemplateVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::CreateMessageTemplateVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::CreateMessageTemplateVersion - Arguments for method CreateMessageTemplateVersion on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMessageTemplateVersion on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method CreateMessageTemplateVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMessageTemplateVersion.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $CreateMessageTemplateVersionResponse =
      $wisdom->CreateMessageTemplateVersion(
      KnowledgeBaseId              => 'MyUuidOrArn',
      MessageTemplateId            => 'MyUuidOrArnOrEitherWithQualifier',
      MessageTemplateContentSha256 =>
        'MyMessageTemplateContentSha256',    # OPTIONAL
      );

    # Results:
    my $MessageTemplate =
      $CreateMessageTemplateVersionResponse->MessageTemplate;

    # Returns a L<Paws::QConnect::CreateMessageTemplateVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/CreateMessageTemplateVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base. Can be either the ID or the ARN.
URLs cannot contain the ARN.



=head2 MessageTemplateContentSha256 => Str

The checksum value of the message template content that is referenced
by the C<$LATEST> qualifier. It can be returned in
C<MessageTemplateData> or C<ExtendedMessageTemplateData>. ItE<rsquo>s
calculated by content, language, C<defaultAttributes> and
C<Attachments> of the message template. If not supplied, the message
template version will be created based on the message template content
that is referenced by the C<$LATEST> qualifier by default.



=head2 B<REQUIRED> MessageTemplateId => Str

The identifier of the message template. Can be either the ID or the
ARN. It cannot contain any qualifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMessageTemplateVersion in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

