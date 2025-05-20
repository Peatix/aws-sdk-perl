
package Paws::ImageBuilder::GetWorkflowStepExecutionResponse;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'action');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has ImageBuildVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageBuildVersionArn');
  has Inputs => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inputs');
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has OnFailure => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'onFailure');
  has Outputs => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'outputs');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');
  has RollbackStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'rollbackStatus');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StepExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stepExecutionId');
  has TimeoutSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'timeoutSeconds');
  has WorkflowBuildVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowBuildVersionArn');
  has WorkflowExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowExecutionId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::GetWorkflowStepExecutionResponse

=head1 ATTRIBUTES


=head2 Action => Str

The name of the action that the specified step performs.


=head2 Description => Str

Describes the specified workflow step.


=head2 EndTime => Str

The timestamp when the specified runtime instance of the workflow step
finished.


=head2 ImageBuildVersionArn => Str

The Amazon Resource Name (ARN) of the image resource build version that
the specified runtime instance of the workflow step creates.


=head2 Inputs => Str

Input parameters that Image Builder provided for the specified runtime
instance of the workflow step.


=head2 Message => Str

The output message from the specified runtime instance of the workflow
step, if applicable.


=head2 Name => Str

The name of the specified runtime instance of the workflow step.


=head2 OnFailure => Str

The action to perform if the workflow step fails.


=head2 Outputs => Str

The file names that the specified runtime version of the workflow step
created as output.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 RollbackStatus => Str

Reports on the rollback status of the specified runtime version of the
workflow step, if applicable.

Valid values are: C<"RUNNING">, C<"COMPLETED">, C<"SKIPPED">, C<"FAILED">
=head2 StartTime => Str

The timestamp when the specified runtime version of the workflow step
started.


=head2 Status => Str

The current status for the specified runtime version of the workflow
step.

Valid values are: C<"PENDING">, C<"SKIPPED">, C<"RUNNING">, C<"COMPLETED">, C<"FAILED">, C<"CANCELLED">
=head2 StepExecutionId => Str

The unique identifier for the runtime version of the workflow step that
you specified in the request.


=head2 TimeoutSeconds => Int

The maximum duration in seconds for this step to complete its action.


=head2 WorkflowBuildVersionArn => Str

The Amazon Resource Name (ARN) of the build version for the Image
Builder workflow resource that defines this workflow step.


=head2 WorkflowExecutionId => Str

The unique identifier that Image Builder assigned to keep track of
runtime details when it ran the workflow.


=head2 _request_id => Str


=cut

