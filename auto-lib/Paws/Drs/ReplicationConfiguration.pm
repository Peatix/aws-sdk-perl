
package Paws::Drs::ReplicationConfiguration;
  use Moose;
  has AssociateDefaultSecurityGroup => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'associateDefaultSecurityGroup');
  has AutoReplicateNewDisks => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'autoReplicateNewDisks');
  has BandwidthThrottling => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'bandwidthThrottling');
  has CreatePublicIP => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'createPublicIP');
  has DataPlaneRouting => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataPlaneRouting');
  has DefaultLargeStagingDiskType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultLargeStagingDiskType');
  has EbsEncryption => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ebsEncryption');
  has EbsEncryptionKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ebsEncryptionKeyArn');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has PitPolicy => (is => 'ro', isa => 'ArrayRef[Paws::Drs::PITPolicyRule]', traits => ['NameInRequest'], request_name => 'pitPolicy');
  has ReplicatedDisks => (is => 'ro', isa => 'ArrayRef[Paws::Drs::ReplicationConfigurationReplicatedDisk]', traits => ['NameInRequest'], request_name => 'replicatedDisks');
  has ReplicationServerInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicationServerInstanceType');
  has ReplicationServersSecurityGroupsIDs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'replicationServersSecurityGroupsIDs');
  has SourceServerID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceServerID');
  has StagingAreaSubnetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stagingAreaSubnetId');
  has StagingAreaTags => (is => 'ro', isa => 'Paws::Drs::TagsMap', traits => ['NameInRequest'], request_name => 'stagingAreaTags');
  has UseDedicatedReplicationServer => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'useDedicatedReplicationServer');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::ReplicationConfiguration

=head1 ATTRIBUTES


=head2 AssociateDefaultSecurityGroup => Bool

Whether to associate the default Elastic Disaster Recovery Security
group with the Replication Configuration.


=head2 AutoReplicateNewDisks => Bool

Whether to allow the AWS replication agent to automatically replicate
newly added disks.


=head2 BandwidthThrottling => Int

Configure bandwidth throttling for the outbound data transfer rate of
the Source Server in Mbps.


=head2 CreatePublicIP => Bool

Whether to create a Public IP for the Recovery Instance by default.


=head2 DataPlaneRouting => Str

The data plane routing mechanism that will be used for replication.

Valid values are: C<"PRIVATE_IP">, C<"PUBLIC_IP">
=head2 DefaultLargeStagingDiskType => Str

The Staging Disk EBS volume type to be used during replication.

Valid values are: C<"GP2">, C<"GP3">, C<"ST1">, C<"AUTO">
=head2 EbsEncryption => Str

The type of EBS encryption to be used during replication.

Valid values are: C<"DEFAULT">, C<"CUSTOM">, C<"NONE">
=head2 EbsEncryptionKeyArn => Str

The ARN of the EBS encryption key to be used during replication.


=head2 Name => Str

The name of the Replication Configuration.


=head2 PitPolicy => ArrayRef[L<Paws::Drs::PITPolicyRule>]

The Point in time (PIT) policy to manage snapshots taken during
replication.


=head2 ReplicatedDisks => ArrayRef[L<Paws::Drs::ReplicationConfigurationReplicatedDisk>]

The configuration of the disks of the Source Server to be replicated.


=head2 ReplicationServerInstanceType => Str

The instance type to be used for the replication server.


=head2 ReplicationServersSecurityGroupsIDs => ArrayRef[Str|Undef]

The security group IDs that will be used by the replication server.


=head2 SourceServerID => Str

The ID of the Source Server for this Replication Configuration.


=head2 StagingAreaSubnetId => Str

The subnet to be used by the replication staging area.


=head2 StagingAreaTags => L<Paws::Drs::TagsMap>

A set of tags to be associated with all resources created in the
replication staging area: EC2 replication server, EBS volumes, EBS
snapshots, etc.


=head2 UseDedicatedReplicationServer => Bool

Whether to use a dedicated Replication Server in the replication
staging area.


=head2 _request_id => Str


=cut

