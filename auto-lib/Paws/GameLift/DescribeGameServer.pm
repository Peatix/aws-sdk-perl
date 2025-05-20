
package Paws::GameLift::DescribeGameServer;
  use Moose;
  has GameServerGroupName => (is => 'ro', isa => 'Str', required => 1);
  has GameServerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGameServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeGameServerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeGameServer - Arguments for method DescribeGameServer on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeGameServer on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DescribeGameServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeGameServer.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DescribeGameServerOutput = $gamelift->DescribeGameServer(
      GameServerGroupName => 'MyGameServerGroupNameOrArn',
      GameServerId        => 'MyGameServerId',

    );

    # Results:
    my $GameServer = $DescribeGameServerOutput->GameServer;

    # Returns a L<Paws::GameLift::DescribeGameServerOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DescribeGameServer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GameServerGroupName => Str

A unique identifier for the game server group where the game server is
running.



=head2 B<REQUIRED> GameServerId => Str

A custom string that uniquely identifies the game server information to
be retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeGameServer in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

