
package Paws::EC2::CreateVerifiedAccessEndpoint;
  use Moose;
  has ApplicationDomain => (is => 'ro', isa => 'Str');
  has AttachmentType => (is => 'ro', isa => 'Str', required => 1);
  has CidrOptions => (is => 'ro', isa => 'Paws::EC2::CreateVerifiedAccessEndpointCidrOptions');
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DomainCertificateArn => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has EndpointDomainPrefix => (is => 'ro', isa => 'Str');
  has EndpointType => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerOptions => (is => 'ro', isa => 'Paws::EC2::CreateVerifiedAccessEndpointLoadBalancerOptions');
  has NetworkInterfaceOptions => (is => 'ro', isa => 'Paws::EC2::CreateVerifiedAccessEndpointEniOptions');
  has PolicyDocument => (is => 'ro', isa => 'Str');
  has RdsOptions => (is => 'ro', isa => 'Paws::EC2::CreateVerifiedAccessEndpointRdsOptions');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has SseSpecification => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessSseSpecificationRequest');
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has VerifiedAccessGroupId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVerifiedAccessEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateVerifiedAccessEndpointResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVerifiedAccessEndpoint - Arguments for method CreateVerifiedAccessEndpoint on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVerifiedAccessEndpoint on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateVerifiedAccessEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVerifiedAccessEndpoint.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateVerifiedAccessEndpointResult = $ec2->CreateVerifiedAccessEndpoint(
      AttachmentType        => 'vpc',
      EndpointType          => 'load-balancer',
      VerifiedAccessGroupId => 'MyVerifiedAccessGroupId',
      ApplicationDomain     => 'MyString',                  # OPTIONAL
      CidrOptions           => {
        Cidr       => 'MyString',
        PortRanges => [
          {
            FromPort => 1,    # min: 1, max: 65535; OPTIONAL
            ToPort   => 1,    # min: 1, max: 65535; OPTIONAL
          },
          ...
        ],    # OPTIONAL
        Protocol  => 'http',                # values: http, https, tcp; OPTIONAL
        SubnetIds => [ 'MySubnetId', ... ], # OPTIONAL
      },    # OPTIONAL
      ClientToken          => 'MyString',            # OPTIONAL
      Description          => 'MyString',            # OPTIONAL
      DomainCertificateArn => 'MyCertificateArn',    # OPTIONAL
      DryRun               => 1,                     # OPTIONAL
      EndpointDomainPrefix => 'MyString',            # OPTIONAL
      LoadBalancerOptions  => {
        LoadBalancerArn => 'MyLoadBalancerArn',   # OPTIONAL
        Port            => 1,                     # min: 1, max: 65535; OPTIONAL
        PortRanges      => [
          {
            FromPort => 1,    # min: 1, max: 65535; OPTIONAL
            ToPort   => 1,    # min: 1, max: 65535; OPTIONAL
          },
          ...
        ],    # OPTIONAL
        Protocol  => 'http',                # values: http, https, tcp; OPTIONAL
        SubnetIds => [ 'MySubnetId', ... ], # OPTIONAL
      },    # OPTIONAL
      NetworkInterfaceOptions => {
        NetworkInterfaceId => 'MyNetworkInterfaceId',    # OPTIONAL
        Port               => 1,    # min: 1, max: 65535; OPTIONAL
        PortRanges         => [
          {
            FromPort => 1,    # min: 1, max: 65535; OPTIONAL
            ToPort   => 1,    # min: 1, max: 65535; OPTIONAL
          },
          ...
        ],    # OPTIONAL
        Protocol => 'http',    # values: http, https, tcp; OPTIONAL
      },    # OPTIONAL
      PolicyDocument => 'MyString',    # OPTIONAL
      RdsOptions     => {
        Port             => 1,         # min: 1, max: 65535; OPTIONAL
        Protocol         => 'http',    # values: http, https, tcp; OPTIONAL
        RdsDbClusterArn  => 'MyRdsDbClusterArn',      # OPTIONAL
        RdsDbInstanceArn => 'MyRdsDbInstanceArn',     # OPTIONAL
        RdsDbProxyArn    => 'MyRdsDbProxyArn',        # OPTIONAL
        RdsEndpoint      => 'MyString',
        SubnetIds        => [ 'MySubnetId', ... ],    # OPTIONAL
      },    # OPTIONAL
      SecurityGroupIds => [ 'MySecurityGroupId', ... ],    # OPTIONAL
      SseSpecification => {
        CustomerManagedKeyEnabled => 1,
        KmsKeyArn                 => 'MyKmsKeyArn',        # OPTIONAL
      },    # OPTIONAL
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
    );

    # Results:
    my $VerifiedAccessEndpoint =
      $CreateVerifiedAccessEndpointResult->VerifiedAccessEndpoint;

    # Returns a L<Paws::EC2::CreateVerifiedAccessEndpointResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateVerifiedAccessEndpoint>

=head1 ATTRIBUTES


=head2 ApplicationDomain => Str

The DNS name for users to reach your application.



=head2 B<REQUIRED> AttachmentType => Str

The type of attachment.

Valid values are: C<"vpc">

=head2 CidrOptions => L<Paws::EC2::CreateVerifiedAccessEndpointCidrOptions>

The CIDR options. This parameter is required if the endpoint type is
C<cidr>.



=head2 ClientToken => Str

A unique, case-sensitive token that you provide to ensure idempotency
of your modification request. For more information, see Ensuring
idempotency
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 Description => Str

A description for the Verified Access endpoint.



=head2 DomainCertificateArn => Str

The ARN of the public TLS/SSL certificate in Amazon Web Services
Certificate Manager to associate with the endpoint. The CN in the
certificate must match the DNS name your end users will use to reach
your application.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EndpointDomainPrefix => Str

A custom identifier that is prepended to the DNS name that is generated
for the endpoint.



=head2 B<REQUIRED> EndpointType => Str

The type of Verified Access endpoint to create.

Valid values are: C<"load-balancer">, C<"network-interface">, C<"rds">, C<"cidr">

=head2 LoadBalancerOptions => L<Paws::EC2::CreateVerifiedAccessEndpointLoadBalancerOptions>

The load balancer details. This parameter is required if the endpoint
type is C<load-balancer>.



=head2 NetworkInterfaceOptions => L<Paws::EC2::CreateVerifiedAccessEndpointEniOptions>

The network interface details. This parameter is required if the
endpoint type is C<network-interface>.



=head2 PolicyDocument => Str

The Verified Access policy document.



=head2 RdsOptions => L<Paws::EC2::CreateVerifiedAccessEndpointRdsOptions>

The RDS details. This parameter is required if the endpoint type is
C<rds>.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The IDs of the security groups to associate with the Verified Access
endpoint. Required if C<AttachmentType> is set to C<vpc>.



=head2 SseSpecification => L<Paws::EC2::VerifiedAccessSseSpecificationRequest>

The options for server side encryption.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to assign to the Verified Access endpoint.



=head2 B<REQUIRED> VerifiedAccessGroupId => Str

The ID of the Verified Access group to associate the endpoint with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVerifiedAccessEndpoint in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

