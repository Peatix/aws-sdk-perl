
package Paws::SageMaker::ListClustersResponse;
  use Moose;
  has ClusterSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ClusterSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListClustersResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterSummaries => ArrayRef[L<Paws::SageMaker::ClusterSummary>]

The summaries of listed SageMaker HyperPod clusters.


=head2 NextToken => Str

If the result of the previous C<ListClusters> request was truncated,
the response includes a C<NextToken>. To retrieve the next set of
clusters, use the token in the next request.


=head2 _request_id => Str


=cut

1;