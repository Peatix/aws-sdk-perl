
package Paws::SageMaker::ListClusterSchedulerConfigsResponse;
  use Moose;
  has ClusterSchedulerConfigSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ClusterSchedulerConfigSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListClusterSchedulerConfigsResponse

=head1 ATTRIBUTES


=head2 ClusterSchedulerConfigSummaries => ArrayRef[L<Paws::SageMaker::ClusterSchedulerConfigSummary>]

Summaries of the cluster policies.


=head2 NextToken => Str

If the previous response was truncated, you will receive this token.
Use it in your next request to receive the next set of results.


=head2 _request_id => Str


=cut

1;