
package Paws::Deadline::GetJobResponse;
  use Moose;
  has Attachments => (is => 'ro', isa => 'Paws::Deadline::Attachments', traits => ['NameInRequest'], request_name => 'attachments');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EndedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endedAt');
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId', required => 1);
  has LifecycleStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecycleStatus', required => 1);
  has LifecycleStatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecycleStatusMessage', required => 1);
  has MaxFailedTasksCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxFailedTasksCount');
  has MaxRetriesPerTask => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxRetriesPerTask');
  has MaxWorkerCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxWorkerCount');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::Deadline::JobParameters', traits => ['NameInRequest'], request_name => 'parameters');
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority', required => 1);
  has SourceJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceJobId');
  has StartedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startedAt');
  has StorageProfileId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storageProfileId');
  has TargetTaskRunStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetTaskRunStatus');
  has TaskRunStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskRunStatus');
  has TaskRunStatusCounts => (is => 'ro', isa => 'Paws::Deadline::TaskRunStatusCounts', traits => ['NameInRequest'], request_name => 'taskRunStatusCounts');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetJobResponse

=head1 ATTRIBUTES


=head2 Attachments => L<Paws::Deadline::Attachments>

The attachments for the job.


=head2 B<REQUIRED> CreatedAt => Str

The date and time the resource was created.


=head2 B<REQUIRED> CreatedBy => Str

The user or system that created this resource.


=head2 Description => Str

The description of the job.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.


=head2 EndedAt => Str

The date and time the resource ended running.


=head2 B<REQUIRED> JobId => Str

The job ID.


=head2 B<REQUIRED> LifecycleStatus => Str

The life cycle status for the job.

Valid values are: C<"CREATE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"CREATE_COMPLETE">, C<"UPLOAD_IN_PROGRESS">, C<"UPLOAD_FAILED">, C<"UPDATE_IN_PROGRESS">, C<"UPDATE_FAILED">, C<"UPDATE_SUCCEEDED">, C<"ARCHIVED">
=head2 B<REQUIRED> LifecycleStatusMessage => Str

A message that communicates the status of the life cycle for the job.


=head2 MaxFailedTasksCount => Int

The number of task failures before the job stops running and is marked
as C<FAILED>.


=head2 MaxRetriesPerTask => Int

The maximum number of retries per failed tasks.


=head2 MaxWorkerCount => Int

The maximum number of worker hosts that can concurrently process a job.
When the C<maxWorkerCount> is reached, no more workers will be assigned
to process the job, even if the fleets assigned to the job's queue has
available workers.

If you don't set the C<maxWorkerCount> when you create a job, this
value is not returned in the response.


=head2 B<REQUIRED> Name => Str

The name of the job.


=head2 Parameters => L<Paws::Deadline::JobParameters>

The parameters for the job.


=head2 B<REQUIRED> Priority => Int

The job priority.


=head2 SourceJobId => Str

The job ID for the source job.


=head2 StartedAt => Str

The date and time the resource started running.


=head2 StorageProfileId => Str

The storage profile ID associated with the job.


=head2 TargetTaskRunStatus => Str

The task status with which the job started.

Valid values are: C<"READY">, C<"FAILED">, C<"SUCCEEDED">, C<"CANCELED">, C<"SUSPENDED">, C<"PENDING">
=head2 TaskRunStatus => Str

The task run status for the job.

Valid values are: C<"PENDING">, C<"READY">, C<"ASSIGNED">, C<"STARTING">, C<"SCHEDULED">, C<"INTERRUPTING">, C<"RUNNING">, C<"SUSPENDED">, C<"CANCELED">, C<"FAILED">, C<"SUCCEEDED">, C<"NOT_COMPATIBLE">
=head2 TaskRunStatusCounts => L<Paws::Deadline::TaskRunStatusCounts>

The number of tasks running on the job.


=head2 UpdatedAt => Str

The date and time the resource was updated.


=head2 UpdatedBy => Str

The user or system that updated this resource.


=head2 _request_id => Str


=cut

