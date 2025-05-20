
package Paws::Batch::ListJobs;
  use Moose;
  has ArrayJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arrayJobId');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Batch::KeyValuesPair]', traits => ['NameInRequest'], request_name => 'filters');
  has JobQueue => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobQueue');
  has JobStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobStatus');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has MultiNodeJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'multiNodeJobId');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/listjobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::ListJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::ListJobs - Arguments for method ListJobs on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListJobs on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method ListJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListJobs.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    # To list running jobs
    # This example lists the running jobs in the HighPriority job queue.
    my $ListJobsResponse = $batch->ListJobs( 'JobQueue' => 'HighPriority' );

    # Results:
    my $jobSummaryList = $ListJobsResponse->jobSummaryList;

    # Returns a L<Paws::Batch::ListJobsResponse> object.
    # To list submitted jobs
    # This example lists jobs in the HighPriority job queue that are in the
    # SUBMITTED job status.
    my $ListJobsResponse = $batch->ListJobs(
      'JobQueue'  => 'HighPriority',
      'JobStatus' => 'SUBMITTED'
    );

    # Results:
    my $jobSummaryList = $ListJobsResponse->jobSummaryList;

    # Returns a L<Paws::Batch::ListJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/ListJobs>

=head1 ATTRIBUTES


=head2 ArrayJobId => Str

The job ID for an array job. Specifying an array job ID with this
parameter lists all child jobs from within the specified array.



=head2 Filters => ArrayRef[L<Paws::Batch::KeyValuesPair>]

The filter to apply to the query. Only one filter can be used at a
time. When the filter is used, C<jobStatus> is ignored. The filter
doesn't apply to child jobs in an array or multi-node parallel (MNP)
jobs. The results are sorted by the C<createdAt> field, with the most
recent jobs being first.

=over

=item JOB_NAME

The value of the filter is a case-insensitive match for the job name.
If the value ends with an asterisk (*), the filter matches any job name
that begins with the string before the '*'. This corresponds to the
C<jobName> value. For example, C<test1> matches both C<Test1> and
C<test1>, and C<test1*> matches both C<test1> and C<Test10>. When the
C<JOB_NAME> filter is used, the results are grouped by the job name and
version.

=item JOB_DEFINITION

The value for the filter is the name or Amazon Resource Name (ARN) of
the job definition. This corresponds to the C<jobDefinition> value. The
value is case sensitive. When the value for the filter is the job
definition name, the results include all the jobs that used any
revision of that job definition name. If the value ends with an
asterisk (*), the filter matches any job definition name that begins
with the string before the '*'. For example, C<jd1> matches only
C<jd1>, and C<jd1*> matches both C<jd1> and C<jd1A>. The version of the
job definition that's used doesn't affect the sort order. When the
C<JOB_DEFINITION> filter is used and the ARN is used (which is in the
form
C<arn:${Partition}:batch:${Region}:${Account}:job-definition/${JobDefinitionName}:${Revision}>),
the results include jobs that used the specified revision of the job
definition. Asterisk (*) isn't supported when the ARN is used.

=item BEFORE_CREATED_AT

The value for the filter is the time that's before the job was created.
This corresponds to the C<createdAt> value. The value is a string
representation of the number of milliseconds since 00:00:00 UTC
(midnight) on January 1, 1970.

=item AFTER_CREATED_AT

The value for the filter is the time that's after the job was created.
This corresponds to the C<createdAt> value. The value is a string
representation of the number of milliseconds since 00:00:00 UTC
(midnight) on January 1, 1970.

=back




=head2 JobQueue => Str

The name or full Amazon Resource Name (ARN) of the job queue used to
list jobs.



=head2 JobStatus => Str

The job status used to filter jobs in the specified queue. If the
C<filters> parameter is specified, the C<jobStatus> parameter is
ignored and jobs with any status are returned. If you don't specify a
status, only C<RUNNING> jobs are returned.

Valid values are: C<"SUBMITTED">, C<"PENDING">, C<"RUNNABLE">, C<"STARTING">, C<"RUNNING">, C<"SUCCEEDED">, C<"FAILED">

=head2 MaxResults => Int

The maximum number of results returned by C<ListJobs> in a paginated
output. When this parameter is used, C<ListJobs> returns up to
C<maxResults> results in a single page and a C<nextToken> response
element, if applicable. The remaining results of the initial request
can be seen by sending another C<ListJobs> request with the returned
C<nextToken> value.

The following outlines key parameters and limitations:

=over

=item *

The minimum value is 1.

=item *

When C<--job-status> is used, Batch returns up to 1000 values.

=item *

When C<--filters> is used, Batch returns up to 100 values.

=item *

If neither parameter is used, then C<ListJobs> returns up to 1000
results (jobs that are in the C<RUNNING> status) and a C<nextToken>
value, if applicable.

=back




=head2 MultiNodeJobId => Str

The job ID for a multi-node parallel job. Specifying a multi-node
parallel job ID with this parameter lists all nodes that are associated
with the specified job.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated C<ListJobs>
request where C<maxResults> was used and the results exceeded the value
of that parameter. Pagination continues from the end of the previous
results that returned the C<nextToken> value. This value is C<null>
when there are no more results to return.

Treat this token as an opaque identifier that's only used to retrieve
the next items in a list and not for other programmatic purposes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListJobs in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

