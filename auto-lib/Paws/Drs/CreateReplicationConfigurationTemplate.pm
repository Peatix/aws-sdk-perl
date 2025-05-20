
package Paws::Drs::CreateReplicationConfigurationTemplate;
  use Moose;
  has AssociateDefaultSecurityGroup => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'associateDefaultSecurityGroup', required => 1);
  has AutoReplicateNewDisks => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'autoReplicateNewDisks');
  has BandwidthThrottling => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'bandwidthThrottling', required => 1);
  has CreatePublicIP => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'createPublicIP', required => 1);
  has DataPlaneRouting => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataPlaneRouting', required => 1);
  has DefaultLargeStagingDiskType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultLargeStagingDiskType', required => 1);
  has EbsEncryption => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ebsEncryption', required => 1);
  has EbsEncryptionKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ebsEncryptionKeyArn');
  has PitPolicy => (is => 'ro', isa => 'ArrayRef[Paws::Drs::PITPolicyRule]', traits => ['NameInRequest'], request_name => 'pitPolicy', required => 1);
  has ReplicationServerInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicationServerInstanceType', required => 1);
  has ReplicationServersSecurityGroupsIDs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'replicationServersSecurityGroupsIDs', required => 1);
  has StagingAreaSubnetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stagingAreaSubnetId', required => 1);
  has StagingAreaTags => (is => 'ro', isa => 'Paws::Drs::TagsMap', traits => ['NameInRequest'], request_name => 'stagingAreaTags', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Drs::TagsMap', traits => ['NameInRequest'], request_name => 'tags');
  has UseDedicatedReplicationServer => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'useDedicatedReplicationServer', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReplicationConfigurationTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateReplicationConfigurationTemplate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Drs::ReplicationConfigurationTemplate');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::CreateReplicationConfigurationTemplate - Arguments for method CreateReplicationConfigurationTemplate on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReplicationConfigurationTemplate on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method CreateReplicationConfigurationTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReplicationConfigurationTemplate.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    my $ReplicationConfigurationTemplate =
      $drs->CreateReplicationConfigurationTemplate(
      AssociateDefaultSecurityGroup => 1,
      BandwidthThrottling           => 1,
      CreatePublicIP                => 1,
      DataPlaneRouting              => 'PRIVATE_IP',
      DefaultLargeStagingDiskType   => 'GP2',
      EbsEncryption                 => 'DEFAULT',
      PitPolicy                     => [
        {
          Interval          => 1,           # min: 1
          RetentionDuration => 1,           # min: 1
          Units             => 'MINUTE',    # values: MINUTE, HOUR, DAY
          Enabled           => 1,
          RuleID            => 1,
        },
        ...
      ],
      ReplicationServerInstanceType       => 'MyEC2InstanceType',
      ReplicationServersSecurityGroupsIDs => [
        'MySecurityGroupID',
        ...    # max: 255
      ],
      StagingAreaSubnetId => 'MySubnetID',
      StagingAreaTags     => {
        'MyTagKey' => 'MyTagValue',    # key: max: 256, value: max: 256
      },
      UseDedicatedReplicationServer => 1,
      AutoReplicateNewDisks         => 1,          # OPTIONAL
      EbsEncryptionKeyArn           => 'MyARN',    # OPTIONAL
      Tags                          => {
        'MyTagKey' => 'MyTagValue',    # key: max: 256, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Arn = $ReplicationConfigurationTemplate->Arn;
    my $AssociateDefaultSecurityGroup =
      $ReplicationConfigurationTemplate->AssociateDefaultSecurityGroup;
    my $AutoReplicateNewDisks =
      $ReplicationConfigurationTemplate->AutoReplicateNewDisks;
    my $BandwidthThrottling =
      $ReplicationConfigurationTemplate->BandwidthThrottling;
    my $CreatePublicIP   = $ReplicationConfigurationTemplate->CreatePublicIP;
    my $DataPlaneRouting = $ReplicationConfigurationTemplate->DataPlaneRouting;
    my $DefaultLargeStagingDiskType =
      $ReplicationConfigurationTemplate->DefaultLargeStagingDiskType;
    my $EbsEncryption = $ReplicationConfigurationTemplate->EbsEncryption;
    my $EbsEncryptionKeyArn =
      $ReplicationConfigurationTemplate->EbsEncryptionKeyArn;
    my $PitPolicy = $ReplicationConfigurationTemplate->PitPolicy;
    my $ReplicationConfigurationTemplateID =
      $ReplicationConfigurationTemplate->ReplicationConfigurationTemplateID;
    my $ReplicationServerInstanceType =
      $ReplicationConfigurationTemplate->ReplicationServerInstanceType;
    my $ReplicationServersSecurityGroupsIDs =
      $ReplicationConfigurationTemplate->ReplicationServersSecurityGroupsIDs;
    my $StagingAreaSubnetId =
      $ReplicationConfigurationTemplate->StagingAreaSubnetId;
    my $StagingAreaTags = $ReplicationConfigurationTemplate->StagingAreaTags;
    my $Tags            = $ReplicationConfigurationTemplate->Tags;
    my $UseDedicatedReplicationServer =
      $ReplicationConfigurationTemplate->UseDedicatedReplicationServer;

    # Returns a L<Paws::Drs::ReplicationConfigurationTemplate> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/CreateReplicationConfigurationTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociateDefaultSecurityGroup => Bool

Whether to associate the default Elastic Disaster Recovery Security
group with the Replication Configuration Template.



=head2 AutoReplicateNewDisks => Bool

Whether to allow the AWS replication agent to automatically replicate
newly added disks.



=head2 B<REQUIRED> BandwidthThrottling => Int

Configure bandwidth throttling for the outbound data transfer rate of
the Source Server in Mbps.



=head2 B<REQUIRED> CreatePublicIP => Bool

Whether to create a Public IP for the Recovery Instance by default.



=head2 B<REQUIRED> DataPlaneRouting => Str

The data plane routing mechanism that will be used for replication.

Valid values are: C<"PRIVATE_IP">, C<"PUBLIC_IP">

=head2 B<REQUIRED> DefaultLargeStagingDiskType => Str

The Staging Disk EBS volume type to be used during replication.

Valid values are: C<"GP2">, C<"GP3">, C<"ST1">, C<"AUTO">

=head2 B<REQUIRED> EbsEncryption => Str

The type of EBS encryption to be used during replication.

Valid values are: C<"DEFAULT">, C<"CUSTOM">, C<"NONE">

=head2 EbsEncryptionKeyArn => Str

The ARN of the EBS encryption key to be used during replication.



=head2 B<REQUIRED> PitPolicy => ArrayRef[L<Paws::Drs::PITPolicyRule>]

The Point in time (PIT) policy to manage snapshots taken during
replication.



=head2 B<REQUIRED> ReplicationServerInstanceType => Str

The instance type to be used for the replication server.



=head2 B<REQUIRED> ReplicationServersSecurityGroupsIDs => ArrayRef[Str|Undef]

The security group IDs that will be used by the replication server.



=head2 B<REQUIRED> StagingAreaSubnetId => Str

The subnet to be used by the replication staging area.



=head2 B<REQUIRED> StagingAreaTags => L<Paws::Drs::TagsMap>

A set of tags to be associated with all resources created in the
replication staging area: EC2 replication server, EBS volumes, EBS
snapshots, etc.



=head2 Tags => L<Paws::Drs::TagsMap>

A set of tags to be associated with the Replication Configuration
Template resource.



=head2 B<REQUIRED> UseDedicatedReplicationServer => Bool

Whether to use a dedicated Replication Server in the replication
staging area.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReplicationConfigurationTemplate in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

