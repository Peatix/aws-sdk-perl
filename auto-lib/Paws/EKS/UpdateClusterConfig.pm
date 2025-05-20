
package Paws::EKS::UpdateClusterConfig;
  use Moose;
  has AccessConfig => (is => 'ro', isa => 'Paws::EKS::UpdateAccessConfigRequest', traits => ['NameInRequest'], request_name => 'accessConfig');
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has ComputeConfig => (is => 'ro', isa => 'Paws::EKS::ComputeConfigRequest', traits => ['NameInRequest'], request_name => 'computeConfig');
  has KubernetesNetworkConfig => (is => 'ro', isa => 'Paws::EKS::KubernetesNetworkConfigRequest', traits => ['NameInRequest'], request_name => 'kubernetesNetworkConfig');
  has Logging => (is => 'ro', isa => 'Paws::EKS::Logging', traits => ['NameInRequest'], request_name => 'logging');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has RemoteNetworkConfig => (is => 'ro', isa => 'Paws::EKS::RemoteNetworkConfigRequest', traits => ['NameInRequest'], request_name => 'remoteNetworkConfig');
  has ResourcesVpcConfig => (is => 'ro', isa => 'Paws::EKS::VpcConfigRequest', traits => ['NameInRequest'], request_name => 'resourcesVpcConfig');
  has StorageConfig => (is => 'ro', isa => 'Paws::EKS::StorageConfigRequest', traits => ['NameInRequest'], request_name => 'storageConfig');
  has UpgradePolicy => (is => 'ro', isa => 'Paws::EKS::UpgradePolicyRequest', traits => ['NameInRequest'], request_name => 'upgradePolicy');
  has ZonalShiftConfig => (is => 'ro', isa => 'Paws::EKS::ZonalShiftConfigRequest', traits => ['NameInRequest'], request_name => 'zonalShiftConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateClusterConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/update-config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::UpdateClusterConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::UpdateClusterConfig - Arguments for method UpdateClusterConfig on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateClusterConfig on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method UpdateClusterConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateClusterConfig.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $UpdateClusterConfigResponse = $eks->UpdateClusterConfig(
      Name         => 'MyString',
      AccessConfig => {
        AuthenticationMode =>
          'API',    # values: API, API_AND_CONFIG_MAP, CONFIG_MAP; OPTIONAL
      },    # OPTIONAL
      ClientRequestToken => 'MyString',    # OPTIONAL
      ComputeConfig      => {
        Enabled     => 1,                      # OPTIONAL
        NodePools   => [ 'MyString', ... ],    # OPTIONAL
        NodeRoleArn => 'MyString',
      },    # OPTIONAL
      KubernetesNetworkConfig => {
        ElasticLoadBalancing => {
          Enabled => 1,    # OPTIONAL
        },    # OPTIONAL
        IpFamily        => 'ipv4',       # values: ipv4, ipv6; OPTIONAL
        ServiceIpv4Cidr => 'MyString',
      },    # OPTIONAL
      Logging => {
        ClusterLogging => [
          {
            Enabled => 1,    # OPTIONAL
            Types   => [
              'api',
              ... # values: api, audit, authenticator, controllerManager, scheduler
            ],    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      RemoteNetworkConfig => {
        RemoteNodeNetworks => [
          {
            Cidrs => [ 'MyString', ... ],    # OPTIONAL
          },
          ...
        ],    # max: 1; OPTIONAL
        RemotePodNetworks => [
          {
            Cidrs => [ 'MyString', ... ],    # OPTIONAL
          },
          ...
        ],    # max: 1; OPTIONAL
      },    # OPTIONAL
      ResourcesVpcConfig => {
        EndpointPrivateAccess => 1,                      # OPTIONAL
        EndpointPublicAccess  => 1,                      # OPTIONAL
        PublicAccessCidrs     => [ 'MyString', ... ],    # OPTIONAL
        SecurityGroupIds      => [ 'MyString', ... ],    # OPTIONAL
        SubnetIds             => [ 'MyString', ... ],    # OPTIONAL
      },    # OPTIONAL
      StorageConfig => {
        BlockStorage => {
          Enabled => 1,    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      UpgradePolicy => {
        SupportType => 'STANDARD',    # values: STANDARD, EXTENDED; OPTIONAL
      },    # OPTIONAL
      ZonalShiftConfig => {
        Enabled => 1,    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Update = $UpdateClusterConfigResponse->Update;

    # Returns a L<Paws::EKS::UpdateClusterConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/UpdateClusterConfig>

=head1 ATTRIBUTES


=head2 AccessConfig => L<Paws::EKS::UpdateAccessConfigRequest>

The access configuration for the cluster.



=head2 ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 ComputeConfig => L<Paws::EKS::ComputeConfigRequest>

Update the configuration of the compute capability of your EKS Auto
Mode cluster. For example, enable the capability.



=head2 KubernetesNetworkConfig => L<Paws::EKS::KubernetesNetworkConfigRequest>





=head2 Logging => L<Paws::EKS::Logging>

Enable or disable exporting the Kubernetes control plane logs for your
cluster to CloudWatch Logs . By default, cluster control plane logs
aren't exported to CloudWatch Logs . For more information, see Amazon
EKS cluster control plane logs
(https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html)
in the I< I<Amazon EKS User Guide> >.

CloudWatch Logs ingestion, archive storage, and data scanning rates
apply to exported control plane logs. For more information, see
CloudWatch Pricing (http://aws.amazon.com/cloudwatch/pricing/).



=head2 B<REQUIRED> Name => Str

The name of the Amazon EKS cluster to update.



=head2 RemoteNetworkConfig => L<Paws::EKS::RemoteNetworkConfigRequest>





=head2 ResourcesVpcConfig => L<Paws::EKS::VpcConfigRequest>





=head2 StorageConfig => L<Paws::EKS::StorageConfigRequest>

Update the configuration of the block storage capability of your EKS
Auto Mode cluster. For example, enable the capability.



=head2 UpgradePolicy => L<Paws::EKS::UpgradePolicyRequest>

You can enable or disable extended support for clusters currently on
standard support. You cannot disable extended support once it starts.
You must enable extended support before your cluster exits standard
support.



=head2 ZonalShiftConfig => L<Paws::EKS::ZonalShiftConfigRequest>

Enable or disable ARC zonal shift for the cluster. If zonal shift is
enabled, Amazon Web Services configures zonal autoshift for the
cluster.

Zonal shift is a feature of Amazon Application Recovery Controller
(ARC). ARC zonal shift is designed to be a temporary measure that
allows you to move traffic for a resource away from an impaired AZ
until the zonal shift expires or you cancel it. You can extend the
zonal shift if necessary.

You can start a zonal shift for an EKS cluster, or you can allow Amazon
Web Services to do it for you by enabling I<zonal autoshift>. This
shift updates the flow of east-to-west network traffic in your cluster
to only consider network endpoints for Pods running on worker nodes in
healthy AZs. Additionally, any ALB or NLB handling ingress traffic for
applications in your EKS cluster will automatically route traffic to
targets in the healthy AZs. For more information about zonal shift in
EKS, see Learn about Amazon Application Recovery Controller (ARC) Zonal
Shift in Amazon EKS
(https://docs.aws.amazon.com/eks/latest/userguide/zone-shift.html) in
the I< I<Amazon EKS User Guide> >.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateClusterConfig in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

