
package Paws::ImageBuilder::CreateImage;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has ContainerRecipeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'containerRecipeArn');
  has DistributionConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'distributionConfigurationArn');
  has EnhancedImageMetadataEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enhancedImageMetadataEnabled');
  has ExecutionRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionRole');
  has ImageRecipeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageRecipeArn');
  has ImageScanningConfiguration => (is => 'ro', isa => 'Paws::ImageBuilder::ImageScanningConfiguration', traits => ['NameInRequest'], request_name => 'imageScanningConfiguration');
  has ImageTestsConfiguration => (is => 'ro', isa => 'Paws::ImageBuilder::ImageTestsConfiguration', traits => ['NameInRequest'], request_name => 'imageTestsConfiguration');
  has InfrastructureConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'infrastructureConfigurationArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ImageBuilder::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Workflows => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::WorkflowConfiguration]', traits => ['NameInRequest'], request_name => 'workflows');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateImage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateImage');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::CreateImageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::CreateImage - Arguments for method CreateImage on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateImage on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method CreateImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateImage.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $CreateImageResponse = $imagebuilder->CreateImage(
      ClientToken                    => 'MyClientToken',
      InfrastructureConfigurationArn => 'MyInfrastructureConfigurationArn',
      ContainerRecipeArn             => 'MyContainerRecipeArn',    # OPTIONAL
      DistributionConfigurationArn   =>
        'MyDistributionConfigurationArn',                          # OPTIONAL
      EnhancedImageMetadataEnabled => 1,                           # OPTIONAL
      ExecutionRole                => 'MyRoleNameOrArn',           # OPTIONAL
      ImageRecipeArn               => 'MyImageRecipeArn',          # OPTIONAL
      ImageScanningConfiguration   => {
        EcrConfiguration => {
          ContainerTags => [
            'MyNonEmptyString', ...    # min: 1, max: 1024
          ],    # OPTIONAL
          RepositoryName => 'MyNonEmptyString',    # min: 1, max: 1024
        },    # OPTIONAL
        ImageScanningEnabled => 1,
      },    # OPTIONAL
      ImageTestsConfiguration => {
        ImageTestsEnabled => 1,
        TimeoutMinutes    => 1,    # min: 60, max: 1440; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Workflows => [
        {
          WorkflowArn   => 'MyWorkflowVersionArnOrBuildVersionArn',
          OnFailure     => 'CONTINUE',    # values: CONTINUE, ABORT; OPTIONAL
          ParallelGroup => 'MyParallelGroup',    # min: 1, max: 100; OPTIONAL
          Parameters    => [
            {
              Name  => 'MyWorkflowParameterName',             # min: 1, max: 128
              Value => [ 'MyWorkflowParameterValue', ... ],

            },
            ...
          ],    # min: 1; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ClientToken          = $CreateImageResponse->ClientToken;
    my $ImageBuildVersionArn = $CreateImageResponse->ImageBuildVersionArn;
    my $RequestId            = $CreateImageResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::CreateImageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/CreateImage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier you provide to ensure idempotency of
the request. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html)
in the I<Amazon EC2 API Reference>.



=head2 ContainerRecipeArn => Str

The Amazon Resource Name (ARN) of the container recipe that defines how
images are configured and tested.



=head2 DistributionConfigurationArn => Str

The Amazon Resource Name (ARN) of the distribution configuration that
defines and configures the outputs of your pipeline.



=head2 EnhancedImageMetadataEnabled => Bool

Collects additional information about the image being created,
including the operating system (OS) version and package list. This
information is used to enhance the overall experience of using EC2
Image Builder. Enabled by default.



=head2 ExecutionRole => Str

The name or Amazon Resource Name (ARN) for the IAM role you create that
grants Image Builder access to perform workflow actions.



=head2 ImageRecipeArn => Str

The Amazon Resource Name (ARN) of the image recipe that defines how
images are configured, tested, and assessed.



=head2 ImageScanningConfiguration => L<Paws::ImageBuilder::ImageScanningConfiguration>

Contains settings for vulnerability scans.



=head2 ImageTestsConfiguration => L<Paws::ImageBuilder::ImageTestsConfiguration>

The image tests configuration of the image.



=head2 B<REQUIRED> InfrastructureConfigurationArn => Str

The Amazon Resource Name (ARN) of the infrastructure configuration that
defines the environment in which your image will be built and tested.



=head2 Tags => L<Paws::ImageBuilder::TagMap>

The tags of the image.



=head2 Workflows => ArrayRef[L<Paws::ImageBuilder::WorkflowConfiguration>]

Contains an array of workflow configuration objects.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateImage in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

