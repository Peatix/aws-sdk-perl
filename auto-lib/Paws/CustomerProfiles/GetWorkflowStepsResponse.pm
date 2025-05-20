
package Paws::CustomerProfiles::GetWorkflowStepsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::WorkflowStepItem]');
  has NextToken => (is => 'ro', isa => 'Str');
  has WorkflowId => (is => 'ro', isa => 'Str');
  has WorkflowType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetWorkflowStepsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CustomerProfiles::WorkflowStepItem>]

List containing workflow step details.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 WorkflowId => Str

Unique identifier for the workflow.


=head2 WorkflowType => Str

The type of workflow. The only supported value is APPFLOW_INTEGRATION.

Valid values are: C<"APPFLOW_INTEGRATION">
=head2 _request_id => Str


=cut

