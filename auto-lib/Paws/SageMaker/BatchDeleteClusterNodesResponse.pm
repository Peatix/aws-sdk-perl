
package Paws::SageMaker::BatchDeleteClusterNodesResponse;
  use Moose;
  has Failed => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::BatchDeleteClusterNodesError]');
  has Successful => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::BatchDeleteClusterNodesResponse

=head1 ATTRIBUTES


=head2 Failed => ArrayRef[L<Paws::SageMaker::BatchDeleteClusterNodesError>]

A list of errors encountered when deleting the specified nodes.


=head2 Successful => ArrayRef[Str|Undef]

A list of node IDs that were successfully deleted from the specified
cluster.


=head2 _request_id => Str


=cut

1;