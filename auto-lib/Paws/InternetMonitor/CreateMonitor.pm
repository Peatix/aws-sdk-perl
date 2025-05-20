
package Paws::InternetMonitor::CreateMonitor;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has HealthEventsConfig => (is => 'ro', isa => 'Paws::InternetMonitor::HealthEventsConfig');
  has InternetMeasurementsLogDelivery => (is => 'ro', isa => 'Paws::InternetMonitor::InternetMeasurementsLogDelivery');
  has MaxCityNetworksToMonitor => (is => 'ro', isa => 'Int');
  has MonitorName => (is => 'ro', isa => 'Str', required => 1);
  has Resources => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Tags => (is => 'ro', isa => 'Paws::InternetMonitor::TagMap');
  has TrafficPercentageToMonitor => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMonitor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20210603/Monitors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::InternetMonitor::CreateMonitorOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::CreateMonitor - Arguments for method CreateMonitor on L<Paws::InternetMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMonitor on the
L<Amazon CloudWatch Internet Monitor|Paws::InternetMonitor> service. Use the attributes of this class
as arguments to method CreateMonitor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMonitor.

=head1 SYNOPSIS

    my $internetmonitor = Paws->service('InternetMonitor');
    my $CreateMonitorOutput = $internetmonitor->CreateMonitor(
      MonitorName        => 'MyResourceName',
      ClientToken        => 'MyString',         # OPTIONAL
      HealthEventsConfig => {
        AvailabilityLocalHealthEventsConfig => {
          HealthScoreThreshold => 1,    # max: 100; OPTIONAL
          MinTrafficImpact     => 1,    # max: 100; OPTIONAL
          Status => 'ENABLED',          # values: ENABLED, DISABLED; OPTIONAL
        },    # OPTIONAL
        AvailabilityScoreThreshold         => 1,    # max: 100; OPTIONAL
        PerformanceLocalHealthEventsConfig => {
          HealthScoreThreshold => 1,                # max: 100; OPTIONAL
          MinTrafficImpact     => 1,                # max: 100; OPTIONAL
          Status => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        },    # OPTIONAL
        PerformanceScoreThreshold => 1,    # max: 100; OPTIONAL
      },    # OPTIONAL
      InternetMeasurementsLogDelivery => {
        S3Config => {
          BucketName        => 'MyS3ConfigBucketNameString',  # min: 3; OPTIONAL
          BucketPrefix      => 'MyString',
          LogDeliveryStatus => 'ENABLED',  # values: ENABLED, DISABLED; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      MaxCityNetworksToMonitor => 1,    # OPTIONAL
      Resources                => [
        'MyArn', ...                    # min: 20, max: 2048
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      TrafficPercentageToMonitor => 1,    # OPTIONAL
    );

    # Results:
    my $Arn    = $CreateMonitorOutput->Arn;
    my $Status = $CreateMonitorOutput->Status;

    # Returns a L<Paws::InternetMonitor::CreateMonitorOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/internetmonitor/CreateMonitor>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive string of up to 64 ASCII characters that you
specify to make an idempotent API request. Don't reuse the same client
token for other API requests.



=head2 HealthEventsConfig => L<Paws::InternetMonitor::HealthEventsConfig>

Defines the threshold percentages and other configuration information
for when Amazon CloudWatch Internet Monitor creates a health event.
Internet Monitor creates a health event when an internet issue that
affects your application end users has a health score percentage that
is at or below a specific threshold, and, sometimes, when other
criteria are met.

If you don't set a health event threshold, the default value is 95%.

For more information, see Change health event thresholds
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-overview.html#IMUpdateThresholdFromOverview)
in the Internet Monitor section of the I<CloudWatch User Guide>.



=head2 InternetMeasurementsLogDelivery => L<Paws::InternetMonitor::InternetMeasurementsLogDelivery>

Publish internet measurements for Internet Monitor to an Amazon S3
bucket in addition to CloudWatch Logs.



=head2 MaxCityNetworksToMonitor => Int

The maximum number of city-networks to monitor for your resources. A
city-network is the location (city) where clients access your
application resources from and the ASN or network provider, such as an
internet service provider (ISP), that clients access the resources
through. Setting this limit can help control billing costs.

To learn more, see Choosing a city-network maximum value
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html)
in the Amazon CloudWatch Internet Monitor section of the I<CloudWatch
User Guide>.



=head2 B<REQUIRED> MonitorName => Str

The name of the monitor.



=head2 Resources => ArrayRef[Str|Undef]

The resources to include in a monitor, which you provide as a set of
Amazon Resource Names (ARNs). Resources can be VPCs, NLBs, Amazon
CloudFront distributions, or Amazon WorkSpaces directories.

You can add a combination of VPCs and CloudFront distributions, or you
can add WorkSpaces directories, or you can add NLBs. You can't add NLBs
or WorkSpaces directories together with any other resources.

If you add only Amazon VPC resources, at least one VPC must have an
Internet Gateway attached to it, to make sure that it has internet
connectivity.



=head2 Tags => L<Paws::InternetMonitor::TagMap>

The tags for a monitor. You can add a maximum of 50 tags in Internet
Monitor.



=head2 TrafficPercentageToMonitor => Int

The percentage of the internet-facing traffic for your application that
you want to monitor with this monitor. If you set a city-networks
maximum, that limit overrides the traffic percentage that you set.

To learn more, see Choosing an application traffic percentage to
monitor
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMTrafficPercentage.html)
in the Amazon CloudWatch Internet Monitor section of the I<CloudWatch
User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMonitor in L<Paws::InternetMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

