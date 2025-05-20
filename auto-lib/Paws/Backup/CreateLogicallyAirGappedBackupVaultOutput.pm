
package Paws::Backup::CreateLogicallyAirGappedBackupVaultOutput;
  use Moose;
  has BackupVaultArn => (is => 'ro', isa => 'Str');
  has BackupVaultName => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has VaultState => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::CreateLogicallyAirGappedBackupVaultOutput

=head1 ATTRIBUTES


=head2 BackupVaultArn => Str

The ARN (Amazon Resource Name) of the vault.


=head2 BackupVaultName => Str

The name of a logical container where backups are stored. Logically
air-gapped backup vaults are identified by names that are unique to the
account used to create them and the Region where they are created.


=head2 CreationDate => Str

The date and time when the vault was created.

This value is in Unix format, Coordinated Universal Time (UTC), and
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 VaultState => Str

The current state of the vault.

Valid values are: C<"CREATING">, C<"AVAILABLE">, C<"FAILED">
=head2 _request_id => Str


=cut

