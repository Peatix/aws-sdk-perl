
package Paws::InternetMonitor::GetMonitorOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', required => 1);
  has HealthEventsConfig => (is => 'ro', isa => 'Paws::InternetMonitor::HealthEventsConfig');
  has InternetMeasurementsLogDelivery => (is => 'ro', isa => 'Paws::InternetMonitor::InternetMeasurementsLogDelivery');
  has MaxCityNetworksToMonitor => (is => 'ro', isa => 'Int');
  has ModifiedAt => (is => 'ro', isa => 'Str', required => 1);
  has MonitorArn => (is => 'ro', isa => 'Str', required => 1);
  has MonitorName => (is => 'ro', isa => 'Str', required => 1);
  has ProcessingStatus => (is => 'ro', isa => 'Str');
  has ProcessingStatusInfo => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::InternetMonitor::TagMap');
  has TrafficPercentageToMonitor => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::GetMonitorOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The time when the monitor was created.


=head2 HealthEventsConfig => L<Paws::InternetMonitor::HealthEventsConfig>

The list of health event threshold configurations. The threshold
percentage for a health score determines, along with other
configuration information, when Internet Monitor creates a health event
when there's an internet issue that affects your application end users.

For more information, see Change health event thresholds
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-overview.html#IMUpdateThresholdFromOverview)
in the Internet Monitor section of the I<CloudWatch User Guide>.


=head2 InternetMeasurementsLogDelivery => L<Paws::InternetMonitor::InternetMeasurementsLogDelivery>

Publish internet measurements for Internet Monitor to another location,
such as an Amazon S3 bucket. The measurements are also published to
Amazon CloudWatch Logs.


=head2 MaxCityNetworksToMonitor => Int

The maximum number of city-networks to monitor for your resources. A
city-network is the location (city) where clients access your
application resources from and the ASN or network provider, such as an
internet service provider (ISP), that clients access the resources
through. This limit can help control billing costs.

To learn more, see Choosing a city-network maximum value
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html)
in the Amazon CloudWatch Internet Monitor section of the I<CloudWatch
User Guide>.


=head2 B<REQUIRED> ModifiedAt => Str

The last time that the monitor was modified.


=head2 B<REQUIRED> MonitorArn => Str

The Amazon Resource Name (ARN) of the monitor.


=head2 B<REQUIRED> MonitorName => Str

The name of the monitor.


=head2 ProcessingStatus => Str

The health of the data processing for the monitor.

Valid values are: C<"OK">, C<"INACTIVE">, C<"COLLECTING_DATA">, C<"INSUFFICIENT_DATA">, C<"FAULT_SERVICE">, C<"FAULT_ACCESS_CLOUDWATCH">
=head2 ProcessingStatusInfo => Str

Additional information about the health of the data processing for the
monitor.


=head2 B<REQUIRED> Resources => ArrayRef[Str|Undef]

The resources monitored by the monitor. Resources are listed by their
Amazon Resource Names (ARNs).


=head2 B<REQUIRED> Status => Str

The status of the monitor.

Valid values are: C<"PENDING">, C<"ACTIVE">, C<"INACTIVE">, C<"ERROR">
=head2 Tags => L<Paws::InternetMonitor::TagMap>

The tags that have been added to monitor.


=head2 TrafficPercentageToMonitor => Int

The percentage of the internet-facing traffic for your application to
monitor with this monitor. If you set a city-networks maximum, that
limit overrides the traffic percentage that you set.

To learn more, see Choosing an application traffic percentage to
monitor
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMTrafficPercentage.html)
in the Amazon CloudWatch Internet Monitor section of the I<CloudWatch
User Guide>.


=head2 _request_id => Str


=cut

