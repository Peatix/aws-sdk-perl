
package Paws::Athena::GetSessionStatusResponse;
  use Moose;
  has SessionId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Paws::Athena::SessionStatus');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetSessionStatusResponse

=head1 ATTRIBUTES


=head2 SessionId => Str

The session ID.


=head2 Status => L<Paws::Athena::SessionStatus>

Contains information about the status of the session.


=head2 _request_id => Str


=cut

1;