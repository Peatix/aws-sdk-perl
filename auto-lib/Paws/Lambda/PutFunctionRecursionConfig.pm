
package Paws::Lambda::PutFunctionRecursionConfig;
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has RecursiveLoop => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutFunctionRecursionConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2024-08-31/functions/{FunctionName}/recursion-config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::PutFunctionRecursionConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::PutFunctionRecursionConfig - Arguments for method PutFunctionRecursionConfig on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutFunctionRecursionConfig on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method PutFunctionRecursionConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutFunctionRecursionConfig.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    my $PutFunctionRecursionConfigResponse =
      $lambda->PutFunctionRecursionConfig(
      FunctionName  => 'MyUnqualifiedFunctionName',
      RecursiveLoop => 'Allow',

      );

    # Results:
    my $RecursiveLoop = $PutFunctionRecursionConfigResponse->RecursiveLoop;

    # Returns a L<Paws::Lambda::PutFunctionRecursionConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/PutFunctionRecursionConfig>

=head1 ATTRIBUTES


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



=head2 B<REQUIRED> RecursiveLoop => Str

If you set your function's recursive loop detection configuration to
C<Allow>, Lambda doesn't take any action when it detects your function
being invoked as part of a recursive loop. We recommend that you only
use this setting if your design intentionally uses a Lambda function to
write data back to the same Amazon Web Services resource that invokes
it.

If you set your function's recursive loop detection configuration to
C<Terminate>, Lambda stops your function being invoked and notifies you
when it detects your function being invoked as part of a recursive
loop.

By default, Lambda sets your function's configuration to C<Terminate>.

If your design intentionally uses a Lambda function to write data back
to the same Amazon Web Services resource that invokes the function,
then use caution and implement suitable guard rails to prevent
unexpected charges being billed to your Amazon Web Services account. To
learn more about best practices for using recursive invocation
patterns, see Recursive patterns that cause run-away Lambda functions
(https://serverlessland.com/content/service/lambda/guides/aws-lambda-operator-guide/recursive-runaway)
in Serverless Land.

Valid values are: C<"Allow">, C<"Terminate">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutFunctionRecursionConfig in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

