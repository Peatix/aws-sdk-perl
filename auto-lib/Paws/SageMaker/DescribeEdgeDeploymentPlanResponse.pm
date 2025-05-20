
package Paws::SageMaker::DescribeEdgeDeploymentPlanResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has DeviceFleetName => (is => 'ro', isa => 'Str', required => 1);
  has EdgeDeploymentFailed => (is => 'ro', isa => 'Int');
  has EdgeDeploymentPending => (is => 'ro', isa => 'Int');
  has EdgeDeploymentPlanArn => (is => 'ro', isa => 'Str', required => 1);
  has EdgeDeploymentPlanName => (is => 'ro', isa => 'Str', required => 1);
  has EdgeDeploymentSuccess => (is => 'ro', isa => 'Int');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has ModelConfigs => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::EdgeDeploymentModelConfig]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has Stages => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::DeploymentStageStatusSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeEdgeDeploymentPlanResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time when the edge deployment plan was created.


=head2 B<REQUIRED> DeviceFleetName => Str

The device fleet used for this edge deployment plan.


=head2 EdgeDeploymentFailed => Int

The number of edge devices that failed the deployment.


=head2 EdgeDeploymentPending => Int

The number of edge devices yet to pick up deployment, or in progress.


=head2 B<REQUIRED> EdgeDeploymentPlanArn => Str

The ARN of edge deployment plan.


=head2 B<REQUIRED> EdgeDeploymentPlanName => Str

The name of the edge deployment plan.


=head2 EdgeDeploymentSuccess => Int

The number of edge devices with the successful deployment.


=head2 LastModifiedTime => Str

The time when the edge deployment plan was last updated.


=head2 B<REQUIRED> ModelConfigs => ArrayRef[L<Paws::SageMaker::EdgeDeploymentModelConfig>]

List of models associated with the edge deployment plan.


=head2 NextToken => Str

Token to use when calling the next set of stages in the edge deployment
plan.


=head2 B<REQUIRED> Stages => ArrayRef[L<Paws::SageMaker::DeploymentStageStatusSummary>]

List of stages in the edge deployment plan.


=head2 _request_id => Str


=cut

1;