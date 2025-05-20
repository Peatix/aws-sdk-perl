
package Paws::GameLift::UpdateContainerFleet;
  use Moose;
  has DeploymentConfiguration => (is => 'ro', isa => 'Paws::GameLift::DeploymentConfiguration');
  has Description => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has GameServerContainerGroupDefinitionName => (is => 'ro', isa => 'Str');
  has GameServerContainerGroupsPerInstance => (is => 'ro', isa => 'Int');
  has GameSessionCreationLimitPolicy => (is => 'ro', isa => 'Paws::GameLift::GameSessionCreationLimitPolicy');
  has InstanceConnectionPortRange => (is => 'ro', isa => 'Paws::GameLift::ConnectionPortRange');
  has InstanceInboundPermissionAuthorizations => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::IpPermission]');
  has InstanceInboundPermissionRevocations => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::IpPermission]');
  has LogConfiguration => (is => 'ro', isa => 'Paws::GameLift::LogConfiguration');
  has MetricGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NewGameSessionProtectionPolicy => (is => 'ro', isa => 'Str');
  has PerInstanceContainerGroupDefinitionName => (is => 'ro', isa => 'Str');
  has RemoveAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateContainerFleet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::UpdateContainerFleetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateContainerFleet - Arguments for method UpdateContainerFleet on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateContainerFleet on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method UpdateContainerFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateContainerFleet.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $UpdateContainerFleetOutput = $gamelift->UpdateContainerFleet(
      FleetId                 => 'MyFleetIdOrArn',
      DeploymentConfiguration => {
        ImpairmentStrategy => 'MAINTAIN', # values: MAINTAIN, ROLLBACK; OPTIONAL
        MinimumHealthyPercentage => 1,    # min: 30, max: 75; OPTIONAL
        ProtectionStrategy       => 'WITH_PROTECTION'
        ,    # values: WITH_PROTECTION, IGNORE_PROTECTION; OPTIONAL
      },    # OPTIONAL
      Description => 'MyNonZeroAndMaxString',     # OPTIONAL
      GameServerContainerGroupDefinitionName =>
        'MyContainerGroupDefinitionNameOrArn',    # OPTIONAL
      GameServerContainerGroupsPerInstance => 1,  # OPTIONAL
      GameSessionCreationLimitPolicy       => {
        NewGameSessionsPerCreator => 1,           # OPTIONAL
        PolicyPeriodInMinutes     => 1,           # OPTIONAL
      },    # OPTIONAL
      InstanceConnectionPortRange => {
        FromPort => 1,    # min: 1, max: 60000
        ToPort   => 1,    # min: 1, max: 60000

      },    # OPTIONAL
      InstanceInboundPermissionAuthorizations => [
        {
          FromPort => 1,             # min: 1, max: 60000
          IpRange  => 'MyIpRange',
          Protocol => 'TCP',         # values: TCP, UDP
          ToPort   => 1,             # min: 1, max: 60000

        },
        ...
      ],    # OPTIONAL
      InstanceInboundPermissionRevocations => [
        {
          FromPort => 1,             # min: 1, max: 60000
          IpRange  => 'MyIpRange',
          Protocol => 'TCP',         # values: TCP, UDP
          ToPort   => 1,             # min: 1, max: 60000

        },
        ...
      ],    # OPTIONAL
      LogConfiguration => {
        LogDestination => 'NONE',    # values: NONE, CLOUDWATCH, S3; OPTIONAL
        LogGroupArn  => 'MyLogGroupArnStringModel', # min: 1, max: 512; OPTIONAL
        S3BucketName => 'MyNonEmptyString',         # min: 1; OPTIONAL
      },    # OPTIONAL
      MetricGroups => [
        'MyMetricGroup', ...    # min: 1, max: 255
      ],    # OPTIONAL
      NewGameSessionProtectionPolicy          => 'NoProtection',    # OPTIONAL
      PerInstanceContainerGroupDefinitionName =>
        'MyContainerGroupDefinitionNameOrArn',                      # OPTIONAL
      RemoveAttributes => [
        'PER_INSTANCE_CONTAINER_GROUP_DEFINITION',
        ...    # values: PER_INSTANCE_CONTAINER_GROUP_DEFINITION
      ],    # OPTIONAL
    );

    # Results:
    my $ContainerFleet = $UpdateContainerFleetOutput->ContainerFleet;

    # Returns a L<Paws::GameLift::UpdateContainerFleetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/UpdateContainerFleet>

