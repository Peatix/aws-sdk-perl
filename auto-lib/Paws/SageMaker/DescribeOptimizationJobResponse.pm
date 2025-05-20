
package Paws::SageMaker::DescribeOptimizationJobResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has DeploymentInstanceType => (is => 'ro', isa => 'Str', required => 1);
  has FailureReason => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has ModelSource => (is => 'ro', isa => 'Paws::SageMaker::OptimizationJobModelSource', required => 1);
  has OptimizationConfigs => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::OptimizationConfig]', required => 1);
  has OptimizationEndTime => (is => 'ro', isa => 'Str');
  has OptimizationEnvironment => (is => 'ro', isa => 'Paws::SageMaker::OptimizationJobEnvironmentVariables');
  has OptimizationJobArn => (is => 'ro', isa => 'Str', required => 1);
  has OptimizationJobName => (is => 'ro', isa => 'Str', required => 1);
  has OptimizationJobStatus => (is => 'ro', isa => 'Str', required => 1);
  has OptimizationOutput => (is => 'ro', isa => 'Paws::SageMaker::OptimizationOutput');
  has OptimizationStartTime => (is => 'ro', isa => 'Str');
  has OutputConfig => (is => 'ro', isa => 'Paws::SageMaker::OptimizationJobOutputConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has StoppingCondition => (is => 'ro', isa => 'Paws::SageMaker::StoppingCondition', required => 1);
  has VpcConfig => (is => 'ro', isa => 'Paws::SageMaker::OptimizationVpcConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeOptimizationJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The time when you created the optimization job.


=head2 B<REQUIRED> DeploymentInstanceType => Str

The type of instance that hosts the optimized model that you create
with the optimization job.

Valid values are: C<"ml.p4d.24xlarge">, C<"ml.p4de.24xlarge">, C<"ml.p5.48xlarge">, C<"ml.g5.xlarge">, C<"ml.g5.2xlarge">, C<"ml.g5.4xlarge">, C<"ml.g5.8xlarge">, C<"ml.g5.12xlarge">, C<"ml.g5.16xlarge">, C<"ml.g5.24xlarge">, C<"ml.g5.48xlarge">, C<"ml.g6.xlarge">, C<"ml.g6.2xlarge">, C<"ml.g6.4xlarge">, C<"ml.g6.8xlarge">, C<"ml.g6.12xlarge">, C<"ml.g6.16xlarge">, C<"ml.g6.24xlarge">, C<"ml.g6.48xlarge">, C<"ml.g6e.xlarge">, C<"ml.g6e.2xlarge">, C<"ml.g6e.4xlarge">, C<"ml.g6e.8xlarge">, C<"ml.g6e.12xlarge">, C<"ml.g6e.16xlarge">, C<"ml.g6e.24xlarge">, C<"ml.g6e.48xlarge">, C<"ml.inf2.xlarge">, C<"ml.inf2.8xlarge">, C<"ml.inf2.24xlarge">, C<"ml.inf2.48xlarge">, C<"ml.trn1.2xlarge">, C<"ml.trn1.32xlarge">, C<"ml.trn1n.32xlarge">
=head2 FailureReason => Str

If the optimization job status is C<FAILED>, the reason for the
failure.


=head2 B<REQUIRED> LastModifiedTime => Str

The time when the optimization job was last updated.


=head2 B<REQUIRED> ModelSource => L<Paws::SageMaker::OptimizationJobModelSource>

The location of the source model to optimize with an optimization job.


=head2 B<REQUIRED> OptimizationConfigs => ArrayRef[L<Paws::SageMaker::OptimizationConfig>]

Settings for each of the optimization techniques that the job applies.


=head2 OptimizationEndTime => Str

The time when the optimization job finished processing.


=head2 OptimizationEnvironment => L<Paws::SageMaker::OptimizationJobEnvironmentVariables>

The environment variables to set in the model container.


=head2 B<REQUIRED> OptimizationJobArn => Str

The Amazon Resource Name (ARN) of the optimization job.


=head2 B<REQUIRED> OptimizationJobName => Str

The name that you assigned to the optimization job.


=head2 B<REQUIRED> OptimizationJobStatus => Str

The current status of the optimization job.

Valid values are: C<"INPROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"STARTING">, C<"STOPPING">, C<"STOPPED">
=head2 OptimizationOutput => L<Paws::SageMaker::OptimizationOutput>

Output values produced by an optimization job.


=head2 OptimizationStartTime => Str

The time when the optimization job started.


=head2 B<REQUIRED> OutputConfig => L<Paws::SageMaker::OptimizationJobOutputConfig>

Details for where to store the optimized model that you create with the
optimization job.


=head2 B<REQUIRED> RoleArn => Str

The ARN of the IAM role that you assigned to the optimization job.


=head2 B<REQUIRED> StoppingCondition => L<Paws::SageMaker::StoppingCondition>




=head2 VpcConfig => L<Paws::SageMaker::OptimizationVpcConfig>

A VPC in Amazon VPC that your optimized model has access to.


=head2 _request_id => Str


=cut

1;