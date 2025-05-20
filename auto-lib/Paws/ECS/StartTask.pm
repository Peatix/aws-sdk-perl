
package Paws::ECS::StartTask;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has ContainerInstances => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'containerInstances' , required => 1);
  has EnableECSManagedTags => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableECSManagedTags' );
  has EnableExecuteCommand => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableExecuteCommand' );
  has Group => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'group' );
  has NetworkConfiguration => (is => 'ro', isa => 'Paws::ECS::NetworkConfiguration', traits => ['NameInRequest'], request_name => 'networkConfiguration' );
  has Overrides => (is => 'ro', isa => 'Paws::ECS::TaskOverride', traits => ['NameInRequest'], request_name => 'overrides' );
  has PropagateTags => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'propagateTags' );
  has ReferenceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'referenceId' );
  has StartedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startedBy' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TaskDefinition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskDefinition' , required => 1);
  has VolumeConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ECS::TaskVolumeConfiguration]', traits => ['NameInRequest'], request_name => 'volumeConfigurations' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::StartTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::StartTask - Arguments for method StartTask on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTask on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method StartTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTask.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $StartTaskResponse = $ecs->StartTask(
      ContainerInstances   => [ 'MyString', ... ],
      TaskDefinition       => 'MyString',
      Cluster              => 'MyString',            # OPTIONAL
      EnableECSManagedTags => 1,                     # OPTIONAL
      EnableExecuteCommand => 1,                     # OPTIONAL
      Group                => 'MyString',            # OPTIONAL
      NetworkConfiguration => {
        AwsvpcConfiguration => {
          Subnets        => [ 'MyString', ... ],
          AssignPublicIp => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
          SecurityGroups => [ 'MyString', ... ],
        },    # OPTIONAL
      },    # OPTIONAL
      Overrides => {
        ContainerOverrides => [
          {
            Command     => [ 'MyString', ... ],
            Cpu         => 1,                     # OPTIONAL
            Environment => [
              {
                Name  => 'MyString',
                Value => 'MyString',
              },
              ...
            ],                                    # OPTIONAL
            EnvironmentFiles => [
              {
                Type  => 's3',                    # values: s3
                Value => 'MyString',

              },
              ...
            ],    # OPTIONAL
            Memory               => 1,            # OPTIONAL
            MemoryReservation    => 1,            # OPTIONAL
            Name                 => 'MyString',
            ResourceRequirements => [
              {
                Type  => 'GPU',        # values: GPU, InferenceAccelerator
                Value => 'MyString',

              },
              ...
            ],    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        Cpu              => 'MyString',
        EphemeralStorage => {
          SizeInGiB => 1,

        },    # OPTIONAL
        ExecutionRoleArn              => 'MyString',
        InferenceAcceleratorOverrides => [
          {
            DeviceName => 'MyString',
            DeviceType => 'MyString',
          },
          ...
        ],    # OPTIONAL
        Memory      => 'MyString',
        TaskRoleArn => 'MyString',
      },    # OPTIONAL
      PropagateTags => 'TASK_DEFINITION',    # OPTIONAL
      ReferenceId   => 'MyString',           # OPTIONAL
      StartedBy     => 'MyString',           # OPTIONAL
      Tags          => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      VolumeConfigurations => [
        {
          Name             => 'MyECSVolumeName',
          ManagedEBSVolume => {
            RoleArn        => 'MyIAMRoleArn',
            Encrypted      => 1,                       # OPTIONAL
            FilesystemType => 'ext3',  # values: ext3, ext4, xfs, ntfs; OPTIONAL
            Iops           => 1,       # OPTIONAL
            KmsKeyId          => 'MyEBSKMSKeyId',      # OPTIONAL
            SizeInGiB         => 1,                    # OPTIONAL
            SnapshotId        => 'MyEBSSnapshotId',    # OPTIONAL
            TagSpecifications => [
              {
                ResourceType  => 'volume',    # values: volume
                PropagateTags =>
                  'TASK_DEFINITION',    # values: TASK_DEFINITION, SERVICE, NONE
                Tags => [
                  {
                    Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
                    Value => 'MyTagValue',    # max: 256; OPTIONAL
                  },
                  ...
                ],    # max: 50
              },
              ...
            ],    # OPTIONAL
            TerminationPolicy => {
              DeleteOnTermination => 1,    # OPTIONAL

            },    # OPTIONAL
            Throughput               => 1,                    # OPTIONAL
            VolumeInitializationRate => 1,                    # OPTIONAL
            VolumeType               => 'MyEBSVolumeType',    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Failures = $StartTaskResponse->Failures;
    my $Tasks    = $StartTaskResponse->Tasks;

    # Returns a L<Paws::ECS::StartTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/StartTask>

=head1 ATTRIBUTES


=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster where
to start your task. If you do not specify a cluster, the default
cluster is assumed.



=head2 B<REQUIRED> ContainerInstances => ArrayRef[Str|Undef]

The container instance IDs or full ARN entries for the container
instances where you would like to place your task. You can specify up
to 10 container instances.



=head2 EnableECSManagedTags => Bool

Specifies whether to use Amazon ECS managed tags for the task. For more
information, see Tagging Your Amazon ECS Resources
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 EnableExecuteCommand => Bool

Whether or not the execute command functionality is turned on for the
task. If C<true>, this turns on the execute command functionality on
all containers in the task.



=head2 Group => Str

The name of the task group to associate with the task. The default
value is the family name of the task definition (for example,
family:my-family-name).



=head2 NetworkConfiguration => L<Paws::ECS::NetworkConfiguration>

The VPC subnet and security group configuration for tasks that receive
their own elastic network interface by using the C<awsvpc> networking
mode.



=head2 Overrides => L<Paws::ECS::TaskOverride>

A list of container overrides in JSON format that specify the name of a
container in the specified task definition and the overrides it
receives. You can override the default command for a container (that's
specified in the task definition or Docker image) with a C<command>
override. You can also override existing environment variables (that
are specified in the task definition or Docker image) on a container or
add new environment variables to it with an C<environment> override.

A total of 8192 characters are allowed for overrides. This limit
includes the JSON formatting characters of the override structure.



=head2 PropagateTags => Str

Specifies whether to propagate the tags from the task definition or the
service to the task. If no value is specified, the tags aren't
propagated.

Valid values are: C<"TASK_DEFINITION">, C<"SERVICE">, C<"NONE">

=head2 ReferenceId => Str

This parameter is only used by Amazon ECS. It is not intended for use
by customers.



=head2 StartedBy => Str

An optional tag specified when a task is started. For example, if you
automatically trigger a task to run a batch process job, you could
apply a unique identifier for that job to your task with the
C<startedBy> parameter. You can then identify which tasks belong to
that job by filtering the results of a ListTasks
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListTasks.html)
call with the C<startedBy> value. Up to 36 letters (uppercase and
lowercase), numbers, hyphens (-), forward slash (/), and underscores
(_) are allowed.

If a task is started by an Amazon ECS service, the C<startedBy>
parameter contains the deployment ID of the service that starts it.



=head2 Tags => ArrayRef[L<Paws::ECS::Tag>]

The metadata that you apply to the task to help you categorize and
organize them. Each tag consists of a key and an optional value, both
of which you define.

The following basic restrictions apply to tags:

=over

=item *

Maximum number of tags per resource - 50

=item *

For each resource, each tag key must be unique, and each tag key can
have only one value.

=item *

Maximum key length - 128 Unicode characters in UTF-8

=item *

Maximum value length - 256 Unicode characters in UTF-8

=item *

If your tagging schema is used across multiple services and resources,
remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _
: / @.

=item *

Tag keys and values are case-sensitive.

=item *

Do not use C<aws:>, C<AWS:>, or any upper or lowercase combination of
such as a prefix for either keys or values as it is reserved for Amazon
Web Services use. You cannot edit or delete tag keys or values with
this prefix. Tags with this prefix do not count against your tags per
resource limit.

=back




=head2 B<REQUIRED> TaskDefinition => Str

The C<family> and C<revision> (C<family:revision>) or full ARN of the
task definition to start. If a C<revision> isn't specified, the latest
C<ACTIVE> revision is used.



=head2 VolumeConfigurations => ArrayRef[L<Paws::ECS::TaskVolumeConfiguration>]

The details of the volume that was C<configuredAtLaunch>. You can
configure the size, volumeType, IOPS, throughput, snapshot and
encryption in TaskManagedEBSVolumeConfiguration
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TaskManagedEBSVolumeConfiguration.html).
The C<name> of the volume must match the C<name> from the task
definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTask in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