=head1 ATTRIBUTES


=head2 DeploymentConfiguration => L<Paws::GameLift::DeploymentConfiguration>

Instructions for how to deploy updates to a container fleet, if the
fleet update initiates a deployment. The deployment configuration lets
you determine how to replace fleet instances and what actions to take
if the deployment fails.



=head2 Description => Str

A meaningful description of the container fleet.



=head2 B<REQUIRED> FleetId => Str

A unique identifier for the container fleet to update. You can use
either the fleet ID or ARN value.



=head2 GameServerContainerGroupDefinitionName => Str

The name or ARN value of a new game server container group definition
to deploy on the fleet. If you're updating the fleet to a specific
version of a container group definition, use the ARN value and include
the version number. If you're updating the fleet to the latest version
of a container group definition, you can use the name value. You can't
remove a fleet's game server container group definition, you can only
update or replace it with another definition.

Update a container group definition by calling
UpdateContainerGroupDefinition
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html).
This operation creates a ContainerGroupDefinition
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html)
resource with an incremented version.



=head2 GameServerContainerGroupsPerInstance => Int

The number of times to replicate the game server container group on
each fleet instance. By default, Amazon GameLift calculates the maximum
number of game server container groups that can fit on each instance.
You can remove this property value to use the calculated value, or set
it manually. If you set this number manually, Amazon GameLift uses your
value as long as it's less than the calculated maximum.



=head2 GameSessionCreationLimitPolicy => L<Paws::GameLift::GameSessionCreationLimitPolicy>

A policy that limits the number of game sessions that each individual
player can create on instances in this fleet. The limit applies for a
specified span of time.



=head2 InstanceConnectionPortRange => L<Paws::GameLift::ConnectionPortRange>

A revised set of port numbers to open on each fleet instance. By
default, Amazon GameLift calculates an optimal port range based on your
fleet configuration. If you previously set this parameter manually, you
can't reset this to use the calculated settings.



=head2 InstanceInboundPermissionAuthorizations => ArrayRef[L<Paws::GameLift::IpPermission>]

A set of ports to add to the container fleet's inbound permissions.



=head2 InstanceInboundPermissionRevocations => ArrayRef[L<Paws::GameLift::IpPermission>]

A set of ports to remove from the container fleet's inbound
permissions.



=head2 LogConfiguration => L<Paws::GameLift::LogConfiguration>

The method for collecting container logs for the fleet.



=head2 MetricGroups => ArrayRef[Str|Undef]

The name of an Amazon Web Services CloudWatch metric group to add this
fleet to.



=head2 NewGameSessionProtectionPolicy => Str

The game session protection policy to apply to all new game sessions
that are started in this fleet. Game sessions that already exist are
not affected.

Valid values are: C<"NoProtection">, C<"FullProtection">

=head2 PerInstanceContainerGroupDefinitionName => Str

The name or ARN value of a new per-instance container group definition
to deploy on the fleet. If you're updating the fleet to a specific
version of a container group definition, use the ARN value and include
the version number. If you're updating the fleet to the latest version
of a container group definition, you can use the name value.

Update a container group definition by calling
UpdateContainerGroupDefinition
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html).
This operation creates a ContainerGroupDefinition
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html)
resource with an incremented version.

To remove a fleet's per-instance container group definition, leave this
parameter empty and use the parameter C<RemoveAttributes>.



=head2 RemoveAttributes => ArrayRef[Str|Undef]

If set, this update removes a fleet's per-instance container group
definition. You can't remove a fleet's game server container group
definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContainerFleet in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

