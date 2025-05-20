
package Paws::Transfer::CreateWorkflowResponse;
  use Moose;
  has WorkflowId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::CreateWorkflowResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> WorkflowId => Str

A unique identifier for the workflow.


=head2 _request_id => Str


=cut

1;