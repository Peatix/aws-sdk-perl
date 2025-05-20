
package Paws::InternetMonitor::UpdateMonitor;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has HealthEventsConfig => (is => 'ro', isa => 'Paws::InternetMonitor::HealthEventsConfig');
  has InternetMeasurementsLogDelivery => (is => 'ro', isa => 'Paws::InternetMonitor::InternetMeasurementsLogDelivery');
  has MaxCityNetworksToMonitor => (is => 'ro', isa => 'Int');
  has MonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MonitorName', required => 1);
  has ResourcesToAdd => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ResourcesToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Status => (is => 'ro', isa => 'Str');
  has TrafficPercentageToMonitor => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMonitor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20210603/Monitors/{MonitorName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::InternetMonitor::UpdateMonitorOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::UpdateMonitor - Arguments for method UpdateMonitor on L<Paws::InternetMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMonitor on the
L<Amazon CloudWatch Internet Monitor|Paws::InternetMonitor> service. Use the attributes of this class
as arguments to method UpdateMonitor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMonitor.

=head1 SYNOPSIS

    my $internetmonitor = Paws->service('InternetMonitor');
    my $UpdateMonitorOutput = $internetmonitor->UpdateMonitor(
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
      ResourcesToAdd           => [
        'MyArn', ...                    # min: 20, max: 2048
      ],    # OPTIONAL
      ResourcesToRemove => [
        'MyArn', ...    # min: 20, max: 2048
      ],    # OPTIONAL
      Status                     => 'PENDING',    # OPTIONAL
      TrafficPercentageToMonitor => 1,            # OPTIONAL
    );

    # Results:
    my $MonitorArn = $UpdateMonitorOutput->MonitorArn;
    my $Status     = $UpdateMonitorOutput->Status;

    # Returns a L<Paws::InternetMonitor::UpdateMonitorOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/internetmonitor/UpdateMonitor>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive string of up to 64 ASCII characters that you
specify to make an idempotent API request. You should not reuse the
same client token for other API requests.



=head2 HealthEventsConfig => L<Paws::InternetMonitor::HealthEventsConfig>

The list of health score thresholds. A threshold percentage for health
scores, along with other configuration information, determines when
Internet Monitor creates a health event when there's an internet issue
that affects your application end users.

For more information, see Change health event thresholds
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-overview.html#IMUpdateThresholdFromOverview)
in the Internet Monitor section of the I<CloudWatch User Guide>.



=head2 InternetMeasurementsLogDelivery => L<Paws::InternetMonitor::InternetMeasurementsLogDelivery>

Publish internet measurements for Internet Monitor to another location,
such as an Amazon S3 bucket. The measurements are also published to
Amazon CloudWatch Logs.



=head2 MaxCityNetworksToMonitor => Int

The maximum number of city-networks to monitor for your application. A
city-network is the location (city) where clients access your
application resources from and the ASN or network provider, such as an
internet service provider (ISP), that clients access the resources
through. Setting this limit can help control billing costs.



=head2 B<REQUIRED> MonitorName => Str

The name of the monitor.



=head2 ResourcesToAdd => ArrayRef[Str|Undef]

The resources to include in a monitor, which you provide as a set of
Amazon Resource Names (ARNs). Resources can be VPCs, NLBs, Amazon
CloudFront distributions, or Amazon WorkSpaces directories.

You can add a combination of VPCs and CloudFront distributions, or you
can add WorkSpaces directories, or you can add NLBs. You can't add NLBs
or WorkSpaces directories together with any other resources.

If you add only Amazon Virtual Private Clouds resources, at least one
VPC must have an Internet Gateway attached to it, to make sure that it
has internet connectivity.



=head2 ResourcesToRemove => ArrayRef[Str|Undef]

The resources to remove from a monitor, which you provide as a set of
Amazon Resource Names (ARNs).



=head2 Status => Str

The status for a monitor. The accepted values for C<Status> with the
C<UpdateMonitor> API call are the following: C<ACTIVE> and C<INACTIVE>.
The following values are I<not> accepted: C<PENDING>, and C<ERROR>.

Valid values are: C<"PENDING">, C<"ACTIVE">, C<"INACTIVE">, C<"ERROR">

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

This class forms part of L<Paws>, documenting arguments for method UpdateMonitor in L<Paws::InternetMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

