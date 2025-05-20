
package Paws::Lambda::FunctionConfiguration;
  use Moose;
  has Architectures => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CodeSha256 => (is => 'ro', isa => 'Str');
  has CodeSize => (is => 'ro', isa => 'Int');
  has DeadLetterConfig => (is => 'ro', isa => 'Paws::Lambda::DeadLetterConfig');
  has Description => (is => 'ro', isa => 'Str');
  has Environment => (is => 'ro', isa => 'Paws::Lambda::EnvironmentResponse');
  has EphemeralStorage => (is => 'ro', isa => 'Paws::Lambda::EphemeralStorage');
  has FileSystemConfigs => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::FileSystemConfig]');
  has FunctionArn => (is => 'ro', isa => 'Str');
  has FunctionName => (is => 'ro', isa => 'Str');
  has Handler => (is => 'ro', isa => 'Str');
  has ImageConfigResponse => (is => 'ro', isa => 'Paws::Lambda::ImageConfigResponse');
  has KMSKeyArn => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has LastUpdateStatus => (is => 'ro', isa => 'Str');
  has LastUpdateStatusReason => (is => 'ro', isa => 'Str');
  has LastUpdateStatusReasonCode => (is => 'ro', isa => 'Str');
  has Layers => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::Layer]');
  has LoggingConfig => (is => 'ro', isa => 'Paws::Lambda::LoggingConfig');
  has MasterArn => (is => 'ro', isa => 'Str');
  has MemorySize => (is => 'ro', isa => 'Int');
  has PackageType => (is => 'ro', isa => 'Str');
  has RevisionId => (is => 'ro', isa => 'Str');
  has Role => (is => 'ro', isa => 'Str');
  has Runtime => (is => 'ro', isa => 'Str');
  has RuntimeVersionConfig => (is => 'ro', isa => 'Paws::Lambda::RuntimeVersionConfig');
  has SigningJobArn => (is => 'ro', isa => 'Str');
  has SigningProfileVersionArn => (is => 'ro', isa => 'Str');
  has SnapStart => (is => 'ro', isa => 'Paws::Lambda::SnapStartResponse');
  has State => (is => 'ro', isa => 'Str');
  has StateReason => (is => 'ro', isa => 'Str');
  has StateReasonCode => (is => 'ro', isa => 'Str');
  has Timeout => (is => 'ro', isa => 'Int');
  has TracingConfig => (is => 'ro', isa => 'Paws::Lambda::TracingConfigResponse');
  has Version => (is => 'ro', isa => 'Str');
  has VpcConfig => (is => 'ro', isa => 'Paws::Lambda::VpcConfigResponse');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::FunctionConfiguration

=head1 ATTRIBUTES


=head2 Architectures => ArrayRef[Str|Undef]

The instruction set architecture that the function supports.
Architecture is a string array with one of the valid values. The
default architecture value is C<x86_64>.


=head2 CodeSha256 => Str

The SHA256 hash of the function's deployment package.


=head2 CodeSize => Int

The size of the function's deployment package, in bytes.


=head2 DeadLetterConfig => L<Paws::Lambda::DeadLetterConfig>

The function's dead letter queue.


=head2 Description => Str

The function's description.


=head2 Environment => L<Paws::Lambda::EnvironmentResponse>

The function's environment variables
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html).
Omitted from CloudTrail logs.


=head2 EphemeralStorage => L<Paws::Lambda::EphemeralStorage>

The size of the function's C</tmp> directory in MB. The default value
is 512, but can be any whole number between 512 and 10,240 MB. For more
information, see Configuring ephemeral storage (console)
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-ephemeral-storage).


=head2 FileSystemConfigs => ArrayRef[L<Paws::Lambda::FileSystemConfig>]

Connection settings for an Amazon EFS file system
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html).


=head2 FunctionArn => Str

The function's Amazon Resource Name (ARN).


=head2 FunctionName => Str

The name of the function.


=head2 Handler => Str

The function that Lambda calls to begin running your function.


=head2 ImageConfigResponse => L<Paws::Lambda::ImageConfigResponse>

The function's image configuration values.


=head2 KMSKeyArn => Str

The ARN of the Key Management Service (KMS) customer managed key that's
used to encrypt the following resources:

=over

=item *

The function's environment variables
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption).

=item *

The function's Lambda SnapStart
(https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html)
snapshots.

=item *

When used with C<SourceKMSKeyArn>, the unzipped version of the .zip
deployment package that's used for function invocations. For more
information, see Specifying a customer managed key for Lambda
(https://docs.aws.amazon.com/lambda/latest/dg/encrypt-zip-package.html#enable-zip-custom-encryption).

=item *

The optimized version of the container image that's used for function
invocations. Note that this is not the same key that's used to protect
your container image in the Amazon Elastic Container Registry (Amazon
ECR). For more information, see Function lifecycle
(https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-lifecycle).

=back

If you don't provide a customer managed key, Lambda uses an Amazon Web
Services owned key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk)
or an Amazon Web Services managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk).


=head2 LastModified => Str

