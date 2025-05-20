
package Paws::Pipes::DeletePipeResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has CurrentState => (is => 'ro', isa => 'Str');
  has DesiredState => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pipes::DeletePipeResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the pipe.


=head2 CreationTime => Str

The time the pipe was created.


=head2 CurrentState => Str

The state the pipe is in.

Valid values are: C<"RUNNING">, C<"STOPPED">, C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"STARTING">, C<"STOPPING">, C<"CREATE_FAILED">, C<"UPDATE_FAILED">, C<"START_FAILED">, C<"STOP_FAILED">, C<"DELETE_FAILED">, C<"CREATE_ROLLBACK_FAILED">, C<"DELETE_ROLLBACK_FAILED">, C<"UPDATE_ROLLBACK_FAILED">
=head2 DesiredState => Str

The state the pipe should be in.

Valid values are: C<"RUNNING">, C<"STOPPED">, C<"DELETED">
=head2 LastModifiedTime => Str

When the pipe was last updated, in ISO-8601 format
(https://www.w3.org/TR/NOTE-datetime) (YYYY-MM-DDThh:mm:ss.sTZD).


=head2 Name => Str

The name of the pipe.


=head2 _request_id => Str


=cut

