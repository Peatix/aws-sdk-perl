
package Paws::SageMaker::ListClusterNodesResponse;
  use Moose;
  has ClusterNodeSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ClusterNodeSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListClusterNodesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterNodeSummaries => ArrayRef[L<Paws::SageMaker::ClusterNodeSummary>]

The summaries of listed instances in a SageMaker HyperPod cluster


=head2 NextToken => Str

The next token specified for listing instances in a SageMaker HyperPod
cluster.


=head2 _request_id => Str


=cut

1;