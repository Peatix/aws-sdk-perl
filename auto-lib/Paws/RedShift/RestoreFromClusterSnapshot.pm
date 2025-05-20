
package Paws::RedShift::RestoreFromClusterSnapshot;
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Str');
  has AllowVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AquaConfigurationStatus => (is => 'ro', isa => 'Str');
  has AutomatedSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has AvailabilityZoneRelocation => (is => 'ro', isa => 'Bool');
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has ClusterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str');
  has DefaultIamRoleArn => (is => 'ro', isa => 'Str');
  has ElasticIp => (is => 'ro', isa => 'Str');
  has Encrypted => (is => 'ro', isa => 'Bool');
  has EnhancedVpcRouting => (is => 'ro', isa => 'Bool');
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has IamRoles => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has IpAddressType => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MaintenanceTrackName => (is => 'ro', isa => 'Str');
  has ManageMasterPassword => (is => 'ro', isa => 'Bool');
  has ManualSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has MasterPasswordSecretKmsKeyId => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has NodeType => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
  has OwnerAccount => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has ReservedNodeId => (is => 'ro', isa => 'Str');
  has SnapshotArn => (is => 'ro', isa => 'Str');
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotScheduleIdentifier => (is => 'ro', isa => 'Str');
  has TargetReservedNodeOfferingId => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreFromClusterSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::RestoreFromClusterSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreFromClusterSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::RestoreFromClusterSnapshot - Arguments for method RestoreFromClusterSnapshot on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreFromClusterSnapshot on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method RestoreFromClusterSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreFromClusterSnapshot.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $RestoreFromClusterSnapshotResult =
      $redshift->RestoreFromClusterSnapshot(
      ClusterIdentifier                => 'MyString',
      AdditionalInfo                   => 'MyString',    # OPTIONAL
      AllowVersionUpgrade              => 1,             # OPTIONAL
      AquaConfigurationStatus          => 'enabled',     # OPTIONAL
      AutomatedSnapshotRetentionPeriod => 1,             # OPTIONAL
      AvailabilityZone                 => 'MyString',    # OPTIONAL
      AvailabilityZoneRelocation       => 1,             # OPTIONAL
      ClusterParameterGroupName        => 'MyString',    # OPTIONAL
      ClusterSecurityGroups            => [
        'MyString', ...                                  # max: 2147483647
      ],    # OPTIONAL
      ClusterSubnetGroupName         => 'MyString',    # OPTIONAL
      DefaultIamRoleArn              => 'MyString',    # OPTIONAL
      ElasticIp                      => 'MyString',    # OPTIONAL
      Encrypted                      => 1,             # OPTIONAL
      EnhancedVpcRouting             => 1,             # OPTIONAL
      HsmClientCertificateIdentifier => 'MyString',    # OPTIONAL
      HsmConfigurationIdentifier     => 'MyString',    # OPTIONAL
      IamRoles                       => [
        'MyString', ...                                # max: 2147483647
      ],    # OPTIONAL
      IpAddressType                 => 'MyString',    # OPTIONAL
      KmsKeyId                      => 'MyString',    # OPTIONAL
      MaintenanceTrackName          => 'MyString',    # OPTIONAL
      ManageMasterPassword          => 1,             # OPTIONAL
      ManualSnapshotRetentionPeriod => 1,             # OPTIONAL
      MasterPasswordSecretKmsKeyId  => 'MyString',    # OPTIONAL
      MultiAZ                       => 1,             # OPTIONAL
      NodeType                      => 'MyString',    # OPTIONAL
      NumberOfNodes                 => 1,             # OPTIONAL
      OwnerAccount                  => 'MyString',    # OPTIONAL
      Port                          => 1,             # OPTIONAL
      PreferredMaintenanceWindow    => 'MyString',    # OPTIONAL
      PubliclyAccessible            => 1,             # OPTIONAL
      ReservedNodeId                => 'MyString',    # OPTIONAL
      SnapshotArn                   => 'MyString',    # OPTIONAL
      SnapshotClusterIdentifier     => 'MyString',    # OPTIONAL
      SnapshotIdentifier            => 'MyString',    # OPTIONAL
      SnapshotScheduleIdentifier    => 'MyString',    # OPTIONAL
      TargetReservedNodeOfferingId  => 'MyString',    # OPTIONAL
      VpcSecurityGroupIds           => [
        'MyString', ...                               # max: 2147483647
      ],    # OPTIONAL
      );

    # Results:
    my $Cluster = $RestoreFromClusterSnapshotResult->Cluster;

    # Returns a L<Paws::RedShift::RestoreFromClusterSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/RestoreFromClusterSnapshot>

