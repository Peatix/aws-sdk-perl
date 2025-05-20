
package Paws::Backup::StartRestoreJob;
  use Moose;
  has CopySourceTagsToRestoredResource => (is => 'ro', isa => 'Bool');
  has IamRoleArn => (is => 'ro', isa => 'Str');
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has Metadata => (is => 'ro', isa => 'Paws::Backup::Metadata', required => 1);
  has RecoveryPointArn => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartRestoreJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restore-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::StartRestoreJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::StartRestoreJob - Arguments for method StartRestoreJob on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartRestoreJob on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method StartRestoreJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartRestoreJob.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $StartRestoreJobOutput = $backup->StartRestoreJob(
      Metadata         => { 'MyMetadataKey' => 'MyMetadataValue', },
      RecoveryPointArn => 'MyARN',
      CopySourceTagsToRestoredResource => 1,                   # OPTIONAL
      IamRoleArn                       => 'MyIAMRoleArn',      # OPTIONAL
      IdempotencyToken                 => 'Mystring',          # OPTIONAL
      ResourceType                     => 'MyResourceType',    # OPTIONAL
    );

    # Results:
    my $RestoreJobId = $StartRestoreJobOutput->RestoreJobId;

    # Returns a L<Paws::Backup::StartRestoreJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/StartRestoreJob>

=head1 ATTRIBUTES


=head2 CopySourceTagsToRestoredResource => Bool

This is an optional parameter. If this equals C<True>, tags included in
the backup will be copied to the restored resource.

This can only be applied to backups created through Backup.



=head2 IamRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that Backup uses to
create the target resource; for example:
C<arn:aws:iam::123456789012:role/S3Access>.



=head2 IdempotencyToken => Str

A customer-chosen string that you can use to distinguish between
otherwise identical calls to C<StartRestoreJob>. Retrying a successful
request with the same idempotency token results in a success message
with no action taken.



=head2 B<REQUIRED> Metadata => L<Paws::Backup::Metadata>

A set of metadata key-value pairs.

You can get configuration metadata about a resource at the time it was
backed up by calling C<GetRecoveryPointRestoreMetadata>. However,
values in addition to those provided by
C<GetRecoveryPointRestoreMetadata> might be required to restore a
resource. For example, you might need to provide a new resource name if
the original already exists.

For more information about the metadata for each resource, see the
following:

=over

=item *

Metadata for Amazon Aurora
(https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-aur.html#aur-restore-cli)

=item *

Metadata for Amazon DocumentDB
(https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-docdb.html#docdb-restore-cli)

=item *

Metadata for CloudFormation
(https://docs.aws.amazon.com/aws-backup/latest/devguide/restore-application-stacks.html#restoring-cfn-cli)

=item *

Metadata for Amazon DynamoDB
(https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-dynamodb.html#ddb-restore-cli)

=item *

Metadata for Amazon EBS
(https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-ebs.html#ebs-restore-cli)

=item *

Metadata for Amazon EC2
(https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-ec2.html#restoring-ec2-cli)

=item *

Metadata for Amazon EFS
(https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-efs.html#efs-restore-cli)

=item *

Metadata for Amazon FSx
(https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-fsx.html#fsx-restore-cli)

=item *

Metadata for Amazon Neptune
(https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-nep.html#nep-restore-cli)

=item *

Metadata for Amazon RDS
(https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-rds.html#rds-restore-cli)

=item *

Metadata for Amazon Redshift
(https://docs.aws.amazon.com/aws-backup/latest/devguide/redshift-restores.html#redshift-restore-api)

=item *

Metadata for Storage Gateway
(https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-storage-gateway.html#restoring-sgw-cli)

=item *

Metadata for Amazon S3
(https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-s3.html#s3-restore-cli)

=item *

Metadata for Amazon Timestream
(https://docs.aws.amazon.com/aws-backup/latest/devguide/timestream-restore.html#timestream-restore-api)

=item *

Metadata for virtual machines
(https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-vm.html#vm-restore-cli)

=back




=head2 B<REQUIRED> RecoveryPointArn => Str

An ARN that uniquely identifies a recovery point; for example,
C<arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45>.



=head2 ResourceType => Str

Starts a job to restore a recovery point for one of the following
resources:

=over

=item *

C<Aurora> - Amazon Aurora

=item *

C<DocumentDB> - Amazon DocumentDB

=item *

C<CloudFormation> - CloudFormation

=item *

C<DynamoDB> - Amazon DynamoDB

=item *

C<EBS> - Amazon Elastic Block Store

=item *

C<EC2> - Amazon Elastic Compute Cloud

=item *

C<EFS> - Amazon Elastic File System

=item *

C<FSx> - Amazon FSx

=item *

C<Neptune> - Amazon Neptune

=item *

C<RDS> - Amazon Relational Database Service

=item *

C<Redshift> - Amazon Redshift

=item *

C<Storage Gateway> - Storage Gateway

=item *

C<S3> - Amazon Simple Storage Service

=item *

C<Timestream> - Amazon Timestream

=item *

C<VirtualMachine> - Virtual machines

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartRestoreJob in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

