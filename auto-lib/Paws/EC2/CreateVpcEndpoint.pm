
package Paws::EC2::CreateVpcEndpoint;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DnsOptions => (is => 'ro', isa => 'Paws::EC2::DnsOptionsSpecification');
  has DryRun => (is => 'ro', isa => 'Bool');
  has IpAddressType => (is => 'ro', isa => 'Str');
  has PolicyDocument => (is => 'ro', isa => 'Str');
  has PrivateDnsEnabled => (is => 'ro', isa => 'Bool');
  has ResourceConfigurationArn => (is => 'ro', isa => 'Str');
  has RouteTableIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'RouteTableId' );
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has ServiceName => (is => 'ro', isa => 'Str');
  has ServiceNetworkArn => (is => 'ro', isa => 'Str');
  has ServiceRegion => (is => 'ro', isa => 'Str');
  has SubnetConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SubnetConfiguration]', traits => ['NameInRequest'], request_name => 'SubnetConfiguration' );
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SubnetId' );
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has VpcEndpointType => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpcEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateVpcEndpointResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpcEndpoint - Arguments for method CreateVpcEndpoint on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpcEndpoint on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateVpcEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpcEndpoint.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateVpcEndpointResult = $ec2->CreateVpcEndpoint(
      VpcId       => 'MyVpcId',
      ClientToken => 'MyString',    # OPTIONAL
      DnsOptions  => {
        DnsRecordIpType =>
          'ipv4',    # values: ipv4, dualstack, ipv6, service-defined; OPTIONAL
        PrivateDnsOnlyForInboundResolverEndpoint => 1,    # OPTIONAL
      },    # OPTIONAL
      DryRun                   => 1,                               # OPTIONAL
      IpAddressType            => 'ipv4',                          # OPTIONAL
      PolicyDocument           => 'MyString',                      # OPTIONAL
      PrivateDnsEnabled        => 1,                               # OPTIONAL
      ResourceConfigurationArn => 'MyResourceConfigurationArn',    # OPTIONAL
      RouteTableIds            => [ 'MyRouteTableId',    ... ],    # OPTIONAL
      SecurityGroupIds         => [ 'MySecurityGroupId', ... ],    # OPTIONAL
      ServiceName              => 'MyString',                      # OPTIONAL
      ServiceNetworkArn        => 'MyServiceNetworkArn',           # OPTIONAL
      ServiceRegion            => 'MyString',                      # OPTIONAL
      SubnetConfigurations     => [
        {
          Ipv4     => 'MyString',
          Ipv6     => 'MyString',
          SubnetId => 'MySubnetId',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      SubnetIds => [
        'MySubnetId', ...    # OPTIONAL
      ],    # OPTIONAL
      TagSpecifications => [
        {
          ResourceType => 'capacity-reservation'
          , # values: capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, coip-pool, declarative-policies-report, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, outpost-lag, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, service-link-virtual-interface, snapshot, spot-fleet-request, spot-instances-request, subnet, subnet-cidr-reservation, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-policy-table, transit-gateway-route-table, transit-gateway-route-table-announcement, volume, vpc, vpc-endpoint, vpc-endpoint-connection, vpc-endpoint-service, vpc-endpoint-service-permission, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log, capacity-reservation-fleet, traffic-mirror-filter-rule, vpc-endpoint-connection-device-type, verified-access-instance, verified-access-group, verified-access-endpoint, verified-access-policy, verified-access-trust-provider, vpn-connection-device-type, vpc-block-public-access-exclusion, route-server, route-server-endpoint, route-server-peer, ipam-resource-discovery, ipam-resource-discovery-association, instance-connect-endpoint, verified-access-endpoint-target, ipam-external-resource-verification-token, mac-modification-task; OPTIONAL
          Tags => [
            {
              Key   => 'MyString',
              Value => 'MyString',
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      VpcEndpointType => 'Interface',    # OPTIONAL
    );

    # Results:
    my $ClientToken = $CreateVpcEndpointResult->ClientToken;
    my $VpcEndpoint = $CreateVpcEndpointResult->VpcEndpoint;

    # Returns a L<Paws::EC2::CreateVpcEndpointResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateVpcEndpoint>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to ensure
idempotency
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 DnsOptions => L<Paws::EC2::DnsOptionsSpecification>

The DNS options for the endpoint.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 IpAddressType => Str

The IP address type for the endpoint.

Valid values are: C<"ipv4">, C<"dualstack">, C<"ipv6">

=head2 PolicyDocument => Str

(Interface and gateway endpoints) A policy to attach to the endpoint
that controls access to the service. The policy must be in valid JSON
format. If this parameter is not specified, we attach a default policy
that allows full access to the service.



=head2 PrivateDnsEnabled => Bool

(Interface endpoint) Indicates whether to associate a private hosted
zone with the specified VPC. The private hosted zone contains a record
set for the default public DNS name for the service for the Region (for
example, C<kinesis.us-east-1.amazonaws.com>), which resolves to the
private IP addresses of the endpoint network interfaces in the VPC.
This enables you to make requests to the default public DNS name for
the service instead of the public DNS names that are automatically
generated by the VPC endpoint service.

To use a private hosted zone, you must set the following VPC attributes
to C<true>: C<enableDnsHostnames> and C<enableDnsSupport>. Use
ModifyVpcAttribute to set the VPC attributes.



=head2 ResourceConfigurationArn => Str

The Amazon Resource Name (ARN) of a resource configuration that will be
associated with the VPC endpoint of type resource.



=head2 RouteTableIds => ArrayRef[Str|Undef]

(Gateway endpoint) The route table IDs.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

(Interface endpoint) The IDs of the security groups to associate with
the endpoint network interfaces. If this parameter is not specified, we
use the default security group for the VPC.



=head2 ServiceName => Str

The name of the endpoint service.



=head2 ServiceNetworkArn => Str

The Amazon Resource Name (ARN) of a service network that will be
associated with the VPC endpoint of type service-network.



=head2 ServiceRegion => Str

The Region where the service is hosted. The default is the current
Region.



=head2 SubnetConfigurations => ArrayRef[L<Paws::EC2::SubnetConfiguration>]

The subnet configurations for the endpoint.



=head2 SubnetIds => ArrayRef[Str|Undef]

(Interface and Gateway Load Balancer endpoints) The IDs of the subnets
in which to create endpoint network interfaces. For a Gateway Load
Balancer endpoint, you can specify only one subnet.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to associate with the endpoint.



=head2 VpcEndpointType => Str

The type of endpoint.

Default: Gateway

Valid values are: C<"Interface">, C<"Gateway">, C<"GatewayLoadBalancer">, C<"Resource">, C<"ServiceNetwork">

=head2 B<REQUIRED> VpcId => Str

The ID of the VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpcEndpoint in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

