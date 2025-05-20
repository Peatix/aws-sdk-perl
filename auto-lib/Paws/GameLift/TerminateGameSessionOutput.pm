
package Paws::GameLift::TerminateGameSessionOutput;
  use Moose;
  has GameSession => (is => 'ro', isa => 'Paws::GameLift::GameSession');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::TerminateGameSessionOutput

=head1 ATTRIBUTES


=head2 GameSession => L<Paws::GameLift::GameSession>




=head2 _request_id => Str


=cut

1;