
package Paws::EC2::ImportSnapshot;
  use Moose;
  has ClientData => (is => 'ro', isa => 'Paws::EC2::ClientData');
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DiskContainer => (is => 'ro', isa => 'Paws::EC2::SnapshotDiskContainer');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Encrypted => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has RoleName => (is => 'ro', isa => 'Str');
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ImportSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportSnapshot - Arguments for method ImportSnapshot on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportSnapshot on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ImportSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportSnapshot.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ImportSnapshotResult = $ec2->ImportSnapshot(
      ClientData => {
        Comment     => 'MyString',               # OPTIONAL
        UploadEnd   => '1970-01-01T01:00:00',    # OPTIONAL
        UploadSize  => 1,                        # OPTIONAL
        UploadStart => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      ClientToken   => 'MyString',    # OPTIONAL
      Description   => 'MyString',    # OPTIONAL
      DiskContainer => {
        Description => 'MyString',          # OPTIONAL
        Format      => 'MyString',          # OPTIONAL
        Url         => 'MySensitiveUrl',    # OPTIONAL
        UserBucket  => {
          S3Bucket => 'MyString',           # OPTIONAL
          S3Key    => 'MyString',           # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      DryRun            => 1,               # OPTIONAL
      Encrypted         => 1,               # OPTIONAL
      KmsKeyId          => 'MyKmsKeyId',    # OPTIONAL
      RoleName          => 'MyString',      # OPTIONAL
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
    my $Description        = $ImportSnapshotResult->Description;
    my $ImportTaskId       = $ImportSnapshotResult->ImportTaskId;
    my $SnapshotTaskDetail = $ImportSnapshotResult->SnapshotTaskDetail;
    my $Tags               = $ImportSnapshotResult->Tags;

    # Returns a L<Paws::EC2::ImportSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ImportSnapshot>

=head1 ATTRIBUTES


=head2 ClientData => L<Paws::EC2::ClientData>

The client-specific data.



=head2 ClientToken => Str

Token to enable idempotency for VM import requests.



=head2 Description => Str

The description string for the import snapshot task.



=head2 DiskContainer => L<Paws::EC2::SnapshotDiskContainer>

Information about the disk container.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Encrypted => Bool

Specifies whether the destination snapshot of the imported image should
be encrypted. The default KMS key for EBS is used unless you specify a
non-default KMS key using C<KmsKeyId>. For more information, see Amazon
EBS Encryption
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 KmsKeyId => Str

An identifier for the symmetric KMS key to use when creating the
encrypted snapshot. This parameter is only required if you want to use
a non-default KMS key; if this parameter is not specified, the default
KMS key for EBS is used. If a C<KmsKeyId> is specified, the
C<Encrypted> flag must also be set.

The KMS key identifier may be provided in any of the following formats:

=over

=item *

Key ID

=item *

Key alias

=item *

ARN using key ID. The ID ARN contains the C<arn:aws:kms> namespace,
followed by the Region of the key, the Amazon Web Services account ID
of the key owner, the C<key> namespace, and then the key ID. For
example,
arn:aws:kms:I<us-east-1>:I<012345678910>:key/I<abcd1234-a123-456a-a12b-a123b4cd56ef>.

=item *

ARN using key alias. The alias ARN contains the C<arn:aws:kms>
namespace, followed by the Region of the key, the Amazon Web Services
account ID of the key owner, the C<alias> namespace, and then the key
alias. For example,
arn:aws:kms:I<us-east-1>:I<012345678910>:alias/I<ExampleAlias>.

=back

Amazon Web Services parses C<KmsKeyId> asynchronously, meaning that the
action you call may appear to complete even though you provided an
invalid identifier. This action will eventually report failure.

The specified KMS key must exist in the Region that the snapshot is
being copied to.

Amazon EBS does not support asymmetric KMS keys.



=head2 RoleName => Str

The name of the role to use when not using the default role,
'vmimport'.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the import snapshot task during creation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportSnapshot in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

