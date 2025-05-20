
package Paws::SageMaker::UpdateClusterSchedulerConfigResponse;
  use Moose;
  has ClusterSchedulerConfigArn => (is => 'ro', isa => 'Str', required => 1);
  has ClusterSchedulerConfigVersion => (is => 'ro', isa => 'Int', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateClusterSchedulerConfigResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterSchedulerConfigArn => Str

ARN of the cluster policy.


=head2 B<REQUIRED> ClusterSchedulerConfigVersion => Int

Version of the cluster policy.


=head2 _request_id => Str


=cut

1;