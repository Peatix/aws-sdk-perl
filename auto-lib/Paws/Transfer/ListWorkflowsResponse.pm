
package Paws::Transfer::ListWorkflowsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Workflows => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::ListedWorkflow]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListWorkflowsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

C<ListWorkflows> returns the C<NextToken> parameter in the output. You
can then pass the C<NextToken> parameter in a subsequent command to
continue listing additional workflows.


=head2 B<REQUIRED> Workflows => ArrayRef[L<Paws::Transfer::ListedWorkflow>]

Returns the C<Arn>, C<WorkflowId>, and C<Description> for each
workflow.


=head2 _request_id => Str


=cut

1;