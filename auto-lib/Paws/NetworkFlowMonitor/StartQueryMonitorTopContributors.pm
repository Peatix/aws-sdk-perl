
package Paws::NetworkFlowMonitor::StartQueryMonitorTopContributors;
  use Moose;
  has DestinationCategory => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationCategory', required => 1);
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime', required => 1);
  has Limit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'limit');
  has MetricName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricName', required => 1);
  has MonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'monitorName', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartQueryMonitorTopContributors');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/monitors/{monitorName}/topContributorsQueries');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFlowMonitor::StartQueryMonitorTopContributorsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor::StartQueryMonitorTopContributors - Arguments for method StartQueryMonitorTopContributors on L<Paws::NetworkFlowMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartQueryMonitorTopContributors on the
L<Network Flow Monitor|Paws::NetworkFlowMonitor> service. Use the attributes of this class
as arguments to method StartQueryMonitorTopContributors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartQueryMonitorTopContributors.

=head1 SYNOPSIS

    my $networkflowmonitor = Paws->service('NetworkFlowMonitor');
    my $StartQueryMonitorTopContributorsOutput =
      $networkflowmonitor->StartQueryMonitorTopContributors(
      DestinationCategory => 'INTRA_AZ',
      EndTime             => '1970-01-01T01:00:00',
      MetricName          => 'ROUND_TRIP_TIME',
      MonitorName         => 'MyResourceName',
      StartTime           => '1970-01-01T01:00:00',
      Limit               => 1,                       # OPTIONAL
      );

    # Results:
    my $QueryId = $StartQueryMonitorTopContributorsOutput->QueryId;

# Returns a L<Paws::NetworkFlowMonitor::StartQueryMonitorTopContributorsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor/StartQueryMonitorTopContributors>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationCategory => Str

The category that you want to query top contributors for, for a
specific monitor. Destination categories can be one of the following:

=over

=item *

C<INTRA_AZ>: Top contributor network flows within a single Availability
Zone

=item *

C<INTER_AZ>: Top contributor network flows between Availability Zones

=item *

C<INTER_VPC>: Top contributor network flows between VPCs

=item *

C<AMAZON_S3>: Top contributor network flows to or from Amazon S3

=item *

C<AMAZON_DYNAMODB>: Top contributor network flows to or from Amazon
Dynamo DB

=item *

C<UNCLASSIFIED>: Top contributor network flows that do not have a
bucket classification

=back


Valid values are: C<"INTRA_AZ">, C<"INTER_AZ">, C<"INTER_VPC">, C<"UNCLASSIFIED">, C<"AMAZON_S3">, C<"AMAZON_DYNAMODB">

=head2 B<REQUIRED> EndTime => Str

The timestamp that is the date and time end of the period that you want
to retrieve results for with your query.



=head2 Limit => Int

The maximum number of top contributors to return.



=head2 B<REQUIRED> MetricName => Str

The metric that you want to query top contributors for. That is, you
can specify this metric to return the top contributor network flows,
for this type of metric, for a monitor and (optionally) within a
specific category, such as network flows between Availability Zones.

Valid values are: C<"ROUND_TRIP_TIME">, C<"TIMEOUTS">, C<"RETRANSMISSIONS">, C<"DATA_TRANSFERRED">

=head2 B<REQUIRED> MonitorName => Str

The name of the monitor.



=head2 B<REQUIRED> StartTime => Str

The timestamp that is the date and time beginning of the period that
you want to retrieve results for with your query.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartQueryMonitorTopContributors in L<Paws::NetworkFlowMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

