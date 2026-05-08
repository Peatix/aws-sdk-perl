
package Paws::StepFunctions::StartExecution;
  use Moose;
  has Input => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'input' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has StateMachineArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineArn' , required => 1);
  has TraceHeader => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'traceHeader' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::StartExecutionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::StartExecution - Arguments for method StartExecution on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartExecution on the
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method StartExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartExecution.

=head1 SYNOPSIS

    my $states = Paws->service('StepFunctions');
    my $StartExecutionOutput = $states->StartExecution(
      StateMachineArn => 'MyArn',
      Input           => 'MySensitiveData',    # OPTIONAL
      Name            => 'MyName',             # OPTIONAL
      TraceHeader     => 'MyTraceHeader',      # OPTIONAL
    );

    # Results:
    my $ExecutionArn = $StartExecutionOutput->ExecutionArn;
    my $StartDate    = $StartExecutionOutput->StartDate;

    # Returns a L<Paws::StepFunctions::StartExecutionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 Input => Str

The string that contains the JSON input data for the execution, for
example:

C<"input": "{\"first_name\" : \"test\"}">

If you don't include any JSON input data, you still must include the
two braces, for example: C<"input": "{}">

Length constraints apply to the payload size, and are expressed as
bytes in UTF-8 encoding.



=head2 Name => Str

Optional name of the execution. This name must be unique for your
Amazon Web Services account, Region, and state machine for 90 days. For
more information, see Limits Related to State Machine Executions
(https://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions)
in the I<Step Functions Developer Guide>.

If you don't provide a name for the execution, Step Functions
automatically generates a universally unique identifier (UUID) as the
execution name.

A name must I<not> contain:

=over

=item *

white space

=item *

brackets C<E<lt> E<gt> { } [ ]>

=item *

wildcard characters C<? *>

=item *

special characters C<" # % \ ^ | ~ ` $ & , ; : />

=item *

control characters (C<U+0000-001F>, C<U+007F-009F>)

=back

To enable logging with CloudWatch Logs, the name should only contain
0-9, A-Z, a-z, - and _.



=head2 B<REQUIRED> StateMachineArn => Str

The Amazon Resource Name (ARN) of the state machine to execute.

The C<stateMachineArn> parameter accepts one of the following inputs:

=over

=item *

B<An unqualified state machine ARN> E<ndash> Refers to a state machine
ARN that isn't qualified with a version or alias ARN. The following is
an example of an unqualified state machine ARN.

C<arn:E<lt>partitionE<gt>:states:E<lt>regionE<gt>:E<lt>account-idE<gt>:stateMachine:E<lt>myStateMachineE<gt>>

Step Functions doesn't associate state machine executions that you
start with an unqualified ARN with a version. This is true even if that
version uses the same revision that the execution used.

=item *

B<A state machine version ARN> E<ndash> Refers to a version ARN, which
is a combination of state machine ARN and the version number separated
by a colon (:). The following is an example of the ARN for version 10.

C<arn:E<lt>partitionE<gt>:states:E<lt>regionE<gt>:E<lt>account-idE<gt>:stateMachine:E<lt>myStateMachineE<gt>:10>

Step Functions doesn't associate executions that you start with a
version ARN with any aliases that point to that version.

=item *

B<A state machine alias ARN> E<ndash> Refers to an alias ARN, which is
a combination of state machine ARN and the alias name separated by a
colon (:). The following is an example of the ARN for an alias named
C<PROD>.

C<arn:E<lt>partitionE<gt>:states:E<lt>regionE<gt>:E<lt>account-idE<gt>:stateMachine:E<lt>myStateMachine:PRODE<gt>>

Step Functions associates executions that you start with an alias ARN
with that alias and the state machine version used for that execution.

=back




=head2 TraceHeader => Str

Passes the X-Ray trace header. The trace header can also be passed in
the request payload.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartExecution in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

