
package Paws::EKS::CreateCluster;
  use Moose;
  has AccessConfig => (is => 'ro', isa => 'Paws::EKS::CreateAccessConfigRequest', traits => ['NameInRequest'], request_name => 'accessConfig');
  has BootstrapSelfManagedAddons => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'bootstrapSelfManagedAddons');
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has ComputeConfig => (is => 'ro', isa => 'Paws::EKS::ComputeConfigRequest', traits => ['NameInRequest'], request_name => 'computeConfig');
  has EncryptionConfig => (is => 'ro', isa => 'ArrayRef[Paws::EKS::EncryptionConfig]', traits => ['NameInRequest'], request_name => 'encryptionConfig');
  has KubernetesNetworkConfig => (is => 'ro', isa => 'Paws::EKS::KubernetesNetworkConfigRequest', traits => ['NameInRequest'], request_name => 'kubernetesNetworkConfig');
  has Logging => (is => 'ro', isa => 'Paws::EKS::Logging', traits => ['NameInRequest'], request_name => 'logging');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OutpostConfig => (is => 'ro', isa => 'Paws::EKS::OutpostConfigRequest', traits => ['NameInRequest'], request_name => 'outpostConfig');
  has RemoteNetworkConfig => (is => 'ro', isa => 'Paws::EKS::RemoteNetworkConfigRequest', traits => ['NameInRequest'], request_name => 'remoteNetworkConfig');
  has ResourcesVpcConfig => (is => 'ro', isa => 'Paws::EKS::VpcConfigRequest', traits => ['NameInRequest'], request_name => 'resourcesVpcConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has StorageConfig => (is => 'ro', isa => 'Paws::EKS::StorageConfigRequest', traits => ['NameInRequest'], request_name => 'storageConfig');
  has Tags => (is => 'ro', isa => 'Paws::EKS::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has UpgradePolicy => (is => 'ro', isa => 'Paws::EKS::UpgradePolicyRequest', traits => ['NameInRequest'], request_name => 'upgradePolicy');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');
  has ZonalShiftConfig => (is => 'ro', isa => 'Paws::EKS::ZonalShiftConfigRequest', traits => ['NameInRequest'], request_name => 'zonalShiftConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCluster');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::CreateClusterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::CreateCluster - Arguments for method CreateCluster on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCluster on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method CreateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCluster.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    # To create a new cluster
    # The following example creates an Amazon EKS cluster called prod.
    my $CreateClusterResponse = $eks->CreateCluster(
      'ClientRequestToken' => '1d2129a1-3d38-460a-9756-e5b91fddb951',
      'Name'               => 'prod',
      'ResourcesVpcConfig' => {
        'SecurityGroupIds' => ['sg-6979fe18'],
        'SubnetIds'        => [ 'subnet-6782e71e', 'subnet-e7e761ac' ]
      },
      'RoleArn' =>
'arn:aws:iam::012345678910:role/eks-service-role-AWSServiceRoleForAmazonEKS-J7ONKE3BQ4PI',
      'Version' => 1.10
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/CreateCluster>

=head1 ATTRIBUTES


=head2 AccessConfig => L<Paws::EKS::CreateAccessConfigRequest>

The access configuration for the cluster.



=head2 BootstrapSelfManagedAddons => Bool

If you set this value to C<False> when creating a cluster, the default
networking add-ons will not be installed.

The default networking addons include vpc-cni, coredns, and kube-proxy.

Use this option when you plan to install third-party alternative
add-ons or self-manage the default networking add-ons.



=head2 ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 ComputeConfig => L<Paws::EKS::ComputeConfigRequest>

Enable or disable the compute capability of EKS Auto Mode when creating
your EKS Auto Mode cluster. If the compute capability is enabled, EKS
Auto Mode will create and delete EC2 Managed Instances in your Amazon
Web Services account



=head2 EncryptionConfig => ArrayRef[L<Paws::EKS::EncryptionConfig>]

The encryption configuration for the cluster.



=head2 KubernetesNetworkConfig => L<Paws::EKS::KubernetesNetworkConfigRequest>

The Kubernetes network configuration for the cluster.



=head2 Logging => L<Paws::EKS::Logging>

Enable or disable exporting the Kubernetes control plane logs for your
cluster to CloudWatch Logs . By default, cluster control plane logs
aren't exported to CloudWatch Logs . For more information, see Amazon
EKS Cluster control plane logs
(https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html)
in the I< I<Amazon EKS User Guide> >.

CloudWatch Logs ingestion, archive storage, and data scanning rates
apply to exported control plane logs. For more information, see
CloudWatch Pricing (http://aws.amazon.com/cloudwatch/pricing/).



=head2 B<REQUIRED> Name => Str

The unique name to give to your cluster. The name can contain only
alphanumeric characters (case-sensitive), hyphens, and underscores. It
must start with an alphanumeric character and can't be longer than 100
characters. The name must be unique within the Amazon Web Services
Region and Amazon Web Services account that you're creating the cluster
in.



=head2 OutpostConfig => L<Paws::EKS::OutpostConfigRequest>

An object representing the configuration of your local Amazon EKS
cluster on an Amazon Web Services Outpost. Before creating a local
cluster on an Outpost, review Local clusters for Amazon EKS on Amazon
Web Services Outposts
(https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-local-cluster-overview.html)
in the I<Amazon EKS User Guide>. This object isn't available for
creating Amazon EKS clusters on the Amazon Web Services cloud.



=head2 RemoteNetworkConfig => L<Paws::EKS::RemoteNetworkConfigRequest>

The configuration in the cluster for EKS Hybrid Nodes. You can add,
change, or remove this configuration after the cluster is created.



=head2 B<REQUIRED> ResourcesVpcConfig => L<Paws::EKS::VpcConfigRequest>

The VPC configuration that's used by the cluster control plane. Amazon
EKS VPC resources have specific requirements to work properly with
Kubernetes. For more information, see Cluster VPC Considerations
(https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html)
and Cluster Security Group Considerations
(https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html)
in the I<Amazon EKS User Guide>. You must specify at least two subnets.
You can specify up to five security groups. However, we recommend that
you use a dedicated security group for your cluster control plane.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that provides
permissions for the Kubernetes control plane to make calls to Amazon
Web Services API operations on your behalf. For more information, see
Amazon EKS Service IAM Role
(https://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html)
in the I< I<Amazon EKS User Guide> >.



=head2 StorageConfig => L<Paws::EKS::StorageConfigRequest>

Enable or disable the block storage capability of EKS Auto Mode when
creating your EKS Auto Mode cluster. If the block storage capability is
enabled, EKS Auto Mode will create and delete EBS volumes in your
Amazon Web Services account.



=head2 Tags => L<Paws::EKS::TagMap>

Metadata that assists with categorization and organization. Each tag
consists of a key and an optional value. You define both. Tags don't
propagate to any other cluster or Amazon Web Services resources.



=head2 UpgradePolicy => L<Paws::EKS::UpgradePolicyRequest>

New clusters, by default, have extended support enabled. You can
disable extended support when creating a cluster by setting this value
to C<STANDARD>.



=head2 Version => Str

The desired Kubernetes version for your cluster. If you don't specify a
value here, the default version available in Amazon EKS is used.

The default version might not be the latest version available.



=head2 ZonalShiftConfig => L<Paws::EKS::ZonalShiftConfigRequest>

Enable or disable ARC zonal shift for the cluster. If zonal shift is
enabled, Amazon Web Services configures zonal autoshift for the
cluster.

Zonal shift is a feature of Amazon Application Recovery Controller
(ARC). ARC zonal shift is designed to be a temporary measure that
allows you to move traffic for a resource away from an impaired AZ
until the zonal shift expires or you cancel it. You can extend the
zonal shift if necessary.

You can start a zonal shift for an Amazon EKS cluster, or you can allow
Amazon Web Services to do it for you by enabling I<zonal autoshift>.
This shift updates the flow of east-to-west network traffic in your
cluster to only consider network endpoints for Pods running on worker
nodes in healthy AZs. Additionally, any ALB or NLB handling ingress
traffic for applications in your Amazon EKS cluster will automatically
route traffic to targets in the healthy AZs. For more information about
zonal shift in EKS, see Learn about Amazon Application Recovery
Controller (ARC) Zonal Shift in Amazon EKS
(https://docs.aws.amazon.com/eks/latest/userguide/zone-shift.html) in
the I< I<Amazon EKS User Guide> >.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCluster in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

