
package Paws::ImageBuilder::ListWorkflowExecutionsResponse;
  use Moose;
  has ImageBuildVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageBuildVersionArn');
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');
  has WorkflowExecutions => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::WorkflowExecutionMetadata]', traits => ['NameInRequest'], request_name => 'workflowExecutions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListWorkflowExecutionsResponse

=head1 ATTRIBUTES


=head2 ImageBuildVersionArn => Str

The resource ARN of the image build version for which you requested a
list of workflow runtime details.


=head2 Message => Str

The output message from the list action, if applicable.


=head2 NextToken => Str

The next token used for paginated responses. When this field isn't
empty, there are additional elements that the service hasn't included
in this request. Use this token with the next request to retrieve
additional objects.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 WorkflowExecutions => ArrayRef[L<Paws::ImageBuilder::WorkflowExecutionMetadata>]

Contains an array of runtime details that represents each time a
workflow ran for the requested image build version.


=head2 _request_id => Str


=cut

