
package Paws::Backup::ListBackupJobSummaries;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'AccountId');
  has AggregationPeriod => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'AggregationPeriod');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has MessageCategory => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'MessageCategory');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'ResourceType');
  has State => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'State');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBackupJobSummaries');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/backup-job-summaries');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::ListBackupJobSummariesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListBackupJobSummaries - Arguments for method ListBackupJobSummaries on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBackupJobSummaries on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method ListBackupJobSummaries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBackupJobSummaries.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $ListBackupJobSummariesOutput = $backup->ListBackupJobSummaries(
      AccountId         => 'MyAccountId',          # OPTIONAL
      AggregationPeriod => 'ONE_DAY',              # OPTIONAL
      MaxResults        => 1,                      # OPTIONAL
      MessageCategory   => 'MyMessageCategory',    # OPTIONAL
      NextToken         => 'Mystring',             # OPTIONAL
      ResourceType      => 'MyResourceType',       # OPTIONAL
      State             => 'CREATED',              # OPTIONAL
    );

    # Results:
    my $AggregationPeriod  = $ListBackupJobSummariesOutput->AggregationPeriod;
    my $BackupJobSummaries = $ListBackupJobSummariesOutput->BackupJobSummaries;
    my $NextToken          = $ListBackupJobSummariesOutput->NextToken;

    # Returns a L<Paws::Backup::ListBackupJobSummariesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/ListBackupJobSummaries>

=head1 ATTRIBUTES


=head2 AccountId => Str

Returns the job count for the specified account.

If the request is sent from a member account or an account not part of
Amazon Web Services Organizations, jobs within requestor's account will
be returned.

Root, admin, and delegated administrator accounts can use the value ANY
to return job counts from every account in the organization.

C<AGGREGATE_ALL> aggregates job counts from all accounts within the
authenticated organization, then returns the sum.



=head2 AggregationPeriod => Str

The period for the returned results.

=over

=item *

C<ONE_DAY> - The daily job count for the prior 14 days.

=item *

C<SEVEN_DAYS> - The aggregated job count for the prior 7 days.

=item *

C<FOURTEEN_DAYS> - The aggregated job count for prior 14 days.

=back


Valid values are: C<"ONE_DAY">, C<"SEVEN_DAYS">, C<"FOURTEEN_DAYS">

=head2 MaxResults => Int

The maximum number of items to be returned.

The value is an integer. Range of accepted values is from 1 to 500.



=head2 MessageCategory => Str

This parameter returns the job count for the specified message
category.

Example accepted strings include C<AccessDenied>, C<Success>, and
C<InvalidParameters>. See Monitoring
(https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html)
for a list of accepted MessageCategory strings.

The the value ANY returns count of all message categories.

C<AGGREGATE_ALL> aggregates job counts for all message categories and
returns the sum.



=head2 NextToken => Str

The next item following a partial list of returned resources. For
example, if a request is made to return C<MaxResults> number of
resources, C<NextToken> allows you to return more items in your list
starting at the location pointed to by the next token.



=head2 ResourceType => Str

Returns the job count for the specified resource type. Use request
C<GetSupportedResourceTypes> to obtain strings for supported resource
types.

The the value ANY returns count of all resource types.

C<AGGREGATE_ALL> aggregates job counts for all resource types and
returns the sum.

The type of Amazon Web Services resource to be backed up; for example,
an Amazon Elastic Block Store (Amazon EBS) volume or an Amazon
Relational Database Service (Amazon RDS) database.



=head2 State => Str

This parameter returns the job count for jobs with the specified state.

The the value ANY returns count of all states.

C<AGGREGATE_ALL> aggregates job counts for all states and returns the
sum.

C<Completed with issues> is a status found only in the Backup console.
For API, this status refers to jobs with a state of C<COMPLETED> and a
C<MessageCategory> with a value other than C<SUCCESS>; that is, the
status is completed but comes with a status message. To obtain the job
count for C<Completed with issues>, run two GET requests, and subtract
the second, smaller number:

GET
/audit/backup-job-summaries?AggregationPeriod=FOURTEEN_DAYS&State=COMPLETED

GET
/audit/backup-job-summaries?AggregationPeriod=FOURTEEN_DAYS&MessageCategory=SUCCESS&State=COMPLETED

Valid values are: C<"CREATED">, C<"PENDING">, C<"RUNNING">, C<"ABORTING">, C<"ABORTED">, C<"COMPLETED">, C<"FAILED">, C<"EXPIRED">, C<"PARTIAL">, C<"AGGREGATE_ALL">, C<"ANY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBackupJobSummaries in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

