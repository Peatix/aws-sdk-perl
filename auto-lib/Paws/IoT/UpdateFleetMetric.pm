
package Paws::IoT::UpdateFleetMetric;
  use Moose;
  has AggregationField => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'aggregationField');
  has AggregationType => (is => 'ro', isa => 'Paws::IoT::AggregationType', traits => ['NameInRequest'], request_name => 'aggregationType');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has ExpectedVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'expectedVersion');
  has IndexName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'indexName', required => 1);
  has MetricName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'metricName', required => 1);
  has Period => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'period');
  has QueryString => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryString');
  has QueryVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryVersion');
  has Unit => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'unit');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFleetMetric');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/fleet-metric/{metricName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateFleetMetric - Arguments for method UpdateFleetMetric on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFleetMetric on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateFleetMetric.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFleetMetric.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->UpdateFleetMetric(
      IndexName        => 'MyIndexName',
      MetricName       => 'MyFleetMetricName',
      AggregationField => 'MyAggregationField',    # OPTIONAL
      AggregationType  => {
        Name   => 'Statistics',   # values: Statistics, Percentiles, Cardinality
        Values => [
          'MyAggregationTypeValue', ...    # min: 1, max: 12
        ],    # OPTIONAL
      },    # OPTIONAL
      Description     => 'MyFleetMetricDescription',    # OPTIONAL
      ExpectedVersion => 1,                             # OPTIONAL
      Period          => 1,                             # OPTIONAL
      QueryString     => 'MyQueryString',               # OPTIONAL
      QueryVersion    => 'MyQueryVersion',              # OPTIONAL
      Unit            => 'Seconds',                     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateFleetMetric>

=head1 ATTRIBUTES


=head2 AggregationField => Str

The field to aggregate.



=head2 AggregationType => L<Paws::IoT::AggregationType>

The type of the aggregation query.



=head2 Description => Str

The description of the fleet metric.



=head2 ExpectedVersion => Int

The expected version of the fleet metric record in the registry.



=head2 B<REQUIRED> IndexName => Str

The name of the index to search.



=head2 B<REQUIRED> MetricName => Str

The name of the fleet metric to update.



=head2 Period => Int

The time in seconds between fleet metric emissions. Range [60(1 min),
86400(1 day)] and must be multiple of 60.



=head2 QueryString => Str

The search query string.



=head2 QueryVersion => Str

The version of the query.



=head2 Unit => Str

Used to support unit transformation such as milliseconds to seconds.
The unit must be supported by CW metric
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html).

Valid values are: C<"Seconds">, C<"Microseconds">, C<"Milliseconds">, C<"Bytes">, C<"Kilobytes">, C<"Megabytes">, C<"Gigabytes">, C<"Terabytes">, C<"Bits">, C<"Kilobits">, C<"Megabits">, C<"Gigabits">, C<"Terabits">, C<"Percent">, C<"Count">, C<"Bytes/Second">, C<"Kilobytes/Second">, C<"Megabytes/Second">, C<"Gigabytes/Second">, C<"Terabytes/Second">, C<"Bits/Second">, C<"Kilobits/Second">, C<"Megabits/Second">, C<"Gigabits/Second">, C<"Terabits/Second">, C<"Count/Second">, C<"None">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFleetMetric in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

