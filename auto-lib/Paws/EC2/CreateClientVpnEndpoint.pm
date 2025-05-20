
package Paws::EC2::CreateClientVpnEndpoint;
  use Moose;
  has AuthenticationOptions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ClientVpnAuthenticationRequest]', traits => ['NameInRequest'], request_name => 'Authentication' , required => 1);
  has ClientCidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has ClientConnectOptions => (is => 'ro', isa => 'Paws::EC2::ClientConnectOptions');
  has ClientLoginBannerOptions => (is => 'ro', isa => 'Paws::EC2::ClientLoginBannerOptions');
  has ClientRouteEnforcementOptions => (is => 'ro', isa => 'Paws::EC2::ClientRouteEnforcementOptions');
  has ClientToken => (is => 'ro', isa => 'Str');
  has ConnectionLogOptions => (is => 'ro', isa => 'Paws::EC2::ConnectionLogOptions', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has DisconnectOnSessionTimeout => (is => 'ro', isa => 'Bool');
  has DnsServers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DryRun => (is => 'ro', isa => 'Bool');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has SelfServicePortal => (is => 'ro', isa => 'Str');
  has ServerCertificateArn => (is => 'ro', isa => 'Str', required => 1);
  has SessionTimeoutHours => (is => 'ro', isa => 'Int');
  has SplitTunnel => (is => 'ro', isa => 'Bool');
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has TransportProtocol => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
  has VpnPort => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClientVpnEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateClientVpnEndpointResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateClientVpnEndpoint - Arguments for method CreateClientVpnEndpoint on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateClientVpnEndpoint on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateClientVpnEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateClientVpnEndpoint.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateClientVpnEndpointResult = $ec2->CreateClientVpnEndpoint(
      AuthenticationOptions => [
        {
          ActiveDirectory => {
            DirectoryId => 'MyString',    # OPTIONAL
          },    # OPTIONAL
          FederatedAuthentication => {
            SAMLProviderArn            => 'MyString',    # OPTIONAL
            SelfServiceSAMLProviderArn => 'MyString',    # OPTIONAL
          },    # OPTIONAL
          MutualAuthentication => {
            ClientRootCertificateChainArn => 'MyString',    # OPTIONAL
          },    # OPTIONAL
          Type => 'certificate-authentication'
          , # values: certificate-authentication, directory-service-authentication, federated-authentication; OPTIONAL
        },
        ...
      ],
      ClientCidrBlock      => 'MyString',
      ConnectionLogOptions => {
        CloudwatchLogGroup  => 'MyString',    # OPTIONAL
        CloudwatchLogStream => 'MyString',    # OPTIONAL
        Enabled             => 1,             # OPTIONAL
      },
      ServerCertificateArn => 'MyString',
      ClientConnectOptions => {
        Enabled           => 1,               # OPTIONAL
        LambdaFunctionArn => 'MyString',      # OPTIONAL
      },    # OPTIONAL
      ClientLoginBannerOptions => {
        BannerText => 'MyString',    # OPTIONAL
        Enabled    => 1,             # OPTIONAL
      },    # OPTIONAL
      ClientRouteEnforcementOptions => {
        Enforced => 1,    # OPTIONAL
      },    # OPTIONAL
      ClientToken                => 'MyString',    # OPTIONAL
      Description                => 'MyString',    # OPTIONAL
      DisconnectOnSessionTimeout => 1,             # OPTIONAL
      DnsServers                 => [
        'MyString', ...                            # OPTIONAL
      ],    # OPTIONAL
      DryRun              => 1,                               # OPTIONAL
      SecurityGroupIds    => [ 'MySecurityGroupId', ... ],    # OPTIONAL
      SelfServicePortal   => 'enabled',                       # OPTIONAL
      SessionTimeoutHours => 1,                               # OPTIONAL
      SplitTunnel         => 1,                               # OPTIONAL
      TagSpecifications   => [
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
      TransportProtocol => 'tcp',        # OPTIONAL
      VpcId             => 'MyVpcId',    # OPTIONAL
      VpnPort           => 1,            # OPTIONAL
    );

    # Results:
    my $ClientVpnEndpointId =
      $CreateClientVpnEndpointResult->ClientVpnEndpointId;
    my $DnsName = $CreateClientVpnEndpointResult->DnsName;
    my $Status  = $CreateClientVpnEndpointResult->Status;

    # Returns a L<Paws::EC2::CreateClientVpnEndpointResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateClientVpnEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthenticationOptions => ArrayRef[L<Paws::EC2::ClientVpnAuthenticationRequest>]

Information about the authentication method to be used to authenticate
clients.



=head2 B<REQUIRED> ClientCidrBlock => Str

The IPv4 address range, in CIDR notation, from which to assign client
IP addresses. The address range cannot overlap with the local CIDR of
the VPC in which the associated subnet is located, or the routes that
you add manually. The address range cannot be changed after the Client
VPN endpoint has been created. Client CIDR range must have a size of at
least /22 and must not be greater than /12.



=head2 ClientConnectOptions => L<Paws::EC2::ClientConnectOptions>

The options for managing connection authorization for new client
connections.



=head2 ClientLoginBannerOptions => L<Paws::EC2::ClientLoginBannerOptions>

Options for enabling a customizable text banner that will be displayed
on Amazon Web Services provided clients when a VPN session is
established.



=head2 ClientRouteEnforcementOptions => L<Paws::EC2::ClientRouteEnforcementOptions>

Client route enforcement is a feature of the Client VPN service that
helps enforce administrator defined routes on devices connected through
the VPN. T his feature helps improve your security posture by ensuring
that network traffic originating from a connected client is not
inadvertently sent outside the VPN tunnel.

Client route enforcement works by monitoring the route table of a
connected device for routing policy changes to the VPN connection. If
the feature detects any VPN routing policy modifications, it will
automatically force an update to the route table, reverting it back to
the expected route configurations.



=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see Ensuring
idempotency
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 B<REQUIRED> ConnectionLogOptions => L<Paws::EC2::ConnectionLogOptions>

Information about the client connection logging options.

If you enable client connection logging, data about client connections
is sent to a Cloudwatch Logs log stream. The following information is
logged:

=over

=item *

Client connection requests

=item *

Client connection results (successful and unsuccessful)

=item *

Reasons for unsuccessful client connection requests

=item *

Client connection termination time

=back




=head2 Description => Str

A brief description of the Client VPN endpoint.



=head2 DisconnectOnSessionTimeout => Bool

Indicates whether the client VPN session is disconnected after the
maximum timeout specified in C<SessionTimeoutHours> is reached. If
C<true>, users are prompted to reconnect client VPN. If C<false>,
client VPN attempts to reconnect automatically. The default value is
C<true>.



=head2 DnsServers => ArrayRef[Str|Undef]

Information about the DNS servers to be used for DNS resolution. A
Client VPN endpoint can have up to two DNS servers. If no DNS server is
specified, the DNS address configured on the device is used for the DNS
server.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The IDs of one or more security groups to apply to the target network.
You must also specify the ID of the VPC that contains the security
groups.



=head2 SelfServicePortal => Str

Specify whether to enable the self-service portal for the Client VPN
endpoint.

Default Value: C<enabled>

Valid values are: C<"enabled">, C<"disabled">

=head2 B<REQUIRED> ServerCertificateArn => Str

The ARN of the server certificate. For more information, see the
Certificate Manager User Guide
(https://docs.aws.amazon.com/acm/latest/userguide/).



=head2 SessionTimeoutHours => Int

The maximum VPN session duration time in hours.

Valid values: C<8 | 10 | 12 | 24>

Default value: C<24>



=head2 SplitTunnel => Bool

Indicates whether split-tunnel is enabled on the Client VPN endpoint.

By default, split-tunnel on a VPN endpoint is disabled.

For information about split-tunnel VPN endpoints, see Split-tunnel
Client VPN endpoint
(https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/split-tunnel-vpn.html)
in the I<Client VPN Administrator Guide>.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the Client VPN endpoint during creation.



=head2 TransportProtocol => Str

The transport protocol to be used by the VPN session.

Default value: C<udp>

Valid values are: C<"tcp">, C<"udp">

=head2 VpcId => Str

The ID of the VPC to associate with the Client VPN endpoint. If no
security group IDs are specified in the request, the default security
group for the VPC is applied.



=head2 VpnPort => Int

The port number to assign to the Client VPN endpoint for TCP and UDP
traffic.

Valid Values: C<443> | C<1194>

Default Value: C<443>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateClientVpnEndpoint in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

