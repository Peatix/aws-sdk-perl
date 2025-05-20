
package Paws::ImageBuilder::DeleteWorkflowResponse;
  use Moose;
  has WorkflowBuildVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowBuildVersionArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::DeleteWorkflowResponse

=head1 ATTRIBUTES


=head2 WorkflowBuildVersionArn => Str

The ARN of the workflow resource that this request deleted.


=head2 _request_id => Str


=cut

