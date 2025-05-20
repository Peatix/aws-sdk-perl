
package Paws::Backup::DescribeRecoveryPointOutput;
  use Moose;
  has BackupSizeInBytes => (is => 'ro', isa => 'Int');
  has BackupVaultArn => (is => 'ro', isa => 'Str');
  has BackupVaultName => (is => 'ro', isa => 'Str');
  has CalculatedLifecycle => (is => 'ro', isa => 'Paws::Backup::CalculatedLifecycle');
  has CompletionDate => (is => 'ro', isa => 'Str');
  has CompositeMemberIdentifier => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Paws::Backup::RecoveryPointCreator');
  has CreationDate => (is => 'ro', isa => 'Str');
  has EncryptionKeyArn => (is => 'ro', isa => 'Str');
  has IamRoleArn => (is => 'ro', isa => 'Str');
  has IndexStatus => (is => 'ro', isa => 'Str');
  has IndexStatusMessage => (is => 'ro', isa => 'Str');
  has IsEncrypted => (is => 'ro', isa => 'Bool');
  has IsParent => (is => 'ro', isa => 'Bool');
  has LastRestoreTime => (is => 'ro', isa => 'Str');
  has Lifecycle => (is => 'ro', isa => 'Paws::Backup::Lifecycle');
  has ParentRecoveryPointArn => (is => 'ro', isa => 'Str');
  has RecoveryPointArn => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has ResourceName => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has SourceBackupVaultArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has StorageClass => (is => 'ro', isa => 'Str');
  has VaultType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeRecoveryPointOutput

=head1 ATTRIBUTES


=head2 BackupSizeInBytes => Int

The size, in bytes, of a backup.


=head2 BackupVaultArn => Str

An ARN that uniquely identifies a backup vault; for example,
C<arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault>.


=head2 BackupVaultName => Str

The name of a logical container where backups are stored. Backup vaults
are identified by names that are unique to the account used to create
them and the Region where they are created.


=head2 CalculatedLifecycle => L<Paws::Backup::CalculatedLifecycle>

A C<CalculatedLifecycle> object containing C<DeleteAt> and
C<MoveToColdStorageAt> timestamps.


=head2 CompletionDate => Str

The date and time that a job to create a recovery point is completed,
in Unix format and Coordinated Universal Time (UTC). The value of
C<CompletionDate> is accurate to milliseconds. For example, the value
1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 CompositeMemberIdentifier => Str

The identifier of a resource within a composite group, such as nested
(child) recovery point belonging to a composite (parent) stack. The ID
is transferred from the logical ID
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resources-section-structure.html#resources-section-structure-syntax)
within a stack.


=head2 CreatedBy => L<Paws::Backup::RecoveryPointCreator>

Contains identifying information about the creation of a recovery
point, including the C<BackupPlanArn>, C<BackupPlanId>,
C<BackupPlanVersion>, and C<BackupRuleId> of the backup plan used to
create it.


=head2 CreationDate => Str

The date and time that a recovery point is created, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationDate> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 EncryptionKeyArn => Str

The server-side encryption key used to protect your backups; for
example,
C<arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>.


=head2 IamRoleArn => Str

Specifies the IAM role ARN used to create the target recovery point;
for example, C<arn:aws:iam::123456789012:role/S3Access>.


=head2 IndexStatus => Str

This is the current status for the backup index associated with the
specified recovery point.

Statuses are: C<PENDING> | C<ACTIVE> | C<FAILED> | C<DELETING>

A recovery point with an index that has the status of C<ACTIVE> can be
included in a search.

Valid values are: C<"PENDING">, C<"ACTIVE">, C<"FAILED">, C<"DELETING">
=head2 IndexStatusMessage => Str

A string in the form of a detailed message explaining the status of a
backup index associated with the recovery point.


=head2 IsEncrypted => Bool

A Boolean value that is returned as C<TRUE> if the specified recovery
point is encrypted, or C<FALSE> if the recovery point is not encrypted.


=head2 IsParent => Bool

This returns the boolean value that a recovery point is a parent
(composite) job.


=head2 LastRestoreTime => Str

