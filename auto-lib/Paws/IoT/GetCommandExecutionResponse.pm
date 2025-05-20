
package Paws::IoT::GetCommandExecutionResponse;
  use Moose;
  has CommandArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commandArn');
  has CompletedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'completedAt');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has ExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionId');
  has ExecutionTimeoutSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'executionTimeoutSeconds');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has Parameters => (is => 'ro', isa => 'Paws::IoT::CommandExecutionParameterMap', traits => ['NameInRequest'], request_name => 'parameters');
  has Result => (is => 'ro', isa => 'Paws::IoT::CommandExecutionResultMap', traits => ['NameInRequest'], request_name => 'result');
  has StartedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startedAt');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusReason => (is => 'ro', isa => 'Paws::IoT::StatusReason', traits => ['NameInRequest'], request_name => 'statusReason');
  has TargetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetArn');
  has TimeToLive => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'timeToLive');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetCommandExecutionResponse

=head1 ATTRIBUTES


=head2 CommandArn => Str

The Amazon Resource Number (ARN) of the command. For example,
C<arn:aws:iot:E<lt>regionE<gt>:E<lt>accountidE<gt>:command/E<lt>commandIdE<gt>>


=head2 CompletedAt => Str

The timestamp, when the command execution was completed.


=head2 CreatedAt => Str

The timestamp, when the command execution was created.


=head2 ExecutionId => Str

The unique identifier of the command execution.


=head2 ExecutionTimeoutSeconds => Int

Specifies the amount of time in seconds that the device can take to
finish a command execution. A timer starts when the command execution
is created. If the command execution status is not set to another
terminal state before the timer expires, it will automatically update
to C<TIMED_OUT>.


=head2 LastUpdatedAt => Str

The timestamp, when the command execution was last updated.


=head2 Parameters => L<Paws::IoT::CommandExecutionParameterMap>

The list of parameters that the C<StartCommandExecution> API used when
performing the command on the device.


=head2 Result => L<Paws::IoT::CommandExecutionResultMap>

The result value for the current state of the command execution. The
status provides information about the progress of the command
execution. The device can use the result field to share additional
details about the execution such as a return value of a remote function
call.

If you use the C<AWS-IoT-FleetWise> namespace, then this field is not
applicable in the API response.


=head2 StartedAt => Str

The timestamp, when the command execution was started.


=head2 Status => Str

The status of the command execution. After your devices receive the
command and start performing the operations specified in the command,
it can use the C<UpdateCommandExecution> MQTT API to update the status
information.

Valid values are: C<"CREATED">, C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">, C<"REJECTED">, C<"TIMED_OUT">
=head2 StatusReason => L<Paws::IoT::StatusReason>

Your devices can use this parameter to provide additional context about
the status of a command execution using a reason code and description.


=head2 TargetArn => Str

The Amazon Resource Number (ARN) of the device on which the command
execution is being performed.


=head2 TimeToLive => Str

The time to live (TTL) parameter that indicates the duration for which
executions will be retained in your account. The default value is six
months.


=head2 _request_id => Str


=cut

