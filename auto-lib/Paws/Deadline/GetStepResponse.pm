
package Paws::Deadline::GetStepResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has DependencyCounts => (is => 'ro', isa => 'Paws::Deadline::DependencyCounts', traits => ['NameInRequest'], request_name => 'dependencyCounts');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EndedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endedAt');
  has LifecycleStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecycleStatus', required => 1);
  has LifecycleStatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecycleStatusMessage');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ParameterSpace => (is => 'ro', isa => 'Paws::Deadline::ParameterSpace', traits => ['NameInRequest'], request_name => 'parameterSpace');
  has RequiredCapabilities => (is => 'ro', isa => 'Paws::Deadline::StepRequiredCapabilities', traits => ['NameInRequest'], request_name => 'requiredCapabilities');
  has StartedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startedAt');
  has StepId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stepId', required => 1);
  has TargetTaskRunStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetTaskRunStatus');
  has TaskRunStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskRunStatus', required => 1);
  has TaskRunStatusCounts => (is => 'ro', isa => 'Paws::Deadline::TaskRunStatusCounts', traits => ['NameInRequest'], request_name => 'taskRunStatusCounts', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetStepResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The date and time the resource was created.


=head2 B<REQUIRED> CreatedBy => Str

The user or system that created this resource.


=head2 DependencyCounts => L<Paws::Deadline::DependencyCounts>

The number of dependencies in the step.


=head2 Description => Str

The description of the step.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.


=head2 EndedAt => Str

The date and time the resource ended running.


=head2 B<REQUIRED> LifecycleStatus => Str

The life cycle status of the step.

Valid values are: C<"CREATE_COMPLETE">, C<"UPDATE_IN_PROGRESS">, C<"UPDATE_FAILED">, C<"UPDATE_SUCCEEDED">
=head2 LifecycleStatusMessage => Str

A message that describes the lifecycle status of the step.


=head2 B<REQUIRED> Name => Str

The name of the step.


=head2 ParameterSpace => L<Paws::Deadline::ParameterSpace>

A list of step parameters and the combination expression for the step.


=head2 RequiredCapabilities => L<Paws::Deadline::StepRequiredCapabilities>

The required capabilities of the step.


=head2 StartedAt => Str

The date and time the resource started running.


=head2 B<REQUIRED> StepId => Str

The step ID.


=head2 TargetTaskRunStatus => Str

The task status with which the job started.

Valid values are: C<"READY">, C<"FAILED">, C<"SUCCEEDED">, C<"CANCELED">, C<"SUSPENDED">, C<"PENDING">
=head2 B<REQUIRED> TaskRunStatus => Str

The task run status for the job.

Valid values are: C<"PENDING">, C<"READY">, C<"ASSIGNED">, C<"STARTING">, C<"SCHEDULED">, C<"INTERRUPTING">, C<"RUNNING">, C<"SUSPENDED">, C<"CANCELED">, C<"FAILED">, C<"SUCCEEDED">, C<"NOT_COMPATIBLE">
=head2 B<REQUIRED> TaskRunStatusCounts => L<Paws::Deadline::TaskRunStatusCounts>

The number of tasks running on the job.


=head2 UpdatedAt => Str

The date and time the resource was updated.


=head2 UpdatedBy => Str

The user or system that updated this resource.


=head2 _request_id => Str


=cut

