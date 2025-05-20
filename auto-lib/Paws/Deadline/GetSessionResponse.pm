
package Paws::Deadline::GetSessionResponse;
  use Moose;
  has EndedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endedAt');
  has FleetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fleetId', required => 1);
  has HostProperties => (is => 'ro', isa => 'Paws::Deadline::HostPropertiesResponse', traits => ['NameInRequest'], request_name => 'hostProperties');
  has LifecycleStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecycleStatus', required => 1);
  has Log => (is => 'ro', isa => 'Paws::Deadline::LogConfiguration', traits => ['NameInRequest'], request_name => 'log', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId', required => 1);
  has StartedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startedAt', required => 1);
  has TargetLifecycleStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetLifecycleStatus');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');
  has WorkerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workerId', required => 1);
  has WorkerLog => (is => 'ro', isa => 'Paws::Deadline::LogConfiguration', traits => ['NameInRequest'], request_name => 'workerLog');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetSessionResponse

=head1 ATTRIBUTES


=head2 EndedAt => Str

The date and time the resource ended running.


=head2 B<REQUIRED> FleetId => Str

The fleet ID for the session.


=head2 HostProperties => L<Paws::Deadline::HostPropertiesResponse>

Provides the Amazon EC2 properties of the host.


=head2 B<REQUIRED> LifecycleStatus => Str

The life cycle status of the session.

Valid values are: C<"STARTED">, C<"UPDATE_IN_PROGRESS">, C<"UPDATE_SUCCEEDED">, C<"UPDATE_FAILED">, C<"ENDED">
=head2 B<REQUIRED> Log => L<Paws::Deadline::LogConfiguration>

The session log.


=head2 B<REQUIRED> SessionId => Str

The session ID.


=head2 B<REQUIRED> StartedAt => Str

The date and time the resource started running.


=head2 TargetLifecycleStatus => Str

The life cycle status with which the session started.

Valid values are: C<"ENDED">
=head2 UpdatedAt => Str

The date and time the resource was updated.


=head2 UpdatedBy => Str

The user or system that updated this resource.


=head2 B<REQUIRED> WorkerId => Str

The worker ID for the session.


=head2 WorkerLog => L<Paws::Deadline::LogConfiguration>

The worker log for the session.


=head2 _request_id => Str


=cut

