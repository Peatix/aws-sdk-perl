
package Paws::QConnect::CreateContent;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has Metadata => (is => 'ro', isa => 'Paws::QConnect::ContentMetadata', traits => ['NameInRequest'], request_name => 'metadata');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OverrideLinkOutUri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'overrideLinkOutUri');
  has Tags => (is => 'ro', isa => 'Paws::QConnect::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has Title => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'title');
  has UploadId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uploadId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateContent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/contents');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::CreateContentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::CreateContent - Arguments for method CreateContent on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateContent on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method CreateContent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateContent.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $CreateContentResponse = $wisdom->CreateContent(
      KnowledgeBaseId => 'MyUuidOrArn',
      Name            => 'MyName',
      UploadId        => 'MyUploadId',
      ClientToken     => 'MyNonEmptyString',    # OPTIONAL
      Metadata        => {
        'MyNonEmptyString' =>
          'MyNonEmptyString', # key: min: 1, max: 4096, value: min: 1, max: 4096
      },    # OPTIONAL
      OverrideLinkOutUri => 'MyUri',    # OPTIONAL
      Tags               => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
      Title => 'MyContentTitle',    # OPTIONAL
    );

    # Results:
    my $Content = $CreateContentResponse->Content;

    # Returns a L<Paws::QConnect::CreateContentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/CreateContent>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base. This should not be a
QUICK_RESPONSES type knowledge base. Can be either the ID or the ARN.
URLs cannot contain the ARN.



=head2 Metadata => L<Paws::QConnect::ContentMetadata>

A key/value map to store attributes without affecting tagging or
recommendations. For example, when synchronizing data between an
external system and Amazon Q in Connect, you can store an external
version identifier as metadata to utilize for determining drift.



=head2 B<REQUIRED> Name => Str

The name of the content. Each piece of content in a knowledge base must
have a unique name. You can retrieve a piece of content using only its
knowledge base and its name with the SearchContent
(https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_SearchContent.html)
API.



=head2 OverrideLinkOutUri => Str

The URI you want to use for the article. If the knowledge base has a
templateUri, setting this argument overrides it for this piece of
content.



=head2 Tags => L<Paws::QConnect::Tags>

The tags used to organize, track, or control access for this resource.



=head2 Title => Str

The title of the content. If not set, the title is equal to the name.



=head2 B<REQUIRED> UploadId => Str

A pointer to the uploaded asset. This value is returned by
StartContentUpload
(https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_StartContentUpload.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateContent in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

