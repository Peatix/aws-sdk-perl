
package Paws::IoTSiteWise::ListBulkImportJobs;
  use Moose;
  has Filter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'filter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBulkImportJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::ListBulkImportJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListBulkImportJobs - Arguments for method ListBulkImportJobs on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBulkImportJobs on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method ListBulkImportJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBulkImportJobs.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $ListBulkImportJobsResponse = $iotsitewise->ListBulkImportJobs(
      Filter     => 'ALL',            # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $JobSummaries = $ListBulkImportJobsResponse->JobSummaries;
    my $NextToken    = $ListBulkImportJobsResponse->NextToken;

    # Returns a L<Paws::IoTSiteWise::ListBulkImportJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/ListBulkImportJobs>

=head1 ATTRIBUTES


=head2 Filter => Str

You can use a filter to select the bulk import jobs that you want to
retrieve.

Valid values are: C<"ALL">, C<"PENDING">, C<"RUNNING">, C<"CANCELLED">, C<"FAILED">, C<"COMPLETED_WITH_FAILURES">, C<"COMPLETED">

=head2 MaxResults => Int

The maximum number of results to return for each paginated request.



=head2 NextToken => Str

The token to be used for the next set of paginated results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBulkImportJobs in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

