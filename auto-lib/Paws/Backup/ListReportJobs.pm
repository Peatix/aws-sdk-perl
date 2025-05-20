
package Paws::Backup::ListReportJobs;
  use Moose;
  has ByCreationAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'CreationAfter');
  has ByCreationBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'CreationBefore');
  has ByReportPlanName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'ReportPlanName');
  has ByStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Status');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReportJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/report-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::ListReportJobsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListReportJobs - Arguments for method ListReportJobs on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReportJobs on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method ListReportJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReportJobs.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $ListReportJobsOutput = $backup->ListReportJobs(
      ByCreationAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      ByCreationBefore => '1970-01-01T01:00:00',    # OPTIONAL
      ByReportPlanName => 'MyReportPlanName',       # OPTIONAL
      ByStatus         => 'Mystring',               # OPTIONAL
      MaxResults       => 1,                        # OPTIONAL
      NextToken        => 'Mystring',               # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListReportJobsOutput->NextToken;
    my $ReportJobs = $ListReportJobsOutput->ReportJobs;

    # Returns a L<Paws::Backup::ListReportJobsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/ListReportJobs>

=head1 ATTRIBUTES


=head2 ByCreationAfter => Str

Returns only report jobs that were created after the date and time
specified in Unix format and Coordinated Universal Time (UTC). For
example, the value 1516925490 represents Friday, January 26, 2018
12:11:30 AM.



=head2 ByCreationBefore => Str

Returns only report jobs that were created before the date and time
specified in Unix format and Coordinated Universal Time (UTC). For
example, the value 1516925490 represents Friday, January 26, 2018
12:11:30 AM.



=head2 ByReportPlanName => Str

Returns only report jobs with the specified report plan name.



=head2 ByStatus => Str

Returns only report jobs that are in the specified status. The statuses
are:

C<CREATED | RUNNING | COMPLETED | FAILED>



=head2 MaxResults => Int

The number of desired results from 1 to 1000. Optional. If unspecified,
the query will return 1 MB of data.



=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReportJobs in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

