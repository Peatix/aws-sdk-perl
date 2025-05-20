
package Paws::CustomerProfiles::CreateIntegrationWorkflowResponse;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', required => 1);
  has WorkflowId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::CreateIntegrationWorkflowResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Message => Str

A message indicating create request was received.


=head2 B<REQUIRED> WorkflowId => Str

Unique identifier for the workflow.


=head2 _request_id => Str


=cut

