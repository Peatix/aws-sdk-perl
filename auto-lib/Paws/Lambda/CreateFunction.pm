
package Paws::Lambda::CreateFunction;
  use Moose;
  has Architectures => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Code => (is => 'ro', isa => 'Paws::Lambda::FunctionCode', required => 1);
  has CodeSigningConfigArn => (is => 'ro', isa => 'Str');
  has DeadLetterConfig => (is => 'ro', isa => 'Paws::Lambda::DeadLetterConfig');
  has Description => (is => 'ro', isa => 'Str');
  has Environment => (is => 'ro', isa => 'Paws::Lambda::Environment');
  has EphemeralStorage => (is => 'ro', isa => 'Paws::Lambda::EphemeralStorage');
  has FileSystemConfigs => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::FileSystemConfig]');
  has FunctionName => (is => 'ro', isa => 'Str', required => 1);
  has Handler => (is => 'ro', isa => 'Str');
  has ImageConfig => (is => 'ro', isa => 'Paws::Lambda::ImageConfig');
  has KMSKeyArn => (is => 'ro', isa => 'Str');
  has Layers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LoggingConfig => (is => 'ro', isa => 'Paws::Lambda::LoggingConfig');
  has MemorySize => (is => 'ro', isa => 'Int');
  has PackageType => (is => 'ro', isa => 'Str');
  has Publish => (is => 'ro', isa => 'Bool');
  has Role => (is => 'ro', isa => 'Str', required => 1);
  has Runtime => (is => 'ro', isa => 'Str');
  has SnapStart => (is => 'ro', isa => 'Paws::Lambda::SnapStart');
  has Tags => (is => 'ro', isa => 'Paws::Lambda::Tags');
  has Timeout => (is => 'ro', isa => 'Int');
  has TracingConfig => (is => 'ro', isa => 'Paws::Lambda::TracingConfig');
  has VpcConfig => (is => 'ro', isa => 'Paws::Lambda::VpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFunction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::FunctionConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::CreateFunction - Arguments for method CreateFunction on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFunction on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method CreateFunction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFunction.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
  # To create a function
  # The following example creates a function with a deployment package in Amazon
  # S3 and enables X-Ray tracing and environment variable encryption.
    my $FunctionConfiguration = $lambda->CreateFunction(
      'Code' => {
        'S3Bucket' => 'my-bucket-1xpuxmplzrlbh',
        'S3Key'    => 'function.zip'
      },
      'Description' => 'Process image objects from Amazon S3.',
      'Environment' => {
        'Variables' => {
          'BUCKET' => 'my-bucket-1xpuxmplzrlbh',
          'PREFIX' => 'inbound'
        }
      },
      'FunctionName' => 'my-function',
      'Handler'      => 'index.handler',
      'KMSKeyArn'    =>
'arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966',
      'MemorySize' => 256,
      'Publish'    => 1,
      'Role'       => 'arn:aws:iam::123456789012:role/lambda-role',
      'Runtime'    => 'nodejs12.x',
      'Tags'       => {
        'DEPARTMENT' => 'Assets'
      },
      'Timeout'       => 15,
      'TracingConfig' => {
        'Mode' => 'Active'
      }
    );

    # Results:
    my $CodeSha256       = $FunctionConfiguration->CodeSha256;
    my $CodeSize         = $FunctionConfiguration->CodeSize;
    my $Description      = $FunctionConfiguration->Description;
    my $Environment      = $FunctionConfiguration->Environment;
    my $FunctionArn      = $FunctionConfiguration->FunctionArn;
    my $FunctionName     = $FunctionConfiguration->FunctionName;
    my $Handler          = $FunctionConfiguration->Handler;
    my $KMSKeyArn        = $FunctionConfiguration->KMSKeyArn;
    my $LastModified     = $FunctionConfiguration->LastModified;
    my $LastUpdateStatus = $FunctionConfiguration->LastUpdateStatus;
    my $MemorySize       = $FunctionConfiguration->MemorySize;
    my $RevisionId       = $FunctionConfiguration->RevisionId;
    my $Role             = $FunctionConfiguration->Role;
    my $Runtime          = $FunctionConfiguration->Runtime;
    my $State            = $FunctionConfiguration->State;
    my $Timeout          = $FunctionConfiguration->Timeout;
    my $TracingConfig    = $FunctionConfiguration->TracingConfig;
    my $Version          = $FunctionConfiguration->Version;

    # Returns a L<Paws::Lambda::FunctionConfiguration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/CreateFunction>

=head1 ATTRIBUTES


=head2 Architectures => ArrayRef[Str|Undef]

The instruction set architecture that the function supports. Enter a
string array with one of the valid values (arm64 or x86_64). The
default value is C<x86_64>.



=head2 B<REQUIRED> Code => L<Paws::Lambda::FunctionCode>

The code for the function.



=head2 CodeSigningConfigArn => Str

To enable code signing for this function, specify the ARN of a
code-signing configuration. A code-signing configuration includes a set
of signing profiles, which define the trusted publishers for this
function.



=head2 DeadLetterConfig => L<Paws::Lambda::DeadLetterConfig>

A dead-letter queue configuration that specifies the queue or topic
where Lambda sends asynchronous events when they fail processing. For
more information, see Dead-letter queues
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq).



