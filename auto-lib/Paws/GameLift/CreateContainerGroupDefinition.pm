
package Paws::GameLift::CreateContainerGroupDefinition;
  use Moose;
  has ContainerGroupType => (is => 'ro', isa => 'Str');
  has GameServerContainerDefinition => (is => 'ro', isa => 'Paws::GameLift::GameServerContainerDefinitionInput');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OperatingSystem => (is => 'ro', isa => 'Str', required => 1);
  has SupportContainerDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::SupportContainerDefinitionInput]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::Tag]');
  has TotalMemoryLimitMebibytes => (is => 'ro', isa => 'Int', required => 1);
  has TotalVcpuLimit => (is => 'ro', isa => 'Num', required => 1);
  has VersionDescription => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateContainerGroupDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreateContainerGroupDefinitionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateContainerGroupDefinition - Arguments for method CreateContainerGroupDefinition on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateContainerGroupDefinition on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method CreateContainerGroupDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateContainerGroupDefinition.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $CreateContainerGroupDefinitionOutput =
      $gamelift->CreateContainerGroupDefinition(
      Name                      => 'MyContainerGroupDefinitionName',
      OperatingSystem           => 'AMAZON_LINUX_2023',
      TotalMemoryLimitMebibytes => 1,
      TotalVcpuLimit            => 1,
      ContainerGroupType        => 'GAME_SERVER',                     # OPTIONAL
      GameServerContainerDefinition => {
        ContainerName     => 'MyNonZeroAnd128MaxAsciiString', # min: 1, max: 128
        ImageUri          => 'MyImageUriString',              # min: 1, max: 255
        PortConfiguration => {
          ContainerPortRanges => [
            {
              FromPort => 1,        # min: 1, max: 60000
              Protocol => 'TCP',    # values: TCP, UDP
              ToPort   => 1,        # min: 1, max: 60000

            },
            ...
          ],    # min: 1, max: 100

        },
        ServerSdkVersion => 'MyServerSdkVersion',    # max: 128
        DependsOn        => [
          {
            Condition => 'START',    # values: START, COMPLETE, SUCCESS, HEALTHY
            ContainerName => 'MyNonZeroAnd128MaxAsciiString', # min: 1, max: 128

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        EnvironmentOverride => [
          {
            Name  => 'MyNonZeroAnd255MaxString',    # min: 1, max: 255
            Value => 'MyNonZeroAnd255MaxString',    # min: 1, max: 255

          },
          ...
        ],    # min: 1, max: 20; OPTIONAL
        MountPoints => [
          {
            InstancePath => 'MyInstancePathString',    # min: 1, max: 1024
            AccessLevel  =>
              'READ_ONLY',    # values: READ_ONLY, READ_AND_WRITE; OPTIONAL
            ContainerPath =>
              'MyContainerPathString',    # min: 1, max: 1024; OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
      },    # OPTIONAL
      SupportContainerDefinitions => [
        {
          ContainerName => 'MyNonZeroAnd128MaxAsciiString',   # min: 1, max: 128
          ImageUri      => 'MyImageUriString',                # min: 1, max: 255
          DependsOn     => [
            {
              Condition => 'START',  # values: START, COMPLETE, SUCCESS, HEALTHY
              ContainerName =>
                'MyNonZeroAnd128MaxAsciiString',    # min: 1, max: 128

            },
            ...
          ],    # min: 1, max: 10; OPTIONAL
          EnvironmentOverride => [
            {
              Name  => 'MyNonZeroAnd255MaxString',    # min: 1, max: 255
              Value => 'MyNonZeroAnd255MaxString',    # min: 1, max: 255

            },
            ...
          ],    # min: 1, max: 20; OPTIONAL
          Essential   => 1,    # OPTIONAL
          HealthCheck => {
            Command => [
              'MyNonZeroAnd255MaxString', ...    # min: 1, max: 255
            ],    # min: 1, max: 20
            Interval    => 1,    # min: 60, max: 300; OPTIONAL
            Retries     => 1,    # min: 5, max: 10; OPTIONAL
            StartPeriod => 1,    # max: 300; OPTIONAL
            Timeout     => 1,    # min: 30, max: 60; OPTIONAL
          },    # OPTIONAL
          MemoryHardLimitMebibytes => 1,    # min: 4, max: 1024000; OPTIONAL
          MountPoints              => [
            {
              InstancePath => 'MyInstancePathString',    # min: 1, max: 1024
              AccessLevel  =>
                'READ_ONLY',    # values: READ_ONLY, READ_AND_WRITE; OPTIONAL
              ContainerPath =>
                'MyContainerPathString',    # min: 1, max: 1024; OPTIONAL
            },
            ...
          ],    # min: 1, max: 10; OPTIONAL
          PortConfiguration => {
            ContainerPortRanges => [
              {
                FromPort => 1,        # min: 1, max: 60000
                Protocol => 'TCP',    # values: TCP, UDP
                ToPort   => 1,        # min: 1, max: 60000

              },
              ...
            ],    # min: 1, max: 100

          },
          Vcpu => 1,    # min: 0.125, max: 10; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      VersionDescription => 'MyNonZeroAndMaxString',    # OPTIONAL
      );

    # Results:
    my $ContainerGroupDefinition =
      $CreateContainerGroupDefinitionOutput->ContainerGroupDefinition;

    # Returns a L<Paws::GameLift::CreateContainerGroupDefinitionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/CreateContainerGroupDefinition>

=head1 ATTRIBUTES


=head2 ContainerGroupType => Str

The type of container group being defined. Container group type
determines how Amazon GameLift deploys the container group on each
fleet instance.

Default value: C<GAME_SERVER>

Valid values are: C<"GAME_SERVER">, C<"PER_INSTANCE">

=head2 GameServerContainerDefinition => L<Paws::GameLift::GameServerContainerDefinitionInput>

The definition for the game server container in this group. Define a
game server container only when the container group type is
C<GAME_SERVER>. Game server containers specify a container image with
your game server build. You can pass in your container definitions as a
JSON file.



=head2 B<REQUIRED> Name => Str

A descriptive identifier for the container group definition. The name
value must be unique in an Amazon Web Services Region.



=head2 B<REQUIRED> OperatingSystem => Str

The platform that all containers in the group use. Containers in a
group must run on the same operating system.

Default value: C<AMAZON_LINUX_2023>

Amazon Linux 2 (AL2) will reach end of support on 6/30/2025. See more
details in the Amazon Linux 2 FAQs
(https://aws.amazon.com/amazon-linux-2/faqs/). For game servers that
are hosted on AL2 and use server SDK version 4.x for Amazon GameLift,
first update the game server build to server SDK 5.x, and then deploy
to AL2023 instances. See Migrate to server SDK version 5.
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html)

Valid values are: C<"AMAZON_LINUX_2023">

=head2 SupportContainerDefinitions => ArrayRef[L<Paws::GameLift::SupportContainerDefinitionInput>]

One or more definition for support containers in this group. You can
define a support container in any type of container group. You can pass
in your container definitions as a JSON file.



=head2 Tags => ArrayRef[L<Paws::GameLift::Tag>]

A list of labels to assign to the container group definition resource.
Tags are developer-defined key-value pairs. Tagging Amazon Web Services
resources are useful for resource management, access management and
cost allocation. For more information, see Tagging Amazon Web Services
Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference>.



=head2 B<REQUIRED> TotalMemoryLimitMebibytes => Int

The maximum amount of memory (in MiB) to allocate to the container
group. All containers in the group share this memory. If you specify
memory limits for an individual container, the total value must be
greater than any individual container's memory limit.

Default value: 1024



=head2 B<REQUIRED> TotalVcpuLimit => Num

The maximum amount of vCPU units to allocate to the container group (1
vCPU is equal to 1024 CPU units). All containers in the group share
this memory. If you specify vCPU limits for individual containers, the
total value must be equal to or greater than the sum of the CPU limits
for all containers in the group.

Default value: 1



=head2 VersionDescription => Str

A description for the initial version of this container group
definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateContainerGroupDefinition in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

