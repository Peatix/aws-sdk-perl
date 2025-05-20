
package Paws::GameLift::CreateContainerFleet;
  use Moose;
  has BillingType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has FleetRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has GameServerContainerGroupDefinitionName => (is => 'ro', isa => 'Str');
  has GameServerContainerGroupsPerInstance => (is => 'ro', isa => 'Int');
  has GameSessionCreationLimitPolicy => (is => 'ro', isa => 'Paws::GameLift::GameSessionCreationLimitPolicy');
  has InstanceConnectionPortRange => (is => 'ro', isa => 'Paws::GameLift::ConnectionPortRange');
  has InstanceInboundPermissions => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::IpPermission]');
  has InstanceType => (is => 'ro', isa => 'Str');
  has Locations => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::LocationConfiguration]');
  has LogConfiguration => (is => 'ro', isa => 'Paws::GameLift::LogConfiguration');
  has MetricGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NewGameSessionProtectionPolicy => (is => 'ro', isa => 'Str');
  has PerInstanceContainerGroupDefinitionName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateContainerFleet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreateContainerFleetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateContainerFleet - Arguments for method CreateContainerFleet on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateContainerFleet on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method CreateContainerFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateContainerFleet.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $CreateContainerFleetOutput = $gamelift->CreateContainerFleet(
      FleetRoleArn => 'MyIamRoleArn',
      BillingType  => 'ON_DEMAND',                # OPTIONAL
      Description  => 'MyNonZeroAndMaxString',    # OPTIONAL
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
      InstanceInboundPermissions => [
        {
          FromPort => 1,             # min: 1, max: 60000
          IpRange  => 'MyIpRange',
          Protocol => 'TCP',         # values: TCP, UDP
          ToPort   => 1,             # min: 1, max: 60000

        },
        ...
      ],    # OPTIONAL
      InstanceType => 'MyNonZeroAndMaxString',    # OPTIONAL
      Locations    => [
        {
          Location => 'MyLocationStringModel',    # min: 1, max: 64

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
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ContainerFleet = $CreateContainerFleetOutput->ContainerFleet;

    # Returns a L<Paws::GameLift::CreateContainerFleetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/CreateContainerFleet>

=head1 ATTRIBUTES


=head2 BillingType => Str

Indicates whether to use On-Demand or Spot instances for this fleet.
Learn more about when to use On-Demand versus Spot Instances
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot).
This fleet property can't be changed after the fleet is created.

By default, this property is set to C<ON_DEMAND>.

You can't update this fleet property later.

Valid values are: C<"ON_DEMAND">, C<"SPOT">

=head2 Description => Str

A meaningful description of the container fleet.



=head2 B<REQUIRED> FleetRoleArn => Str

The unique identifier for an Identity and Access Management (IAM) role
with permissions to run your containers on resources that are managed
by Amazon GameLift. Use an IAM service role with the
C<GameLiftContainerFleetPolicy> managed policy attached. For more
information, see Set up an IAM service role
(https://docs.aws.amazon.com/gamelift/latest/developerguide/setting-up-role.html).
You can't change this fleet property after the fleet is created.

IAM role ARN values use the following pattern: C<arn:aws:iam::[Amazon
Web Services account]:role/[role name]>.



=head2 GameServerContainerGroupDefinitionName => Str

A container group definition resource that describes how to deploy
containers with your game server build and support software onto each
fleet instance. You can specify the container group definition's name
to use the latest version. Alternatively, provide an ARN value with a
specific version number.

Create a container group definition by calling
CreateContainerGroupDefinition
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html).
This operation creates a ContainerGroupDefinition
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html)
resource.



=head2 GameServerContainerGroupsPerInstance => Int

The number of times to replicate the game server container group on
each fleet instance.

By default, Amazon GameLift calculates the maximum number of game
server container groups that can fit on each instance. This calculation
is based on the CPU and memory resources of the fleet's instance type).
To use the calculated maximum, don't set this parameter. If you set
this number manually, Amazon GameLift uses your value as long as it's
less than the calculated maximum.



=head2 GameSessionCreationLimitPolicy => L<Paws::GameLift::GameSessionCreationLimitPolicy>

A policy that limits the number of game sessions that each individual
player can create on instances in this fleet. The limit applies for a
specified span of time.



=head2 InstanceConnectionPortRange => L<Paws::GameLift::ConnectionPortRange>

The set of port numbers to open on each fleet instance. A fleet's
connection ports map to container ports that are configured in the
fleet's container group definitions.

By default, Amazon GameLift calculates an optimal port range based on
your fleet configuration. To use the calculated range, don't set this
parameter. The values are:

=over

=item *

Port range: 4192 to a number calculated based on your fleet
configuration. Amazon GameLift uses the following formula: C<4192 + [#
of game server container groups per fleet instance] * [# of container
ports in the game server container group definition] + [# of container
ports in the game server container group definition]>

=back

You can also choose to manually set this parameter. When manually
setting this parameter, you must use port numbers that match the
fleet's inbound permissions port range.

If you set values manually, Amazon GameLift no longer calculates a port
range for you, even if you later remove the manual settings.



=head2 InstanceInboundPermissions => ArrayRef[L<Paws::GameLift::IpPermission>]

The IP address ranges and port settings that allow inbound traffic to
access game server processes and other processes on this fleet. As a
best practice, when remotely accessing a fleet instance, we recommend
opening ports only when you need them and closing them when you're
finished.

By default, Amazon GameLift calculates an optimal port range based on
your fleet configuration. To use the calculated range, don't set this
parameter. The values are:

=over

=item *

Protocol: UDP

=item *

Port range: 4192 to a number calculated based on your fleet
configuration. Amazon GameLift uses the following formula: C<4192 + [#
of game server container groups per fleet instance] * [# of container
ports in the game server container group definition] + [# of container
ports in the game server container group definition]>

=back

You can also choose to manually set this parameter. When manually
setting this parameter, you must use port numbers that match the
fleet's connection port range.

If you set values manually, Amazon GameLift no longer calculates a port
range for you, even if you later remove the manual settings.



=head2 InstanceType => Str

The Amazon EC2 instance type to use for all instances in the fleet. For
multi-location fleets, the instance type must be available in the home
region and all remote locations. Instance type determines the computing
resources and processing power that's available to host your game
servers. This includes including CPU, memory, storage, and networking
capacity.

By default, Amazon GameLift selects an instance type that fits the
needs of your container groups and is available in all selected fleet
locations. You can also choose to manually set this parameter. See
Amazon Elastic Compute Cloud Instance Types
(http://aws.amazon.com/ec2/instance-types/) for detailed descriptions
of Amazon EC2 instance types.

You can't update this fleet property later.



=head2 Locations => ArrayRef[L<Paws::GameLift::LocationConfiguration>]

A set of locations to deploy container fleet instances to. You can add
any Amazon Web Services Region or Local Zone that's supported by Amazon
GameLift. Provide a list of one or more Amazon Web Services Region
codes, such as C<us-west-2>, or Local Zone names. Also include the
fleet's home Region, which is the Amazon Web Services Region where the
fleet is created. For a list of supported Regions and Local Zones, see
Amazon GameLift service locations
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html)
for managed hosting.



=head2 LogConfiguration => L<Paws::GameLift::LogConfiguration>

A method for collecting container logs for the fleet. Amazon GameLift
saves all standard output for each container in logs, including game
session logs. You can select from the following methods:

=over

=item *

C<CLOUDWATCH> -- Send logs to an Amazon CloudWatch log group that you
define. Each container emits a log stream, which is organized in the
log group.

=item *

C<S3> -- Store logs in an Amazon S3 bucket that you define.

=item *

C<NONE> -- Don't collect container logs.

=back

By default, this property is set to C<CLOUDWATCH>.

Amazon GameLift requires permissions to send logs other Amazon Web
Services services in your account. These permissions are included in
the IAM fleet role for this container fleet (see C<FleetRoleArn)>.



=head2 MetricGroups => ArrayRef[Str|Undef]

The name of an Amazon Web Services CloudWatch metric group to add this
fleet to. You can use a metric group to aggregate metrics for multiple
fleets. You can specify an existing metric group name or use a new name
to create a new metric group. Each fleet can have only one metric
group, but you can change this value at any time.



=head2 NewGameSessionProtectionPolicy => Str

Determines whether Amazon GameLift can shut down game sessions on the
fleet that are actively running and hosting players. Amazon GameLift
might prompt an instance shutdown when scaling down fleet capacity or
when retiring unhealthy instances. You can also set game session
protection for individual game sessions using UpdateGameSession.

=over

=item *

B<NoProtection> -- Game sessions can be shut down during active
gameplay.

=item *

B<FullProtection> -- Game sessions in C<ACTIVE> status can't be shut
down.

=back

By default, this property is set to C<NoProtection>.

Valid values are: C<"NoProtection">, C<"FullProtection">

=head2 PerInstanceContainerGroupDefinitionName => Str

The name of a container group definition resource that describes a set
of axillary software. A fleet instance has one process for executables
in this container group. A per-instance container group is optional.
You can update the fleet to add or remove a per-instance container
group at any time. You can specify the container group definition's
name to use the latest version. Alternatively, provide an ARN value
with a specific version number.

Create a container group definition by calling
https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html).
This operation creates a
https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html)
resource.



=head2 Tags => ArrayRef[L<Paws::GameLift::Tag>]

A list of labels to assign to the new fleet resource. Tags are
developer-defined key-value pairs. Tagging Amazon Web Services
resources are useful for resource management, access management and
cost allocation. For more information, see Tagging Amazon Web Services
Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateContainerFleet in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

