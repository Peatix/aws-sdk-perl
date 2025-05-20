
package Paws::SageMaker::UpdateCluster;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', required => 1);
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ClusterInstanceGroupSpecification]', required => 1);
  has InstanceGroupsToDelete => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NodeRecovery => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateClusterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateCluster - Arguments for method UpdateCluster on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCluster on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCluster.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateClusterResponse = $api . sagemaker->UpdateCluster(
      ClusterName    => 'MyClusterNameOrArn',
      InstanceGroups => [
        {
          ExecutionRole     => 'MyRoleArn',    # min: 20, max: 2048
          InstanceCount     => 1,              # max: 6758
          InstanceGroupName => 'MyClusterInstanceGroupName',   # min: 1, max: 63
          InstanceType      => 'ml.p4d.24xlarge'
          , # values: ml.p4d.24xlarge, ml.p4de.24xlarge, ml.p5.48xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.12xlarge, ml.g5.16xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.c5n.large, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.16xlarge, ml.g6.12xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.gr6.4xlarge, ml.gr6.8xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.16xlarge, ml.g6e.12xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.p5e.48xlarge, ml.p5en.48xlarge, ml.trn2.48xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.i3en.large, ml.i3en.xlarge, ml.i3en.2xlarge, ml.i3en.3xlarge, ml.i3en.6xlarge, ml.i3en.12xlarge, ml.i3en.24xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge
          LifeCycleConfig => {
            OnCreate => 'MyClusterLifeCycleConfigFileName',   # min: 1, max: 128
            SourceS3Uri => 'MyS3Uri',                         # max: 1024

          },
          InstanceStorageConfigs => [
            {
              EbsVolumeConfig => {
                VolumeSizeInGB => 1,    # min: 1, max: 16384

              },    # OPTIONAL
            },
            ...
          ],    # max: 1; OPTIONAL
          OnStartDeepHealthChecks => [
            'InstanceStress', ... # values: InstanceStress, InstanceConnectivity
          ],    # min: 1, max: 2; OPTIONAL
          OverrideVpcConfig => {
            SecurityGroupIds => [
              'MySecurityGroupId', ...    # max: 32
            ],    # min: 1, max: 5
            Subnets => [
              'MySubnetId', ...    # max: 32
            ],    # min: 1, max: 16

          },    # OPTIONAL
          ScheduledUpdateConfig => {
            ScheduleExpression => 'MyCronScheduleExpression', # min: 1, max: 256
            DeploymentConfig   => {
              AutoRollbackConfiguration => [
                {
                  AlarmName => 'MyAlarmName',    # min: 1, max: 255

                },
                ...
              ],    # min: 1, max: 10; OPTIONAL
              RollingUpdatePolicy => {
                MaximumBatchSize => {
                  Type => 'INSTANCE_COUNT'
                  ,              # values: INSTANCE_COUNT, CAPACITY_PERCENTAGE
                  Value => 1,    # min: 1

                },
                RollbackMaximumBatchSize => {
                  Type => 'INSTANCE_COUNT'
                  ,              # values: INSTANCE_COUNT, CAPACITY_PERCENTAGE
                  Value => 1,    # min: 1

                },
              },    # OPTIONAL
              WaitIntervalInSeconds => 1,    # max: 3600; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          ThreadsPerCore  => 1,                   # min: 1, max: 2; OPTIONAL
          TrainingPlanArn => 'MyTrainingPlanArn', # min: 50, max: 2048; OPTIONAL
        },
        ...
      ],
      InstanceGroupsToDelete => [
        'MyClusterInstanceGroupName',
        ...                                       # min: 1, max: 63
      ],    # OPTIONAL
      NodeRecovery => 'Automatic',    # OPTIONAL
    );

    # Results:
    my $ClusterArn = $UpdateClusterResponse->ClusterArn;

    # Returns a L<Paws::SageMaker::UpdateClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

Specify the name of the SageMaker HyperPod cluster you want to update.



=head2 B<REQUIRED> InstanceGroups => ArrayRef[L<Paws::SageMaker::ClusterInstanceGroupSpecification>]

Specify the instance groups to update.



=head2 InstanceGroupsToDelete => ArrayRef[Str|Undef]

Specify the names of the instance groups to delete. Use a single C<,>
as the separator between multiple names.



=head2 NodeRecovery => Str

The node recovery mode to be applied to the SageMaker HyperPod cluster.

Valid values are: C<"Automatic">, C<"None">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCluster in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

