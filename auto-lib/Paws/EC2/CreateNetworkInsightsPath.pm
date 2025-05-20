
package Paws::EC2::CreateNetworkInsightsPath;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has Destination => (is => 'ro', isa => 'Str');
  has DestinationIp => (is => 'ro', isa => 'Str');
  has DestinationPort => (is => 'ro', isa => 'Int');
  has DryRun => (is => 'ro', isa => 'Bool');
  has FilterAtDestination => (is => 'ro', isa => 'Paws::EC2::PathRequestFilter');
  has FilterAtSource => (is => 'ro', isa => 'Paws::EC2::PathRequestFilter');
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has Source => (is => 'ro', isa => 'Str', required => 1);
  has SourceIp => (is => 'ro', isa => 'Str');
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNetworkInsightsPath');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateNetworkInsightsPathResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateNetworkInsightsPath - Arguments for method CreateNetworkInsightsPath on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNetworkInsightsPath on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateNetworkInsightsPath.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNetworkInsightsPath.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateNetworkInsightsPathResult = $ec2->CreateNetworkInsightsPath(
      ClientToken         => 'MyString',
      Protocol            => 'tcp',
      Source              => 'MyNetworkInsightsResourceId',
      Destination         => 'MyNetworkInsightsResourceId',    # OPTIONAL
      DestinationIp       => 'MyIpAddress',                    # OPTIONAL
      DestinationPort     => 1,                                # OPTIONAL
      DryRun              => 1,                                # OPTIONAL
      FilterAtDestination => {
        DestinationAddress   => 'MyIpAddress',                 # max: 15
        DestinationPortRange => {
          FromPort => 1,                                       # max: 65535
          ToPort   => 1,                                       # max: 65535
        },    # OPTIONAL
        SourceAddress   => 'MyIpAddress',    # max: 15
        SourcePortRange => {
          FromPort => 1,                     # max: 65535
          ToPort   => 1,                     # max: 65535
        },    # OPTIONAL
      },    # OPTIONAL
      FilterAtSource => {
        DestinationAddress   => 'MyIpAddress',    # max: 15
        DestinationPortRange => {
          FromPort => 1,                          # max: 65535
          ToPort   => 1,                          # max: 65535
        },    # OPTIONAL
        SourceAddress   => 'MyIpAddress',    # max: 15
        SourcePortRange => {
          FromPort => 1,                     # max: 65535
          ToPort   => 1,                     # max: 65535
        },    # OPTIONAL
      },    # OPTIONAL
      SourceIp          => 'MyIpAddress',    # OPTIONAL
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
    my $NetworkInsightsPath =
      $CreateNetworkInsightsPathResult->NetworkInsightsPath;

    # Returns a L<Paws::EC2::CreateNetworkInsightsPathResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateNetworkInsightsPath>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to ensure
idempotency
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 Destination => Str

The ID or ARN of the destination. If the resource is in another
account, you must specify an ARN.



=head2 DestinationIp => Str

The IP address of the destination.



=head2 DestinationPort => Int

The destination port.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 FilterAtDestination => L<Paws::EC2::PathRequestFilter>

Scopes the analysis to network paths that match specific filters at the
destination. If you specify this parameter, you can't specify the
parameter for the destination IP address.



=head2 FilterAtSource => L<Paws::EC2::PathRequestFilter>

Scopes the analysis to network paths that match specific filters at the
source. If you specify this parameter, you can't specify the parameters
for the source IP address or the destination port.



=head2 B<REQUIRED> Protocol => Str

The protocol.

Valid values are: C<"tcp">, C<"udp">

=head2 B<REQUIRED> Source => Str

The ID or ARN of the source. If the resource is in another account, you
must specify an ARN.



=head2 SourceIp => Str

The IP address of the source.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to add to the path.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNetworkInsightsPath in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

