
package Paws::Lambda::UpdateFunctionCode;
  use Moose;
  has Architectures => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DryRun => (is => 'ro', isa => 'Bool');
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has ImageUri => (is => 'ro', isa => 'Str');
  has Publish => (is => 'ro', isa => 'Bool');
  has RevisionId => (is => 'ro', isa => 'Str');
  has S3Bucket => (is => 'ro', isa => 'Str');
  has S3Key => (is => 'ro', isa => 'Str');
  has S3ObjectVersion => (is => 'ro', isa => 'Str');
  has SourceKMSKeyArn => (is => 'ro', isa => 'Str');
  has ZipFile => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFunctionCode');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/{FunctionName}/code');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::FunctionConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::UpdateFunctionCode - Arguments for method UpdateFunctionCode on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFunctionCode on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method UpdateFunctionCode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFunctionCode.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
# To update a Lambda function's code
# The following example replaces the code of the unpublished ($LATEST) version
# of a function named my-function with the contents of the specified zip file in
# Amazon S3.
    my $FunctionConfiguration = $lambda->UpdateFunctionCode(
      'FunctionName' => 'my-function',
      'S3Bucket'     => 'my-bucket-1xpuxmplzrlbh',
      'S3Key'        => 'function.zip'
    );

    # Results:
    my $CodeSha256    = $FunctionConfiguration->CodeSha256;
    my $CodeSize      = $FunctionConfiguration->CodeSize;
    my $Description   = $FunctionConfiguration->Description;
    my $FunctionArn   = $FunctionConfiguration->FunctionArn;
    my $FunctionName  = $FunctionConfiguration->FunctionName;
    my $Handler       = $FunctionConfiguration->Handler;
    my $LastModified  = $FunctionConfiguration->LastModified;
    my $MemorySize    = $FunctionConfiguration->MemorySize;
    my $RevisionId    = $FunctionConfiguration->RevisionId;
    my $Role          = $FunctionConfiguration->Role;
    my $Runtime       = $FunctionConfiguration->Runtime;
    my $Timeout       = $FunctionConfiguration->Timeout;
    my $TracingConfig = $FunctionConfiguration->TracingConfig;
    my $Version       = $FunctionConfiguration->Version;

    # Returns a L<Paws::Lambda::FunctionConfiguration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/UpdateFunctionCode>

=head1 ATTRIBUTES


=head2 Architectures => ArrayRef[Str|Undef]

The instruction set architecture that the function supports. Enter a
string array with one of the valid values (arm64 or x86_64). The
default value is C<x86_64>.



=head2 DryRun => Bool

Set to true to validate the request parameters and access permissions
without modifying the function code.



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



=head2 ImageUri => Str

URI of a container image in the Amazon ECR registry. Do not use for a
function defined with a .zip file archive.



=head2 Publish => Bool

Set to true to publish a new version of the function after updating the
code. This has the same effect as calling PublishVersion separately.



=head2 RevisionId => Str

Update the function only if the revision ID matches the ID that's
specified. Use this option to avoid modifying a function that has
changed since you last read it.



=head2 S3Bucket => Str

An Amazon S3 bucket in the same Amazon Web Services Region as your
function. The bucket can be in a different Amazon Web Services account.
Use only with a function defined with a .zip file archive deployment
package.



=head2 S3Key => Str

The Amazon S3 key of the deployment package. Use only with a function
defined with a .zip file archive deployment package.



=head2 S3ObjectVersion => Str

For versioned objects, the version of the deployment package object to
use.



=head2 SourceKMSKeyArn => Str

The ARN of the Key Management Service (KMS) customer managed key that's
used to encrypt your function's .zip deployment package. If you don't
provide a customer managed key, Lambda uses an Amazon Web Services
managed key.



=head2 ZipFile => Str

The base64-encoded contents of the deployment package. Amazon Web
Services SDK and CLI clients handle the encoding for you. Use only with
a function defined with a .zip file archive deployment package.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFunctionCode in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

