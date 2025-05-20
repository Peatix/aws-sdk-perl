
package Paws::SageMaker::DescribeClusterSchedulerConfigResponse;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str');
  has ClusterSchedulerConfigArn => (is => 'ro', isa => 'Str', required => 1);
  has ClusterSchedulerConfigId => (is => 'ro', isa => 'Str', required => 1);
  has ClusterSchedulerConfigVersion => (is => 'ro', isa => 'Int', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SchedulerConfig => (is => 'ro', isa => 'Paws::SageMaker::SchedulerConfig');
  has Status => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeClusterSchedulerConfigResponse

=head1 ATTRIBUTES


=head2 ClusterArn => Str

ARN of the cluster where the cluster policy is applied.


=head2 B<REQUIRED> ClusterSchedulerConfigArn => Str

ARN of the cluster policy.


=head2 B<REQUIRED> ClusterSchedulerConfigId => Str

ID of the cluster policy.


=head2 B<REQUIRED> ClusterSchedulerConfigVersion => Int

Version of the cluster policy.


=head2 CreatedBy => L<Paws::SageMaker::UserContext>




=head2 B<REQUIRED> CreationTime => Str

Creation time of the cluster policy.


=head2 Description => Str

Description of the cluster policy.


=head2 FailureReason => Str

Failure reason of the cluster policy.


=head2 LastModifiedBy => L<Paws::SageMaker::UserContext>




=head2 LastModifiedTime => Str

Last modified time of the cluster policy.


=head2 B<REQUIRED> Name => Str

Name of the cluster policy.


=head2 SchedulerConfig => L<Paws::SageMaker::SchedulerConfig>

Cluster policy configuration. This policy is used for task
prioritization and fair-share allocation. This helps prioritize
critical workloads and distributes idle compute across entities.


=head2 B<REQUIRED> Status => Str

Status of the cluster policy.

Valid values are: C<"Creating">, C<"CreateFailed">, C<"CreateRollbackFailed">, C<"Created">, C<"Updating">, C<"UpdateFailed">, C<"UpdateRollbackFailed">, C<"Updated">, C<"Deleting">, C<"DeleteFailed">, C<"DeleteRollbackFailed">, C<"Deleted">
=head2 _request_id => Str


=cut

1;