
package Paws::ECRPublic::PutImage;
  use Moose;
  has ImageDigest => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageDigest' );
  has ImageManifest => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageManifest' , required => 1);
  has ImageManifestMediaType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageManifestMediaType' );
  has ImageTag => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageTag' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECRPublic::PutImageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::PutImage - Arguments for method PutImage on L<Paws::ECRPublic>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutImage on the
L<Amazon Elastic Container Registry Public|Paws::ECRPublic> service. Use the attributes of this class
as arguments to method PutImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutImage.

=head1 SYNOPSIS

    my $api.ecr-public = Paws->service('ECRPublic');
    my $PutImageResponse = $api . ecr-public->PutImage(
      ImageManifest          => 'MyImageManifest',
      RepositoryName         => 'MyRepositoryName',
      ImageDigest            => 'MyImageDigest',          # OPTIONAL
      ImageManifestMediaType => 'MyMediaType',            # OPTIONAL
      ImageTag               => 'MyImageTag',             # OPTIONAL
      RegistryId             => 'MyRegistryIdOrAlias',    # OPTIONAL
    );

    # Results:
    my $Image = $PutImageResponse->Image;

    # Returns a L<Paws::ECRPublic::PutImageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr-public/PutImage>

=head1 ATTRIBUTES


=head2 ImageDigest => Str

The image digest of the image manifest that corresponds to the image.



=head2 B<REQUIRED> ImageManifest => Str

The image manifest that corresponds to the image to be uploaded.



=head2 ImageManifestMediaType => Str

The media type of the image manifest. If you push an image manifest
that doesn't contain the C<mediaType> field, you must specify the
C<imageManifestMediaType> in the request.



=head2 ImageTag => Str

The tag to associate with the image. This parameter is required for
images that use the Docker Image Manifest V2 Schema 2 or Open Container
Initiative (OCI) formats.



=head2 RegistryId => Str

The Amazon Web Services account ID, or registry alias, that's
associated with the public registry that contains the repository where
the image is put. If you do not specify a registry, the default public
registry is assumed.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository where the image is put.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutImage in L<Paws::ECRPublic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

