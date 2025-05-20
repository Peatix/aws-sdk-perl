
package Paws::SSM::GetCommandInvocationResult;
  use Moose;
  has CloudWatchOutputConfig => (is => 'ro', isa => 'Paws::SSM::CloudWatchOutputConfig');
  has CommandId => (is => 'ro', isa => 'Str');
  has Comment => (is => 'ro', isa => 'Str');
  has DocumentName => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has ExecutionElapsedTime => (is => 'ro', isa => 'Str');
  has ExecutionEndDateTime => (is => 'ro', isa => 'Str');
  has ExecutionStartDateTime => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has PluginName => (is => 'ro', isa => 'Str');
  has ResponseCode => (is => 'ro', isa => 'Int');
  has StandardErrorContent => (is => 'ro', isa => 'Str');
  has StandardErrorUrl => (is => 'ro', isa => 'Str');
  has StandardOutputContent => (is => 'ro', isa => 'Str');
  has StandardOutputUrl => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusDetails => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetCommandInvocationResult

=head1 ATTRIBUTES


=head2 CloudWatchOutputConfig => L<Paws::SSM::CloudWatchOutputConfig>

Amazon CloudWatch Logs information where Systems Manager sent the
command output.


=head2 CommandId => Str

The parent command ID of the invocation plugin.


=head2 Comment => Str

The comment text for the command.


=head2 DocumentName => Str

The name of the document that was run. For example,
C<AWS-RunShellScript>.


=head2 DocumentVersion => Str

The Systems Manager document (SSM document) version used in the
request.


=head2 ExecutionElapsedTime => Str

Duration since C<ExecutionStartDateTime>.


=head2 ExecutionEndDateTime => Str

The date and time the plugin finished running. Date and time are
written in ISO 8601 format. For example, June 7, 2017 is represented as
2017-06-7. The following sample Amazon Web Services CLI command uses
the C<InvokedAfter> filter.

C<aws ssm list-commands --filters
key=InvokedAfter,value=2017-06-07T00:00:00Z>

If the plugin hasn't started to run, the string is empty.


=head2 ExecutionStartDateTime => Str

The date and time the plugin started running. Date and time are written
in ISO 8601 format. For example, June 7, 2017 is represented as
2017-06-7. The following sample Amazon Web Services CLI command uses
the C<InvokedBefore> filter.

C<aws ssm list-commands --filters
key=InvokedBefore,value=2017-06-07T00:00:00Z>

If the plugin hasn't started to run, the string is empty.


=head2 InstanceId => Str

The ID of the managed node targeted by the command. A I<managed node>
can be an Amazon Elastic Compute Cloud (Amazon EC2) instance, edge
device, or on-premises server or VM in your hybrid environment that is
configured for Amazon Web Services Systems Manager.


=head2 PluginName => Str

The name of the plugin, or I<step name>, for which details are
reported. For example, C<aws:RunShellScript> is a plugin.


=head2 ResponseCode => Int

The error level response code for the plugin script. If the response
code is C<-1>, then the command hasn't started running on the managed
node, or it wasn't received by the node.


=head2 StandardErrorContent => Str

The first 8,000 characters written by the plugin to C<stderr>. If the
command hasn't finished running, then this string is empty.


=head2 StandardErrorUrl => Str

The URL for the complete text written by the plugin to C<stderr>. If
the command hasn't finished running, then this string is empty.


=head2 StandardOutputContent => Str

The first 24,000 characters written by the plugin to C<stdout>. If the
command hasn't finished running, if C<ExecutionStatus> is neither
Succeeded nor Failed, then this string is empty.


=head2 StandardOutputUrl => Str

The URL for the complete text written by the plugin to C<stdout> in
Amazon Simple Storage Service (Amazon S3). If an S3 bucket wasn't
specified, then this string is empty.


=head2 Status => Str

The status of this invocation plugin. This status can be different than
C<StatusDetails>.

Valid values are: C<"Pending">, C<"InProgress">, C<"Delayed">, C<"Success">, C<"Cancelled">, C<"TimedOut">, C<"Failed">, C<"Cancelling">
=head2 StatusDetails => Str

A detailed status of the command execution for an invocation.
C<StatusDetails> includes more information than C<Status> because it
includes states resulting from error and concurrency control
parameters. C<StatusDetails> can show different results than C<Status>.
For more information about these statuses, see Understanding command
statuses
(https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html)
in the I<Amazon Web Services Systems Manager User Guide>.
C<StatusDetails> can be one of the following values:

=over

=item *

Pending: The command hasn't been sent to the managed node.

=item *

In Progress: The command has been sent to the managed node but hasn't
reached a terminal state.

=item *

Delayed: The system attempted to send the command to the target, but
the target wasn't available. The managed node might not be available
because of network issues, because the node was stopped, or for similar
reasons. The system will try to send the command again.

=item *

Success: The command or plugin ran successfully. This is a terminal
state.

=item *

Delivery Timed Out: The command wasn't delivered to the managed node
before the delivery timeout expired. Delivery timeouts don't count
against the parent command's C<MaxErrors> limit, but they do contribute
to whether the parent command status is Success or Incomplete. This is
a terminal state.

=item *

Execution Timed Out: The command started to run on the managed node,
but the execution wasn't complete before the timeout expired. Execution
timeouts count against the C<MaxErrors> limit of the parent command.
This is a terminal state.

=item *

Failed: The command wasn't run successfully on the managed node. For a
plugin, this indicates that the result code wasn't zero. For a command
invocation, this indicates that the result code for one or more plugins
wasn't zero. Invocation failures count against the C<MaxErrors> limit
of the parent command. This is a terminal state.

=item *

Cancelled: The command was terminated before it was completed. This is
a terminal state.

=item *

Undeliverable: The command can't be delivered to the managed node. The
node might not exist or might not be responding. Undeliverable
invocations don't count against the parent command's C<MaxErrors> limit
and don't contribute to whether the parent command status is Success or
Incomplete. This is a terminal state.

=item *

Terminated: The parent command exceeded its C<MaxErrors> limit and
subsequent command invocations were canceled by the system. This is a
terminal state.

=back



=head2 _request_id => Str


=cut

1;