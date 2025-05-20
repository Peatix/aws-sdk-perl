
package Paws::QConnect::UpdateContent;
  use Moose;
  has ContentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'contentId', required => 1);
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has Metadata => (is => 'ro', isa => 'Paws::QConnect::ContentMetadata', traits => ['NameInRequest'], request_name => 'metadata');
  has OverrideLinkOutUri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'overrideLinkOutUri');
  has RemoveOverrideLinkOutUri => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'removeOverrideLinkOutUri');
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revisionId');
  has Title => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'title');
  has UploadId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uploadId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateContent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/contents/{contentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::UpdateContentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::UpdateContent - Arguments for method UpdateContent on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateContent on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method UpdateContent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateContent.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $UpdateContentResponse = $wisdom->UpdateContent(
      ContentId       => 'MyUuidOrArn',
      KnowledgeBaseId => 'MyUuidOrArn',
      Metadata        => {
        'MyNonEmptyString' =>
          'MyNonEmptyString', # key: min: 1, max: 4096, value: min: 1, max: 4096
      },    # OPTIONAL
      OverrideLinkOutUri       => 'MyUri',               # OPTIONAL
      RemoveOverrideLinkOutUri => 1,                     # OPTIONAL
      RevisionId               => 'MyNonEmptyString',    # OPTIONAL
      Title                    => 'MyContentTitle',      # OPTIONAL
      UploadId                 => 'MyUploadId',          # OPTIONAL
    );

    # Results:
    my $Content = $UpdateContentResponse->Content;

    # Returns a L<Paws::QConnect::UpdateContentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/UpdateContent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContentId => Str

The identifier of the content. Can be either the ID or the ARN. URLs
cannot contain the ARN.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base. This should not be a
QUICK_RESPONSES type knowledge base. Can be either the ID or the ARN



=head2 Metadata => L<Paws::QConnect::ContentMetadata>

A key/value map to store attributes without affecting tagging or
recommendations. For example, when synchronizing data between an
external system and Amazon Q in Connect, you can store an external
version identifier as metadata to utilize for determining drift.



=head2 OverrideLinkOutUri => Str

The URI for the article. If the knowledge base has a templateUri,
setting this argument overrides it for this piece of content. To remove
an existing C<overrideLinkOurUri>, exclude this argument and set
C<removeOverrideLinkOutUri> to true.



=head2 RemoveOverrideLinkOutUri => Bool

Unset the existing C<overrideLinkOutUri> if it exists.



=head2 RevisionId => Str

The C<revisionId> of the content resource to update, taken from an
earlier call to C<GetContent>, C<GetContentSummary>, C<SearchContent>,
or C<ListContents>. If included, this argument acts as an optimistic
lock to ensure content was not modified since it was last read. If it
has been modified, this API throws a C<PreconditionFailedException>.



=head2 Title => Str

The title of the content.



=head2 UploadId => Str

A pointer to the uploaded asset. This value is returned by
StartContentUpload
(https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_StartContentUpload.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContent in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

