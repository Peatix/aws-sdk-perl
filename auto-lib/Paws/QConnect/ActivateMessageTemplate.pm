
package Paws::QConnect::ActivateMessageTemplate;
  use Moose;
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has MessageTemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'messageTemplateId', required => 1);
  has VersionNumber => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'versionNumber', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ActivateMessageTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/activate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::ActivateMessageTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::ActivateMessageTemplate - Arguments for method ActivateMessageTemplate on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ActivateMessageTemplate on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method ActivateMessageTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ActivateMessageTemplate.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $ActivateMessageTemplateResponse = $wisdom->ActivateMessageTemplate(
      KnowledgeBaseId   => 'MyUuidOrArn',
      MessageTemplateId => 'MyUuidOrArnOrEitherWithQualifier',
      VersionNumber     => 1,

    );

    # Results:
    my $MessageTemplateArn =
      $ActivateMessageTemplateResponse->MessageTemplateArn;
    my $MessageTemplateId = $ActivateMessageTemplateResponse->MessageTemplateId;
    my $VersionNumber     = $ActivateMessageTemplateResponse->VersionNumber;

    # Returns a L<Paws::QConnect::ActivateMessageTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/ActivateMessageTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base. Can be either the ID or the ARN.
URLs cannot contain the ARN.



=head2 B<REQUIRED> MessageTemplateId => Str

The identifier of the message template. Can be either the ID or the
ARN. It cannot contain any qualifier.



=head2 B<REQUIRED> VersionNumber => Int

The version number of the message template version to activate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ActivateMessageTemplate in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

