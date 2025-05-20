
package Paws::Backup::UpdateRecoveryPointIndexSettingsOutput;
  use Moose;
  has BackupVaultName => (is => 'ro', isa => 'Str');
  has Index => (is => 'ro', isa => 'Str');
  has IndexStatus => (is => 'ro', isa => 'Str');
  has RecoveryPointArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::UpdateRecoveryPointIndexSettingsOutput

=head1 ATTRIBUTES


=head2 BackupVaultName => Str

The name of a logical container where backups are stored. Backup vaults
are identified by names that are unique to the account used to create
them and the Region where they are created.


=head2 Index => Str

Index can have 1 of 2 possible values, either C<ENABLED> or
C<DISABLED>.

A value of C<ENABLED> means a backup index for an eligible C<ACTIVE>
recovery point has been created.

A value of C<DISABLED> means a backup index was deleted.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 IndexStatus => Str

This is the current status for the backup index associated with the
specified recovery point.

Statuses are: C<PENDING> | C<ACTIVE> | C<FAILED> | C<DELETING>

A recovery point with an index that has the status of C<ACTIVE> can be
included in a search.

Valid values are: C<"PENDING">, C<"ACTIVE">, C<"FAILED">, C<"DELETING">
=head2 RecoveryPointArn => Str

An ARN that uniquely identifies a recovery point; for example,
C<arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45>.


=head2 _request_id => Str


=cut

