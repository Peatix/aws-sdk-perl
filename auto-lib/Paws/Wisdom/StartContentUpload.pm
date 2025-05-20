
package Paws::Wisdom::StartContentUpload;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentType', required => 1);
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has PresignedUrlTimeToLive => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'presignedUrlTimeToLive');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartContentUpload');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/upload');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Wisdom::StartContentUploadResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::StartContentUpload - Arguments for method StartContentUpload on L<Paws::Wisdom>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartContentUpload on the
L<Amazon Connect Wisdom Service|Paws::Wisdom> service. Use the attributes of this class
as arguments to method StartContentUpload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartContentUpload.

=head1 SYNOPSIS

    my $wisdom = Paws->service('Wisdom');
    my $StartContentUploadResponse = $wisdom->StartContentUpload(
      ContentType            => 'MyContentType',
      KnowledgeBaseId        => 'MyUuidOrArn',
      PresignedUrlTimeToLive => 1,                 # OPTIONAL
    );

    # Results:
    my $HeadersToInclude = $StartContentUploadResponse->HeadersToInclude;
    my $UploadId         = $StartContentUploadResponse->UploadId;
    my $Url              = $StartContentUploadResponse->Url;
    my $UrlExpiry        = $StartContentUploadResponse->UrlExpiry;

    # Returns a L<Paws::Wisdom::StartContentUploadResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/StartContentUpload>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContentType => Str

The type of content to upload.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base. This should not be a
QUICK_RESPONSES type knowledge base if you're storing Wisdom Content
resource to it. Can be either the ID or the ARN. URLs cannot contain
the ARN.



=head2 PresignedUrlTimeToLive => Int

The expected expiration time of the generated presigned URL, specified
in minutes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartContentUpload in L<Paws::Wisdom>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

