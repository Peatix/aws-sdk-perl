
package Paws::IoT::DescribeFleetMetric;
  use Moose;
  has MetricName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'metricName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFleetMetric');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/fleet-metric/{metricName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeFleetMetricResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeFleetMetric - Arguments for method DescribeFleetMetric on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFleetMetric on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeFleetMetric.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFleetMetric.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeFleetMetricResponse = $iot->DescribeFleetMetric(
      MetricName => 'MyFleetMetricName',

    );

    # Results:
    my $AggregationField = $DescribeFleetMetricResponse->AggregationField;
    my $AggregationType  = $DescribeFleetMetricResponse->AggregationType;
    my $CreationDate     = $DescribeFleetMetricResponse->CreationDate;
    my $Description      = $DescribeFleetMetricResponse->Description;
    my $IndexName        = $DescribeFleetMetricResponse->IndexName;
    my $LastModifiedDate = $DescribeFleetMetricResponse->LastModifiedDate;
    my $MetricArn        = $DescribeFleetMetricResponse->MetricArn;
    my $MetricName       = $DescribeFleetMetricResponse->MetricName;
    my $Period           = $DescribeFleetMetricResponse->Period;
    my $QueryString      = $DescribeFleetMetricResponse->QueryString;
    my $QueryVersion     = $DescribeFleetMetricResponse->QueryVersion;
    my $Unit             = $DescribeFleetMetricResponse->Unit;
    my $Version          = $DescribeFleetMetricResponse->Version;

    # Returns a L<Paws::IoT::DescribeFleetMetricResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeFleetMetric>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MetricName => Str

The name of the fleet metric to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFleetMetric in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

