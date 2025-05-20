
package Paws::SageMaker::CreateOptimizationJob;
  use Moose;
  has DeploymentInstanceType => (is => 'ro', isa => 'Str', required => 1);
  has ModelSource => (is => 'ro', isa => 'Paws::SageMaker::OptimizationJobModelSource', required => 1);
  has OptimizationConfigs => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::OptimizationConfig]', required => 1);
  has OptimizationEnvironment => (is => 'ro', isa => 'Paws::SageMaker::OptimizationJobEnvironmentVariables');
  has OptimizationJobName => (is => 'ro', isa => 'Str', required => 1);
  has OutputConfig => (is => 'ro', isa => 'Paws::SageMaker::OptimizationJobOutputConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has StoppingCondition => (is => 'ro', isa => 'Paws::SageMaker::StoppingCondition', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has VpcConfig => (is => 'ro', isa => 'Paws::SageMaker::OptimizationVpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOptimizationJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateOptimizationJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateOptimizationJob - Arguments for method CreateOptimizationJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateOptimizationJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateOptimizationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateOptimizationJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateOptimizationJobResponse = $api . sagemaker->CreateOptimizationJob(
      DeploymentInstanceType => 'ml.p4d.24xlarge',
      ModelSource            => {
        S3 => {
          ModelAccessConfig => {
            AcceptEula => 1,

          },    # OPTIONAL
          S3Uri => 'MyS3Uri',    # max: 1024; OPTIONAL
        },    # OPTIONAL
      },
      OptimizationConfigs => [
        {
          ModelCompilationConfig => {
            Image => 'MyOptimizationContainerImage',    # max: 255; OPTIONAL
            OverrideEnvironment => {
              'MyNonEmptyString256' =>
                'MyString256',    # key: max: 256, value: max: 256
            },    # max: 25; OPTIONAL
          },    # OPTIONAL
          ModelQuantizationConfig => {
            Image => 'MyOptimizationContainerImage',    # max: 255; OPTIONAL
            OverrideEnvironment => {
              'MyNonEmptyString256' =>
                'MyString256',    # key: max: 256, value: max: 256
            },    # max: 25; OPTIONAL
          },    # OPTIONAL
          ModelShardingConfig => {
            Image => 'MyOptimizationContainerImage',    # max: 255; OPTIONAL
            OverrideEnvironment => {
              'MyNonEmptyString256' =>
                'MyString256',    # key: max: 256, value: max: 256
            },    # max: 25; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      OptimizationJobName => 'MyEntityName',
      OutputConfig        => {
        S3OutputLocation => 'MyS3Uri',       # max: 1024; OPTIONAL
        KmsKeyId         => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },
      RoleArn           => 'MyRoleArn',
      StoppingCondition => {
        MaxPendingTimeInSeconds => 1,        # min: 7200, max: 2419200; OPTIONAL
        MaxRuntimeInSeconds     => 1,        # min: 1; OPTIONAL
        MaxWaitTimeInSeconds    => 1,        # min: 1; OPTIONAL
      },
      OptimizationEnvironment => {
        'MyNonEmptyString256' => 'MyString256', # key: max: 256, value: max: 256
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      VpcConfig => {
        SecurityGroupIds => [
          'MyOptimizationVpcSecurityGroupId', ...    # max: 32
        ],    # min: 1, max: 5
        Subnets => [
          'MyOptimizationVpcSubnetId', ...    # max: 32
        ],    # min: 1, max: 16

      },    # OPTIONAL
    );

    # Results:
    my $OptimizationJobArn = $CreateOptimizationJobResponse->OptimizationJobArn;

    # Returns a L<Paws::SageMaker::CreateOptimizationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateOptimizationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeploymentInstanceType => Str

The type of instance that hosts the optimized model that you create
with the optimization job.

Valid values are: C<"ml.p4d.24xlarge">, C<"ml.p4de.24xlarge">, C<"ml.p5.48xlarge">, C<"ml.g5.xlarge">, C<"ml.g5.2xlarge">, C<"ml.g5.4xlarge">, C<"ml.g5.8xlarge">, C<"ml.g5.12xlarge">, C<"ml.g5.16xlarge">, C<"ml.g5.24xlarge">, C<"ml.g5.48xlarge">, C<"ml.g6.xlarge">, C<"ml.g6.2xlarge">, C<"ml.g6.4xlarge">, C<"ml.g6.8xlarge">, C<"ml.g6.12xlarge">, C<"ml.g6.16xlarge">, C<"ml.g6.24xlarge">, C<"ml.g6.48xlarge">, C<"ml.g6e.xlarge">, C<"ml.g6e.2xlarge">, C<"ml.g6e.4xlarge">, C<"ml.g6e.8xlarge">, C<"ml.g6e.12xlarge">, C<"ml.g6e.16xlarge">, C<"ml.g6e.24xlarge">, C<"ml.g6e.48xlarge">, C<"ml.inf2.xlarge">, C<"ml.inf2.8xlarge">, C<"ml.inf2.24xlarge">, C<"ml.inf2.48xlarge">, C<"ml.trn1.2xlarge">, C<"ml.trn1.32xlarge">, C<"ml.trn1n.32xlarge">

=head2 B<REQUIRED> ModelSource => L<Paws::SageMaker::OptimizationJobModelSource>

The location of the source model to optimize with an optimization job.



=head2 B<REQUIRED> OptimizationConfigs => ArrayRef[L<Paws::SageMaker::OptimizationConfig>]

Settings for each of the optimization techniques that the job applies.



=head2 OptimizationEnvironment => L<Paws::SageMaker::OptimizationJobEnvironmentVariables>

The environment variables to set in the model container.



=head2 B<REQUIRED> OptimizationJobName => Str

A custom name for the new optimization job.



=head2 B<REQUIRED> OutputConfig => L<Paws::SageMaker::OptimizationJobOutputConfig>

Details for where to store the optimized model that you create with the
optimization job.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that enables Amazon
SageMaker AI to perform tasks on your behalf.

During model optimization, Amazon SageMaker AI needs your permission
to:

=over

=item *

Read input data from an S3 bucket

=item *

Write model artifacts to an S3 bucket

=item *

Write logs to Amazon CloudWatch Logs

=item *

Publish metrics to Amazon CloudWatch

=back

You grant permissions for all of these tasks to an IAM role. To pass
this role to Amazon SageMaker AI, the caller of this API must have the
C<iam:PassRole> permission. For more information, see Amazon SageMaker
AI Roles.
(https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html)



=head2 B<REQUIRED> StoppingCondition => L<Paws::SageMaker::StoppingCondition>





=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

A list of key-value pairs associated with the optimization job. For
more information, see Tagging Amazon Web Services resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference Guide>.



=head2 VpcConfig => L<Paws::SageMaker::OptimizationVpcConfig>

A VPC in Amazon VPC that your optimized model has access to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateOptimizationJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

