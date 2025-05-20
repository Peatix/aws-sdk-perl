
package Paws::SageMaker::DescribeComputeQuotaResponse;
  use Moose;
  has ActivationState => (is => 'ro', isa => 'Str');
  has ClusterArn => (is => 'ro', isa => 'Str');
  has ComputeQuotaArn => (is => 'ro', isa => 'Str', required => 1);
  has ComputeQuotaConfig => (is => 'ro', isa => 'Paws::SageMaker::ComputeQuotaConfig');
  has ComputeQuotaId => (is => 'ro', isa => 'Str', required => 1);
  has ComputeQuotaTarget => (is => 'ro', isa => 'Paws::SageMaker::ComputeQuotaTarget', required => 1);
  has ComputeQuotaVersion => (is => 'ro', isa => 'Int', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeComputeQuotaResponse

=head1 ATTRIBUTES


=head2 ActivationState => Str

The state of the compute allocation being described. Use to enable or
disable compute allocation.

Default is C<Enabled>.

Valid values are: C<"Enabled">, C<"Disabled">
=head2 ClusterArn => Str

ARN of the cluster.


=head2 B<REQUIRED> ComputeQuotaArn => Str

ARN of the compute allocation definition.


=head2 ComputeQuotaConfig => L<Paws::SageMaker::ComputeQuotaConfig>

Configuration of the compute allocation definition. This includes the
resource sharing option, and the setting to preempt low priority tasks.


=head2 B<REQUIRED> ComputeQuotaId => Str

ID of the compute allocation definition.


=head2 B<REQUIRED> ComputeQuotaTarget => L<Paws::SageMaker::ComputeQuotaTarget>

The target entity to allocate compute resources to.


=head2 B<REQUIRED> ComputeQuotaVersion => Int

Version of the compute allocation definition.


=head2 CreatedBy => L<Paws::SageMaker::UserContext>




=head2 B<REQUIRED> CreationTime => Str

Creation time of the compute allocation configuration.


=head2 Description => Str

Description of the compute allocation definition.


=head2 FailureReason => Str

Failure reason of the compute allocation definition.


=head2 LastModifiedBy => L<Paws::SageMaker::UserContext>




=head2 LastModifiedTime => Str

Last modified time of the compute allocation configuration.


=head2 B<REQUIRED> Name => Str

Name of the compute allocation definition.


=head2 B<REQUIRED> Status => Str

Status of the compute allocation definition.

Valid values are: C<"Creating">, C<"CreateFailed">, C<"CreateRollbackFailed">, C<"Created">, C<"Updating">, C<"UpdateFailed">, C<"UpdateRollbackFailed">, C<"Updated">, C<"Deleting">, C<"DeleteFailed">, C<"DeleteRollbackFailed">, C<"Deleted">
=head2 _request_id => Str


=cut

1;