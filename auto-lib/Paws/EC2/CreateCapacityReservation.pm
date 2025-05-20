
package Paws::EC2::CreateCapacityReservation;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has AvailabilityZoneId => (is => 'ro', isa => 'Str');
  has ClientToken => (is => 'ro', isa => 'Str');
  has CommitmentDuration => (is => 'ro', isa => 'Int');
  has DeliveryPreference => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has EndDate => (is => 'ro', isa => 'Str');
  has EndDateType => (is => 'ro', isa => 'Str');
  has EphemeralStorage => (is => 'ro', isa => 'Bool');
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has InstanceMatchCriteria => (is => 'ro', isa => 'Str');
  has InstancePlatform => (is => 'ro', isa => 'Str', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has OutpostArn => (is => 'ro', isa => 'Str');
  has PlacementGroupArn => (is => 'ro', isa => 'Str');
  has StartDate => (is => 'ro', isa => 'Str');
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]');
  has Tenancy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCapacityReservation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateCapacityReservationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateCapacityReservation - Arguments for method CreateCapacityReservation on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCapacityReservation on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateCapacityReservation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCapacityReservation.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateCapacityReservationResult = $ec2->CreateCapacityReservation(
      InstanceCount         => 1,
      InstancePlatform      => 'Linux/UNIX',
      InstanceType          => 'MyString',
      AvailabilityZone      => 'MyAvailabilityZoneName',    # OPTIONAL
      AvailabilityZoneId    => 'MyAvailabilityZoneId',      # OPTIONAL
      ClientToken           => 'MyString',                  # OPTIONAL
      CommitmentDuration    => 1,                           # OPTIONAL
      DeliveryPreference    => 'fixed',                     # OPTIONAL
      DryRun                => 1,                           # OPTIONAL
      EbsOptimized          => 1,                           # OPTIONAL
      EndDate               => '1970-01-01T01:00:00',       # OPTIONAL
      EndDateType           => 'unlimited',                 # OPTIONAL
      EphemeralStorage      => 1,                           # OPTIONAL
      InstanceMatchCriteria => 'open',                      # OPTIONAL
      OutpostArn            => 'MyOutpostArn',              # OPTIONAL
      PlacementGroupArn     => 'MyPlacementGroupArn',       # OPTIONAL
      StartDate             => '1970-01-01T01:00:00',       # OPTIONAL
      TagSpecifications     => [
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
      Tenancy => 'default',    # OPTIONAL
    );

    # Results:
    my $CapacityReservation =
      $CreateCapacityReservationResult->CapacityReservation;

    # Returns a L<Paws::EC2::CreateCapacityReservationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateCapacityReservation>

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone in which to create the Capacity Reservation.



=head2 AvailabilityZoneId => Str

The ID of the Availability Zone in which to create the Capacity
Reservation.



=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 CommitmentDuration => Int

Required for future-dated Capacity Reservations only. To create a
Capacity Reservation for immediate use, omit this parameter.

Specify a commitment duration, in seconds, for the future-dated
Capacity Reservation.

The commitment duration is a minimum duration for which you commit to
having the future-dated Capacity Reservation in the C<active> state in
your account after it has been delivered.

For more information, see Commitment duration
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/cr-concepts.html#cr-commitment-duration).



=head2 DeliveryPreference => Str

Required for future-dated Capacity Reservations only. To create a
Capacity Reservation for immediate use, omit this parameter.

Indicates that the requested capacity will be delivered in addition to
any running instances or reserved capacity that you have in your
account at the requested date and time.

The only supported value is C<incremental>.

Valid values are: C<"fixed">, C<"incremental">

=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EbsOptimized => Bool

Indicates whether the Capacity Reservation supports EBS-optimized
instances. This optimization provides dedicated throughput to Amazon
EBS and an optimized configuration stack to provide optimal I/O
performance. This optimization isn't available with all instance types.
Additional usage charges apply when using an EBS- optimized instance.



=head2 EndDate => Str

The date and time at which the Capacity Reservation expires. When a
Capacity Reservation expires, the reserved capacity is released and you
can no longer launch instances into it. The Capacity Reservation's
state changes to C<expired> when it reaches its end date and time.

You must provide an C<EndDate> value if C<EndDateType> is C<limited>.
Omit C<EndDate> if C<EndDateType> is C<unlimited>.

If the C<EndDateType> is C<limited>, the Capacity Reservation is
cancelled within an hour from the specified time. For example, if you
specify 5/31/2019, 13:30:55, the Capacity Reservation is guaranteed to
end between 13:30:55 and 14:30:55 on 5/31/2019.

If you are requesting a future-dated Capacity Reservation, you can't
specify an end date and time that is within the commitment duration.



=head2 EndDateType => Str

Indicates the way in which the Capacity Reservation ends. A Capacity
Reservation can have one of the following end types:

=over

=item *

C<unlimited> - The Capacity Reservation remains active until you
explicitly cancel it. Do not provide an C<EndDate> if the
C<EndDateType> is C<unlimited>.

=item *

C<limited> - The Capacity Reservation expires automatically at a
specified date and time. You must provide an C<EndDate> value if the
C<EndDateType> value is C<limited>.

=back


Valid values are: C<"unlimited">, C<"limited">

=head2 EphemeralStorage => Bool

I<Deprecated.>



=head2 B<REQUIRED> InstanceCount => Int

The number of instances for which to reserve capacity.

You can request future-dated Capacity Reservations for an instance
count with a minimum of 100 vCPUs. For example, if you request a
future-dated Capacity Reservation for C<m5.xlarge> instances, you must
request at least 25 instances (I<25 * m5.xlarge = 100 vCPUs>).

Valid range: 1 - 1000



=head2 InstanceMatchCriteria => Str

Indicates the type of instance launches that the Capacity Reservation
accepts. The options include:

=over

=item *

C<open> - The Capacity Reservation automatically matches all instances
that have matching attributes (instance type, platform, and
Availability Zone). Instances that have matching attributes run in the
Capacity Reservation automatically without specifying any additional
parameters.

=item *

C<targeted> - The Capacity Reservation only accepts instances that have
matching attributes (instance type, platform, and Availability Zone),
and explicitly target the Capacity Reservation. This ensures that only
permitted instances can use the reserved capacity.

=back

If you are requesting a future-dated Capacity Reservation, you must
specify C<targeted>.

Default: C<open>

Valid values are: C<"open">, C<"targeted">

=head2 B<REQUIRED> InstancePlatform => Str

The type of operating system for which to reserve capacity.

Valid values are: C<"Linux/UNIX">, C<"Red Hat Enterprise Linux">, C<"SUSE Linux">, C<"Windows">, C<"Windows with SQL Server">, C<"Windows with SQL Server Enterprise">, C<"Windows with SQL Server Standard">, C<"Windows with SQL Server Web">, C<"Linux with SQL Server Standard">, C<"Linux with SQL Server Web">, C<"Linux with SQL Server Enterprise">, C<"RHEL with SQL Server Standard">, C<"RHEL with SQL Server Enterprise">, C<"RHEL with SQL Server Web">, C<"RHEL with HA">, C<"RHEL with HA and SQL Server Standard">, C<"RHEL with HA and SQL Server Enterprise">, C<"Ubuntu Pro">

=head2 B<REQUIRED> InstanceType => Str

The instance type for which to reserve capacity.

You can request future-dated Capacity Reservations for instance types
in the C, M, R, I, and T instance families only.

For more information, see Instance types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
in the I<Amazon EC2 User Guide>.



=head2 OutpostArn => Str

Not supported for future-dated Capacity Reservations.

The Amazon Resource Name (ARN) of the Outpost on which to create the
Capacity Reservation.



=head2 PlacementGroupArn => Str

Not supported for future-dated Capacity Reservations.

The Amazon Resource Name (ARN) of the cluster placement group in which
to create the Capacity Reservation. For more information, see Capacity
Reservations for cluster placement groups
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/cr-cpg.html) in
the I<Amazon EC2 User Guide>.



=head2 StartDate => Str

Required for future-dated Capacity Reservations only. To create a
Capacity Reservation for immediate use, omit this parameter.

The date and time at which the future-dated Capacity Reservation should
become available for use, in the ISO8601 format in the UTC time zone
(C<YYYY-MM-DDThh:mm:ss.sssZ>).

You can request a future-dated Capacity Reservation between 5 and 120
days in advance.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the Capacity Reservation during launch.



=head2 Tenancy => Str

Indicates the tenancy of the Capacity Reservation. A Capacity
Reservation can have one of the following tenancy settings:

=over

=item *

C<default> - The Capacity Reservation is created on hardware that is
shared with other Amazon Web Services accounts.

=item *

C<dedicated> - The Capacity Reservation is created on single-tenant
hardware that is dedicated to a single Amazon Web Services account.

=back


Valid values are: C<"default">, C<"dedicated">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCapacityReservation in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

