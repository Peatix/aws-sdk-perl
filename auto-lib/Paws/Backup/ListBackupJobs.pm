
package Paws::Backup::ListBackupJobs;
  use Moose;
  has ByAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'accountId');
  has ByBackupVaultName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'backupVaultName');
  has ByCompleteAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'completeAfter');
  has ByCompleteBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'completeBefore');
  has ByCreatedAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdAfter');
  has ByCreatedBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdBefore');
  has ByMessageCategory => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'messageCategory');
  has ByParentJobId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'parentJobId');
  has ByResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceArn');
  has ByResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceType');
  has ByState => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'state');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBackupJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup-jobs/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::ListBackupJobsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListBackupJobs - Arguments for method ListBackupJobs on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBackupJobs on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method ListBackupJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBackupJobs.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $ListBackupJobsOutput = $backup->ListBackupJobs(
      ByAccountId       => 'MyAccountId',            # OPTIONAL
      ByBackupVaultName => 'MyBackupVaultName',      # OPTIONAL
      ByCompleteAfter   => '1970-01-01T01:00:00',    # OPTIONAL
      ByCompleteBefore  => '1970-01-01T01:00:00',    # OPTIONAL
      ByCreatedAfter    => '1970-01-01T01:00:00',    # OPTIONAL
      ByCreatedBefore   => '1970-01-01T01:00:00',    # OPTIONAL
      ByMessageCategory => 'Mystring',               # OPTIONAL
      ByParentJobId     => 'Mystring',               # OPTIONAL
      ByResourceArn     => 'MyARN',                  # OPTIONAL
      ByResourceType    => 'MyResourceType',         # OPTIONAL
      ByState           => 'CREATED',                # OPTIONAL
      MaxResults        => 1,                        # OPTIONAL
      NextToken         => 'Mystring',               # OPTIONAL
    );

    # Results:
    my $BackupJobs = $ListBackupJobsOutput->BackupJobs;
    my $NextToken  = $ListBackupJobsOutput->NextToken;

    # Returns a L<Paws::Backup::ListBackupJobsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/ListBackupJobs>

=head1 ATTRIBUTES


=head2 ByAccountId => Str

The account ID to list the jobs from. Returns only backup jobs
associated with the specified account ID.

If used from an Organizations management account, passing C<*> returns
all jobs across the organization.



=head2 ByBackupVaultName => Str

Returns only backup jobs that will be stored in the specified backup
vault. Backup vaults are identified by names that are unique to the
account used to create them and the Amazon Web Services Region where
they are created.



=head2 ByCompleteAfter => Str

Returns only backup jobs completed after a date expressed in Unix
format and Coordinated Universal Time (UTC).



=head2 ByCompleteBefore => Str

Returns only backup jobs completed before a date expressed in Unix
format and Coordinated Universal Time (UTC).



=head2 ByCreatedAfter => Str

Returns only backup jobs that were created after the specified date.



=head2 ByCreatedBefore => Str

Returns only backup jobs that were created before the specified date.



=head2 ByMessageCategory => Str

This is an optional parameter that can be used to filter out jobs with
a MessageCategory which matches the value you input.

Example strings may include C<AccessDenied>, C<SUCCESS>,
C<AGGREGATE_ALL>, and C<InvalidParameters>.

View Monitoring
(https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html)

The wildcard () returns count of all message categories.

C<AGGREGATE_ALL> aggregates job counts for all message categories and
returns the sum.



=head2 ByParentJobId => Str

This is a filter to list child (nested) jobs based on parent job ID.



=head2 ByResourceArn => Str

Returns only backup jobs that match the specified resource Amazon
Resource Name (ARN).



=head2 ByResourceType => Str

Returns only backup jobs for the specified resources:

=over

=item *

C<Aurora> for Amazon Aurora

=item *

C<CloudFormation> for CloudFormation

=item *

C<DocumentDB> for Amazon DocumentDB (with MongoDB compatibility)

=item *

C<DynamoDB> for Amazon DynamoDB

=item *

C<EBS> for Amazon Elastic Block Store

=item *

C<EC2> for Amazon Elastic Compute Cloud

=item *

C<EFS> for Amazon Elastic File System

=item *

C<FSx> for Amazon FSx

=item *

C<Neptune> for Amazon Neptune

=item *

C<RDS> for Amazon Relational Database Service

=item *

C<Redshift> for Amazon Redshift

=item *

C<S3> for Amazon Simple Storage Service (Amazon S3)

=item *

C<SAP HANA on Amazon EC2> for SAP HANA databases on Amazon Elastic
Compute Cloud instances

=item *

C<Storage Gateway> for Storage Gateway

=item *

C<Timestream> for Amazon Timestream

=item *

C<VirtualMachine> for VMware virtual machines

=back




=head2 ByState => Str

Returns only backup jobs that are in the specified state.

C<Completed with issues> is a status found only in the Backup console.
For API, this status refers to jobs with a state of C<COMPLETED> and a
C<MessageCategory> with a value other than C<SUCCESS>; that is, the
status is completed but comes with a status message.

To obtain the job count for C<Completed with issues>, run two GET
requests, and subtract the second, smaller number:

GET /backup-jobs/?state=COMPLETED

GET /backup-jobs/?messageCategory=SUCCESS&state=COMPLETED

Valid values are: C<"CREATED">, C<"PENDING">, C<"RUNNING">, C<"ABORTING">, C<"ABORTED">, C<"COMPLETED">, C<"FAILED">, C<"EXPIRED">, C<"PARTIAL">

=head2 MaxResults => Int

The maximum number of items to be returned.



=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<MaxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the next token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBackupJobs in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

