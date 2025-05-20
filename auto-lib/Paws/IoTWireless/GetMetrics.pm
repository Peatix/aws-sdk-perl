
package Paws::IoTWireless::GetMetrics;
  use Moose;
  has SummaryMetricQueries => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::SummaryMetricQuery]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMetrics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/metrics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::GetMetricsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetMetrics - Arguments for method GetMetrics on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMetrics on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method GetMetrics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMetrics.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $GetMetricsResponse = $api . iotwireless->GetMetrics(
      SummaryMetricQueries => [
        {
          AggregationPeriod =>
            'OneHour',    # values: OneHour, OneDay, OneWeek; OPTIONAL
          Dimensions => [
            {
              Name =>
                'DeviceId',    # values: DeviceId, GatewayIdmax: 256; OPTIONAL
              Value => 'MyDimensionValue',    # max: 256; OPTIONAL
            },
            ...
          ],    # OPTIONAL
          EndTimestamp => '1970-01-01T01:00:00',      # OPTIONAL
          MetricName   => 'DeviceRSSI'
          , # values: DeviceRSSI, DeviceSNR, DeviceRoamingRSSI, DeviceRoamingSNR, DeviceUplinkCount, DeviceDownlinkCount, DeviceUplinkLostCount, DeviceUplinkLostRate, DeviceJoinRequestCount, DeviceJoinAcceptCount, DeviceRoamingUplinkCount, DeviceRoamingDownlinkCount, GatewayUpTime, GatewayDownTime, GatewayRSSI, GatewaySNR, GatewayUplinkCount, GatewayDownlinkCount, GatewayJoinRequestCount, GatewayJoinAcceptCount, AwsAccountUplinkCount, AwsAccountDownlinkCount, AwsAccountUplinkLostCount, AwsAccountUplinkLostRate, AwsAccountJoinRequestCount, AwsAccountJoinAcceptCount, AwsAccountRoamingUplinkCount, AwsAccountRoamingDownlinkCount, AwsAccountDeviceCount, AwsAccountGatewayCount, AwsAccountActiveDeviceCount, AwsAccountActiveGatewayCountmax: 256; OPTIONAL
          QueryId        => 'MyMetricQueryId',        # max: 256; OPTIONAL
          StartTimestamp => '1970-01-01T01:00:00',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $SummaryMetricQueryResults =
      $GetMetricsResponse->SummaryMetricQueryResults;

    # Returns a L<Paws::IoTWireless::GetMetricsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/GetMetrics>

=head1 ATTRIBUTES


=head2 SummaryMetricQueries => ArrayRef[L<Paws::IoTWireless::SummaryMetricQuery>]

The list of queries to retrieve the summary metrics.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMetrics in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

