
package Paws::EC2::CreateRouteServer;
  use Moose;
  has AmazonSideAsn => (is => 'ro', isa => 'Int', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has PersistRoutes => (is => 'ro', isa => 'Str');
  has PersistRoutesDuration => (is => 'ro', isa => 'Int');
  has SnsNotificationsEnabled => (is => 'ro', isa => 'Bool');
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRouteServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateRouteServerResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateRouteServer - Arguments for method CreateRouteServer on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRouteServer on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateRouteServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRouteServer.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateRouteServerResult = $ec2->CreateRouteServer(
      AmazonSideAsn           => 1,
      ClientToken             => 'MyString',    # OPTIONAL
      DryRun                  => 1,             # OPTIONAL
      PersistRoutes           => 'enable',      # OPTIONAL
      PersistRoutesDuration   => 1,             # OPTIONAL
      SnsNotificationsEnabled => 1,             # OPTIONAL
      TagSpecifications       => [
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
    my $RouteServer = $CreateRouteServerResult->RouteServer;

    # Returns a L<Paws::EC2::CreateRouteServerResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateRouteServer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AmazonSideAsn => Int

The private Autonomous System Number (ASN) for the Amazon side of the
BGP session. Valid values are from 1 to 4294967295. We recommend using
a private ASN in the 64512E<ndash>65534 (16-bit ASN) or
4200000000E<ndash>4294967294 (32-bit ASN) range.



=head2 ClientToken => Str

Unique, case-sensitive identifier to ensure idempotency of the request.



=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 PersistRoutes => Str

Indicates whether routes should be persisted after all BGP sessions are
terminated.

Valid values are: C<"enable">, C<"disable">, C<"reset">

=head2 PersistRoutesDuration => Int

The number of minutes a route server will wait after BGP is
re-established to unpersist the routes in the FIB and RIB. Value must
be in the range of 1-5. Required if PersistRoutes is C<enabled>.

If you set the duration to 1 minute, then when your network appliance
re-establishes BGP with route server, it has 1 minute to relearn it's
adjacent network and advertise those routes to route server before
route server resumes normal functionality. In most cases, 1 minute is
probably sufficient. If, however, you have concerns that your BGP
network may not be capable of fully re-establishing and re-learning
everything in 1 minute, you can increase the duration up to 5 minutes.



=head2 SnsNotificationsEnabled => Bool

Indicates whether SNS notifications should be enabled for route server
events. Enabling SNS notifications persists BGP status changes to an
SNS topic provisioned by Amazon Web Services.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the route server during creation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRouteServer in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

