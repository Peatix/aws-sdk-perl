
package Paws::SageMaker::DescribeClusterResponse;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', required => 1);
  has ClusterName => (is => 'ro', isa => 'Str');
  has ClusterStatus => (is => 'ro', isa => 'Str', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str');
  has FailureMessage => (is => 'ro', isa => 'Str');
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ClusterInstanceGroupDetails]', required => 1);
  has NodeRecovery => (is => 'ro', isa => 'Str');
  has Orchestrator => (is => 'ro', isa => 'Paws::SageMaker::ClusterOrchestrator');
  has VpcConfig => (is => 'ro', isa => 'Paws::SageMaker::VpcConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeClusterResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterArn => Str

The Amazon Resource Name (ARN) of the SageMaker HyperPod cluster.


=head2 ClusterName => Str

The name of the SageMaker HyperPod cluster.


=head2 B<REQUIRED> ClusterStatus => Str

The status of the SageMaker HyperPod cluster.

Valid values are: C<"Creating">, C<"Deleting">, C<"Failed">, C<"InService">, C<"RollingBack">, C<"SystemUpdating">, C<"Updating">
=head2 CreationTime => Str

The time when the SageMaker Cluster is created.


=head2 FailureMessage => Str

The failure message of the SageMaker HyperPod cluster.


=head2 B<REQUIRED> InstanceGroups => ArrayRef[L<Paws::SageMaker::ClusterInstanceGroupDetails>]

The instance groups of the SageMaker HyperPod cluster.


=head2 NodeRecovery => Str

The node recovery mode configured for the SageMaker HyperPod cluster.

Valid values are: C<"Automatic">, C<"None">
=head2 Orchestrator => L<Paws::SageMaker::ClusterOrchestrator>

The type of orchestrator used for the SageMaker HyperPod cluster.


=head2 VpcConfig => L<Paws::SageMaker::VpcConfig>




=head2 _request_id => Str


=cut

1;