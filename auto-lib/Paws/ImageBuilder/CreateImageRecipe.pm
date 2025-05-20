
package Paws::ImageBuilder::CreateImageRecipe;
  use Moose;
  has AdditionalInstanceConfiguration => (is => 'ro', isa => 'Paws::ImageBuilder::AdditionalInstanceConfiguration', traits => ['NameInRequest'], request_name => 'additionalInstanceConfiguration');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::InstanceBlockDeviceMapping]', traits => ['NameInRequest'], request_name => 'blockDeviceMappings');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has Components => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::ComponentConfiguration]', traits => ['NameInRequest'], request_name => 'components', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ParentImage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentImage', required => 1);
  has SemanticVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'semanticVersion', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ImageBuilder::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has WorkingDirectory => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workingDirectory');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateImageRecipe');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateImageRecipe');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::CreateImageRecipeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::CreateImageRecipe - Arguments for method CreateImageRecipe on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateImageRecipe on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method CreateImageRecipe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateImageRecipe.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $CreateImageRecipeResponse = $imagebuilder->CreateImageRecipe(
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
      Name                            => 'MyResourceName',
      ParentImage                     => 'MyNonEmptyString',
      SemanticVersion                 => 'MyVersionNumber',
      AdditionalInstanceConfiguration => {
        SystemsManagerAgent => {
          UninstallAfterBuild => 1,    # OPTIONAL
        },    # OPTIONAL
        UserDataOverride => 'MyUserDataOverride', # min: 1, max: 21847; OPTIONAL
      },    # OPTIONAL
      BlockDeviceMappings => [
        {
          DeviceName => 'MyNonEmptyString',    # min: 1, max: 1024
          Ebs        => {
            DeleteOnTermination => 1,    # OPTIONAL
            Encrypted           => 1,    # OPTIONAL
            Iops                => 1,    # min: 100, max: 64000; OPTIONAL
            KmsKeyId   => 'MyNonEmptyString',    # min: 1, max: 1024
            SnapshotId => 'MyNonEmptyString',    # min: 1, max: 1024
            Throughput => 1,                     # min: 125, max: 1000; OPTIONAL
            VolumeSize => 1,                     # min: 1, max: 16000; OPTIONAL
            VolumeType => 'standard'
            ,    # values: standard, io1, io2, gp2, gp3, sc1, st1; OPTIONAL
          },    # OPTIONAL
          NoDevice    => 'MyEmptyString',       # OPTIONAL
          VirtualName => 'MyNonEmptyString',    # min: 1, max: 1024
        },
        ...
      ],    # OPTIONAL
      Description => 'MyNonEmptyString',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      WorkingDirectory => 'MyNonEmptyString',    # OPTIONAL
    );

    # Results:
    my $ClientToken    = $CreateImageRecipeResponse->ClientToken;
    my $ImageRecipeArn = $CreateImageRecipeResponse->ImageRecipeArn;
    my $RequestId      = $CreateImageRecipeResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::CreateImageRecipeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/CreateImageRecipe>

=head1 ATTRIBUTES


=head2 AdditionalInstanceConfiguration => L<Paws::ImageBuilder::AdditionalInstanceConfiguration>

Specify additional settings and launch scripts for your build
instances.



=head2 BlockDeviceMappings => ArrayRef[L<Paws::ImageBuilder::InstanceBlockDeviceMapping>]

The block device mappings of the image recipe.



=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier you provide to ensure idempotency of
the request. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html)
in the I<Amazon EC2 API Reference>.



=head2 B<REQUIRED> Components => ArrayRef[L<Paws::ImageBuilder::ComponentConfiguration>]

The components included in the image recipe.



=head2 Description => Str

The description of the image recipe.



=head2 B<REQUIRED> Name => Str

The name of the image recipe.



=head2 B<REQUIRED> ParentImage => Str

The base image for customizations specified in the image recipe. You
can specify the parent image using one of the following options:

=over

=item *

AMI ID

=item *

Image Builder image Amazon Resource Name (ARN)

=item *

Amazon Web Services Systems Manager (SSM) Parameter Store Parameter,
prefixed by C<ssm:>, followed by the parameter name or ARN.

=item *

Amazon Web Services Marketplace product ID

=back

If you enter an AMI ID or an SSM parameter that contains the AMI ID,
you must have access to the AMI, and the AMI must be in the source
Region.



=head2 B<REQUIRED> SemanticVersion => Str

The semantic version of the image recipe. This version follows the
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

The tags of the image recipe.



=head2 WorkingDirectory => Str

The working directory used during build and test workflows.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateImageRecipe in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

