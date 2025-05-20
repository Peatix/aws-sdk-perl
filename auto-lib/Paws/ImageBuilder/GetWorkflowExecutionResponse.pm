
package Paws::ImageBuilder::GetWorkflowExecutionResponse;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has ImageBuildVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageBuildVersionArn');
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message');
  has ParallelGroup => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parallelGroup');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has TotalStepCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'totalStepCount');
  has TotalStepsFailed => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'totalStepsFailed');
  has TotalStepsSkipped => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'totalStepsSkipped');
  has TotalStepsSucceeded => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'totalStepsSucceeded');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');
  has WorkflowBuildVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowBuildVersionArn');
  has WorkflowExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowExecutionId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::GetWorkflowExecutionResponse

=head1 ATTRIBUTES


=head2 EndTime => Str

The timestamp when the specified runtime instance of the workflow
finished.


=head2 ImageBuildVersionArn => Str

The Amazon Resource Name (ARN) of the image resource build version that
the specified runtime instance of the workflow created.


=head2 Message => Str

The output message from the specified runtime instance of the workflow,
if applicable.


=head2 ParallelGroup => Str

Test workflows are defined within named runtime groups. The parallel
group is a named group that contains one or more test workflows.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 StartTime => Str

The timestamp when the specified runtime instance of the workflow
started.


=head2 Status => Str

The current runtime status for the specified runtime instance of the
workflow.

Valid values are: C<"PENDING">, C<"SKIPPED">, C<"RUNNING">, C<"COMPLETED">, C<"FAILED">, C<"ROLLBACK_IN_PROGRESS">, C<"ROLLBACK_COMPLETED">, C<"CANCELLED">
=head2 TotalStepCount => Int

The total number of steps in the specified runtime instance of the
workflow that ran. This number should equal the sum of the step counts
for steps that succeeded, were skipped, and failed.


=head2 TotalStepsFailed => Int

A runtime count for the number of steps that failed in the specified
runtime instance of the workflow.


=head2 TotalStepsSkipped => Int

A runtime count for the number of steps that were skipped in the
specified runtime instance of the workflow.


=head2 TotalStepsSucceeded => Int

A runtime count for the number of steps that ran successfully in the
specified runtime instance of the workflow.


=head2 Type => Str

The type of workflow that Image Builder ran for the specified runtime
instance of the workflow.

Valid values are: C<"BUILD">, C<"TEST">, C<"DISTRIBUTION">
=head2 WorkflowBuildVersionArn => Str

The Amazon Resource Name (ARN) of the build version for the Image
Builder workflow resource that defines the specified runtime instance
of the workflow.


=head2 WorkflowExecutionId => Str

The unique identifier that Image Builder assigned to keep track of
runtime details when it ran the workflow.


=head2 _request_id => Str


=cut

