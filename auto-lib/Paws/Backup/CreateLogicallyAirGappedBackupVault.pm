
package Paws::Backup::CreateLogicallyAirGappedBackupVault;
  use Moose;
  has BackupVaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backupVaultName', required => 1);
  has BackupVaultTags => (is => 'ro', isa => 'Paws::Backup::Tags');
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has MaxRetentionDays => (is => 'ro', isa => 'Int', required => 1);
  has MinRetentionDays => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLogicallyAirGappedBackupVault');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/logically-air-gapped-backup-vaults/{backupVaultName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::CreateLogicallyAirGappedBackupVaultOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::CreateLogicallyAirGappedBackupVault - Arguments for method CreateLogicallyAirGappedBackupVault on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLogicallyAirGappedBackupVault on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method CreateLogicallyAirGappedBackupVault.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLogicallyAirGappedBackupVault.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $CreateLogicallyAirGappedBackupVaultOutput =
      $backup->CreateLogicallyAirGappedBackupVault(
      BackupVaultName  => 'MyBackupVaultName',
      MaxRetentionDays => 1,
      MinRetentionDays => 1,
      BackupVaultTags  => { 'MyTagKey' => 'MyTagValue', },    # OPTIONAL
      CreatorRequestId => 'Mystring',                         # OPTIONAL
      );

    # Results:
    my $BackupVaultArn =
      $CreateLogicallyAirGappedBackupVaultOutput->BackupVaultArn;
    my $BackupVaultName =
      $CreateLogicallyAirGappedBackupVaultOutput->BackupVaultName;
    my $CreationDate = $CreateLogicallyAirGappedBackupVaultOutput->CreationDate;
    my $VaultState   = $CreateLogicallyAirGappedBackupVaultOutput->VaultState;

  # Returns a L<Paws::Backup::CreateLogicallyAirGappedBackupVaultOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/CreateLogicallyAirGappedBackupVault>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupVaultName => Str

The name of a logical container where backups are stored. Logically
air-gapped backup vaults are identified by names that are unique to the
account used to create them and the Region where they are created.



=head2 BackupVaultTags => L<Paws::Backup::Tags>

The tags to assign to the vault.



=head2 CreatorRequestId => Str

The ID of the creation request.

This parameter is optional. If used, this parameter must contain 1 to
50 alphanumeric or '-_.' characters.



=head2 B<REQUIRED> MaxRetentionDays => Int

The maximum retention period that the vault retains its recovery
points.



=head2 B<REQUIRED> MinRetentionDays => Int

This setting specifies the minimum retention period that the vault
retains its recovery points.

The minimum value accepted is 7 days.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLogicallyAirGappedBackupVault in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

