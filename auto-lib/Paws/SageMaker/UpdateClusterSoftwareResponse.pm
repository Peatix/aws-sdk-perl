
package Paws::SageMaker::UpdateClusterSoftwareResponse;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateClusterSoftwareResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterArn => Str

The Amazon Resource Name (ARN) of the SageMaker HyperPod cluster being
updated for security patching.


=head2 _request_id => Str


=cut

1;