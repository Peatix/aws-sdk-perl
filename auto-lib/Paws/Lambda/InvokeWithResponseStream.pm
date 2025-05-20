
package Paws::Lambda::InvokeWithResponseStream;
  use Moose;
  has ClientContext => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Context');
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has InvocationType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Invocation-Type');
  has LogType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Log-Type');
  has Payload => (is => 'ro', isa => 'Str');
  has Qualifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Qualifier');

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Payload');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InvokeWithResponseStream');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-11-15/functions/{FunctionName}/response-streaming-invocations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::InvokeWithResponseStreamResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::InvokeWithResponseStream - Arguments for method InvokeWithResponseStream on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InvokeWithResponseStream on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method InvokeWithResponseStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InvokeWithResponseStream.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    my $InvokeWithResponseStreamResponse = $lambda->InvokeWithResponseStream(
      FunctionName   => 'MyNamespacedFunctionName',
      ClientContext  => 'MyString',                   # OPTIONAL
      InvocationType => 'RequestResponse',            # OPTIONAL
      LogType        => 'None',                       # OPTIONAL
      Payload        => 'BlobBlob',                   # OPTIONAL
      Qualifier      => 'MyQualifier',                # OPTIONAL
    );

    # Results:
    my $EventStream     = $InvokeWithResponseStreamResponse->EventStream;
    my $ExecutedVersion = $InvokeWithResponseStreamResponse->ExecutedVersion;
    my $ResponseStreamContentType =
      $InvokeWithResponseStreamResponse->ResponseStreamContentType;
    my $StatusCode = $InvokeWithResponseStreamResponse->StatusCode;

    # Returns a L<Paws::Lambda::InvokeWithResponseStreamResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/InvokeWithResponseStream>

=head1 ATTRIBUTES


=head2 ClientContext => Str

Up to 3,583 bytes of base64-encoded data about the invoking client to
pass to the function in the context object.



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



=head2 InvocationType => Str

Use one of the following options:

=over

=item *

C<RequestResponse> (default) E<ndash> Invoke the function
synchronously. Keep the connection open until the function returns a
response or times out. The API operation response includes the function
response and additional data.

=item *

C<DryRun> E<ndash> Validate parameter values and verify that the IAM
user or role has permission to invoke the function.

=back


Valid values are: C<"RequestResponse">, C<"DryRun">

=head2 LogType => Str

Set to C<Tail> to include the execution log in the response. Applies to
synchronously invoked functions only.

Valid values are: C<"None">, C<"Tail">

=head2 Payload => Str

The JSON that you want to provide to your Lambda function as input.

You can enter the JSON directly. For example, C<--payload '{ "key":
"value" }'>. You can also specify a file path. For example, C<--payload
file://payload.json>.



=head2 Qualifier => Str

The alias name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InvokeWithResponseStream in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

