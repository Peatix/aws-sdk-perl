package Paws::PerformanceInsights;
  use Moose;
  sub service { 'pi' }
  sub signing_name { 'pi' }
  sub version { '2018-02-27' }
  sub target_prefix { 'PerformanceInsightsv20180227' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreatePerformanceAnalysisReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PerformanceInsights::CreatePerformanceAnalysisReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePerformanceAnalysisReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PerformanceInsights::DeletePerformanceAnalysisReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDimensionKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PerformanceInsights::DescribeDimensionKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDimensionKeyDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PerformanceInsights::GetDimensionKeyDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPerformanceAnalysisReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PerformanceInsights::GetPerformanceAnalysisReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PerformanceInsights::GetResourceMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PerformanceInsights::GetResourceMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAvailableResourceDimensions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PerformanceInsights::ListAvailableResourceDimensions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAvailableResourceMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PerformanceInsights::ListAvailableResourceMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPerformanceAnalysisReports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PerformanceInsights::ListPerformanceAnalysisReports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PerformanceInsights::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PerformanceInsights::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PerformanceInsights::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreatePerformanceAnalysisReport DeletePerformanceAnalysisReport DescribeDimensionKeys GetDimensionKeyDetails GetPerformanceAnalysisReport GetResourceMetadata GetResourceMetrics ListAvailableResourceDimensions ListAvailableResourceMetrics ListPerformanceAnalysisReports ListTagsForResource TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights - Perl Interface to AWS AWS Performance Insights

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('PerformanceInsights');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon RDS Performance Insights

Amazon RDS Performance Insights enables you to monitor and explore
different dimensions of database load based on data captured from a
running DB instance. The guide provides detailed information about
Performance Insights data types, parameters and errors.

When Performance Insights is enabled, the Amazon RDS Performance
Insights API provides visibility into the performance of your DB
instance. Amazon CloudWatch provides the authoritative source for
Amazon Web Services service-vended monitoring metrics. Performance
Insights offers a domain-specific view of DB load.

DB load is measured as average active sessions. Performance Insights
provides the data to API consumers as a two-dimensional time-series
dataset. The time dimension provides DB load data for each time point
in the queried time range. Each time point decomposes overall load in
relation to the requested dimensions, measured at that time point.
Examples include SQL, Wait event, User, and Host.

=over

=item *

To learn more about Performance Insights and Amazon Aurora DB
instances, go to the I< Amazon Aurora User Guide
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights.html)
>.

=item *

To learn more about Performance Insights and Amazon RDS DB instances,
go to the I< Amazon RDS User Guide
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html)
>.

=item *

To learn more about Performance Insights and Amazon DocumentDB
clusters, go to the I< Amazon DocumentDB Developer Guide
(https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html)
>.

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27>


=head1 METHODS

=head2 CreatePerformanceAnalysisReport

=over

=item EndTime => Str

=item Identifier => Str

=item ServiceType => Str

=item StartTime => Str

=item [Tags => ArrayRef[L<Paws::PerformanceInsights::Tag>]]


=back

Each argument is described in detail in: L<Paws::PerformanceInsights::CreatePerformanceAnalysisReport>

Returns: a L<Paws::PerformanceInsights::CreatePerformanceAnalysisReportResponse> instance

Creates a new performance analysis report for a specific time period
for the DB instance.


=head2 DeletePerformanceAnalysisReport

=over

=item AnalysisReportId => Str

=item Identifier => Str

=item ServiceType => Str


=back

Each argument is described in detail in: L<Paws::PerformanceInsights::DeletePerformanceAnalysisReport>

Returns: a L<Paws::PerformanceInsights::DeletePerformanceAnalysisReportResponse> instance

Deletes a performance analysis report.


=head2 DescribeDimensionKeys

=over

=item EndTime => Str

=item GroupBy => L<Paws::PerformanceInsights::DimensionGroup>

=item Identifier => Str

=item Metric => Str

=item ServiceType => Str

=item StartTime => Str

=item [AdditionalMetrics => ArrayRef[Str|Undef]]

=item [Filter => L<Paws::PerformanceInsights::MetricQueryFilterMap>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PartitionBy => L<Paws::PerformanceInsights::DimensionGroup>]

