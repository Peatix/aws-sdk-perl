
package Paws::ImageBuilder::ImportDiskImage;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has ExecutionRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionRole');
  has InfrastructureConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'infrastructureConfigurationArn', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OsVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'osVersion', required => 1);
  has Platform => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'platform', required => 1);
  has SemanticVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'semanticVersion', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ImageBuilder::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Uri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uri', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportDiskImage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ImportDiskImage');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::ImportDiskImageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ImportDiskImage - Arguments for method ImportDiskImage on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportDiskImage on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method ImportDiskImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportDiskImage.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $ImportDiskImageResponse = $imagebuilder->ImportDiskImage(
      ClientToken                    => 'MyClientToken',
      InfrastructureConfigurationArn => 'MyInfrastructureConfigurationArn',
      Name                           => 'MyNonEmptyString',
      OsVersion                      => 'MyOsVersion',
      Platform                       => 'MyNonEmptyString',
      SemanticVersion                => 'MyVersionNumber',
      Uri                            => 'MyUri',
      Description                    => 'MyNonEmptyString',    # OPTIONAL
      ExecutionRole                  => 'MyRoleNameOrArn',     # OPTIONAL
      Tags                           => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ClientToken          = $ImportDiskImageResponse->ClientToken;
    my $ImageBuildVersionArn = $ImportDiskImageResponse->ImageBuildVersionArn;

    # Returns a L<Paws::ImageBuilder::ImportDiskImageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/ImportDiskImage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier you provide to ensure idempotency of
the request. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html)
in the I<Amazon EC2 API Reference>.



=head2 Description => Str

The description for your disk image import.



=head2 ExecutionRole => Str

The name or Amazon Resource Name (ARN) for the IAM role you create that
grants Image Builder access to perform workflow actions to import an
image from a Microsoft ISO file.



=head2 B<REQUIRED> InfrastructureConfigurationArn => Str

The Amazon Resource Name (ARN) of the infrastructure configuration
resource that's used for launching the EC2 instance on which the ISO
image is built.



=head2 B<REQUIRED> Name => Str

The name of the image resource that's created from the import.



=head2 B<REQUIRED> OsVersion => Str

The operating system version for the imported image. Allowed values
include the following: C<Microsoft Windows 11>.



=head2 B<REQUIRED> Platform => Str

The operating system platform for the imported image. Allowed values
include the following: C<Windows>.



=head2 B<REQUIRED> SemanticVersion => Str

The semantic version to attach to the image that's created during the
import process. This version follows the semantic version syntax.



=head2 Tags => L<Paws::ImageBuilder::TagMap>

Tags that are attached to image resources created from the import.



=head2 B<REQUIRED> Uri => Str

The C<uri> of the ISO disk file that's stored in Amazon S3.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportDiskImage in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

