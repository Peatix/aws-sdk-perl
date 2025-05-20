
package Paws::ImageBuilder::ListWorkflowStepExecutionsResponse;
  use Moose;
  has ImageBuildVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageBuildVersionArn');
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');
  has Steps => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::WorkflowStepMetadata]', traits => ['NameInRequest'], request_name => 'steps');
  has WorkflowBuildVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowBuildVersionArn');
  has WorkflowExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowExecutionId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListWorkflowStepExecutionsResponse

=head1 ATTRIBUTES


=head2 ImageBuildVersionArn => Str

The image build version resource ARN that's associated with the
specified runtime instance of the workflow.


=head2 Message => Str

The output message from the list action, if applicable.


=head2 NextToken => Str

The next token used for paginated responses. When this field isn't
empty, there are additional elements that the service hasn't included
in this request. Use this token with the next request to retrieve
additional objects.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 Steps => ArrayRef[L<Paws::ImageBuilder::WorkflowStepMetadata>]

Contains an array of runtime details that represents each step in this
runtime instance of the workflow.


=head2 WorkflowBuildVersionArn => Str

The build version ARN for the Image Builder workflow resource that
defines the steps for this runtime instance of the workflow.


=head2 WorkflowExecutionId => Str

The unique identifier that Image Builder assigned to keep track of
runtime details when it ran the workflow.


=head2 _request_id => Str


=cut

