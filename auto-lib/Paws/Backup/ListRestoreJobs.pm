
package Paws::Backup::ListRestoreJobs;
  use Moose;
  has ByAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'accountId');
  has ByCompleteAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'completeAfter');
  has ByCompleteBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'completeBefore');
  has ByCreatedAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdAfter');
  has ByCreatedBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdBefore');
  has ByResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceType');
  has ByRestoreTestingPlanArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'restoreTestingPlanArn');
  has ByStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRestoreJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restore-jobs/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::ListRestoreJobsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListRestoreJobs - Arguments for method ListRestoreJobs on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRestoreJobs on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method ListRestoreJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRestoreJobs.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $ListRestoreJobsOutput = $backup->ListRestoreJobs(
      ByAccountId             => 'MyAccountId',            # OPTIONAL
      ByCompleteAfter         => '1970-01-01T01:00:00',    # OPTIONAL
      ByCompleteBefore        => '1970-01-01T01:00:00',    # OPTIONAL
      ByCreatedAfter          => '1970-01-01T01:00:00',    # OPTIONAL
      ByCreatedBefore         => '1970-01-01T01:00:00',    # OPTIONAL
      ByResourceType          => 'MyResourceType',         # OPTIONAL
      ByRestoreTestingPlanArn => 'MyARN',                  # OPTIONAL
      ByStatus                => 'PENDING',                # OPTIONAL
      MaxResults              => 1,                        # OPTIONAL
      NextToken               => 'Mystring',               # OPTIONAL
    );

    # Results:
    my $NextToken   = $ListRestoreJobsOutput->NextToken;
    my $RestoreJobs = $ListRestoreJobsOutput->RestoreJobs;

    # Returns a L<Paws::Backup::ListRestoreJobsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/ListRestoreJobs>

=head1 ATTRIBUTES


=head2 ByAccountId => Str

The account ID to list the jobs from. Returns only restore jobs
associated with the specified account ID.



=head2 ByCompleteAfter => Str

Returns only copy jobs completed after a date expressed in Unix format
and Coordinated Universal Time (UTC).



=head2 ByCompleteBefore => Str

Returns only copy jobs completed before a date expressed in Unix format
and Coordinated Universal Time (UTC).



=head2 ByCreatedAfter => Str

Returns only restore jobs that were created after the specified date.



=head2 ByCreatedBefore => Str

Returns only restore jobs that were created before the specified date.



=head2 ByResourceType => Str

Include this parameter to return only restore jobs for the specified
resources:

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




=head2 ByRestoreTestingPlanArn => Str

This returns only restore testing jobs that match the specified
resource Amazon Resource Name (ARN).



=head2 ByStatus => Str

Returns only restore jobs associated with the specified job status.

Valid values are: C<"PENDING">, C<"RUNNING">, C<"COMPLETED">, C<"ABORTED">, C<"FAILED">

=head2 MaxResults => Int

The maximum number of items to be returned.



=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<MaxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the next token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRestoreJobs in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

