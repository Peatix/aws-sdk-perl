
package Paws::IoT::DescribeFleetMetricResponse;
  use Moose;
  has AggregationField => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'aggregationField');
  has AggregationType => (is => 'ro', isa => 'Paws::IoT::AggregationType', traits => ['NameInRequest'], request_name => 'aggregationType');
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IndexName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'indexName');
  has LastModifiedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedDate');
  has MetricArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricArn');
  has MetricName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricName');
  has Period => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'period');
  has QueryString => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryString');
  has QueryVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryVersion');
  has Unit => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'unit');
  has Version => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'version');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeFleetMetricResponse

=head1 ATTRIBUTES


=head2 AggregationField => Str

The field to aggregate.


=head2 AggregationType => L<Paws::IoT::AggregationType>

The type of the aggregation query.


=head2 CreationDate => Str

The date when the fleet metric is created.


=head2 Description => Str

The fleet metric description.


=head2 IndexName => Str

The name of the index to search.


=head2 LastModifiedDate => Str

The date when the fleet metric is last modified.


=head2 MetricArn => Str

The ARN of the fleet metric to describe.


=head2 MetricName => Str

The name of the fleet metric to describe.


=head2 Period => Int

The time in seconds between fleet metric emissions. Range [60(1 min),
86400(1 day)] and must be multiple of 60.


=head2 QueryString => Str

The search query string.


=head2 QueryVersion => Str

The query version.


=head2 Unit => Str

Used to support unit transformation such as milliseconds to seconds.
The unit must be supported by CW metric
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html).

Valid values are: C<"Seconds">, C<"Microseconds">, C<"Milliseconds">, C<"Bytes">, C<"Kilobytes">, C<"Megabytes">, C<"Gigabytes">, C<"Terabytes">, C<"Bits">, C<"Kilobits">, C<"Megabits">, C<"Gigabits">, C<"Terabits">, C<"Percent">, C<"Count">, C<"Bytes/Second">, C<"Kilobytes/Second">, C<"Megabytes/Second">, C<"Gigabytes/Second">, C<"Terabytes/Second">, C<"Bits/Second">, C<"Kilobits/Second">, C<"Megabits/Second">, C<"Gigabits/Second">, C<"Terabits/Second">, C<"Count/Second">, C<"None">
=head2 Version => Int

The version of the fleet metric.


=head2 _request_id => Str


=cut

