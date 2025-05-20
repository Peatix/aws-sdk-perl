
package Paws::EC2::AllocateHosts;
  use Moose;
  has AssetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'AssetId' );
  has AutoPlacement => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'autoPlacement' );
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZone' );
  has AvailabilityZoneId => (is => 'ro', isa => 'Str');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has HostMaintenance => (is => 'ro', isa => 'Str');
  has HostRecovery => (is => 'ro', isa => 'Str');
  has InstanceFamily => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceType' );
  has OutpostArn => (is => 'ro', isa => 'Str');
  has Quantity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'quantity' );
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AllocateHosts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::AllocateHostsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AllocateHosts - Arguments for method AllocateHosts on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AllocateHosts on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method AllocateHosts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AllocateHosts.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $AllocateHostsResult = $ec2->AllocateHosts(
      AssetIds           => [ 'MyAssetId', ... ],      # OPTIONAL
      AutoPlacement      => 'on',                      # OPTIONAL
      AvailabilityZone   => 'MyString',                # OPTIONAL
      AvailabilityZoneId => 'MyAvailabilityZoneId',    # OPTIONAL
      ClientToken        => 'MyString',                # OPTIONAL
      HostMaintenance    => 'on',                      # OPTIONAL
      HostRecovery       => 'on',                      # OPTIONAL
      InstanceFamily     => 'MyString',                # OPTIONAL
      InstanceType       => 'MyString',                # OPTIONAL
      OutpostArn         => 'MyString',                # OPTIONAL
      Quantity           => 1,                         # OPTIONAL
      TagSpecifications  => [
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
    my $HostIds = $AllocateHostsResult->HostIds;

    # Returns a L<Paws::EC2::AllocateHostsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/AllocateHosts>

=head1 ATTRIBUTES


=head2 AssetIds => ArrayRef[Str|Undef]

The IDs of the Outpost hardware assets on which to allocate the
Dedicated Hosts. Targeting specific hardware assets on an Outpost can
help to minimize latency between your workloads. This parameter is
supported only if you specify B<OutpostArn>. If you are allocating the
Dedicated Hosts in a Region, omit this parameter.

=over

=item *

If you specify this parameter, you can omit B<Quantity>. In this case,
Amazon EC2 allocates a Dedicated Host on each specified hardware asset.

=item *

If you specify both B<AssetIds> and B<Quantity>, then the value for
B<Quantity> must be equal to the number of asset IDs specified.

=back




=head2 AutoPlacement => Str

Indicates whether the host accepts any untargeted instance launches
that match its instance type configuration, or if it only accepts Host
tenancy instance launches that specify its unique host ID. For more
information, see Understanding auto-placement and affinity
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/how-dedicated-hosts-work.html#dedicated-hosts-understanding)
in the I<Amazon EC2 User Guide>.

Default: C<off>

Valid values are: C<"on">, C<"off">

=head2 AvailabilityZone => Str

The Availability Zone in which to allocate the Dedicated Host.



=head2 AvailabilityZoneId => Str

The ID of the Availability Zone.



=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see Ensuring
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 HostMaintenance => Str

Indicates whether to enable or disable host maintenance for the
Dedicated Host. For more information, see Host maintenance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-maintenance.html)
in the I<Amazon EC2 User Guide>.

Valid values are: C<"on">, C<"off">

=head2 HostRecovery => Str

Indicates whether to enable or disable host recovery for the Dedicated
Host. Host recovery is disabled by default. For more information, see
Host recovery
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-recovery.html)
in the I<Amazon EC2 User Guide>.

Default: C<off>

Valid values are: C<"on">, C<"off">

=head2 InstanceFamily => Str

Specifies the instance family to be supported by the Dedicated Hosts.
If you specify an instance family, the Dedicated Hosts support multiple
instance types within that instance family.

If you want the Dedicated Hosts to support a specific instance type
only, omit this parameter and specify B<InstanceType> instead. You
cannot specify B<InstanceFamily> and B<InstanceType> in the same
request.



=head2 InstanceType => Str

Specifies the instance type to be supported by the Dedicated Hosts. If
you specify an instance type, the Dedicated Hosts support instances of
the specified instance type only.

If you want the Dedicated Hosts to support multiple instance types in a
specific instance family, omit this parameter and specify
B<InstanceFamily> instead. You cannot specify B<InstanceType> and
B<InstanceFamily> in the same request.



=head2 OutpostArn => Str

The Amazon Resource Name (ARN) of the Amazon Web Services Outpost on
which to allocate the Dedicated Host. If you specify B<OutpostArn>, you
can optionally specify B<AssetIds>.

If you are allocating the Dedicated Host in a Region, omit this
parameter.



=head2 Quantity => Int

The number of Dedicated Hosts to allocate to your account with these
parameters. If you are allocating the Dedicated Hosts on an Outpost,
and you specify B<AssetIds>, you can omit this parameter. In this case,
Amazon EC2 allocates a Dedicated Host on each specified hardware asset.
If you specify both B<AssetIds> and B<Quantity>, then the value that
you specify for B<Quantity> must be equal to the number of asset IDs
specified.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the Dedicated Host during creation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AllocateHosts in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

