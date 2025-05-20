
package Paws::SageMaker::CreateClusterSchedulerConfigResponse;
  use Moose;
  has ClusterSchedulerConfigArn => (is => 'ro', isa => 'Str', required => 1);
  has ClusterSchedulerConfigId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateClusterSchedulerConfigResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterSchedulerConfigArn => Str

ARN of the cluster policy.


=head2 B<REQUIRED> ClusterSchedulerConfigId => Str

ID of the cluster policy.


=head2 _request_id => Str


=cut

1;