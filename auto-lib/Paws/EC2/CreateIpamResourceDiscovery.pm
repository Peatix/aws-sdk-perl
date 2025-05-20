
package Paws::EC2::CreateIpamResourceDiscovery;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has OperatingRegions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AddIpamOperatingRegion]', traits => ['NameInRequest'], request_name => 'OperatingRegion' );
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIpamResourceDiscovery');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateIpamResourceDiscoveryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateIpamResourceDiscovery - Arguments for method CreateIpamResourceDiscovery on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIpamResourceDiscovery on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateIpamResourceDiscovery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIpamResourceDiscovery.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateIpamResourceDiscoveryResult = $ec2->CreateIpamResourceDiscovery(
      ClientToken       => 'MyString',                                # OPTIONAL
      Description       => 'MyString',                                # OPTIONAL
      DryRun            => 1,                                         # OPTIONAL
      OperatingRegions  => [ { RegionName => 'MyString', }, ... ],    # OPTIONAL
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
    my $IpamResourceDiscovery =
      $CreateIpamResourceDiscoveryResult->IpamResourceDiscovery;

    # Returns a L<Paws::EC2::CreateIpamResourceDiscoveryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateIpamResourceDiscovery>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A client token for the IPAM resource discovery.



=head2 Description => Str

A description for the IPAM resource discovery.



=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 OperatingRegions => ArrayRef[L<Paws::EC2::AddIpamOperatingRegion>]

Operating Regions for the IPAM resource discovery. Operating Regions
are Amazon Web Services Regions where the IPAM is allowed to manage IP
address CIDRs. IPAM only discovers and monitors resources in the Amazon
Web Services Regions you select as operating Regions.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

Tag specifications for the IPAM resource discovery.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIpamResourceDiscovery in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

