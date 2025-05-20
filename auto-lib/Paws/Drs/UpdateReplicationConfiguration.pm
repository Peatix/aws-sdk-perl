
package Paws::Drs::UpdateReplicationConfiguration;
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
  has SourceServerID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceServerID', required => 1);
  has StagingAreaSubnetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stagingAreaSubnetId');
  has StagingAreaTags => (is => 'ro', isa => 'Paws::Drs::TagsMap', traits => ['NameInRequest'], request_name => 'stagingAreaTags');
  has UseDedicatedReplicationServer => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'useDedicatedReplicationServer');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateReplicationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateReplicationConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Drs::ReplicationConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::UpdateReplicationConfiguration - Arguments for method UpdateReplicationConfiguration on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateReplicationConfiguration on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method UpdateReplicationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateReplicationConfiguration.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    my $ReplicationConfiguration = $drs->UpdateReplicationConfiguration(
      SourceServerID                => 'MySourceServerID',
      AssociateDefaultSecurityGroup => 1,                         # OPTIONAL
      AutoReplicateNewDisks         => 1,                         # OPTIONAL
      BandwidthThrottling           => 1,                         # OPTIONAL
      CreatePublicIP                => 1,                         # OPTIONAL
      DataPlaneRouting              => 'PRIVATE_IP',              # OPTIONAL
      DefaultLargeStagingDiskType   => 'GP2',                     # OPTIONAL
      EbsEncryption                 => 'DEFAULT',                 # OPTIONAL
      EbsEncryptionKeyArn           => 'MyARN',                   # OPTIONAL
      Name                          => 'MySmallBoundedString',    # OPTIONAL
      PitPolicy                     => [
        {
          Interval          => 1,           # min: 1
          RetentionDuration => 1,           # min: 1
          Units             => 'MINUTE',    # values: MINUTE, HOUR, DAY
          Enabled           => 1,
          RuleID            => 1,
        },
        ...
      ],    # OPTIONAL
      ReplicatedDisks => [
        {
          DeviceName               => 'MyBoundedString',    # max: 256; OPTIONAL
          Iops                     => 1,
          IsBootDisk               => 1,
          OptimizedStagingDiskType =>
            'AUTO',  # values: AUTO, GP2, GP3, IO1, SC1, ST1, STANDARD; OPTIONAL
          StagingDiskType =>
            'AUTO',  # values: AUTO, GP2, GP3, IO1, SC1, ST1, STANDARD; OPTIONAL
          Throughput => 1,
        },
        ...
      ],    # OPTIONAL
      ReplicationServerInstanceType       => 'MyEC2InstanceType',    # OPTIONAL
      ReplicationServersSecurityGroupsIDs => [
        'MySecurityGroupID', ...                                     # max: 255
      ],    # OPTIONAL
      StagingAreaSubnetId => 'MySubnetID',    # OPTIONAL
      StagingAreaTags     => {
        'MyTagKey' => 'MyTagValue',           # key: max: 256, value: max: 256
      },    # OPTIONAL
      UseDedicatedReplicationServer => 1,    # OPTIONAL
    );

    # Results:
    my $AssociateDefaultSecurityGroup =
      $ReplicationConfiguration->AssociateDefaultSecurityGroup;
    my $AutoReplicateNewDisks =
      $ReplicationConfiguration->AutoReplicateNewDisks;
    my $BandwidthThrottling = $ReplicationConfiguration->BandwidthThrottling;
    my $CreatePublicIP      = $ReplicationConfiguration->CreatePublicIP;
    my $DataPlaneRouting    = $ReplicationConfiguration->DataPlaneRouting;
    my $DefaultLargeStagingDiskType =
      $ReplicationConfiguration->DefaultLargeStagingDiskType;
    my $EbsEncryption       = $ReplicationConfiguration->EbsEncryption;
    my $EbsEncryptionKeyArn = $ReplicationConfiguration->EbsEncryptionKeyArn;
    my $Name                = $ReplicationConfiguration->Name;
    my $PitPolicy           = $ReplicationConfiguration->PitPolicy;
    my $ReplicatedDisks     = $ReplicationConfiguration->ReplicatedDisks;
    my $ReplicationServerInstanceType =
      $ReplicationConfiguration->ReplicationServerInstanceType;
    my $ReplicationServersSecurityGroupsIDs =
      $ReplicationConfiguration->ReplicationServersSecurityGroupsIDs;
    my $SourceServerID      = $ReplicationConfiguration->SourceServerID;
    my $StagingAreaSubnetId = $ReplicationConfiguration->StagingAreaSubnetId;
    my $StagingAreaTags     = $ReplicationConfiguration->StagingAreaTags;
    my $UseDedicatedReplicationServer =
      $ReplicationConfiguration->UseDedicatedReplicationServer;

    # Returns a L<Paws::Drs::ReplicationConfiguration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/UpdateReplicationConfiguration>

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



=head2 B<REQUIRED> SourceServerID => Str

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




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateReplicationConfiguration in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

