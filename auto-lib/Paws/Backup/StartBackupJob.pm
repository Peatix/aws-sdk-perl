
package Paws::Backup::StartBackupJob;
  use Moose;
  has BackupOptions => (is => 'ro', isa => 'Paws::Backup::BackupOptions');
  has BackupVaultName => (is => 'ro', isa => 'Str', required => 1);
  has CompleteWindowMinutes => (is => 'ro', isa => 'Int');
  has IamRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has Index => (is => 'ro', isa => 'Str');
  has Lifecycle => (is => 'ro', isa => 'Paws::Backup::Lifecycle');
  has RecoveryPointTags => (is => 'ro', isa => 'Paws::Backup::Tags');
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has StartWindowMinutes => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartBackupJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::StartBackupJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::StartBackupJob - Arguments for method StartBackupJob on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartBackupJob on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method StartBackupJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartBackupJob.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $StartBackupJobOutput = $backup->StartBackupJob(
      BackupVaultName => 'MyBackupVaultName',
      IamRoleArn      => 'MyIAMRoleArn',
      ResourceArn     => 'MyARN',
      BackupOptions   => { 'MyBackupOptionKey' => 'MyBackupOptionValue', }
      ,                                       # OPTIONAL
      CompleteWindowMinutes => 1,             # OPTIONAL
      IdempotencyToken      => 'Mystring',    # OPTIONAL
      Index                 => 'ENABLED',     # OPTIONAL
      Lifecycle             => {
        DeleteAfterDays                     => 1,    # OPTIONAL
        MoveToColdStorageAfterDays          => 1,    # OPTIONAL
        OptInToArchiveForSupportedResources => 1,    # OPTIONAL
      },    # OPTIONAL
      RecoveryPointTags  => { 'MyTagKey' => 'MyTagValue', },    # OPTIONAL
      StartWindowMinutes => 1,                                  # OPTIONAL
    );

    # Results:
    my $BackupJobId      = $StartBackupJobOutput->BackupJobId;
    my $CreationDate     = $StartBackupJobOutput->CreationDate;
    my $IsParent         = $StartBackupJobOutput->IsParent;
    my $RecoveryPointArn = $StartBackupJobOutput->RecoveryPointArn;

    # Returns a L<Paws::Backup::StartBackupJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/StartBackupJob>

=head1 ATTRIBUTES


=head2 BackupOptions => L<Paws::Backup::BackupOptions>

The backup option for a selected resource. This option is only
available for Windows Volume Shadow Copy Service (VSS) backup jobs.

Valid values: Set to C<"WindowsVSS":"enabled"> to enable the
C<WindowsVSS> backup option and create a Windows VSS backup. Set to
C<"WindowsVSS""disabled"> to create a regular backup. The C<WindowsVSS>
option is not enabled by default.



=head2 B<REQUIRED> BackupVaultName => Str

The name of a logical container where backups are stored. Backup vaults
are identified by names that are unique to the account used to create
them and the Amazon Web Services Region where they are created.



=head2 CompleteWindowMinutes => Int

A value in minutes during which a successfully started backup must
complete, or else Backup will cancel the job. This value is optional.
This value begins counting down from when the backup was scheduled. It
does not add additional time for C<StartWindowMinutes>, or if the
backup started later than scheduled.

Like C<StartWindowMinutes>, this parameter has a maximum value of 100
years (52,560,000 minutes).



=head2 B<REQUIRED> IamRoleArn => Str

Specifies the IAM role ARN used to create the target recovery point;
for example, C<arn:aws:iam::123456789012:role/S3Access>.



=head2 IdempotencyToken => Str

A customer-chosen string that you can use to distinguish between
otherwise identical calls to C<StartBackupJob>. Retrying a successful
request with the same idempotency token results in a success message
with no action taken.



=head2 Index => Str

Include this parameter to enable index creation if your backup job has
a resource type that supports backup indexes.

Resource types that support backup indexes include:

=over

=item *

C<EBS> for Amazon Elastic Block Store

=item *

C<S3> for Amazon Simple Storage Service (Amazon S3)

=back

Index can have 1 of 2 possible values, either C<ENABLED> or
C<DISABLED>.

To create a backup index for an eligible C<ACTIVE> recovery point that
does not yet have a backup index, set value to C<ENABLED>.

To delete a backup index, set value to C<DISABLED>.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 Lifecycle => L<Paws::Backup::Lifecycle>

The lifecycle defines when a protected resource is transitioned to cold
storage and when it expires. Backup will transition and expire backups
automatically according to the lifecycle that you define.

Backups transitioned to cold storage must be stored in cold storage for
a minimum of 90 days. Therefore, the E<ldquo>retentionE<rdquo> setting
must be 90 days greater than the E<ldquo>transition to cold after
daysE<rdquo> setting. The E<ldquo>transition to cold after daysE<rdquo>
setting cannot be changed after a backup has been transitioned to cold.

Resource types that can transition to cold storage are listed in the
Feature availability by resource
(https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource)
table. Backup ignores this expression for other resource types.

This parameter has a maximum value of 100 years (36,500 days).



=head2 RecoveryPointTags => L<Paws::Backup::Tags>

The tags to assign to the resources.



=head2 B<REQUIRED> ResourceArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a resource. The
format of the ARN depends on the resource type.



=head2 StartWindowMinutes => Int

A value in minutes after a backup is scheduled before a job will be
canceled if it doesn't start successfully. This value is optional, and
the default is 8 hours. If this value is included, it must be at least
60 minutes to avoid errors.

This parameter has a maximum value of 100 years (52,560,000 minutes).

During the start window, the backup job status remains in C<CREATED>
status until it has successfully begun or until the start window time
has run out. If within the start window time Backup receives an error
that allows the job to be retried, Backup will automatically retry to
begin the job at least every 10 minutes until the backup successfully
begins (the job status changes to C<RUNNING>) or until the job status
changes to C<EXPIRED> (which is expected to occur when the start window
time is over).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartBackupJob in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

