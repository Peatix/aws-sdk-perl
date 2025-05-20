
package Paws::Transfer::DescribeExecutionResponse;
  use Moose;
  has Execution => (is => 'ro', isa => 'Paws::Transfer::DescribedExecution', required => 1);
  has WorkflowId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeExecutionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Execution => L<Paws::Transfer::DescribedExecution>

The structure that contains the details of the workflow' execution.


=head2 B<REQUIRED> WorkflowId => Str

A unique identifier for the workflow.


=head2 _request_id => Str


=cut

1;