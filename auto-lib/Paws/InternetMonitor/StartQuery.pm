
package Paws::InternetMonitor::StartQuery;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has FilterParameters => (is => 'ro', isa => 'ArrayRef[Paws::InternetMonitor::FilterParameter]');
  has LinkedAccountId => (is => 'ro', isa => 'Str');
  has MonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MonitorName', required => 1);
  has QueryType => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartQuery');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20210603/Monitors/{MonitorName}/Queries');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::InternetMonitor::StartQueryOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::StartQuery - Arguments for method StartQuery on L<Paws::InternetMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartQuery on the
L<Amazon CloudWatch Internet Monitor|Paws::InternetMonitor> service. Use the attributes of this class
as arguments to method StartQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartQuery.

=head1 SYNOPSIS

    my $internetmonitor = Paws->service('InternetMonitor');
    my $StartQueryOutput = $internetmonitor->StartQuery(
      EndTime          => '1970-01-01T01:00:00',
      MonitorName      => 'MyResourceName',
      QueryType        => 'MEASUREMENTS',
      StartTime        => '1970-01-01T01:00:00',
      FilterParameters => [
        {
          Field    => 'MyString',    # OPTIONAL
          Operator => 'EQUALS',      # values: EQUALS, NOT_EQUALS; OPTIONAL
          Values   => [
            'MyString', ...          # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      LinkedAccountId => 'MyAccountId',    # OPTIONAL
    );

    # Results:
    my $QueryId = $StartQueryOutput->QueryId;

    # Returns a L<Paws::InternetMonitor::StartQueryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/internetmonitor/StartQuery>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The timestamp that is the end of the period that you want to retrieve
data for with your query.



=head2 FilterParameters => ArrayRef[L<Paws::InternetMonitor::FilterParameter>]

The C<FilterParameters> field that you use with Amazon CloudWatch
Internet Monitor queries is a string the defines how you want a query
to be filtered. The filter parameters that you can specify depend on
the query type, since each query type returns a different set of
Internet Monitor data.

For more information about specifying filter parameters, see Using the
Amazon CloudWatch Internet Monitor query interface
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html)
in the Amazon CloudWatch Internet Monitor User Guide.



=head2 LinkedAccountId => Str

The account ID for an account that you've set up cross-account sharing
for in Amazon CloudWatch Internet Monitor. You configure cross-account
sharing by using Amazon CloudWatch Observability Access Manager. For
more information, see Internet Monitor cross-account observability
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html)
in the Amazon CloudWatch Internet Monitor User Guide.



=head2 B<REQUIRED> MonitorName => Str

The name of the monitor to query.



=head2 B<REQUIRED> QueryType => Str

The type of query to run. The following are the three types of queries
that you can run using the Internet Monitor query interface:

=over

=item *

C<MEASUREMENTS>: Provides availability score, performance score, total
traffic, and round-trip times, at 5 minute intervals.

=item *

C<TOP_LOCATIONS>: Provides availability score, performance score, total
traffic, and time to first byte (TTFB) information, for the top
location and ASN combinations that you're monitoring, by traffic
volume.

=item *

C<TOP_LOCATION_DETAILS>: Provides TTFB for Amazon CloudFront, your
current configuration, and the best performing EC2 configuration, at 1
hour intervals.

=item *

C<OVERALL_TRAFFIC_SUGGESTIONS>: Provides TTFB, using a 30-day weighted
average, for all traffic in each Amazon Web Services location that is
monitored.

=item *

C<OVERALL_TRAFFIC_SUGGESTIONS_DETAILS>: Provides TTFB, using a 30-day
weighted average, for each top location, for a proposed Amazon Web
Services location. Must provide an Amazon Web Services location to
search.

=item *

C<ROUTING_SUGGESTIONS>: Provides the predicted average round-trip time
(RTT) from an IP prefix toward an Amazon Web Services location for a
DNS resolver. The RTT is calculated at one hour intervals, over a one
hour period.

=back

For lists of the fields returned with each query type and more
information about how each type of query is performed, see Using the
Amazon CloudWatch Internet Monitor query interface
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html)
in the Amazon CloudWatch Internet Monitor User Guide.

Valid values are: C<"MEASUREMENTS">, C<"TOP_LOCATIONS">, C<"TOP_LOCATION_DETAILS">, C<"OVERALL_TRAFFIC_SUGGESTIONS">, C<"OVERALL_TRAFFIC_SUGGESTIONS_DETAILS">, C<"ROUTING_SUGGESTIONS">

=head2 B<REQUIRED> StartTime => Str

The timestamp that is the beginning of the period that you want to
retrieve data for with your query.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartQuery in L<Paws::InternetMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

