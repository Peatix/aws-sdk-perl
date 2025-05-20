
package Paws::SageMaker::CreateEdgeDeploymentPlanResponse;
  use Moose;
  has EdgeDeploymentPlanArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateEdgeDeploymentPlanResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EdgeDeploymentPlanArn => Str

The ARN of the edge deployment plan.


=head2 _request_id => Str


=cut

1;