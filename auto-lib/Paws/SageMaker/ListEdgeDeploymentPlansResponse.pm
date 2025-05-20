
package Paws::SageMaker::ListEdgeDeploymentPlansResponse;
  use Moose;
  has EdgeDeploymentPlanSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::EdgeDeploymentPlanSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListEdgeDeploymentPlansResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EdgeDeploymentPlanSummaries => ArrayRef[L<Paws::SageMaker::EdgeDeploymentPlanSummary>]

List of summaries of edge deployment plans.


=head2 NextToken => Str

The token to use when calling the next page of results.


=head2 _request_id => Str


=cut

1;