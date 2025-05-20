
package Paws::EC2::CreateIpamPool;
  use Moose;
  has AddressFamily => (is => 'ro', isa => 'Str', required => 1);
  has AllocationDefaultNetmaskLength => (is => 'ro', isa => 'Int');
  has AllocationMaxNetmaskLength => (is => 'ro', isa => 'Int');
  has AllocationMinNetmaskLength => (is => 'ro', isa => 'Int');
  has AllocationResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RequestIpamResourceTag]', traits => ['NameInRequest'], request_name => 'AllocationResourceTag' );
  has AutoImport => (is => 'ro', isa => 'Bool');
  has AwsService => (is => 'ro', isa => 'Str');
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has IpamScopeId => (is => 'ro', isa => 'Str', required => 1);
  has Locale => (is => 'ro', isa => 'Str');
  has PublicIpSource => (is => 'ro', isa => 'Str');
  has PubliclyAdvertisable => (is => 'ro', isa => 'Bool');
  has SourceIpamPoolId => (is => 'ro', isa => 'Str');
  has SourceResource => (is => 'ro', isa => 'Paws::EC2::IpamPoolSourceResourceRequest');
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIpamPool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateIpamPoolResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateIpamPool - Arguments for method CreateIpamPool on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIpamPool on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateIpamPool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIpamPool.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateIpamPoolResult = $ec2->CreateIpamPool(
      AddressFamily                  => 'ipv4',
      IpamScopeId                    => 'MyIpamScopeId',
      AllocationDefaultNetmaskLength => 1,                 # OPTIONAL
      AllocationMaxNetmaskLength     => 1,                 # OPTIONAL
      AllocationMinNetmaskLength     => 1,                 # OPTIONAL
      AllocationResourceTags         => [
        {
          Key   => 'MyString',    # OPTIONAL
          Value => 'MyString',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      AutoImport           => 1,                 # OPTIONAL
      AwsService           => 'ec2',             # OPTIONAL
      ClientToken          => 'MyString',        # OPTIONAL
      Description          => 'MyString',        # OPTIONAL
      DryRun               => 1,                 # OPTIONAL
      Locale               => 'MyString',        # OPTIONAL
      PublicIpSource       => 'amazon',          # OPTIONAL
      PubliclyAdvertisable => 1,                 # OPTIONAL
      SourceIpamPoolId     => 'MyIpamPoolId',    # OPTIONAL
      SourceResource       => {
        ResourceId     => 'MyString',            # OPTIONAL
        ResourceOwner  => 'MyString',            # OPTIONAL
        ResourceRegion => 'MyString',            # OPTIONAL
        ResourceType   => 'vpc',                 # values: vpc; OPTIONAL
      },    # OPTIONAL
      TagSpecifications => [
        {
          ResourceType => 'capacity-reservation'
          , # values: capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, coip-pool, declarative-policies-report, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, outpost-lag, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, service-link-virtual-interface, snapshot, spot-fleet-request, spot-instances-request, subnet, subnet-cidr-reservation, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-policy-table, transit-gateway-route-table, transit-gateway-route-table-announcement, volume, vpc, vpc-endpoint, vpc-endpoint-connection, vpc-endpoint-service, vpc-endpoint-service-permission, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log, capacity-reservation-fleet, traffic-mirror-filter-rule, vpc-endpoint-connection-device-type, verified-access-instance, verified-access-group, verified-access-endpoint, verified-access-policy, verified-access-trust-provider, vpn-connection-device-type, vpc-block-public-access-exclusion, route-server, route-server-endpoint, route-server-peer, ipam-resource-discovery, ipam-resource-discovery-association, instance-connect-endpoint, verified-access-endpoint-target, ipam-external-resource-verification-token, mac-modification-task; OPTIONAL
          Tags => [
            {
              Key   => 'MyString',    # OPTIONAL
              Value => 'MyString',    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $IpamPool = $CreateIpamPoolResult->IpamPool;

    # Returns a L<Paws::EC2::CreateIpamPoolResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateIpamPool>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddressFamily => Str

The IP protocol assigned to this IPAM pool. You must choose either IPv4
or IPv6 protocol for a pool.

Valid values are: C<"ipv4">, C<"ipv6">

=head2 AllocationDefaultNetmaskLength => Int

The default netmask length for allocations added to this pool. If, for
example, the CIDR assigned to this pool is 10.0.0.0/8 and you enter 16
here, new allocations will default to 10.0.0.0/16.



=head2 AllocationMaxNetmaskLength => Int

The maximum netmask length possible for CIDR allocations in this IPAM
pool to be compliant. The maximum netmask length must be greater than
the minimum netmask length. Possible netmask lengths for IPv4 addresses
are 0 - 32. Possible netmask lengths for IPv6 addresses are 0 - 128.



=head2 AllocationMinNetmaskLength => Int

The minimum netmask length required for CIDR allocations in this IPAM
pool to be compliant. The minimum netmask length must be less than the
maximum netmask length. Possible netmask lengths for IPv4 addresses are
0 - 32. Possible netmask lengths for IPv6 addresses are 0 - 128.



=head2 AllocationResourceTags => ArrayRef[L<Paws::EC2::RequestIpamResourceTag>]

Tags that are required for resources that use CIDRs from this IPAM
pool. Resources that do not have these tags will not be allowed to
allocate space from the pool. If the resources have their tags changed
after they have allocated space or if the allocation tagging
requirements are changed on the pool, the resource may be marked as
noncompliant.



=head2 AutoImport => Bool

If selected, IPAM will continuously look for resources within the CIDR
range of this pool and automatically import them as allocations into
your IPAM. The CIDRs that will be allocated for these resources must
not already be allocated to other resources in order for the import to
succeed. IPAM will import a CIDR regardless of its compliance with the
pool's allocation rules, so a resource might be imported and
subsequently marked as noncompliant. If IPAM discovers multiple CIDRs
that overlap, IPAM will import the largest CIDR only. If IPAM discovers
multiple CIDRs with matching CIDRs, IPAM will randomly import one of
them only.

A locale must be set on the pool for this feature to work.



=head2 AwsService => Str

Limits which service in Amazon Web Services that the pool can be used
in. "ec2", for example, allows users to use space for Elastic IP
addresses and VPCs.

Valid values are: C<"ec2">

=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see Ensuring
idempotency
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 Description => Str

A description for the IPAM pool.



=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> IpamScopeId => Str

The ID of the scope in which you would like to create the IPAM pool.



=head2 Locale => Str

The locale for the pool should be one of the following:

=over

=item *

An Amazon Web Services Region where you want this IPAM pool to be
available for allocations.

=item *

The network border group for an Amazon Web Services Local Zone where
you want this IPAM pool to be available for allocations (supported
Local Zones
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html#byoip-zone-avail)).
This option is only available for IPAM IPv4 pools in the public scope.

=back

Possible values: Any Amazon Web Services Region or supported Amazon Web
Services Local Zone. Default is C<none> and means any locale.



=head2 PublicIpSource => Str

The IP address source for pools in the public scope. Only used for
provisioning IP address CIDRs to pools in the public scope. Default is
C<byoip>. For more information, see Create IPv6 pools
(https://docs.aws.amazon.com/vpc/latest/ipam/intro-create-ipv6-pools.html)
in the I<Amazon VPC IPAM User Guide>. By default, you can add only one
Amazon-provided IPv6 CIDR block to a top-level IPv6 pool if
PublicIpSource is C<amazon>. For information on increasing the default
limit, see Quotas for your IPAM
(https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html) in the
I<Amazon VPC IPAM User Guide>.

Valid values are: C<"amazon">, C<"byoip">

=head2 PubliclyAdvertisable => Bool

Determines if the pool is publicly advertisable. The request can only
contain C<PubliclyAdvertisable> if C<AddressFamily> is C<ipv6> and
C<PublicIpSource> is C<byoip>.



=head2 SourceIpamPoolId => Str

The ID of the source IPAM pool. Use this option to create a pool within
an existing pool. Note that the CIDR you provision for the pool within
the source pool must be available in the source pool's CIDR range.



=head2 SourceResource => L<Paws::EC2::IpamPoolSourceResourceRequest>

The resource used to provision CIDRs to a resource planning pool.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The key/value combination of a tag assigned to the resource. Use the
tag key in the filter name and the tag value as the filter value. For
example, to find all resources that have a tag with the key C<Owner>
and the value C<TeamA>, specify C<tag:Owner> for the filter name and
C<TeamA> for the filter value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIpamPool in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