=head1 ATTRIBUTES


=head2 AdditionalInfo => Str

Reserved.



=head2 AllowVersionUpgrade => Bool

If C<true>, major version upgrades can be applied during the
maintenance window to the Amazon Redshift engine that is running on the
cluster.

Default: C<true>



=head2 AquaConfigurationStatus => Str

This parameter is retired. It does not set the AQUA configuration
status. Amazon Redshift automatically determines whether to use AQUA
(Advanced Query Accelerator).

Valid values are: C<"enabled">, C<"disabled">, C<"auto">

=head2 AutomatedSnapshotRetentionPeriod => Int

The number of days that automated snapshots are retained. If the value
is 0, automated snapshots are disabled. Even if automated snapshots are
disabled, you can still create manual snapshots when you want with
CreateClusterSnapshot.

You can't disable automated snapshots for RA3 node types. Set the
automated retention period from 1-35 days.

Default: The value selected for the cluster from which the snapshot was
taken.

Constraints: Must be a value from 0 to 35.



=head2 AvailabilityZone => Str

The Amazon EC2 Availability Zone in which to restore the cluster.

Default: A random, system-chosen Availability Zone.

Example: C<us-east-2a>



=head2 AvailabilityZoneRelocation => Bool

The option to enable relocation for an Amazon Redshift cluster between
Availability Zones after the cluster is restored.



=head2 B<REQUIRED> ClusterIdentifier => Str

The identifier of the cluster that will be created from restoring the
snapshot.

Constraints:

=over

=item *

Must contain from 1 to 63 alphanumeric characters or hyphens.

=item *

Alphabetic characters must be lowercase.

=item *

First character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=item *

Must be unique for all clusters within an Amazon Web Services account.

=back




=head2 ClusterParameterGroupName => Str

The name of the parameter group to be associated with this cluster.

Default: The default Amazon Redshift cluster parameter group. For
information about the default parameter group, go to Working with
Amazon Redshift Parameter Groups
(https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html).

Constraints:

=over

=item *

Must be 1 to 255 alphanumeric characters or hyphens.

=item *

First character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back




=head2 ClusterSecurityGroups => ArrayRef[Str|Undef]

A list of security groups to be associated with this cluster.

Default: The default cluster security group for Amazon Redshift.

Cluster security groups only apply to clusters outside of VPCs.



=head2 ClusterSubnetGroupName => Str

The name of the subnet group where you want to cluster restored.

A snapshot of cluster in VPC can be restored only in VPC. Therefore,
you must provide subnet group name where you want the cluster restored.



=head2 DefaultIamRoleArn => Str

The Amazon Resource Name (ARN) for the IAM role that was set as default
for the cluster when the cluster was last modified while it was
restored from a snapshot.



=head2 ElasticIp => Str

The Elastic IP (EIP) address for the cluster. Don't specify the Elastic
IP address for a publicly accessible cluster with availability zone
relocation turned on.



=head2 Encrypted => Bool

Enables support for restoring an unencrypted snapshot to a cluster
encrypted with Key Management Service (KMS) and a customer managed key.



=head2 EnhancedVpcRouting => Bool

An option that specifies whether to create the cluster with enhanced
VPC routing enabled. To create a cluster that uses enhanced VPC
routing, the cluster must be in a VPC. For more information, see
Enhanced VPC Routing
(https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html)
in the Amazon Redshift Cluster Management Guide.

If this option is C<true>, enhanced VPC routing is enabled.

Default: false



=head2 HsmClientCertificateIdentifier => Str

Specifies the name of the HSM client certificate the Amazon Redshift
cluster uses to retrieve the data encryption keys stored in an HSM.



=head2 HsmConfigurationIdentifier => Str

Specifies the name of the HSM configuration that contains the
information the Amazon Redshift cluster can use to retrieve and store
keys in an HSM.



=head2 IamRoles => ArrayRef[Str|Undef]

A list of Identity and Access Management (IAM) roles that can be used
by the cluster to access other Amazon Web Services services. You must
supply the IAM roles in their Amazon Resource Name (ARN) format.

The maximum number of IAM roles that you can associate is subject to a
quota. For more information, go to Quotas and limits
(https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html)
in the I<Amazon Redshift Cluster Management Guide>.



