
package Paws::ImageBuilder::SendWorkflowStepActionResponse;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ImageBuildVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageBuildVersionArn');
  has StepExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stepExecutionId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::SendWorkflowStepActionResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

The client token that uniquely identifies the request.


=head2 ImageBuildVersionArn => Str

The Amazon Resource Name (ARN) of the image build version that received
the action request.


=head2 StepExecutionId => Str

The workflow step that sent the step action.


=head2 _request_id => Str


=cut

