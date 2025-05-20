
package Paws::ImageBuilder::CreateContainerRecipe;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has Components => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::ComponentConfiguration]', traits => ['NameInRequest'], request_name => 'components', required => 1);
  has ContainerType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'containerType', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DockerfileTemplateData => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dockerfileTemplateData');
  has DockerfileTemplateUri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dockerfileTemplateUri');
  has ImageOsVersionOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageOsVersionOverride');
  has InstanceConfiguration => (is => 'ro', isa => 'Paws::ImageBuilder::InstanceConfiguration', traits => ['NameInRequest'], request_name => 'instanceConfiguration');
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ParentImage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentImage', required => 1);
  has PlatformOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'platformOverride');
  has SemanticVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'semanticVersion', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ImageBuilder::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TargetRepository => (is => 'ro', isa => 'Paws::ImageBuilder::TargetContainerRepository', traits => ['NameInRequest'], request_name => 'targetRepository', required => 1);
  has WorkingDirectory => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workingDirectory');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateContainerRecipe');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateContainerRecipe');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::CreateContainerRecipeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::CreateContainerRecipe - Arguments for method CreateContainerRecipe on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateContainerRecipe on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method CreateContainerRecipe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateContainerRecipe.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $CreateContainerRecipeResponse = $imagebuilder->CreateContainerRecipe(
      ClientToken => 'MyClientToken',
      Components  => [
        {
          ComponentArn => 'MyComponentVersionArnOrBuildVersionArn',
          Parameters   => [
            {
              Name  => 'MyComponentParameterName',            # min: 1, max: 256
              Value => [ 'MyComponentParameterValue', ... ],

            },
            ...
          ],    # min: 1; OPTIONAL
        },
        ...
      ],
      ContainerType    => 'DOCKER',
      Name             => 'MyResourceName',
      ParentImage      => 'MyNonEmptyString',
      SemanticVersion  => 'MyVersionNumber',
      TargetRepository => {
        RepositoryName => 'MyNonEmptyString',    # min: 1, max: 1024
        Service        => 'ECR',                 # values: ECR

      },
      Description            => 'MyNonEmptyString',              # OPTIONAL
      DockerfileTemplateData => 'MyInlineDockerFileTemplate',    # OPTIONAL
      DockerfileTemplateUri  => 'MyUri',                         # OPTIONAL
      ImageOsVersionOverride => 'MyNonEmptyString',              # OPTIONAL
      InstanceConfiguration  => {
        BlockDeviceMappings => [
          {
            DeviceName => 'MyNonEmptyString',    # min: 1, max: 1024
            Ebs        => {
              DeleteOnTermination => 1,    # OPTIONAL
              Encrypted           => 1,    # OPTIONAL
              Iops                => 1,    # min: 100, max: 64000; OPTIONAL
              KmsKeyId   => 'MyNonEmptyString',  # min: 1, max: 1024
              SnapshotId => 'MyNonEmptyString',  # min: 1, max: 1024
              Throughput => 1,                   # min: 125, max: 1000; OPTIONAL
              VolumeSize => 1,                   # min: 1, max: 16000; OPTIONAL
              VolumeType => 'standard'
              ,    # values: standard, io1, io2, gp2, gp3, sc1, st1; OPTIONAL
            },    # OPTIONAL
            NoDevice    => 'MyEmptyString',       # OPTIONAL
            VirtualName => 'MyNonEmptyString',    # min: 1, max: 1024
          },
          ...
        ],    # OPTIONAL
        Image => 'MyNonEmptyString',    # min: 1, max: 1024
      },    # OPTIONAL
      KmsKeyId         => 'MyNonEmptyString',    # OPTIONAL
      PlatformOverride => 'Windows',             # OPTIONAL
      Tags             => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      WorkingDirectory => 'MyNonEmptyString',    # OPTIONAL
    );

    # Results:
    my $ClientToken        = $CreateContainerRecipeResponse->ClientToken;
    my $ContainerRecipeArn = $CreateContainerRecipeResponse->ContainerRecipeArn;
    my $RequestId          = $CreateContainerRecipeResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::CreateContainerRecipeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/CreateContainerRecipe>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier you provide to ensure idempotency of
the request. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html)
in the I<Amazon EC2 API Reference>.



=head2 B<REQUIRED> Components => ArrayRef[L<Paws::ImageBuilder::ComponentConfiguration>]

Components for build and test that are included in the container
recipe. Recipes require a minimum of one build component, and can have
a maximum of 20 build and test components in any combination.



=head2 B<REQUIRED> ContainerType => Str

The type of container to create.

Valid values are: C<"DOCKER">

=head2 Description => Str

The description of the container recipe.



=head2 DockerfileTemplateData => Str

The Dockerfile template used to build your image as an inline data
blob.



=head2 DockerfileTemplateUri => Str

The Amazon S3 URI for the Dockerfile that will be used to build your
container image.



=head2 ImageOsVersionOverride => Str

Specifies the operating system version for the base image.



=head2 InstanceConfiguration => L<Paws::ImageBuilder::InstanceConfiguration>

A group of options that can be used to configure an instance for
building and testing container images.



=head2 KmsKeyId => Str

Identifies which KMS key is used to encrypt the Dockerfile template.



=head2 B<REQUIRED> Name => Str

The name of the container recipe.



=head2 B<REQUIRED> ParentImage => Str

The base image for the container recipe.



=head2 PlatformOverride => Str

Specifies the operating system platform when you use a custom base
image.

Valid values are: C<"Windows">, C<"Linux">, C<"macOS">

=head2 B<REQUIRED> SemanticVersion => Str

The semantic version of the container recipe. This version follows the
semantic version syntax.

The semantic version has four nodes:
E<lt>majorE<gt>.E<lt>minorE<gt>.E<lt>patchE<gt>/E<lt>buildE<gt>. You
can assign values for the first three, and can filter on all of them.

B<Assignment:> For the first three nodes you can assign any positive
integer value, including zero, with an upper limit of 2^30-1, or
1073741823 for each node. Image Builder automatically assigns the build
number to the fourth node.

B<Patterns:> You can use any numeric pattern that adheres to the
assignment requirements for the nodes that you can assign. For example,
you might choose a software version pattern, such as 1.0.0, or a date,
such as 2021.01.01.



=head2 Tags => L<Paws::ImageBuilder::TagMap>

Tags that are attached to the container recipe.



=head2 B<REQUIRED> TargetRepository => L<Paws::ImageBuilder::TargetContainerRepository>

The destination repository for the container image.



=head2 WorkingDirectory => Str

The working directory for use during build and test workflows.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateContainerRecipe in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

