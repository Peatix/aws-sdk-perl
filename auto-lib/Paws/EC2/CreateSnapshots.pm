
package Paws::EC2::CreateSnapshots;
  use Moose;
  has CopyTagsFromSource => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceSpecification => (is => 'ro', isa => 'Paws::EC2::InstanceSpecification', required => 1);
  has Location => (is => 'ro', isa => 'Str');
  has OutpostArn => (is => 'ro', isa => 'Str');
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateSnapshotsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateSnapshots - Arguments for method CreateSnapshots on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSnapshots on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSnapshots.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateSnapshotsResult = $ec2->CreateSnapshots(
      InstanceSpecification => {
        InstanceId           => 'MyInstanceIdWithVolumeResolver',
        ExcludeBootVolume    => 1,                                  # OPTIONAL
        ExcludeDataVolumeIds => [ 'MyVolumeId', ... ],              # OPTIONAL
      },
      CopyTagsFromSource => 'volume',                               # OPTIONAL
      Description        => 'MyString',                             # OPTIONAL
      DryRun             => 1,                                      # OPTIONAL
      Location           => 'regional',                             # OPTIONAL
      OutpostArn         => 'MyString',                             # OPTIONAL
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
    my $Snapshots = $CreateSnapshotsResult->Snapshots;

    # Returns a L<Paws::EC2::CreateSnapshotsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateSnapshots>

=head1 ATTRIBUTES


=head2 CopyTagsFromSource => Str

Copies the tags from the specified volume to corresponding snapshot.

Valid values are: C<"volume">

=head2 Description => Str

A description propagated to every snapshot specified by the instance.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceSpecification => L<Paws::EC2::InstanceSpecification>

The instance to specify which volumes should be included in the
snapshots.



=head2 Location => Str

Only supported for instances in Local Zones. If the source instance is
not in a Local Zone, omit this parameter.

=over

=item *

To create local snapshots in the same Local Zone as the source
instance, specify C<local>.

=item *

To create a regional snapshots in the parent Region of the Local Zone,
specify C<regional> or omit this parameter.

=back

Default value: C<regional>

Valid values are: C<"regional">, C<"local">

=head2 OutpostArn => Str

Only supported for instances on Outposts. If the source instance is not
on an Outpost, omit this parameter.

=over

=item *

To create the snapshots on the same Outpost as the source instance,
specify the ARN of that Outpost. The snapshots must be created on the
same Outpost as the instance.

=item *

To create the snapshots in the parent Region of the Outpost, omit this
parameter.

=back

For more information, see Create local snapshots from volumes on an
Outpost
(https://docs.aws.amazon.com/ebs/latest/userguide/snapshots-outposts.html#create-snapshot)
in the I<Amazon EBS User Guide>.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

Tags to apply to every snapshot specified by the instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSnapshots in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