=item [PeriodInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::PerformanceInsights::DescribeDimensionKeys>

Returns: a L<Paws::PerformanceInsights::DescribeDimensionKeysResponse> instance

For a specific time period, retrieve the top C<N> dimension keys for a
metric.

Each response element returns a maximum of 500 bytes. For larger
elements, such as SQL statements, only the first 500 bytes are
returned.


=head2 GetDimensionKeyDetails

=over

=item Group => Str

=item GroupIdentifier => Str

=item Identifier => Str

=item ServiceType => Str

=item [RequestedDimensions => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::PerformanceInsights::GetDimensionKeyDetails>

Returns: a L<Paws::PerformanceInsights::GetDimensionKeyDetailsResponse> instance

Get the attributes of the specified dimension group for a DB instance
or data source. For example, if you specify a SQL ID,
C<GetDimensionKeyDetails> retrieves the full text of the dimension
C<db.sql.statement> associated with this ID. This operation is useful
because C<GetResourceMetrics> and C<DescribeDimensionKeys> don't
support retrieval of large SQL statement text, lock snapshots, and
execution plans.


=head2 GetPerformanceAnalysisReport

=over

=item AnalysisReportId => Str

=item Identifier => Str

=item ServiceType => Str

=item [AcceptLanguage => Str]

=item [TextFormat => Str]


=back

Each argument is described in detail in: L<Paws::PerformanceInsights::GetPerformanceAnalysisReport>

Returns: a L<Paws::PerformanceInsights::GetPerformanceAnalysisReportResponse> instance

Retrieves the report including the report ID, status, time details, and
the insights with recommendations. The report status can be C<RUNNING>,
C<SUCCEEDED>, or C<FAILED>. The insights include the C<description> and
C<recommendation> fields.


=head2 GetResourceMetadata

=over

=item Identifier => Str

=item ServiceType => Str


=back

Each argument is described in detail in: L<Paws::PerformanceInsights::GetResourceMetadata>

Returns: a L<Paws::PerformanceInsights::GetResourceMetadataResponse> instance

Retrieve the metadata for different features. For example, the metadata
might indicate that a feature is turned on or off on a specific DB
instance.


=head2 GetResourceMetrics

=over

=item EndTime => Str

=item Identifier => Str

=item MetricQueries => ArrayRef[L<Paws::PerformanceInsights::MetricQuery>]

=item ServiceType => Str

=item StartTime => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PeriodAlignment => Str]

=item [PeriodInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::PerformanceInsights::GetResourceMetrics>

Returns: a L<Paws::PerformanceInsights::GetResourceMetricsResponse> instance

Retrieve Performance Insights metrics for a set of data sources over a
time period. You can provide specific dimension groups and dimensions,
and provide filtering criteria for each group. You must specify an
aggregate function for each metric.

Each response element returns a maximum of 500 bytes. For larger
elements, such as SQL statements, only the first 500 bytes are
returned.


=head2 ListAvailableResourceDimensions

=over

=item Identifier => Str

=item Metrics => ArrayRef[Str|Undef]

=item ServiceType => Str

=item [AuthorizedActions => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PerformanceInsights::ListAvailableResourceDimensions>

Returns: a L<Paws::PerformanceInsights::ListAvailableResourceDimensionsResponse> instance

Retrieve the dimensions that can be queried for each specified metric
type on a specified DB instance.


=head2 ListAvailableResourceMetrics

=over

=item Identifier => Str

=item MetricTypes => ArrayRef[Str|Undef]

=item ServiceType => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PerformanceInsights::ListAvailableResourceMetrics>

Returns: a L<Paws::PerformanceInsights::ListAvailableResourceMetricsResponse> instance

Retrieve metrics of the specified types that can be queried for a
specified DB instance.


=head2 ListPerformanceAnalysisReports

=over

=item Identifier => Str

=item ServiceType => Str

=item [ListTags => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PerformanceInsights::ListPerformanceAnalysisReports>

Returns: a L<Paws::PerformanceInsights::ListPerformanceAnalysisReportsResponse> instance

Lists all the analysis reports created for the DB instance. The reports
are sorted based on the start time of each report.


=head2 ListTagsForResource

=over

=item ResourceARN => Str

=item ServiceType => Str


=back

Each argument is described in detail in: L<Paws::PerformanceInsights::ListTagsForResource>

Returns: a L<Paws::PerformanceInsights::ListTagsForResourceResponse> instance

Retrieves all the metadata tags associated with Amazon RDS Performance
Insights resource.


=head2 TagResource

=over

=item ResourceARN => Str

=item ServiceType => Str

=item Tags => ArrayRef[L<Paws::PerformanceInsights::Tag>]


=back

Each argument is described in detail in: L<Paws::PerformanceInsights::TagResource>

Returns: a L<Paws::PerformanceInsights::TagResourceResponse> instance

Adds metadata tags to the Amazon RDS Performance Insights resource.


=head2 UntagResource

=over

=item ResourceARN => Str

=item ServiceType => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::PerformanceInsights::UntagResource>

Returns: a L<Paws::PerformanceInsights::UntagResourceResponse> instance

Deletes the metadata tags from the Amazon RDS Performance Insights
resource.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

