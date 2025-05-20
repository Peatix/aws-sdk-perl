
package Paws::SageMaker::CreateCluster;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', required => 1);
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ClusterInstanceGroupSpecification]', required => 1);
  has NodeRecovery => (is => 'ro', isa => 'Str');
  has Orchestrator => (is => 'ro', isa => 'Paws::SageMaker::ClusterOrchestrator');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has VpcConfig => (is => 'ro', isa => 'Paws::SageMaker::VpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateClusterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateCluster - Arguments for method CreateCluster on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCluster on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCluster.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateClusterResponse = $api . sagemaker->CreateCluster(
      ClusterName    => 'MyClusterName',
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
      NodeRecovery => 'Automatic',                # OPTIONAL
      Orchestrator => {
        Eks => {
          ClusterArn => 'MyEksClusterArn',        # min: 20, max: 2048

        },

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
          'MySecurityGroupId', ...    # max: 32
        ],    # min: 1, max: 5
        Subnets => [
          'MySubnetId', ...    # max: 32
        ],    # min: 1, max: 16

      },    # OPTIONAL
    );

    # Results:
    my $ClusterArn = $CreateClusterResponse->ClusterArn;

    # Returns a L<Paws::SageMaker::CreateClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The name for the new SageMaker HyperPod cluster.



=head2 B<REQUIRED> InstanceGroups => ArrayRef[L<Paws::SageMaker::ClusterInstanceGroupSpecification>]

The instance groups to be created in the SageMaker HyperPod cluster.



=head2 NodeRecovery => Str

The node recovery mode for the SageMaker HyperPod cluster. When set to
C<Automatic>, SageMaker HyperPod will automatically reboot or replace
faulty nodes when issues are detected. When set to C<None>, cluster
administrators will need to manually manage any faulty cluster
instances.

Valid values are: C<"Automatic">, C<"None">

=head2 Orchestrator => L<Paws::SageMaker::ClusterOrchestrator>

The type of orchestrator to use for the SageMaker HyperPod cluster.
Currently, the only supported value is C<"eks">, which is to use an
Amazon Elastic Kubernetes Service (EKS) cluster as the orchestrator.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

Custom tags for managing the SageMaker HyperPod cluster as an Amazon
Web Services resource. You can add tags to your cluster in the same way
you add them in other Amazon Web Services services that support
tagging. To learn more about tagging Amazon Web Services resources in
general, see Tagging Amazon Web Services Resources User Guide
(https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html).



=head2 VpcConfig => L<Paws::SageMaker::VpcConfig>

Specifies the Amazon Virtual Private Cloud (VPC) that is associated
with the Amazon SageMaker HyperPod cluster. You can control access to
and from your resources by configuring your VPC. For more information,
see Give SageMaker access to resources in your Amazon VPC
(https://docs.aws.amazon.com/sagemaker/latest/dg/infrastructure-give-access.html).

When your Amazon VPC and subnets support IPv6, network communications
differ based on the cluster orchestration platform:

=over

=item *

Slurm-orchestrated clusters automatically configure nodes with dual
IPv6 and IPv4 addresses, allowing immediate IPv6 network
communications.

=item *

In Amazon EKS-orchestrated clusters, nodes receive dual-stack
addressing, but pods can only use IPv6 when the Amazon EKS cluster is
explicitly IPv6-enabled. For information about deploying an IPv6 Amazon
EKS cluster, see Amazon EKS IPv6 Cluster Deployment
(https://docs.aws.amazon.com/eks/latest/userguide/deploy-ipv6-cluster.html#_deploy_an_ipv6_cluster_with_eksctl).

=back

Additional resources for IPv6 configuration:

=over

=item *

For information about adding IPv6 support to your VPC, see to IPv6
Support for VPC
(https://docs.aws.amazon.com/vpc/latest/userguide/vpc-migrate-ipv6.html).

=item *

For information about creating a new IPv6-compatible VPC, see Amazon
VPC Creation Guide
(https://docs.aws.amazon.com/vpc/latest/userguide/create-vpc.html).

=item *

To configure SageMaker HyperPod with a custom Amazon VPC, see Custom
Amazon VPC Setup for SageMaker HyperPod
(https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-hyperpod-prerequisites.html#sagemaker-hyperpod-prerequisites-optional-vpc).

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCluster in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

