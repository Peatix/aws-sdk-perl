
package Paws::EC2::CreateReplaceRootVolumeTask;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DeleteReplacedRootVolume => (is => 'ro', isa => 'Bool');
  has DryRun => (is => 'ro', isa => 'Bool');
  has ImageId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotId => (is => 'ro', isa => 'Str');
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has VolumeInitializationRate => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReplaceRootVolumeTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateReplaceRootVolumeTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateReplaceRootVolumeTask - Arguments for method CreateReplaceRootVolumeTask on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReplaceRootVolumeTask on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateReplaceRootVolumeTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReplaceRootVolumeTask.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateReplaceRootVolumeTaskResult = $ec2->CreateReplaceRootVolumeTask(
      InstanceId               => 'MyInstanceId',
      ClientToken              => 'MyString',        # OPTIONAL
      DeleteReplacedRootVolume => 1,                 # OPTIONAL
      DryRun                   => 1,                 # OPTIONAL
      ImageId                  => 'MyImageId',       # OPTIONAL
      SnapshotId               => 'MySnapshotId',    # OPTIONAL
      TagSpecifications        => [
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
      VolumeInitializationRate => 1,    # OPTIONAL
    );

    # Results:
    my $ReplaceRootVolumeTask =
      $CreateReplaceRootVolumeTaskResult->ReplaceRootVolumeTask;

    # Returns a L<Paws::EC2::CreateReplaceRootVolumeTaskResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateReplaceRootVolumeTask>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. If you do not specify a client token, a randomly
generated token is used for the request to ensure idempotency. For more
information, see Ensuring idempotency
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 DeleteReplacedRootVolume => Bool

Indicates whether to automatically delete the original root volume
after the root volume replacement task completes. To delete the
original root volume, specify C<true>. If you choose to keep the
original root volume after the replacement task completes, you must
manually delete it when you no longer need it.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 ImageId => Str

The ID of the AMI to use to restore the root volume. The specified AMI
must have the same product code, billing information, architecture
type, and virtualization type as that of the instance.

If you want to restore the replacement volume from a specific snapshot,
or if you want to restore it to its launch state, omit this parameter.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance for which to replace the root volume.



=head2 SnapshotId => Str

The ID of the snapshot from which to restore the replacement root
volume. The specified snapshot must be a snapshot that you previously
created from the original root volume.

If you want to restore the replacement root volume to the initial
launch state, or if you want to restore the replacement root volume
from an AMI, omit this parameter.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the root volume replacement task.



=head2 VolumeInitializationRate => Int

Specifies the Amazon EBS Provisioned Rate for Volume Initialization
(volume initialization rate), in MiB/s, at which to download the
snapshot blocks from Amazon S3 to the replacement root volume. This is
also known as I<volume initialization>. Specifying a volume
initialization rate ensures that the volume is initialized at a
predictable and consistent rate after creation.

Omit this parameter if:

=over

=item *

You want to create the volume using fast snapshot restore. You must
specify a snapshot that is enabled for fast snapshot restore. In this
case, the volume is fully initialized at creation.

If you specify a snapshot that is enabled for fast snapshot restore and
a volume initialization rate, the volume will be initialized at the
specified rate instead of fast snapshot restore.

=item *

You want to create a volume that is initialized at the default rate.

=back

For more information, see Initialize Amazon EBS volumes
(https://docs.aws.amazon.com/ebs/latest/userguide/initalize-volume.html)
in the I<Amazon EC2 User Guide>.

Valid range: 100 - 300 MiB/s




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReplaceRootVolumeTask in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

