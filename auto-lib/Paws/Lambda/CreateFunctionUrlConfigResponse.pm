
package Paws::Lambda::CreateFunctionUrlConfigResponse;
  use Moose;
  has AuthType => (is => 'ro', isa => 'Str', required => 1);
  has Cors => (is => 'ro', isa => 'Paws::Lambda::Cors');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has FunctionArn => (is => 'ro', isa => 'Str', required => 1);
  has FunctionUrl => (is => 'ro', isa => 'Str', required => 1);
  has InvokeMode => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::CreateFunctionUrlConfigResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthType => Str

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


=head2 B<REQUIRED> CreationTime => Str

When the function URL was created, in ISO-8601 format
(https://www.w3.org/TR/NOTE-datetime) (YYYY-MM-DDThh:mm:ss.sTZD).


=head2 B<REQUIRED> FunctionArn => Str

The Amazon Resource Name (ARN) of your function.


=head2 B<REQUIRED> FunctionUrl => Str

The HTTP URL endpoint for your function.


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
=head2 _request_id => Str


=cut

