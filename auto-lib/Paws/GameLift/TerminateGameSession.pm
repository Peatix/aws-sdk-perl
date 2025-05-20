
package Paws::GameLift::TerminateGameSession;
  use Moose;
  has GameSessionId => (is => 'ro', isa => 'Str', required => 1);
  has TerminationMode => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateGameSession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::TerminateGameSessionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::TerminateGameSession - Arguments for method TerminateGameSession on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TerminateGameSession on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method TerminateGameSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TerminateGameSession.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $TerminateGameSessionOutput = $gamelift->TerminateGameSession(
      GameSessionId   => 'MyArnStringModel',
      TerminationMode => 'TRIGGER_ON_PROCESS_TERMINATE',

    );

    # Results:
    my $GameSession = $TerminateGameSessionOutput->GameSession;

    # Returns a L<Paws::GameLift::TerminateGameSessionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/TerminateGameSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GameSessionId => Str

A unique identifier for the game session to be terminated. A game
session ARN has the following format:
C<arn:aws:gamelift:E<lt>locationE<gt>::gamesession/E<lt>fleet
IDE<gt>/E<lt>custom ID string or idempotency tokenE<gt>>.



=head2 B<REQUIRED> TerminationMode => Str

The method to use to terminate the game session. Available methods
include:

=over

=item *

C<TRIGGER_ON_PROCESS_TERMINATE> E<ndash> Prompts the Amazon GameLift
service to send an C<OnProcessTerminate()> callback to the server
process and initiate the normal game session shutdown sequence. The
C<OnProcessTerminate> method, which is implemented in the game server
code, must include a call to the server SDK action C<ProcessEnding()>,
which is how the server process signals to Amazon GameLift that a game
session is ending. If the server process doesn't call
C<ProcessEnding()>, the game session termination won't conclude
successfully.

=item *

C<FORCE_TERMINATE> E<ndash> Prompts the Amazon GameLift service to stop
the server process immediately. Amazon GameLift takes action (depending
on the type of fleet) to shut down the server process without the
normal game session shutdown sequence.

This method is not available for game sessions that are running on
Anywhere fleets unless the fleet is deployed with the Amazon GameLift
Agent. In this scenario, a force terminate request results in an
invalid or bad request exception.

=back


Valid values are: C<"TRIGGER_ON_PROCESS_TERMINATE">, C<"FORCE_TERMINATE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TerminateGameSession in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