The date and time that the function was last updated, in ISO-8601
format (https://www.w3.org/TR/NOTE-datetime)
(YYYY-MM-DDThh:mm:ss.sTZD).


=head2 LastUpdateStatus => Str

The status of the last update that was performed on the function. This
is first set to C<Successful> after function creation completes.

Valid values are: C<"Successful">, C<"Failed">, C<"InProgress">
=head2 LastUpdateStatusReason => Str

The reason for the last update that was performed on the function.


=head2 LastUpdateStatusReasonCode => Str

The reason code for the last update that was performed on the function.

Valid values are: C<"EniLimitExceeded">, C<"InsufficientRolePermissions">, C<"InvalidConfiguration">, C<"InternalError">, C<"SubnetOutOfIPAddresses">, C<"InvalidSubnet">, C<"InvalidSecurityGroup">, C<"ImageDeleted">, C<"ImageAccessDenied">, C<"InvalidImage">, C<"KMSKeyAccessDenied">, C<"KMSKeyNotFound">, C<"InvalidStateKMSKey">, C<"DisabledKMSKey">, C<"EFSIOError">, C<"EFSMountConnectivityError">, C<"EFSMountFailure">, C<"EFSMountTimeout">, C<"InvalidRuntime">, C<"InvalidZipFileException">, C<"FunctionError">
=head2 Layers => ArrayRef[L<Paws::Lambda::Layer>]

The function's layers
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).


=head2 LoggingConfig => L<Paws::Lambda::LoggingConfig>

The function's Amazon CloudWatch Logs configuration settings.


=head2 MasterArn => Str

For Lambda@Edge functions, the ARN of the main function.


=head2 MemorySize => Int

The amount of memory available to the function at runtime.


=head2 PackageType => Str

The type of deployment package. Set to C<Image> for container image and
set C<Zip> for .zip file archive.

Valid values are: C<"Zip">, C<"Image">
=head2 RevisionId => Str

The latest updated revision of the function or alias.


=head2 Role => Str

The function's execution role.


=head2 Runtime => Str

The identifier of the function's runtime
(https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html).
Runtime is required if the deployment package is a .zip file archive.
Specifying a runtime results in an error if you're deploying a function
using a container image.

The following list includes deprecated runtimes. Lambda blocks creating
new functions and updating existing functions shortly after each
runtime is deprecated. For more information, see Runtime use after
deprecation
(https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels).

For a list of all currently supported runtimes, see Supported runtimes
(https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported).

Valid values are: C<"nodejs">, C<"nodejs4.3">, C<"nodejs6.10">, C<"nodejs8.10">, C<"nodejs10.x">, C<"nodejs12.x">, C<"nodejs14.x">, C<"nodejs16.x">, C<"java8">, C<"java8.al2">, C<"java11">, C<"python2.7">, C<"python3.6">, C<"python3.7">, C<"python3.8">, C<"python3.9">, C<"dotnetcore1.0">, C<"dotnetcore2.0">, C<"dotnetcore2.1">, C<"dotnetcore3.1">, C<"dotnet6">, C<"dotnet8">, C<"nodejs4.3-edge">, C<"go1.x">, C<"ruby2.5">, C<"ruby2.7">, C<"provided">, C<"provided.al2">, C<"nodejs18.x">, C<"python3.10">, C<"java17">, C<"ruby3.2">, C<"ruby3.3">, C<"ruby3.4">, C<"python3.11">, C<"nodejs20.x">, C<"provided.al2023">, C<"python3.12">, C<"java21">, C<"python3.13">, C<"nodejs22.x">
=head2 RuntimeVersionConfig => L<Paws::Lambda::RuntimeVersionConfig>

The ARN of the runtime and any errors that occured.


=head2 SigningJobArn => Str

The ARN of the signing job.


=head2 SigningProfileVersionArn => Str

The ARN of the signing profile version.


=head2 SnapStart => L<Paws::Lambda::SnapStartResponse>

Set C<ApplyOn> to C<PublishedVersions> to create a snapshot of the
initialized execution environment when you publish a function version.
For more information, see Improving startup performance with Lambda
SnapStart
(https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html).


=head2 State => Str

The current state of the function. When the state is C<Inactive>, you
can reactivate the function by invoking it.

Valid values are: C<"Pending">, C<"Active">, C<"Inactive">, C<"Failed">
=head2 StateReason => Str

The reason for the function's current state.


=head2 StateReasonCode => Str

The reason code for the function's current state. When the code is
C<Creating>, you can't invoke or modify the function.

Valid values are: C<"Idle">, C<"Creating">, C<"Restoring">, C<"EniLimitExceeded">, C<"InsufficientRolePermissions">, C<"InvalidConfiguration">, C<"InternalError">, C<"SubnetOutOfIPAddresses">, C<"InvalidSubnet">, C<"InvalidSecurityGroup">, C<"ImageDeleted">, C<"ImageAccessDenied">, C<"InvalidImage">, C<"KMSKeyAccessDenied">, C<"KMSKeyNotFound">, C<"InvalidStateKMSKey">, C<"DisabledKMSKey">, C<"EFSIOError">, C<"EFSMountConnectivityError">, C<"EFSMountFailure">, C<"EFSMountTimeout">, C<"InvalidRuntime">, C<"InvalidZipFileException">, C<"FunctionError">
=head2 Timeout => Int

The amount of time in seconds that Lambda allows a function to run
before stopping it.


=head2 TracingConfig => L<Paws::Lambda::TracingConfigResponse>

The function's X-Ray tracing configuration.


=head2 Version => Str

The version of the Lambda function.


=head2 VpcConfig => L<Paws::Lambda::VpcConfigResponse>

The function's networking configuration.


=head2 _request_id => Str


=cut

