
package Paws::StepFunctions::TestState;
  use Moose;
  has Definition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'definition' , required => 1);
  has Input => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'input' );
  has InspectionLevel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inspectionLevel' );
  has RevealSecrets => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'revealSecrets' );
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn' );
  has Variables => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'variables' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestState');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::TestStateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::TestState - Arguments for method TestState on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestState on the
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method TestState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestState.

=head1 SYNOPSIS

    my $states = Paws->service('StepFunctions');
    my $TestStateOutput = $states->TestState(
      Definition      => 'MyDefinition',
      Input           => 'MySensitiveData',    # OPTIONAL
      InspectionLevel => 'INFO',               # OPTIONAL
      RevealSecrets   => 1,                    # OPTIONAL
      RoleArn         => 'MyArn',              # OPTIONAL
      Variables       => 'MySensitiveData',    # OPTIONAL
    );

    # Results:
    my $Cause          = $TestStateOutput->Cause;
    my $Error          = $TestStateOutput->Error;
    my $InspectionData = $TestStateOutput->InspectionData;
    my $NextState      = $TestStateOutput->NextState;
    my $Output         = $TestStateOutput->Output;
    my $Status         = $TestStateOutput->Status;

    # Returns a L<Paws::StepFunctions::TestStateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Definition => Str

The Amazon States Language
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html)
(ASL) definition of the state.



=head2 Input => Str

A string that contains the JSON input data for the state.



=head2 InspectionLevel => Str

Determines the values to return when a state is tested. You can specify
one of the following types:

=over

=item *

C<INFO>: Shows the final state output. By default, Step Functions sets
C<inspectionLevel> to C<INFO> if you don't specify a level.

=item *

C<DEBUG>: Shows the final state output along with the input and output
data processing result.

=item *

C<TRACE>: Shows the HTTP request and response for an HTTP Task. This
level also shows the final state output along with the input and output
data processing result.

=back

Each of these levels also provide information about the status of the
state execution and the next state to transition to.

Valid values are: C<"INFO">, C<"DEBUG">, C<"TRACE">

=head2 RevealSecrets => Bool

Specifies whether or not to include secret information in the test
result. For HTTP Tasks, a secret includes the data that an EventBridge
connection adds to modify the HTTP request headers, query parameters,
and body. Step Functions doesn't omit any information included in the
state definition or the HTTP response.

If you set C<revealSecrets> to C<true>, you must make sure that the IAM
user that calls the C<TestState> API has permission for the
C<states:RevealSecrets> action. For an example of IAM policy that sets
the C<states:RevealSecrets> permission, see IAM permissions to test a
state
(https://docs.aws.amazon.com/step-functions/latest/dg/test-state-isolation.html#test-state-permissions).
Without this permission, Step Functions throws an access denied error.

By default, C<revealSecrets> is set to C<false>.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the execution role with the required
IAM permissions for the state.



=head2 Variables => Str

JSON object literal that sets variables used in the state under test.
Object keys are the variable names and values are the variable values.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestState in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

