
package Paws::GameLift::UpdateGameServer;
  use Moose;
  has GameServerData => (is => 'ro', isa => 'Str');
  has GameServerGroupName => (is => 'ro', isa => 'Str', required => 1);
  has GameServerId => (is => 'ro', isa => 'Str', required => 1);
  has HealthCheck => (is => 'ro', isa => 'Str');
  has UtilizationStatus => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGameServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::UpdateGameServerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateGameServer - Arguments for method UpdateGameServer on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGameServer on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method UpdateGameServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGameServer.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $UpdateGameServerOutput = $gamelift->UpdateGameServer(
      GameServerGroupName => 'MyGameServerGroupNameOrArn',
      GameServerId        => 'MyGameServerId',
      GameServerData      => 'MyGameServerData',             # OPTIONAL
      HealthCheck         => 'HEALTHY',                      # OPTIONAL
      UtilizationStatus   => 'AVAILABLE',                    # OPTIONAL
    );

    # Results:
    my $GameServer = $UpdateGameServerOutput->GameServer;

    # Returns a L<Paws::GameLift::UpdateGameServerOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/UpdateGameServer>

=head1 ATTRIBUTES


=head2 GameServerData => Str

A set of custom game server properties, formatted as a single string
value. This data is passed to a game client or service when it requests
information on game servers.



=head2 B<REQUIRED> GameServerGroupName => Str

A unique identifier for the game server group where the game server is
running.



=head2 B<REQUIRED> GameServerId => Str

A custom string that uniquely identifies the game server to update.



=head2 HealthCheck => Str

Indicates health status of the game server. A request that includes
this parameter updates the game server's I<LastHealthCheckTime>
timestamp.

Valid values are: C<"HEALTHY">

=head2 UtilizationStatus => Str

Indicates if the game server is available or is currently hosting
gameplay. You can update a game server status from C<AVAILABLE> to
C<UTILIZED>, but you can't change a the status from C<UTILIZED> to
C<AVAILABLE>.

Valid values are: C<"AVAILABLE">, C<"UTILIZED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGameServer in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

