
package Paws::Transfer::DescribeWorkflowResponse;
  use Moose;
  has Workflow => (is => 'ro', isa => 'Paws::Transfer::DescribedWorkflow', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeWorkflowResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Workflow => L<Paws::Transfer::DescribedWorkflow>

The structure that contains the details of the workflow.


=head2 _request_id => Str


=cut

1;