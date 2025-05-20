
package Paws::Backup::DescribeBackupVaultOutput;
  use Moose;
  has BackupVaultArn => (is => 'ro', isa => 'Str');
  has BackupVaultName => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has EncryptionKeyArn => (is => 'ro', isa => 'Str');
  has LockDate => (is => 'ro', isa => 'Str');
  has Locked => (is => 'ro', isa => 'Bool');
  has MaxRetentionDays => (is => 'ro', isa => 'Int');
  has MinRetentionDays => (is => 'ro', isa => 'Int');
  has NumberOfRecoveryPoints => (is => 'ro', isa => 'Int');
  has VaultState => (is => 'ro', isa => 'Str');
  has VaultType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeBackupVaultOutput

=head1 ATTRIBUTES


=head2 BackupVaultArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a backup vault;
for example,
C<arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault>.


=head2 BackupVaultName => Str

The name of a logical container where backups are stored. Backup vaults
are identified by names that are unique to the account used to create
them and the Region where they are created.


=head2 CreationDate => Str

The date and time that a backup vault is created, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationDate> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 CreatorRequestId => Str

A unique string that identifies the request and allows failed requests
to be retried without the risk of running the operation twice. This
parameter is optional. If used, this parameter must contain 1 to 50
alphanumeric or '-_.' characters.


=head2 EncryptionKeyArn => Str

The server-side encryption key that is used to protect your backups;
for example,
C<arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>.


=head2 LockDate => Str

The date and time when Backup Vault Lock configuration cannot be
changed or deleted.

If you applied Vault Lock to your vault without specifying a lock date,
you can change any of your Vault Lock settings, or delete Vault Lock
from the vault entirely, at any time.

This value is in Unix format, Coordinated Universal Time (UTC), and
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 Locked => Bool

A Boolean that indicates whether Backup Vault Lock is currently
protecting the backup vault. C<True> means that Vault Lock causes
delete or update operations on the recovery points stored in the vault
to fail.


=head2 MaxRetentionDays => Int

The Backup Vault Lock setting that specifies the maximum retention
period that the vault retains its recovery points. If this parameter is
not specified, Vault Lock does not enforce a maximum retention period
on the recovery points in the vault (allowing indefinite storage).

If specified, any backup or copy job to the vault must have a lifecycle
policy with a retention period equal to or shorter than the maximum
retention period. If the job's retention period is longer than that
maximum retention period, then the vault fails the backup or copy job,
and you should either modify your lifecycle settings or use a different
vault. Recovery points already stored in the vault prior to Vault Lock
are not affected.


=head2 MinRetentionDays => Int

The Backup Vault Lock setting that specifies the minimum retention
period that the vault retains its recovery points. If this parameter is
not specified, Vault Lock will not enforce a minimum retention period.

If specified, any backup or copy job to the vault must have a lifecycle
policy with a retention period equal to or longer than the minimum
retention period. If the job's retention period is shorter than that
minimum retention period, then the vault fails the backup or copy job,
and you should either modify your lifecycle settings or use a different
vault. Recovery points already stored in the vault prior to Vault Lock
are not affected.


=head2 NumberOfRecoveryPoints => Int

The number of recovery points that are stored in a backup vault.


=head2 VaultState => Str

The current state of the vault.-E<gt>

Valid values are: C<"CREATING">, C<"AVAILABLE">, C<"FAILED">
=head2 VaultType => Str

The type of vault described.

Valid values are: C<"BACKUP_VAULT">, C<"LOGICALLY_AIR_GAPPED_BACKUP_VAULT">
=head2 _request_id => Str


=cut