=head2 IpAddressType => Str

The IP address type for the cluster. Possible values are C<ipv4> and
C<dualstack>.



=head2 KmsKeyId => Str

The Key Management Service (KMS) key ID of the encryption key that
encrypts data in the cluster restored from a shared snapshot. You can
also provide the key ID when you restore from an unencrypted snapshot
to an encrypted cluster in the same account. Additionally, you can
specify a new KMS key ID when you restore from an encrypted snapshot in
the same account in order to change it. In that case, the restored
cluster is encrypted with the new KMS key ID.



=head2 MaintenanceTrackName => Str

The name of the maintenance track for the restored cluster. When you
take a snapshot, the snapshot inherits the C<MaintenanceTrack> value
from the cluster. The snapshot might be on a different track than the
cluster that was the source for the snapshot. For example, suppose that
you take a snapshot of a cluster that is on the current track and then
change the cluster to be on the trailing track. In this case, the
snapshot and the source cluster are on different tracks.



=head2 ManageMasterPassword => Bool

If C<true>, Amazon Redshift uses Secrets Manager to manage the restored
cluster's admin credentials. If C<ManageMasterPassword> is false or not
set, Amazon Redshift uses the admin credentials the cluster had at the
time the snapshot was taken.



=head2 ManualSnapshotRetentionPeriod => Int

The default number of days to retain a manual snapshot. If the value is
-1, the snapshot is retained indefinitely. This setting doesn't change
the retention period of existing snapshots.

The value must be either -1 or an integer between 1 and 3,653.



=head2 MasterPasswordSecretKmsKeyId => Str

The ID of the Key Management Service (KMS) key used to encrypt and
store the cluster's admin credentials secret. You can only use this
parameter if C<ManageMasterPassword> is true.



=head2 MultiAZ => Bool

If true, the snapshot will be restored to a cluster deployed in two
Availability Zones.



=head2 NodeType => Str

The node type that the restored cluster will be provisioned with.

If you have a DC instance type, you must restore into that same
instance type and size. In other words, you can only restore a
dc2.large node type into another dc2 type. For more information about
node types, see About Clusters and Nodes
(https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-about-clusters-and-nodes)
in the I<Amazon Redshift Cluster Management Guide>.



=head2 NumberOfNodes => Int

The number of nodes specified when provisioning the restored cluster.



=head2 OwnerAccount => Str

The Amazon Web Services account used to create or copy the snapshot.
Required if you are restoring a snapshot you do not own, optional if
you own the snapshot.



=head2 Port => Int

The port number on which the cluster accepts connections.

Default: The same port as the original cluster.

Valid values: For clusters with DC2 nodes, must be within the range
C<1150>-C<65535>. For clusters with ra3 nodes, must be within the
ranges C<5431>-C<5455> or C<8191>-C<8215>.



=head2 PreferredMaintenanceWindow => Str

The weekly time range (in UTC) during which automated cluster
maintenance can occur.

Format: C<ddd:hh24:mi-ddd:hh24:mi>

Default: The value selected for the cluster from which the snapshot was
taken. For more information about the time blocks for each region, see
Maintenance Windows
(https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows)
in Amazon Redshift Cluster Management Guide.

Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun

Constraints: Minimum 30-minute window.



=head2 PubliclyAccessible => Bool

If C<true>, the cluster can be accessed from a public network.

Default: false



=head2 ReservedNodeId => Str

The identifier of the target reserved node offering.



=head2 SnapshotArn => Str

The Amazon Resource Name (ARN) of the snapshot associated with the
message to restore from a cluster. You must specify this parameter or
C<snapshotIdentifier>, but not both.



=head2 SnapshotClusterIdentifier => Str

The name of the cluster the source snapshot was created from. This
parameter is required if your IAM user has a policy containing a
snapshot resource element that specifies anything other than * for the
cluster name.



=head2 SnapshotIdentifier => Str

The name of the snapshot from which to create the new cluster. This
parameter isn't case sensitive. You must specify this parameter or
C<snapshotArn>, but not both.

Example: C<my-snapshot-id>



=head2 SnapshotScheduleIdentifier => Str

A unique identifier for the snapshot schedule.



=head2 TargetReservedNodeOfferingId => Str

The identifier of the target reserved node offering.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of Virtual Private Cloud (VPC) security groups to be associated
with the cluster.

Default: The default VPC security group is associated with the cluster.

VPC security groups only apply to clusters in VPCs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreFromClusterSnapshot in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