=head2 Description => Str

A description of the function.



=head2 Environment => L<Paws::Lambda::Environment>

Environment variables that are accessible from function code during
execution.



=head2 EphemeralStorage => L<Paws::Lambda::EphemeralStorage>

The size of the function's C</tmp> directory in MB. The default value
is 512, but can be any whole number between 512 and 10,240 MB. For more
information, see Configuring ephemeral storage (console)
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-ephemeral-storage).



=head2 FileSystemConfigs => ArrayRef[L<Paws::Lambda::FileSystemConfig>]

Connection settings for an Amazon EFS file system.



=head2 B<REQUIRED> FunctionName => Str

The name or ARN of the Lambda function.

B<Name formats>

=over

=item *

B<Function name> E<ndash> C<my-function>.

=item *

B<Function ARN> E<ndash>
C<arn:aws:lambda:us-west-2:123456789012:function:my-function>.

=item *

B<Partial ARN> E<ndash> C<123456789012:function:my-function>.

=back

The length constraint applies only to the full ARN. If you specify only
the function name, it is limited to 64 characters in length.



=head2 Handler => Str

The name of the method within your code that Lambda calls to run your
function. Handler is required if the deployment package is a .zip file
archive. The format includes the file name. It can also include
namespaces and other qualifiers, depending on the runtime. For more
information, see Lambda programming model
(https://docs.aws.amazon.com/lambda/latest/dg/foundation-progmodel.html).



=head2 ImageConfig => L<Paws::Lambda::ImageConfig>

Container image configuration values
(https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-parms)
that override the values in the container image Dockerfile.



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



=head2 Layers => ArrayRef[Str|Undef]

A list of function layers
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html)
to add to the function's execution environment. Specify each layer by
its ARN, including the version.



=head2 LoggingConfig => L<Paws::Lambda::LoggingConfig>

The function's Amazon CloudWatch Logs configuration settings.



=head2 MemorySize => Int

The amount of memory available to the function
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-memory-console)
at runtime. Increasing the function memory also increases its CPU
allocation. The default value is 128 MB. The value can be any multiple
of 1 MB.



=head2 PackageType => Str

The type of deployment package. Set to C<Image> for container image and
set to C<Zip> for .zip file archive.

Valid values are: C<"Zip">, C<"Image">

=head2 Publish => Bool

Set to true to publish the first version of the function during
creation.



=head2 B<REQUIRED> Role => Str

The Amazon Resource Name (ARN) of the function's execution role.



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

=head2 SnapStart => L<Paws::Lambda::SnapStart>

The function's SnapStart
(https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html) setting.



=head2 Tags => L<Paws::Lambda::Tags>

A list of tags
(https://docs.aws.amazon.com/lambda/latest/dg/tagging.html) to apply to
the function.



=head2 Timeout => Int

The amount of time (in seconds) that Lambda allows a function to run
before stopping it. The default is 3 seconds. The maximum allowed value
is 900 seconds. For more information, see Lambda execution environment
(https://docs.aws.amazon.com/lambda/latest/dg/runtimes-context.html).



=head2 TracingConfig => L<Paws::Lambda::TracingConfig>

Set C<Mode> to C<Active> to sample and trace a subset of incoming
requests with X-Ray
(https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html).



=head2 VpcConfig => L<Paws::Lambda::VpcConfig>

For network connectivity to Amazon Web Services resources in a VPC,
specify a list of security groups and subnets in the VPC. When you
connect a function to a VPC, it can access resources and the internet
only through that VPC. For more information, see Configuring a Lambda
function to access resources in a VPC
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFunction in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

