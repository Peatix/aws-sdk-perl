
package Paws::IoT::ListMetricValues;
  use Moose;
  has DimensionName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'dimensionName');
  has DimensionValueOperator => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'dimensionValueOperator');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'endTime', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has MetricName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'metricName', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startTime', required => 1);
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'thingName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMetricValues');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/metric-values');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListMetricValuesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListMetricValues - Arguments for method ListMetricValues on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMetricValues on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListMetricValues.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMetricValues.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListMetricValuesResponse = $iot->ListMetricValues(
      EndTime                => '1970-01-01T01:00:00',
      MetricName             => 'MyBehaviorMetric',
      StartTime              => '1970-01-01T01:00:00',
      ThingName              => 'MyDeviceDefenderThingName',
      DimensionName          => 'MyDimensionName',             # OPTIONAL
      DimensionValueOperator => 'IN',                          # OPTIONAL
      MaxResults             => 1,                             # OPTIONAL
      NextToken              => 'MyNextToken',                 # OPTIONAL
    );

    # Results:
    my $MetricDatumList = $ListMetricValuesResponse->MetricDatumList;
    my $NextToken       = $ListMetricValuesResponse->NextToken;

    # Returns a L<Paws::IoT::ListMetricValuesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListMetricValues>

=head1 ATTRIBUTES


=head2 DimensionName => Str

The dimension name.



=head2 DimensionValueOperator => Str

The dimension value operator.

Valid values are: C<"IN">, C<"NOT_IN">

=head2 B<REQUIRED> EndTime => Str

The end of the time period for which metric values are returned.



=head2 MaxResults => Int

The maximum number of results to return at one time.



=head2 B<REQUIRED> MetricName => Str

The name of the security profile metric for which values are returned.



=head2 NextToken => Str

The token for the next set of results.



=head2 B<REQUIRED> StartTime => Str

The start of the time period for which metric values are returned.



=head2 B<REQUIRED> ThingName => Str

The name of the thing for which security profile metric values are
returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMetricValues in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

