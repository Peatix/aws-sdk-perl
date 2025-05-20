
package Paws::Synthetics::StartCanaryDryRun;
  use Moose;
  has ArtifactConfig => (is => 'ro', isa => 'Paws::Synthetics::ArtifactConfigInput');
  has ArtifactS3Location => (is => 'ro', isa => 'Str');
  has Code => (is => 'ro', isa => 'Paws::Synthetics::CanaryCodeInput');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str');
  has FailureRetentionPeriodInDays => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has ProvisionedResourceCleanup => (is => 'ro', isa => 'Str');
  has RunConfig => (is => 'ro', isa => 'Paws::Synthetics::CanaryRunConfigInput');
  has RuntimeVersion => (is => 'ro', isa => 'Str');
  has SuccessRetentionPeriodInDays => (is => 'ro', isa => 'Int');
  has VisualReference => (is => 'ro', isa => 'Paws::Synthetics::VisualReferenceInput');
  has VpcConfig => (is => 'ro', isa => 'Paws::Synthetics::VpcConfigInput');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartCanaryDryRun');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/canary/{name}/dry-run/start');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Synthetics::StartCanaryDryRunResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::StartCanaryDryRun - Arguments for method StartCanaryDryRun on L<Paws::Synthetics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartCanaryDryRun on the
L<Synthetics|Paws::Synthetics> service. Use the attributes of this class
as arguments to method StartCanaryDryRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartCanaryDryRun.

=head1 SYNOPSIS

    my $synthetics = Paws->service('Synthetics');
    my $StartCanaryDryRunResponse = $synthetics->StartCanaryDryRun(
      Name           => 'MyCanaryName',
      ArtifactConfig => {
        S3Encryption => {
          EncryptionMode => 'SSE_S3',        # values: SSE_S3, SSE_KMS; OPTIONAL
          KmsKeyArn      => 'MyKmsKeyArn',   # min: 1, max: 2048; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ArtifactS3Location => 'MyString',    # OPTIONAL
      Code               => {
        Handler   => 'MyCodeHandler',      # min: 1, max: 128
        S3Bucket  => 'MyString',           # min: 1, max: 1024
        S3Key     => 'MyString',           # min: 1, max: 1024
        S3Version => 'MyString',           # min: 1, max: 1024
        ZipFile   => 'BlobBlob',           # min: 1, max: 10000000; OPTIONAL
      },    # OPTIONAL
      ExecutionRoleArn             => 'MyRoleArn',    # OPTIONAL
      FailureRetentionPeriodInDays => 1,              # OPTIONAL
      ProvisionedResourceCleanup   => 'AUTOMATIC',    # OPTIONAL
      RunConfig                    => {
        ActiveTracing        => 1,                    # OPTIONAL
        EnvironmentVariables =>
          { 'MyEnvironmentVariableName' => 'MyEnvironmentVariableValue', }
        ,                                             # OPTIONAL
        MemoryInMB       => 1,    # min: 960, max: 3008; OPTIONAL
        TimeoutInSeconds => 1,    # min: 3, max: 840; OPTIONAL
      },    # OPTIONAL
      RuntimeVersion               => 'MyString',    # OPTIONAL
      SuccessRetentionPeriodInDays => 1,             # OPTIONAL
      VisualReference              => {
        BaseCanaryRunId => 'MyString',               # min: 1, max: 1024
        BaseScreenshots => [
          {
            ScreenshotName    => 'MyString',         # min: 1, max: 1024
            IgnoreCoordinates =>
              [ 'MyBaseScreenshotConfigIgnoreCoordinate', ... ]
            ,                                        # max: 20; OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      VpcConfig => {
        Ipv6AllowedForDualStack => 1,                        # OPTIONAL
        SecurityGroupIds => [ 'MySecurityGroupId', ... ],    # max: 5; OPTIONAL
        SubnetIds        => [ 'MySubnetId',        ... ],    # max: 16; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $DryRunConfig = $StartCanaryDryRunResponse->DryRunConfig;

    # Returns a L<Paws::Synthetics::StartCanaryDryRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/synthetics/StartCanaryDryRun>

=head1 ATTRIBUTES


=head2 ArtifactConfig => L<Paws::Synthetics::ArtifactConfigInput>





=head2 ArtifactS3Location => Str

The location in Amazon S3 where Synthetics stores artifacts from the
test runs of this canary. Artifacts include the log file, screenshots,
and HAR files. The name of the Amazon S3 bucket can't include a period
(.).



=head2 Code => L<Paws::Synthetics::CanaryCodeInput>





=head2 ExecutionRoleArn => Str

The ARN of the IAM role to be used to run the canary. This role must
already exist, and must include C<lambda.amazonaws.com> as a principal
in the trust policy. The role must also have the following permissions:



=head2 FailureRetentionPeriodInDays => Int

The number of days to retain data on the failed runs for this canary.
The valid range is 1 to 455 days.

This setting affects the range of information returned by GetCanaryRuns
(https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html),
as well as the range of information displayed in the Synthetics
console.



=head2 B<REQUIRED> Name => Str

The name of the canary that you want to dry run. To find canary names,
use DescribeCanaries
(https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html).



=head2 ProvisionedResourceCleanup => Str

Specifies whether to also delete the Lambda functions and layers used
by this canary when the canary is deleted. If the value of this
parameter is C<AUTOMATIC>, it means that the Lambda functions and
layers will be deleted when the canary is deleted.

If the value of this parameter is C<OFF>, then the value of the
C<DeleteLambda> parameter of the DeleteCanary
(https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DeleteCanary.html)
operation determines whether the Lambda functions and layers will be
deleted.

Valid values are: C<"AUTOMATIC">, C<"OFF">

=head2 RunConfig => L<Paws::Synthetics::CanaryRunConfigInput>





=head2 RuntimeVersion => Str

Specifies the runtime version to use for the canary. For a list of
valid runtime versions and for more information about runtime versions,
see Canary Runtime Versions
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).



=head2 SuccessRetentionPeriodInDays => Int

The number of days to retain data on the failed runs for this canary.
The valid range is 1 to 455 days.

This setting affects the range of information returned by GetCanaryRuns
(https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html),
as well as the range of information displayed in the Synthetics
console.



=head2 VisualReference => L<Paws::Synthetics::VisualReferenceInput>





=head2 VpcConfig => L<Paws::Synthetics::VpcConfigInput>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartCanaryDryRun in L<Paws::Synthetics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

