
package Paws::Athena::StartSessionResponse;
  use Moose;
  has SessionId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::StartSessionResponse

=head1 ATTRIBUTES


=head2 SessionId => Str

The session ID.


=head2 State => Str

The state of the session. A description of each state follows.

C<CREATING> - The session is being started, including acquiring
resources.

C<CREATED> - The session has been started.

C<IDLE> - The session is able to accept a calculation.

C<BUSY> - The session is processing another task and is unable to
accept a calculation.

C<TERMINATING> - The session is in the process of shutting down.

C<TERMINATED> - The session and its resources are no longer running.

C<DEGRADED> - The session has no healthy coordinators.

C<FAILED> - Due to a failure, the session and its resources are no
longer running.

Valid values are: C<"CREATING">, C<"CREATED">, C<"IDLE">, C<"BUSY">, C<"TERMINATING">, C<"TERMINATED">, C<"DEGRADED">, C<"FAILED">
=head2 _request_id => Str


=cut

1;