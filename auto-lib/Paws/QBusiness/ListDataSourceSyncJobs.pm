
package Paws::QBusiness::ListDataSourceSyncJobs;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dataSourceId', required => 1);
  has EndTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'endTime');
  has IndexId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'indexId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startTime');
  has StatusFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'syncStatus');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataSourceSyncJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}/syncjobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::ListDataSourceSyncJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListDataSourceSyncJobs - Arguments for method ListDataSourceSyncJobs on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataSourceSyncJobs on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method ListDataSourceSyncJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataSourceSyncJobs.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $ListDataSourceSyncJobsResponse = $qbusiness->ListDataSourceSyncJobs(
      ApplicationId => 'MyApplicationId',
      DataSourceId  => 'MyDataSourceId',
      IndexId       => 'MyIndexId',
      EndTime       => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults    => 1,                        # OPTIONAL
      NextToken     => 'MyNextToken',            # OPTIONAL
      StartTime     => '1970-01-01T01:00:00',    # OPTIONAL
      StatusFilter  => 'FAILED',                 # OPTIONAL
    );

    # Results:
    my $History   = $ListDataSourceSyncJobsResponse->History;
    my $NextToken = $ListDataSourceSyncJobsResponse->NextToken;

    # Returns a L<Paws::QBusiness::ListDataSourceSyncJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/ListDataSourceSyncJobs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business application connected to the
data source.



=head2 B<REQUIRED> DataSourceId => Str

The identifier of the data source connector.



=head2 EndTime => Str

The end time of the data source connector sync.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index used with the Amazon Q Business data source
connector.



=head2 MaxResults => Int

The maximum number of synchronization jobs to return in the response.



=head2 NextToken => Str

If the C<maxResults> response was incpmplete because there is more data
to retriever, Amazon Q Business returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
responses.



=head2 StartTime => Str

The start time of the data source connector sync.



=head2 StatusFilter => Str

Only returns synchronization jobs with the C<Status> field equal to the
specified status.

Valid values are: C<"FAILED">, C<"SUCCEEDED">, C<"SYNCING">, C<"INCOMPLETE">, C<"STOPPING">, C<"ABORTED">, C<"SYNCING_INDEXING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataSourceSyncJobs in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

