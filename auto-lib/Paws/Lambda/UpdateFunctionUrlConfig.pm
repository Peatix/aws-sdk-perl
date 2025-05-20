
package Paws::Lambda::UpdateFunctionUrlConfig;
  use Moose;
  has AuthType => (is => 'ro', isa => 'Str');
  has Cors => (is => 'ro', isa => 'Paws::Lambda::Cors');
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has InvokeMode => (is => 'ro', isa => 'Str');
  has Qualifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Qualifier');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFunctionUrlConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-10-31/functions/{FunctionName}/url');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::UpdateFunctionUrlConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::UpdateFunctionUrlConfig - Arguments for method UpdateFunctionUrlConfig on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFunctionUrlConfig on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method UpdateFunctionUrlConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFunctionUrlConfig.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    my $UpdateFunctionUrlConfigResponse = $lambda->UpdateFunctionUrlConfig(
      FunctionName => 'MyFunctionName',
      AuthType     => 'NONE',             # OPTIONAL
      Cors         => {
        AllowCredentials => 1,            # OPTIONAL
        AllowHeaders     => [
          'MyHeader', ...                 # max: 1024
        ],    # max: 100; OPTIONAL
        AllowMethods => [
          'MyMethod', ...    # max: 6
        ],    # max: 6; OPTIONAL
        AllowOrigins => [
          'MyOrigin', ...    # min: 1, max: 253
        ],    # max: 100; OPTIONAL
        ExposeHeaders => [
          'MyHeader', ...    # max: 1024
        ],    # max: 100; OPTIONAL
        MaxAge => 1,    # max: 86400; OPTIONAL
      },    # OPTIONAL
      InvokeMode => 'BUFFERED',                  # OPTIONAL
      Qualifier  => 'MyFunctionUrlQualifier',    # OPTIONAL
    );

    # Results:
    my $AuthType         = $UpdateFunctionUrlConfigResponse->AuthType;
    my $Cors             = $UpdateFunctionUrlConfigResponse->Cors;
    my $CreationTime     = $UpdateFunctionUrlConfigResponse->CreationTime;
    my $FunctionArn      = $UpdateFunctionUrlConfigResponse->FunctionArn;
    my $FunctionUrl      = $UpdateFunctionUrlConfigResponse->FunctionUrl;
    my $InvokeMode       = $UpdateFunctionUrlConfigResponse->InvokeMode;
    my $LastModifiedTime = $UpdateFunctionUrlConfigResponse->LastModifiedTime;

    # Returns a L<Paws::Lambda::UpdateFunctionUrlConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/UpdateFunctionUrlConfig>

=head1 ATTRIBUTES


=head2 AuthType => Str

The type of authentication that your function URL uses. Set to
C<AWS_IAM> if you want to restrict access to authenticated users only.
Set to C<NONE> if you want to bypass IAM authentication to create a
public endpoint. For more information, see Security and auth model for
Lambda function URLs
(https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html).

Valid values are: C<"NONE">, C<"AWS_IAM">

=head2 Cors => L<Paws::Lambda::Cors>

The cross-origin resource sharing (CORS)
(https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) settings for
your function URL.



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



=head2 InvokeMode => Str

Use one of the following options:

=over

=item *

C<BUFFERED> E<ndash> This is the default option. Lambda invokes your
function using the C<Invoke> API operation. Invocation results are
available when the payload is complete. The maximum payload size is 6
MB.

=item *

C<RESPONSE_STREAM> E<ndash> Your function streams payload results as
they become available. Lambda invokes your function using the
C<InvokeWithResponseStream> API operation. The maximum response payload
size is 20 MB, however, you can request a quota increase
(https://docs.aws.amazon.com/servicequotas/latest/userguide/request-quota-increase.html).

=back


Valid values are: C<"BUFFERED">, C<"RESPONSE_STREAM">

=head2 Qualifier => Str

The alias name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFunctionUrlConfig in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

