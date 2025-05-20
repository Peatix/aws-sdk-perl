
package Paws::Backup::DescribeProtectedResourceOutput;
  use Moose;
  has LastBackupTime => (is => 'ro', isa => 'Str');
  has LastBackupVaultArn => (is => 'ro', isa => 'Str');
  has LastRecoveryPointArn => (is => 'ro', isa => 'Str');
  has LatestRestoreExecutionTimeMinutes => (is => 'ro', isa => 'Int');
  has LatestRestoreJobCreationDate => (is => 'ro', isa => 'Str');
  has LatestRestoreRecoveryPointCreationDate => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has ResourceName => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeProtectedResourceOutput

=head1 ATTRIBUTES


=head2 LastBackupTime => Str

The date and time that a resource was last backed up, in Unix format
and Coordinated Universal Time (UTC). The value of C<LastBackupTime> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 LastBackupVaultArn => Str

The ARN (Amazon Resource Name) of the backup vault that contains the
most recent backup recovery point.


=head2 LastRecoveryPointArn => Str

The ARN (Amazon Resource Name) of the most recent recovery point.


=head2 LatestRestoreExecutionTimeMinutes => Int

The time, in minutes, that the most recent restore job took to
complete.


=head2 LatestRestoreJobCreationDate => Str

The creation date of the most recent restore job.


=head2 LatestRestoreRecoveryPointCreationDate => Str

The date the most recent recovery point was created.


=head2 ResourceArn => Str

An ARN that uniquely identifies a resource. The format of the ARN
depends on the resource type.


=head2 ResourceName => Str

The name of the resource that belongs to the specified backup.


=head2 ResourceType => Str

The type of Amazon Web Services resource saved as a recovery point; for
example, an Amazon EBS volume or an Amazon RDS database.


=head2 _request_id => Str


=cut

