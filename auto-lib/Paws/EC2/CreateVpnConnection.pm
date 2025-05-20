
package Paws::EC2::CreateVpnConnection;
  use Moose;
  has CustomerGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Options => (is => 'ro', isa => 'Paws::EC2::VpnConnectionOptionsSpecification', traits => ['NameInRequest'], request_name => 'options' );
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has TransitGatewayId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has VpnGatewayId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpnConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateVpnConnectionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpnConnection - Arguments for method CreateVpnConnection on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpnConnection on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateVpnConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpnConnection.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateVpnConnectionResult = $ec2->CreateVpnConnection(
      CustomerGatewayId => 'MyCustomerGatewayId',
      Type              => 'MyString',
      DryRun            => 1,                       # OPTIONAL
      Options           => {
        EnableAcceleration                  => 1,
        LocalIpv4NetworkCidr                => 'MyString',
        LocalIpv6NetworkCidr                => 'MyString',
        OutsideIpAddressType                => 'MyString',
        RemoteIpv4NetworkCidr               => 'MyString',
        RemoteIpv6NetworkCidr               => 'MyString',
        StaticRoutesOnly                    => 1,
        TransportTransitGatewayAttachmentId =>
          'MyTransitGatewayAttachmentId',    # OPTIONAL
        TunnelInsideIpVersion => 'ipv4',     # values: ipv4, ipv6; OPTIONAL
        TunnelOptions         => [
          {
            DPDTimeoutAction             => 'MyString',
            DPDTimeoutSeconds            => 1,                   # OPTIONAL
            EnableTunnelLifecycleControl => 1,
            IKEVersions => [ { Value => 'MyString', }, ... ],    # OPTIONAL
            LogOptions  => {
              CloudWatchLogOptions => {
                LogEnabled      => 1,
                LogGroupArn     => 'MyCloudWatchLogGroupArn',    # OPTIONAL
                LogOutputFormat => 'MyString',
              },    # OPTIONAL
            },    # OPTIONAL
            Phase1DHGroupNumbers => [
              {
                Value => 1,    # OPTIONAL
              },
              ...
            ],    # OPTIONAL
            Phase1EncryptionAlgorithms => [ { Value => 'MyString', }, ... ]
            ,                              # OPTIONAL
            Phase1IntegrityAlgorithms => [ { Value => 'MyString', }, ... ]
            ,                              # OPTIONAL
            Phase1LifetimeSeconds => 1,    # OPTIONAL
            Phase2DHGroupNumbers  => [
              {
                Value => 1,                # OPTIONAL
              },
              ...
            ],    # OPTIONAL
            Phase2EncryptionAlgorithms => [ { Value => 'MyString', }, ... ]
            ,                                              # OPTIONAL
            Phase2IntegrityAlgorithms => [ { Value => 'MyString', }, ... ]
            ,                                              # OPTIONAL
            Phase2LifetimeSeconds  => 1,                   # OPTIONAL
            PreSharedKey           => 'MypreSharedKey',    # OPTIONAL
            RekeyFuzzPercentage    => 1,                   # OPTIONAL
            RekeyMarginTimeSeconds => 1,                   # OPTIONAL
            ReplayWindowSize       => 1,                   # OPTIONAL
            StartupAction          => 'MyString',
            TunnelInsideCidr       => 'MyString',
            TunnelInsideIpv6Cidr   => 'MyString',
          },
          ...
        ],    # OPTIONAL
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
      TransitGatewayId => 'MyTransitGatewayId',    # OPTIONAL
      VpnGatewayId     => 'MyVpnGatewayId',        # OPTIONAL
    );

    # Results:
    my $VpnConnection = $CreateVpnConnectionResult->VpnConnection;

    # Returns a L<Paws::EC2::CreateVpnConnectionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateVpnConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomerGatewayId => Str

The ID of the customer gateway.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Options => L<Paws::EC2::VpnConnectionOptionsSpecification>

The options for the VPN connection.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the VPN connection.



=head2 TransitGatewayId => Str

The ID of the transit gateway. If you specify a transit gateway, you
cannot specify a virtual private gateway.



=head2 B<REQUIRED> Type => Str

The type of VPN connection (C<ipsec.1>).



=head2 VpnGatewayId => Str

The ID of the virtual private gateway. If you specify a virtual private
gateway, you cannot specify a transit gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpnConnection in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

