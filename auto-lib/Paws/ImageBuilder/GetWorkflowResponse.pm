
package Paws::ImageBuilder::GetWorkflowResponse;
  use Moose;
  has Workflow => (is => 'ro', isa => 'Paws::ImageBuilder::Workflow', traits => ['NameInRequest'], request_name => 'workflow');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::GetWorkflowResponse

=head1 ATTRIBUTES


=head2 Workflow => L<Paws::ImageBuilder::Workflow>

The workflow resource specified in the request.


=head2 _request_id => Str


=cut

