
package Paws::Backup::GetRecoveryPointIndexDetailsOutput;
  use Moose;
  has BackupVaultArn => (is => 'ro', isa => 'Str');
  has IndexCompletionDate => (is => 'ro', isa => 'Str');
  has IndexCreationDate => (is => 'ro', isa => 'Str');
  has IndexDeletionDate => (is => 'ro', isa => 'Str');
  has IndexStatus => (is => 'ro', isa => 'Str');
  has IndexStatusMessage => (is => 'ro', isa => 'Str');
  has RecoveryPointArn => (is => 'ro', isa => 'Str');
  has SourceResourceArn => (is => 'ro', isa => 'Str');
  has TotalItemsIndexed => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetRecoveryPointIndexDetailsOutput

=head1 ATTRIBUTES


=head2 BackupVaultArn => Str

An ARN that uniquely identifies the backup vault where the recovery
point index is stored.

For example,
C<arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault>.


=head2 IndexCompletionDate => Str

The date and time that a backup index finished creation, in Unix format
and Coordinated Universal Time (UTC). The value of C<CreationDate> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 IndexCreationDate => Str

The date and time that a backup index was created, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationDate> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 IndexDeletionDate => Str

The date and time that a backup index was deleted, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationDate> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 IndexStatus => Str

This is the current status for the backup index associated with the
specified recovery point.

Statuses are: C<PENDING> | C<ACTIVE> | C<FAILED> | C<DELETING>

A recovery point with an index that has the status of C<ACTIVE> can be
included in a search.

Valid values are: C<"PENDING">, C<"ACTIVE">, C<"FAILED">, C<"DELETING">
=head2 IndexStatusMessage => Str

A detailed message explaining the status of a backup index associated
with the recovery point.


=head2 RecoveryPointArn => Str

An ARN that uniquely identifies a recovery point; for example,
C<arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45>.


=head2 SourceResourceArn => Str

A string of the Amazon Resource Name (ARN) that uniquely identifies the
source resource.


=head2 TotalItemsIndexed => Int

Count of items within the backup index associated with the recovery
point.


=head2 _request_id => Str


=cut

