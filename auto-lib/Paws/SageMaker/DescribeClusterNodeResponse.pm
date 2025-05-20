
package Paws::SageMaker::DescribeClusterNodeResponse;
  use Moose;
  has NodeDetails => (is => 'ro', isa => 'Paws::SageMaker::ClusterNodeDetails', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeClusterNodeResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> NodeDetails => L<Paws::SageMaker::ClusterNodeDetails>

The details of the SageMaker HyperPod cluster node.


=head2 _request_id => Str


=cut

1;