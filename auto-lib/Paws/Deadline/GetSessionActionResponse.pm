
package Paws::Deadline::GetSessionActionResponse;
  use Moose;
  has AcquiredLimits => (is => 'ro', isa => 'ArrayRef[Paws::Deadline::AcquiredLimit]', traits => ['NameInRequest'], request_name => 'acquiredLimits');
  has Definition => (is => 'ro', isa => 'Paws::Deadline::SessionActionDefinition', traits => ['NameInRequest'], request_name => 'definition', required => 1);
  has EndedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endedAt');
  has ProcessExitCode => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'processExitCode');
  has ProgressMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'progressMessage');
  has ProgressPercent => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'progressPercent');
  has SessionActionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionActionId', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId', required => 1);
  has StartedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startedAt');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has WorkerUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workerUpdatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetSessionActionResponse

=head1 ATTRIBUTES


=head2 AcquiredLimits => ArrayRef[L<Paws::Deadline::AcquiredLimit>]

The limits and their amounts acquired during a session action. If no
limits were acquired during the session, this field isn't returned.


=head2 B<REQUIRED> Definition => L<Paws::Deadline::SessionActionDefinition>

The session action definition.


=head2 EndedAt => Str

The date and time the resource ended running.


=head2 ProcessExitCode => Int

The process exit code. The default Deadline Cloud worker agent converts
unsigned 32-bit exit codes to signed 32-bit exit codes.


=head2 ProgressMessage => Str

The message that communicates the progress of the session action.


=head2 ProgressPercent => Num

The percentage completed for a session action.


=head2 B<REQUIRED> SessionActionId => Str

The session action ID.


=head2 B<REQUIRED> SessionId => Str

The session ID for the session action.


=head2 StartedAt => Str

The date and time the resource started running.


=head2 B<REQUIRED> Status => Str

The status of the session action.

Valid values are: C<"ASSIGNED">, C<"RUNNING">, C<"CANCELING">, C<"SUCCEEDED">, C<"FAILED">, C<"INTERRUPTED">, C<"CANCELED">, C<"NEVER_ATTEMPTED">, C<"SCHEDULED">, C<"RECLAIMING">, C<"RECLAIMED">
=head2 WorkerUpdatedAt => Str

The Linux timestamp of the date and time the session action was last
updated.


=head2 _request_id => Str


=cut

