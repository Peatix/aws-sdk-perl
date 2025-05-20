
package Paws::PerformanceInsights::GetResourceMetrics;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has MetricQueries => (is => 'ro', isa => 'ArrayRef[Paws::PerformanceInsights::MetricQuery]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has PeriodAlignment => (is => 'ro', isa => 'Str');
  has PeriodInSeconds => (is => 'ro', isa => 'Int');
  has ServiceType => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourceMetrics');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PerformanceInsights::GetResourceMetricsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::GetResourceMetrics - Arguments for method GetResourceMetrics on L<Paws::PerformanceInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourceMetrics on the
L<AWS Performance Insights|Paws::PerformanceInsights> service. Use the attributes of this class
as arguments to method GetResourceMetrics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourceMetrics.

=head1 SYNOPSIS

    my $pi = Paws->service('PerformanceInsights');
    my $GetResourceMetricsResponse = $pi->GetResourceMetrics(
      EndTime       => '1970-01-01T01:00:00',
      Identifier    => 'MyIdentifierString',
      MetricQueries => [
        {
          Metric => 'MySanitizedString',    # max: 256
          Filter => {
            'MySanitizedString' =>
              'MyRequestString',            # key: max: 256, value: max: 256
          },    # OPTIONAL
          GroupBy => {
            Group      => 'MySanitizedString',    # max: 256
            Dimensions => [
              'MySanitizedString', ...            # max: 256
            ],    # min: 1, max: 10; OPTIONAL
            Limit => 1,    # min: 1, max: 25; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      ServiceType     => 'RDS',
      StartTime       => '1970-01-01T01:00:00',
      MaxResults      => 1,                       # OPTIONAL
      NextToken       => 'MyNextToken',           # OPTIONAL
      PeriodAlignment => 'END_TIME',              # OPTIONAL
      PeriodInSeconds => 1,                       # OPTIONAL
    );

    # Results:
    my $AlignedEndTime   = $GetResourceMetricsResponse->AlignedEndTime;
    my $AlignedStartTime = $GetResourceMetricsResponse->AlignedStartTime;
    my $Identifier       = $GetResourceMetricsResponse->Identifier;
    my $MetricList       = $GetResourceMetricsResponse->MetricList;
    my $NextToken        = $GetResourceMetricsResponse->NextToken;

    # Returns a L<Paws::PerformanceInsights::GetResourceMetricsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pi/GetResourceMetrics>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The date and time specifying the end of the requested time series query
range. The value specified is I<exclusive>. Thus, the command returns
data points less than (but not equal to) C<EndTime>.

The value for C<EndTime> must be later than the value for C<StartTime>.



=head2 B<REQUIRED> Identifier => Str

An immutable identifier for a data source that is unique for an Amazon
Web Services Region. Performance Insights gathers metrics from this
data source. In the console, the identifier is shown as I<ResourceID>.
When you call C<DescribeDBInstances>, the identifier is returned as
C<DbiResourceId>.

To use a DB instance as a data source, specify its C<DbiResourceId>
value. For example, specify C<db-ABCDEFGHIJKLMNOPQRSTU1VW2X>.



=head2 MaxResults => Int

The maximum number of items to return in the response.



=head2 B<REQUIRED> MetricQueries => ArrayRef[L<Paws::PerformanceInsights::MetricQuery>]

An array of one or more queries to perform. Each query must specify a
Performance Insights metric and specify an aggregate function, and you
can provide filtering criteria. You must append the aggregate function
to the metric. For example, to find the average for the metric
C<db.load> you must use C<db.load.avg>. Valid values for aggregate
functions include C<.avg>, C<.min>, C<.max>, and C<.sum>.



=head2 NextToken => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
token, up to the value specified by C<MaxRecords>.



=head2 PeriodAlignment => Str

The returned timestamp which is the start or end time of the time
periods. The default value is C<END_TIME>.

Valid values are: C<"END_TIME">, C<"START_TIME">

=head2 PeriodInSeconds => Int

The granularity, in seconds, of the data points returned from
Performance Insights. A period can be as short as one second, or as
long as one day (86400 seconds). Valid values are:

=over

=item *

C<1> (one second)

=item *

C<60> (one minute)

=item *

C<300> (five minutes)

=item *

C<3600> (one hour)

=item *

C<86400> (twenty-four hours)

=back

If you don't specify C<PeriodInSeconds>, then Performance Insights will
choose a value for you, with a goal of returning roughly 100-200 data
points in the response.



=head2 B<REQUIRED> ServiceType => Str

The Amazon Web Services service for which Performance Insights returns
metrics. Valid values are as follows:

=over

=item *

C<RDS>

=item *

C<DOCDB>

=back


Valid values are: C<"RDS">, C<"DOCDB">

=head2 B<REQUIRED> StartTime => Str

The date and time specifying the beginning of the requested time series
query range. You can't specify a C<StartTime> that is earlier than 7
days ago. By default, Performance Insights has 7 days of retention, but
you can extend this range up to 2 years. The value specified is
I<inclusive>. Thus, the command returns data points equal to or greater
than C<StartTime>.

The value for C<StartTime> must be earlier than the value for
C<EndTime>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourceMetrics in L<Paws::PerformanceInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

