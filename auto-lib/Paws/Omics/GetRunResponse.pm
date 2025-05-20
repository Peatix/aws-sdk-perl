
package Paws::Omics::GetRunResponse;
  use Moose;
  has Accelerators => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accelerators');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CacheBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheBehavior');
  has CacheId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheId');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has Definition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'definition');
  has Digest => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'digest');
  has EngineVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineVersion');
  has FailureReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureReason');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has LogLevel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logLevel');
  has LogLocation => (is => 'ro', isa => 'Paws::Omics::RunLogLocation', traits => ['NameInRequest'], request_name => 'logLocation');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has OutputUri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'outputUri');
  has Parameters => (is => 'ro', isa => 'Paws::Omics::RunParameters', traits => ['NameInRequest'], request_name => 'parameters');
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority');
  has ResourceDigests => (is => 'ro', isa => 'Paws::Omics::RunResourceDigests', traits => ['NameInRequest'], request_name => 'resourceDigests');
  has RetentionMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'retentionMode');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has RunGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'runGroupId');
  has RunId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'runId');
  has RunOutputUri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'runOutputUri');
  has StartedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startedBy');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusMessage');
  has StopTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stopTime');
  has StorageCapacity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'storageCapacity');
  has StorageType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storageType');
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Uuid => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uuid');
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowId');
  has WorkflowOwnerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowOwnerId');
  has WorkflowType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowType');
  has WorkflowUuid => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowUuid');
  has WorkflowVersionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowVersionName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetRunResponse

=head1 ATTRIBUTES


=head2 Accelerators => Str

The computational accelerator used to run the workflow.

Valid values are: C<"GPU">
=head2 Arn => Str

The run's ARN.


=head2 CacheBehavior => Str

The run cache behavior for the run.

Valid values are: C<"CACHE_ON_FAILURE">, C<"CACHE_ALWAYS">
=head2 CacheId => Str

The run cache associated with the run.


=head2 CreationTime => Str

When the run was created.


=head2 Definition => Str

The run's definition.


=head2 Digest => Str

The run's digest.


=head2 EngineVersion => Str

The actual Nextflow engine version that Amazon Web Services HealthOmics
used for the run. The other workflow definition languages don't provide
a value for this field.


=head2 FailureReason => Str

The reason a run has failed.


=head2 Id => Str

The run's ID.


=head2 LogLevel => Str

The run's log level.

Valid values are: C<"OFF">, C<"FATAL">, C<"ERROR">, C<"ALL">
=head2 LogLocation => L<Paws::Omics::RunLogLocation>

The location of the run log.


=head2 Name => Str

The run's name.


=head2 OutputUri => Str

The run's output URI.


=head2 Parameters => L<Paws::Omics::RunParameters>

The run's parameters.


=head2 Priority => Int

The run's priority.


=head2 ResourceDigests => L<Paws::Omics::RunResourceDigests>

The run's resource digests.


=head2 RetentionMode => Str

The run's retention mode.

Valid values are: C<"RETAIN">, C<"REMOVE">
=head2 RoleArn => Str

The run's service role ARN.


=head2 RunGroupId => Str

The run's group ID.


=head2 RunId => Str

The run's ID.


=head2 RunOutputUri => Str

The destination for workflow outputs.


=head2 StartedBy => Str

Who started the run.


=head2 StartTime => Str

When the run started.


=head2 Status => Str

The run's status.

Valid values are: C<"PENDING">, C<"STARTING">, C<"RUNNING">, C<"STOPPING">, C<"COMPLETED">, C<"DELETED">, C<"CANCELLED">, C<"FAILED">
=head2 StatusMessage => Str

The run's status message.


=head2 StopTime => Str

The run's stop time.


=head2 StorageCapacity => Int

The run's storage capacity in gibibytes. For dynamic storage, after the
run has completed, this value is the maximum amount of storage used
during the run.


=head2 StorageType => Str

The run's storage type.

Valid values are: C<"STATIC">, C<"DYNAMIC">
=head2 Tags => L<Paws::Omics::TagMap>

The run's tags.


=head2 Uuid => Str

The universally unique identifier for a run.


=head2 WorkflowId => Str

The run's workflow ID.


=head2 WorkflowOwnerId => Str

The ID of the workflow owner.


=head2 WorkflowType => Str

The run's workflow type.

Valid values are: C<"PRIVATE">, C<"READY2RUN">
=head2 WorkflowUuid => Str

The universally unique identifier (UUID) value for the workflow.


=head2 WorkflowVersionName => Str

The workflow version name.


=head2 _request_id => Str


=cut

