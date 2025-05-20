
package Paws::ImageBuilder::CreateWorkflowResponse;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has WorkflowBuildVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowBuildVersionArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::CreateWorkflowResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

The client token that uniquely identifies the request.


=head2 WorkflowBuildVersionArn => Str

The Amazon Resource Name (ARN) of the workflow resource that the
request created.


=head2 _request_id => Str


=cut

