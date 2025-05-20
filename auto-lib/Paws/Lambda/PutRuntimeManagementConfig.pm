
package Paws::Lambda::PutRuntimeManagementConfig;
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has Qualifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Qualifier');
  has RuntimeVersionArn => (is => 'ro', isa => 'Str');
  has UpdateRuntimeOn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRuntimeManagementConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-07-20/functions/{FunctionName}/runtime-management-config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::PutRuntimeManagementConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::PutRuntimeManagementConfig - Arguments for method PutRuntimeManagementConfig on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRuntimeManagementConfig on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method PutRuntimeManagementConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRuntimeManagementConfig.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    my $PutRuntimeManagementConfigResponse =
      $lambda->PutRuntimeManagementConfig(
      FunctionName      => 'MyFunctionName',
      UpdateRuntimeOn   => 'Auto',
      Qualifier         => 'MyQualifier',            # OPTIONAL
      RuntimeVersionArn => 'MyRuntimeVersionArn',    # OPTIONAL
      );

    # Results:
    my $FunctionArn = $PutRuntimeManagementConfigResponse->FunctionArn;
    my $RuntimeVersionArn =
      $PutRuntimeManagementConfigResponse->RuntimeVersionArn;
    my $UpdateRuntimeOn = $PutRuntimeManagementConfigResponse->UpdateRuntimeOn;

    # Returns a L<Paws::Lambda::PutRuntimeManagementConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/PutRuntimeManagementConfig>

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



=head2 Qualifier => Str

Specify a version of the function. This can be C<$LATEST> or a
published version number. If no value is specified, the configuration
for the C<$LATEST> version is returned.



=head2 RuntimeVersionArn => Str

The ARN of the runtime version you want the function to use.

This is only required if you're using the B<Manual> runtime update
mode.



=head2 B<REQUIRED> UpdateRuntimeOn => Str

Specify the runtime update mode.

=over

=item *

B<Auto (default)> - Automatically update to the most recent and secure
runtime version using a Two-phase runtime version rollout
(https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html#runtime-management-two-phase).
This is the best choice for most customers to ensure they always
benefit from runtime updates.

=item *

B<Function update> - Lambda updates the runtime of your function to the
most recent and secure runtime version when you update your function.
This approach synchronizes runtime updates with function deployments,
giving you control over when runtime updates are applied and allowing
you to detect and mitigate rare runtime update incompatibilities early.
When using this setting, you need to regularly update your functions to
keep their runtime up-to-date.

=item *

B<Manual> - You specify a runtime version in your function
configuration. The function will use this runtime version indefinitely.
In the rare case where a new runtime version is incompatible with an
existing function, this allows you to roll back your function to an
earlier runtime version. For more information, see Roll back a runtime
version
(https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html#runtime-management-rollback).

=back


Valid values are: C<"Auto">, C<"Manual">, C<"FunctionUpdate">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRuntimeManagementConfig in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

