
package Paws::GameLift::StartGameSessionPlacement;
  use Moose;
  has DesiredPlayerSessions => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::DesiredPlayerSession]');
  has GameProperties => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameProperty]');
  has GameSessionData => (is => 'ro', isa => 'Str');
  has GameSessionName => (is => 'ro', isa => 'Str');
  has GameSessionQueueName => (is => 'ro', isa => 'Str', required => 1);
  has MaximumPlayerSessionCount => (is => 'ro', isa => 'Int', required => 1);
  has PlacementId => (is => 'ro', isa => 'Str', required => 1);
  has PlayerLatencies => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::PlayerLatency]');
  has PriorityConfigurationOverride => (is => 'ro', isa => 'Paws::GameLift::PriorityConfigurationOverride');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartGameSessionPlacement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::StartGameSessionPlacementOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::StartGameSessionPlacement - Arguments for method StartGameSessionPlacement on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartGameSessionPlacement on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method StartGameSessionPlacement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartGameSessionPlacement.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $StartGameSessionPlacementOutput = $gamelift->StartGameSessionPlacement(
      GameSessionQueueName      => 'MyGameSessionQueueNameOrArn',
      MaximumPlayerSessionCount => 1,
      PlacementId               => 'MyIdStringModel',
      DesiredPlayerSessions     => [
        {
          PlayerData => 'MyPlayerData',    # min: 1, max: 2048; OPTIONAL
          PlayerId   => 'MyPlayerId',      # min: 1, max: 1024; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      GameProperties => [
        {
          Key   => 'MyGamePropertyKey',      # max: 32
          Value => 'MyGamePropertyValue',    # max: 96

        },
        ...
      ],    # OPTIONAL
      GameSessionData => 'MyLargeGameSessionData',    # OPTIONAL
      GameSessionName => 'MyNonZeroAndMaxString',     # OPTIONAL
      PlayerLatencies => [
        {
          LatencyInMilliseconds => 1.0,            # OPTIONAL
          PlayerId              => 'MyPlayerId',   # min: 1, max: 1024; OPTIONAL
          RegionIdentifier      => 'MyNonZeroAndMaxString',  # min: 1, max: 1024
        },
        ...
      ],    # OPTIONAL
      PriorityConfigurationOverride => {
        LocationOrder => [
          'MyLocationStringModel', ...    # min: 1, max: 64
        ],    # min: 1, max: 10
        PlacementFallbackStrategy => 'DEFAULT_AFTER_SINGLE_PASS'
        ,     # values: DEFAULT_AFTER_SINGLE_PASS, NONE; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $GameSessionPlacement =
      $StartGameSessionPlacementOutput->GameSessionPlacement;

    # Returns a L<Paws::GameLift::StartGameSessionPlacementOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/StartGameSessionPlacement>

=head1 ATTRIBUTES


=head2 DesiredPlayerSessions => ArrayRef[L<Paws::GameLift::DesiredPlayerSession>]

Set of information on each player to create a player session for.



=head2 GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]

A set of key-value pairs that can store custom data in a game session.
For example: C<{"Key": "difficulty", "Value": "novice"}>.



=head2 GameSessionData => Str

A set of custom game session properties, formatted as a single string
value. This data is passed to a game server process with a request to
start a new game session. For more information, see Start a game
session
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession).



=head2 GameSessionName => Str

A descriptive label that is associated with a game session. Session
names do not need to be unique.



=head2 B<REQUIRED> GameSessionQueueName => Str

Name of the queue to use to place the new game session. You can use
either the queue name or ARN value.



=head2 B<REQUIRED> MaximumPlayerSessionCount => Int

The maximum number of players that can be connected simultaneously to
the game session.



=head2 B<REQUIRED> PlacementId => Str

A unique identifier to assign to the new game session placement. This
value is developer-defined. The value must be unique across all Regions
and cannot be reused.



=head2 PlayerLatencies => ArrayRef[L<Paws::GameLift::PlayerLatency>]

A set of values, expressed in milliseconds, that indicates the amount
of latency that a player experiences when connected to Amazon Web
Services Regions. This information is used to try to place the new game
session where it can offer the best possible gameplay experience for
the players.



=head2 PriorityConfigurationOverride => L<Paws::GameLift::PriorityConfigurationOverride>

A prioritized list of locations to use for the game session placement
and instructions on how to use it. This list overrides a queue's
prioritized location list for this game session placement request only.
You can include Amazon Web Services Regions, local zones, and custom
locations (for Anywhere fleets). You can choose to limit placements to
locations on the override list only, or you can prioritize locations on
the override list first and then fall back to the queue's other
locations if needed. Choose a fallback strategy to use in the event
that Amazon GameLift fails to place a game session in any of the
locations on the priority override list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartGameSessionPlacement in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

