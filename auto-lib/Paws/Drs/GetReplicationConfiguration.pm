
package Paws::Drs::GetReplicationConfiguration;
  use Moose;
  has SourceServerID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceServerID', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReplicationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetReplicationConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Drs::ReplicationConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::GetReplicationConfiguration - Arguments for method GetReplicationConfiguration on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReplicationConfiguration on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method GetReplicationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReplicationConfiguration.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    my $ReplicationConfiguration = $drs->GetReplicationConfiguration(
      SourceServerID => 'MySourceServerID',

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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/GetReplicationConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceServerID => Str

The ID of the Source Serve for this Replication Configuration.r




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReplicationConfiguration in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

