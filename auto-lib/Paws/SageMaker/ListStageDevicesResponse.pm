
package Paws::SageMaker::ListStageDevicesResponse;
  use Moose;
  has DeviceDeploymentSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::DeviceDeploymentSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListStageDevicesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceDeploymentSummaries => ArrayRef[L<Paws::SageMaker::DeviceDeploymentSummary>]

List of summaries of devices allocated to the stage.


=head2 NextToken => Str

The token to use when calling the next page of results.


=head2 _request_id => Str


=cut

1;