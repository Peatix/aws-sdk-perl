
package Paws::Backup::PutBackupVaultLockConfiguration;
  use Moose;
  has BackupVaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backupVaultName', required => 1);
  has ChangeableForDays => (is => 'ro', isa => 'Int');
  has MaxRetentionDays => (is => 'ro', isa => 'Int');
  has MinRetentionDays => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBackupVaultLockConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup-vaults/{backupVaultName}/vault-lock');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::PutBackupVaultLockConfiguration - Arguments for method PutBackupVaultLockConfiguration on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBackupVaultLockConfiguration on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method PutBackupVaultLockConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBackupVaultLockConfiguration.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    $backup->PutBackupVaultLockConfiguration(
      BackupVaultName   => 'MyBackupVaultName',
      ChangeableForDays => 1,                     # OPTIONAL
      MaxRetentionDays  => 1,                     # OPTIONAL
      MinRetentionDays  => 1,                     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/PutBackupVaultLockConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupVaultName => Str

The Backup Vault Lock configuration that specifies the name of the
backup vault it protects.



=head2 ChangeableForDays => Int

The Backup Vault Lock configuration that specifies the number of days
before the lock date. For example, setting C<ChangeableForDays> to 30
on Jan. 1, 2022 at 8pm UTC will set the lock date to Jan. 31, 2022 at
8pm UTC.

Backup enforces a 72-hour cooling-off period before Vault Lock takes
effect and becomes immutable. Therefore, you must set
C<ChangeableForDays> to 3 or greater.

Before the lock date, you can delete Vault Lock from the vault using
C<DeleteBackupVaultLockConfiguration> or change the Vault Lock
configuration using C<PutBackupVaultLockConfiguration>. On and after
the lock date, the Vault Lock becomes immutable and cannot be changed
or deleted.

If this parameter is not specified, you can delete Vault Lock from the
vault using C<DeleteBackupVaultLockConfiguration> or change the Vault
Lock configuration using C<PutBackupVaultLockConfiguration> at any
time.



=head2 MaxRetentionDays => Int

The Backup Vault Lock configuration that specifies the maximum
retention period that the vault retains its recovery points. This
setting can be useful if, for example, your organization's policies
require you to destroy certain data after retaining it for four years
(1460 days).

If this parameter is not included, Vault Lock does not enforce a
maximum retention period on the recovery points in the vault. If this
parameter is included without a value, Vault Lock will not enforce a
maximum retention period.

If this parameter is specified, any backup or copy job to the vault
must have a lifecycle policy with a retention period equal to or
shorter than the maximum retention period. If the job's retention
period is longer than that maximum retention period, then the vault
fails the backup or copy job, and you should either modify your
lifecycle settings or use a different vault. The longest maximum
retention period you can specify is 36500 days (approximately 100
years). Recovery points already saved in the vault prior to Vault Lock
are not affected.



=head2 MinRetentionDays => Int

The Backup Vault Lock configuration that specifies the minimum
retention period that the vault retains its recovery points. This
setting can be useful if, for example, your organization's policies
require you to retain certain data for at least seven years (2555
days).

This parameter is required when a vault lock is created through
CloudFormation; otherwise, this parameter is optional. If this
parameter is not specified, Vault Lock will not enforce a minimum
retention period.

If this parameter is specified, any backup or copy job to the vault
must have a lifecycle policy with a retention period equal to or longer
than the minimum retention period. If the job's retention period is
shorter than that minimum retention period, then the vault fails that
backup or copy job, and you should either modify your lifecycle
settings or use a different vault. The shortest minimum retention
period you can specify is 1 day. Recovery points already saved in the
vault prior to Vault Lock are not affected.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBackupVaultLockConfiguration in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

