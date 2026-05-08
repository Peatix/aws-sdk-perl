
package Paws::StepFunctions::DescribeExecutionOutput;
  use Moose;
  has Cause => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cause' );
  has Error => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'error' );
  has ExecutionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionArn' , required => 1);
  has Input => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'input' );
  has InputDetails => (is => 'ro', isa => 'Paws::StepFunctions::CloudWatchEventsExecutionDataDetails', traits => ['NameInRequest'], request_name => 'inputDetails' );
  has MapRunArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mapRunArn' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has Output => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'output' );
  has OutputDetails => (is => 'ro', isa => 'Paws::StepFunctions::CloudWatchEventsExecutionDataDetails', traits => ['NameInRequest'], request_name => 'outputDetails' );
  has RedriveCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'redriveCount' );
  has RedriveDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'redriveDate' );
  has RedriveStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'redriveStatus' );
  has RedriveStatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'redriveStatusReason' );
  has StartDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startDate' , required => 1);
  has StateMachineAliasArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineAliasArn' );
  has StateMachineArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineArn' , required => 1);
  has StateMachineVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineVersionArn' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' , required => 1);
  has StopDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stopDate' );
  has TraceHeader => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'traceHeader' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::DescribeExecutionOutput

=head1 ATTRIBUTES


=head2 Cause => Str

The cause string if the state machine execution failed.


=head2 Error => Str

The error string if the state machine execution failed.


=head2 B<REQUIRED> ExecutionArn => Str

The Amazon Resource Name (ARN) that identifies the execution.


=head2 Input => Str

The string that contains the JSON input data of the execution. Length
constraints apply to the payload size, and are expressed as bytes in
UTF-8 encoding.


=head2 InputDetails => L<Paws::StepFunctions::CloudWatchEventsExecutionDataDetails>




=head2 MapRunArn => Str

The Amazon Resource Name (ARN) that identifies a Map Run, which
dispatched this execution.


=head2 Name => Str

The name of the execution.

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


=head2 Output => Str

The JSON output data of the execution. Length constraints apply to the
payload size, and are expressed as bytes in UTF-8 encoding.

This field is set only if the execution succeeds. If the execution
fails, this field is null.


=head2 OutputDetails => L<Paws::StepFunctions::CloudWatchEventsExecutionDataDetails>




=head2 RedriveCount => Int

The number of times you've redriven an execution. If you have not yet
redriven an execution, the C<redriveCount> is 0. This count is only
updated if you successfully redrive an execution.


=head2 RedriveDate => Str

The date the execution was last redriven. If you have not yet redriven
an execution, the C<redriveDate> is null.

The C<redriveDate> is unavailable if you redrive a Map Run that starts
child workflow executions of type C<EXPRESS>.


=head2 RedriveStatus => Str

Indicates whether or not an execution can be redriven at a given point
in time.

=over

=item *

For executions of type C<STANDARD>, C<redriveStatus> is
C<NOT_REDRIVABLE> if calling the RedriveExecution API action would
return the C<ExecutionNotRedrivable> error.

=item *

For a Distributed Map that includes child workflows of type
C<STANDARD>, C<redriveStatus> indicates whether or not the Map Run can
redrive child workflow executions.

=item *

For a Distributed Map that includes child workflows of type C<EXPRESS>,
C<redriveStatus> indicates whether or not the Map Run can redrive child
workflow executions.

You can redrive failed or timed out C<EXPRESS> workflows I<only if>
they're a part of a Map Run. When you redrive
(https://docs.aws.amazon.com/step-functions/latest/dg/redrive-map-run.html)
the Map Run, these workflows are restarted using the StartExecution API
action.

=back


Valid values are: C<"REDRIVABLE">, C<"NOT_REDRIVABLE">, C<"REDRIVABLE_BY_MAP_RUN">
=head2 RedriveStatusReason => Str

When C<redriveStatus> is C<NOT_REDRIVABLE>, C<redriveStatusReason>
specifies the reason why an execution cannot be redriven.

=over

=item *

For executions of type C<STANDARD>, or for a Distributed Map that
includes child workflows of type C<STANDARD>, C<redriveStatusReason>
can include one of the following reasons:

=over

=item *

C<State machine is in DELETING status>.

=item *

C<Execution is RUNNING and cannot be redriven>.

=item *

C<Execution is SUCCEEDED and cannot be redriven>.

=item *

C<Execution was started before the launch of RedriveExecution>.

=item *

C<Execution history event limit exceeded>.

=item *

C<Execution has exceeded the max execution time>.

=item *

C<Execution redrivable period exceeded>.

=back

=item *

For a Distributed Map that includes child workflows of type C<EXPRESS>,
C<redriveStatusReason> is only returned if the child workflows are not
redrivable. This happens when the child workflow executions have
completed successfully.

=back



=head2 B<REQUIRED> StartDate => Str

The date the execution is started.


=head2 StateMachineAliasArn => Str

The Amazon Resource Name (ARN) of the state machine alias associated
with the execution. The alias ARN is a combination of state machine ARN
and the alias name separated by a colon (:). For example,
C<stateMachineARN:PROD>.

If you start an execution from a C<StartExecution> request with a state
machine version ARN, this field will be null.


=head2 B<REQUIRED> StateMachineArn => Str

The Amazon Resource Name (ARN) of the executed stated machine.


=head2 StateMachineVersionArn => Str

The Amazon Resource Name (ARN) of the state machine version associated
with the execution. The version ARN is a combination of state machine
ARN and the version number separated by a colon (:). For example,
C<stateMachineARN:1>.

If you start an execution from a C<StartExecution> request without
specifying a state machine version or alias ARN, Step Functions returns
a null value.


=head2 B<REQUIRED> Status => Str

The current status of the execution.

Valid values are: C<"RUNNING">, C<"SUCCEEDED">, C<"FAILED">, C<"TIMED_OUT">, C<"ABORTED">, C<"PENDING_REDRIVE">
=head2 StopDate => Str

If the execution ended, the date the execution stopped.


=head2 TraceHeader => Str

The X-Ray trace header that was passed to the execution.


=head2 _request_id => Str


=cut

1;