The date and time that a recovery point was last restored, in Unix
format and Coordinated Universal Time (UTC). The value of
C<LastRestoreTime> is accurate to milliseconds. For example, the value
1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 Lifecycle => L<Paws::Backup::Lifecycle>

The lifecycle defines when a protected resource is transitioned to cold
storage and when it expires. Backup transitions and expires backups
automatically according to the lifecycle that you define.

Backups that are transitioned to cold storage must be stored in cold
storage for a minimum of 90 days. Therefore, the
E<ldquo>retentionE<rdquo> setting must be 90 days greater than the
E<ldquo>transition to cold after daysE<rdquo> setting. The
E<ldquo>transition to cold after daysE<rdquo> setting cannot be changed
after a backup has been transitioned to cold.

Resource types that can transition to cold storage are listed in the
Feature availability by resource
(https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource)
table. Backup ignores this expression for other resource types.


=head2 ParentRecoveryPointArn => Str

This is an ARN that uniquely identifies a parent (composite) recovery
point; for example,
C<arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45>.


=head2 RecoveryPointArn => Str

An ARN that uniquely identifies a recovery point; for example,
C<arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45>.


=head2 ResourceArn => Str

An ARN that uniquely identifies a saved resource. The format of the ARN
depends on the resource type.


=head2 ResourceName => Str

The name of the resource that belongs to the specified backup.


=head2 ResourceType => Str

The type of Amazon Web Services resource to save as a recovery point;
for example, an Amazon Elastic Block Store (Amazon EBS) volume or an
Amazon Relational Database Service (Amazon RDS) database.


=head2 SourceBackupVaultArn => Str

An Amazon Resource Name (ARN) that uniquely identifies the source vault
where the resource was originally backed up in; for example,
C<arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault>. If
the recovery is restored to the same Amazon Web Services account or
Region, this value will be C<null>.


=head2 Status => Str

A status code specifying the state of the recovery point.

C<PARTIAL> status indicates Backup could not create the recovery point
before the backup window closed. To increase your backup plan window
using the API, see UpdateBackupPlan
(https://docs.aws.amazon.com/aws-backup/latest/devguide/API_UpdateBackupPlan.html).
You can also increase your backup plan window using the Console by
choosing and editing your backup plan.

C<EXPIRED> status indicates that the recovery point has exceeded its
retention period, but Backup lacks permission or is otherwise unable to
delete it. To manually delete these recovery points, see Step 3: Delete
the recovery points
(https://docs.aws.amazon.com/aws-backup/latest/devguide/gs-cleanup-resources.html#cleanup-backups)
in the I<Clean up resources> section of I<Getting started>.

C<STOPPED> status occurs on a continuous backup where a user has taken
some action that causes the continuous backup to be disabled. This can
be caused by the removal of permissions, turning off versioning,
turning off events being sent to EventBridge, or disabling the
EventBridge rules that are put in place by Backup. For recovery points
of Amazon S3, Amazon RDS, and Amazon Aurora resources, this status
occurs when the retention period of a continuous backup rule is
changed.

To resolve C<STOPPED> status, ensure that all requested permissions are
in place and that versioning is enabled on the S3 bucket. Once these
conditions are met, the next instance of a backup rule running will
result in a new continuous recovery point being created. The recovery
points with STOPPED status do not need to be deleted.

For SAP HANA on Amazon EC2 C<STOPPED> status occurs due to user action,
application misconfiguration, or backup failure. To ensure that future
continuous backups succeed, refer to the recovery point status and
check SAP HANA for details.

Valid values are: C<"COMPLETED">, C<"PARTIAL">, C<"DELETING">, C<"EXPIRED">
=head2 StatusMessage => Str

A status message explaining the status of the recovery point.


=head2 StorageClass => Str

Specifies the storage class of the recovery point. Valid values are
C<WARM> or C<COLD>.

Valid values are: C<"WARM">, C<"COLD">, C<"DELETED">
=head2 VaultType => Str

The type of vault in which the described recovery point is stored.

Valid values are: C<"BACKUP_VAULT">, C<"LOGICALLY_AIR_GAPPED_BACKUP_VAULT">
=head2 _request_id => Str


=cut

