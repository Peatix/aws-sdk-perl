
package Paws::EC2::CreateIpam;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has EnablePrivateGua => (is => 'ro', isa => 'Bool');
  has MeteredAccount => (is => 'ro', isa => 'Str');
  has OperatingRegions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AddIpamOperatingRegion]', traits => ['NameInRequest'], request_name => 'OperatingRegion' );
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has Tier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIpam');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateIpamResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateIpam - Arguments for method CreateIpam on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIpam on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateIpam.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIpam.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateIpamResult = $ec2->CreateIpam(
      ClientToken       => 'MyString',                                # OPTIONAL
      Description       => 'MyString',                                # OPTIONAL
      DryRun            => 1,                                         # OPTIONAL
      EnablePrivateGua  => 1,                                         # OPTIONAL
      MeteredAccount    => 'ipam-owner',                              # OPTIONAL
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
      Tier => 'free',    # OPTIONAL
    );

    # Results:
    my $Ipam = $CreateIpamResult->Ipam;

    # Returns a L<Paws::EC2::CreateIpamResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateIpam>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see Ensuring
idempotency
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 Description => Str

A description for the IPAM.



=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EnablePrivateGua => Bool

Enable this option to use your own GUA ranges as private IPv6
addresses. This option is disabled by default.



=head2 MeteredAccount => Str

A metered account is an Amazon Web Services account that is charged for
active IP addresses managed in IPAM. For more information, see Enable
cost distribution
(https://docs.aws.amazon.com/vpc/latest/ipam/ipam-enable-cost-distro.html)
in the I<Amazon VPC IPAM User Guide>.

Possible values:

=over

=item *

C<ipam-owner> (default): The Amazon Web Services account which owns the
IPAM is charged for all active IP addresses managed in IPAM.

=item *

C<resource-owner>: The Amazon Web Services account that owns the IP
address is charged for the active IP address.

=back


Valid values are: C<"ipam-owner">, C<"resource-owner">

=head2 OperatingRegions => ArrayRef[L<Paws::EC2::AddIpamOperatingRegion>]

The operating Regions for the IPAM. Operating Regions are Amazon Web
Services Regions where the IPAM is allowed to manage IP address CIDRs.
IPAM only discovers and monitors resources in the Amazon Web Services
Regions you select as operating Regions.

For more information about operating Regions, see Create an IPAM
(https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html) in the
I<Amazon VPC IPAM User Guide>.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The key/value combination of a tag assigned to the resource. Use the
tag key in the filter name and the tag value as the filter value. For
example, to find all resources that have a tag with the key C<Owner>
and the value C<TeamA>, specify C<tag:Owner> for the filter name and
C<TeamA> for the filter value.



=head2 Tier => Str

IPAM is offered in a Free Tier and an Advanced Tier. For more
information about the features available in each tier and the costs
associated with the tiers, see Amazon VPC pricing E<gt> IPAM tab
(http://aws.amazon.com/vpc/pricing/).

Valid values are: C<"free">, C<"advanced">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIpam in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

