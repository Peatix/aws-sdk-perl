
package Paws::RDS::StartExportTask;
  use Moose;
  has ExportOnly => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ExportTaskIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has IamRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str', required => 1);
  has S3BucketName => (is => 'ro', isa => 'Str', required => 1);
  has S3Prefix => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartExportTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ExportTask');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'StartExportTaskResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::StartExportTask - Arguments for method StartExportTask on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartExportTask on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method StartExportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartExportTask.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $ExportTask = $rds->StartExportTask(
      ExportTaskIdentifier => 'MyString',
      IamRoleArn           => 'MyString',
      KmsKeyId             => 'MyString',
      S3BucketName         => 'MyString',
      SourceArn            => 'MyString',
      ExportOnly           => [ 'MyString', ... ],    # OPTIONAL
      S3Prefix             => 'MyString',             # OPTIONAL
    );

    # Results:
    my $ExportOnly             = $ExportTask->ExportOnly;
    my $ExportTaskIdentifier   = $ExportTask->ExportTaskIdentifier;
    my $FailureCause           = $ExportTask->FailureCause;
    my $IamRoleArn             = $ExportTask->IamRoleArn;
    my $KmsKeyId               = $ExportTask->KmsKeyId;
    my $PercentProgress        = $ExportTask->PercentProgress;
    my $S3Bucket               = $ExportTask->S3Bucket;
    my $S3Prefix               = $ExportTask->S3Prefix;
    my $SnapshotTime           = $ExportTask->SnapshotTime;
    my $SourceArn              = $ExportTask->SourceArn;
    my $SourceType             = $ExportTask->SourceType;
    my $Status                 = $ExportTask->Status;
    my $TaskEndTime            = $ExportTask->TaskEndTime;
    my $TaskStartTime          = $ExportTask->TaskStartTime;
    my $TotalExtractedDataInGB = $ExportTask->TotalExtractedDataInGB;
    my $WarningMessage         = $ExportTask->WarningMessage;

    # Returns a L<Paws::RDS::ExportTask> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/StartExportTask>

=head1 ATTRIBUTES


=head2 ExportOnly => ArrayRef[Str|Undef]

The data to be exported from the snapshot or cluster. If this parameter
isn't provided, all of the data is exported.

Valid Values:

=over

=item *

C<database> - Export all the data from a specified database.

=item *

C<database.table> I<table-name> - Export a table of the snapshot or
cluster. This format is valid only for RDS for MySQL, RDS for MariaDB,
and Aurora MySQL.

=item *

C<database.schema> I<schema-name> - Export a database schema of the
snapshot or cluster. This format is valid only for RDS for PostgreSQL
and Aurora PostgreSQL.

=item *

C<database.schema.table> I<table-name> - Export a table of the database
schema. This format is valid only for RDS for PostgreSQL and Aurora
PostgreSQL.

=back




=head2 B<REQUIRED> ExportTaskIdentifier => Str

A unique identifier for the export task. This ID isn't an identifier
for the Amazon S3 bucket where the data is to be exported.



=head2 B<REQUIRED> IamRoleArn => Str

The name of the IAM role to use for writing to the Amazon S3 bucket
when exporting a snapshot or cluster.

In the IAM policy attached to your IAM role, include the following
required actions to allow the transfer of files from Amazon RDS or
Amazon Aurora to an S3 bucket:

=over

=item *

s3:PutObject*

=item *

s3:GetObject*

=item *

s3:ListBucket

=item *

s3:DeleteObject*

=item *

s3:GetBucketLocation

=back

In the policy, include the resources to identify the S3 bucket and
objects in the bucket. The following list of resources shows the Amazon
Resource Name (ARN) format for accessing S3:

=over

=item *

C<arn:aws:s3:::I<your-s3-bucket>>

=item *

C<arn:aws:s3:::I<your-s3-bucket>/*>

=back




=head2 B<REQUIRED> KmsKeyId => Str

The ID of the Amazon Web Services KMS key to use to encrypt the data
exported to Amazon S3. The Amazon Web Services KMS key identifier is
the key ARN, key ID, alias ARN, or alias name for the KMS key. The
caller of this operation must be authorized to run the following
operations. These can be set in the Amazon Web Services KMS key policy:

=over

=item *

kms:Encrypt

=item *

kms:Decrypt

=item *

kms:GenerateDataKey

=item *

kms:GenerateDataKeyWithoutPlaintext

=item *

kms:ReEncryptFrom

=item *

kms:ReEncryptTo

=item *

kms:CreateGrant

=item *

kms:DescribeKey

=item *

kms:RetireGrant

=back




=head2 B<REQUIRED> S3BucketName => Str

The name of the Amazon S3 bucket to export the snapshot or cluster data
to.



=head2 S3Prefix => Str

The Amazon S3 bucket prefix to use as the file name and path of the
exported data.



=head2 B<REQUIRED> SourceArn => Str

The Amazon Resource Name (ARN) of the snapshot or cluster to export to
Amazon S3.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartExportTask in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

