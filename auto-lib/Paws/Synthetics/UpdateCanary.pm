
package Paws::Synthetics::UpdateCanary;
  use Moose;
  has ArtifactConfig => (is => 'ro', isa => 'Paws::Synthetics::ArtifactConfigInput');
  has ArtifactS3Location => (is => 'ro', isa => 'Str');
  has Code => (is => 'ro', isa => 'Paws::Synthetics::CanaryCodeInput');
  has DryRunId => (is => 'ro', isa => 'Str');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str');
  has FailureRetentionPeriodInDays => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has ProvisionedResourceCleanup => (is => 'ro', isa => 'Str');
  has RunConfig => (is => 'ro', isa => 'Paws::Synthetics::CanaryRunConfigInput');
  has RuntimeVersion => (is => 'ro', isa => 'Str');
  has Schedule => (is => 'ro', isa => 'Paws::Synthetics::CanaryScheduleInput');
  has SuccessRetentionPeriodInDays => (is => 'ro', isa => 'Int');
  has VisualReference => (is => 'ro', isa => 'Paws::Synthetics::VisualReferenceInput');
  has VpcConfig => (is => 'ro', isa => 'Paws::Synthetics::VpcConfigInput');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCanary');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/canary/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Synthetics::UpdateCanaryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::UpdateCanary - Arguments for method UpdateCanary on L<Paws::Synthetics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCanary on the
L<Synthetics|Paws::Synthetics> service. Use the attributes of this class
as arguments to method UpdateCanary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCanary.

=head1 SYNOPSIS

    my $synthetics = Paws->service('Synthetics');
    my $UpdateCanaryResponse = $synthetics->UpdateCanary(
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
      DryRunId                     => 'MyUUID',       # OPTIONAL
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
      RuntimeVersion => 'MyString',    # OPTIONAL
      Schedule       => {
        Expression        => 'MyString',    # min: 1, max: 1024
        DurationInSeconds => 1,             # max: 31622400; OPTIONAL
        RetryConfig       => {
          MaxRetries => 1,                  # max: 2

        },    # OPTIONAL
      },    # OPTIONAL
      SuccessRetentionPeriodInDays => 1,    # OPTIONAL
      VisualReference              => {
        BaseCanaryRunId => 'MyString',      # min: 1, max: 1024
        BaseScreenshots => [
          {
            ScreenshotName    => 'MyString',    # min: 1, max: 1024
            IgnoreCoordinates =>
              [ 'MyBaseScreenshotConfigIgnoreCoordinate', ... ]
            ,                                   # max: 20; OPTIONAL
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

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/synthetics/UpdateCanary>

=head1 ATTRIBUTES


=head2 ArtifactConfig => L<Paws::Synthetics::ArtifactConfigInput>

A structure that contains the configuration for canary artifacts,
including the encryption-at-rest settings for artifacts that the canary
uploads to Amazon S3.



=head2 ArtifactS3Location => Str

The location in Amazon S3 where Synthetics stores artifacts from the
test runs of this canary. Artifacts include the log file, screenshots,
and HAR files. The name of the S3 bucket can't include a period (.).



=head2 Code => L<Paws::Synthetics::CanaryCodeInput>

A structure that includes the entry point from which the canary should
start running your script. If the script is stored in an S3 bucket, the
bucket name, key, and version are also included.



=head2 DryRunId => Str

Update the existing canary using the updated configurations from the
DryRun associated with the DryRunId.

When you use the C<dryRunId> field when updating a canary, the only
other field you can provide is the C<Schedule>. Adding any other field
will thrown an exception.



=head2 ExecutionRoleArn => Str

The ARN of the IAM role to be used to run the canary. This role must
already exist, and must include C<lambda.amazonaws.com> as a principal
in the trust policy. The role must also have the following permissions:

=over

=item *

C<s3:PutObject>

=item *

C<s3:GetBucketLocation>

=item *

C<s3:ListAllMyBuckets>

=item *

C<cloudwatch:PutMetricData>

=item *

C<logs:CreateLogGroup>

=item *

C<logs:CreateLogStream>

=item *

C<logs:CreateLogStream>

=back




=head2 FailureRetentionPeriodInDays => Int

The number of days to retain data about failed runs of this canary.

This setting affects the range of information returned by GetCanaryRuns
(https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html),
as well as the range of information displayed in the Synthetics
console.



=head2 B<REQUIRED> Name => Str

The name of the canary that you want to update. To find the names of
your canaries, use DescribeCanaries
(https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html).

You cannot change the name of a canary that has already been created.



=head2 ProvisionedResourceCleanup => Str

Specifies whether to also delete the Lambda functions and layers used
by this canary when the canary is deleted.

If the value of this parameter is C<OFF>, then the value of the
C<DeleteLambda> parameter of the DeleteCanary
(https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DeleteCanary.html)
operation determines whether the Lambda functions and layers will be
deleted.

Valid values are: C<"AUTOMATIC">, C<"OFF">

=head2 RunConfig => L<Paws::Synthetics::CanaryRunConfigInput>

A structure that contains the timeout value that is used for each
individual run of the canary.

Environment variable keys and values are encrypted at rest using Amazon
Web Services owned KMS keys. However, the environment variables are not
encrypted on the client side. Do not store sensitive information in
them.



=head2 RuntimeVersion => Str

Specifies the runtime version to use for the canary. For a list of
valid runtime versions and for more information about runtime versions,
see Canary Runtime Versions
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).



=head2 Schedule => L<Paws::Synthetics::CanaryScheduleInput>

A structure that contains information about how often the canary is to
run, and when these runs are to stop.



=head2 SuccessRetentionPeriodInDays => Int

The number of days to retain data about successful runs of this canary.

This setting affects the range of information returned by GetCanaryRuns
(https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html),
as well as the range of information displayed in the Synthetics
console.



=head2 VisualReference => L<Paws::Synthetics::VisualReferenceInput>

Defines the screenshots to use as the baseline for comparisons during
visual monitoring comparisons during future runs of this canary. If you
omit this parameter, no changes are made to any baseline screenshots
that the canary might be using already.

Visual monitoring is supported only on canaries running the
B<syn-puppeteer-node-3.2> runtime or later. For more information, see
Visual monitoring
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Library_SyntheticsLogger_VisualTesting.html)
and Visual monitoring blueprint
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Blueprints_VisualTesting.html)



=head2 VpcConfig => L<Paws::Synthetics::VpcConfigInput>

If this canary is to test an endpoint in a VPC, this structure contains
information about the subnet and security groups of the VPC endpoint.
For more information, see Running a Canary in a VPC
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCanary in L<Paws::Synthetics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

