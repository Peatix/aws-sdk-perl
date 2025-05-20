
package Paws::GameLift::CreateGameSession;
  use Moose;
  has AliasId => (is => 'ro', isa => 'Str');
  has CreatorId => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str');
  has GameProperties => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameProperty]');
  has GameSessionData => (is => 'ro', isa => 'Str');
  has GameSessionId => (is => 'ro', isa => 'Str');
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Str');
  has MaximumPlayerSessionCount => (is => 'ro', isa => 'Int', required => 1);
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGameSession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreateGameSessionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateGameSession - Arguments for method CreateGameSession on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGameSession on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method CreateGameSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGameSession.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $CreateGameSessionOutput = $gamelift->CreateGameSession(
      MaximumPlayerSessionCount => 1,
      AliasId                   => 'MyAliasIdOrArn',           # OPTIONAL
      CreatorId                 => 'MyNonZeroAndMaxString',    # OPTIONAL
      FleetId                   => 'MyFleetIdOrArn',           # OPTIONAL
      GameProperties            => [
        {
          Key   => 'MyGamePropertyKey',      # max: 32
          Value => 'MyGamePropertyValue',    # max: 96

        },
        ...
      ],    # OPTIONAL
      GameSessionData  => 'MyLargeGameSessionData',    # OPTIONAL
      GameSessionId    => 'MyIdStringModel',           # OPTIONAL
      IdempotencyToken => 'MyIdStringModel',           # OPTIONAL
      Location         => 'MyLocationStringModel',     # OPTIONAL
      Name             => 'MyNonZeroAndMaxString',     # OPTIONAL
    );

    # Results:
    my $GameSession = $CreateGameSessionOutput->GameSession;

    # Returns a L<Paws::GameLift::CreateGameSessionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/CreateGameSession>

=head1 ATTRIBUTES


=head2 AliasId => Str

A unique identifier for the alias associated with the fleet to create a
game session in. You can use either the alias ID or ARN value. Each
request must reference either a fleet ID or alias ID, but not both.



=head2 CreatorId => Str

A unique identifier for a player or entity creating the game session.

If you add a resource creation limit policy to a fleet, the
C<CreateGameSession> operation requires a C<CreatorId>. Amazon GameLift
limits the number of game session creation requests with the same
C<CreatorId> in a specified time period.

If you your fleet doesn't have a resource creation limit policy and you
provide a C<CreatorId> in your C<CreateGameSession> requests, Amazon
GameLift limits requests to one request per C<CreatorId> per second.

To not limit C<CreateGameSession> requests with the same C<CreatorId>,
don't provide a C<CreatorId> in your C<CreateGameSession> request.



=head2 FleetId => Str

A unique identifier for the fleet to create a game session in. You can
use either the fleet ID or ARN value. Each request must reference
either a fleet ID or alias ID, but not both.



=head2 GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]

A set of key-value pairs that can store custom data in a game session.
For example: C<{"Key": "difficulty", "Value": "novice"}>. For an
example, see Create a game session with custom properties
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#game-properties-create).



=head2 GameSessionData => Str

A set of custom game session properties, formatted as a single string
value. This data is passed to a game server process with a request to
start a new game session. For more information, see Start a game
session
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession).



=head2 GameSessionId => Str

I<This parameter is deprecated. Use C<IdempotencyToken> instead.>

Custom string that uniquely identifies a request for a new game
session. Maximum token length is 48 characters. If provided, this
string is included in the new game session's ID.



=head2 IdempotencyToken => Str

Custom string that uniquely identifies the new game session request.
This is useful for ensuring that game session requests with the same
idempotency token are processed only once. Subsequent requests with the
same string return the original C<GameSession> object, with an updated
status. Maximum token length is 48 characters. If provided, this string
is included in the new game session's ID. A game session ARN has the
following format:
C<arn:aws:gamelift:E<lt>locationE<gt>::gamesession/E<lt>fleet
IDE<gt>/E<lt>custom ID string or idempotency tokenE<gt>>. Idempotency
tokens remain in use for 30 days after a game session has ended; game
session objects are retained for this time period and then deleted.



=head2 Location => Str

A fleet's remote location to place the new game session in. If this
parameter is not set, the new game session is placed in the fleet's
home Region. Specify a remote location with an Amazon Web Services
Region code such as C<us-west-2>. When using an Anywhere fleet, this
parameter is required and must be set to the Anywhere fleet's custom
location.



=head2 B<REQUIRED> MaximumPlayerSessionCount => Int

The maximum number of players that can be connected simultaneously to
the game session.



=head2 Name => Str

A descriptive label that is associated with a game session. Session
names do not need to be unique.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGameSession in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

