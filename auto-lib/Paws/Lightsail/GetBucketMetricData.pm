
package Paws::Lightsail::GetBucketMetricData;
  use Moose;
  has BucketName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bucketName' , required => 1);
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime' , required => 1);
  has MetricName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricName' , required => 1);
  has Period => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'period' , required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' , required => 1);
  has Statistics => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'statistics' , required => 1);
  has Unit => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'unit' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketMetricData');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetBucketMetricDataResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetBucketMetricData - Arguments for method GetBucketMetricData on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBucketMetricData on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetBucketMetricData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBucketMetricData.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetBucketMetricDataResult = $lightsail->GetBucketMetricData(
      BucketName => 'MyBucketName',
      EndTime    => '1970-01-01T01:00:00',
      MetricName => 'BucketSizeBytes',
      Period     => 1,
      StartTime  => '1970-01-01T01:00:00',
      Statistics => [
        'Minimum', ...    # values: Minimum, Maximum, Sum, Average, SampleCount
      ],
      Unit => 'Seconds',

    );

    # Results:
    my $MetricData = $GetBucketMetricDataResult->MetricData;
    my $MetricName = $GetBucketMetricDataResult->MetricName;

    # Returns a L<Paws::Lightsail::GetBucketMetricDataResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetBucketMetricData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BucketName => Str

The name of the bucket for which to get metric data.



=head2 B<REQUIRED> EndTime => Str

The timestamp indicating the latest data to be returned.



=head2 B<REQUIRED> MetricName => Str

The metric for which you want to return information.

Valid bucket metric names are listed below, along with the most useful
statistics to include in your request, and the published unit value.

These bucket metrics are reported once per day.

=over

=item *

B<C<BucketSizeBytes> > - The amount of data in bytes stored in a
bucket. This value is calculated by summing the size of all objects in
the bucket (including object versions), including the size of all parts
for all incomplete multipart uploads to the bucket.

Statistics: The most useful statistic is C<Maximum>.

Unit: The published unit is C<Bytes>.

=item *

B<C<NumberOfObjects> > - The total number of objects stored in a
bucket. This value is calculated by counting all objects in the bucket
(including object versions) and the total number of parts for all
incomplete multipart uploads to the bucket.

Statistics: The most useful statistic is C<Average>.

Unit: The published unit is C<Count>.

=back


Valid values are: C<"BucketSizeBytes">, C<"NumberOfObjects">

=head2 B<REQUIRED> Period => Int

The granularity, in seconds, of the returned data points.

Bucket storage metrics are reported once per day. Therefore, you should
specify a period of 86400 seconds, which is the number of seconds in a
day.



=head2 B<REQUIRED> StartTime => Str

The timestamp indicating the earliest data to be returned.



=head2 B<REQUIRED> Statistics => ArrayRef[Str|Undef]

The statistic for the metric.

The following statistics are available:

=over

=item *

C<Minimum> - The lowest value observed during the specified period. Use
this value to determine low volumes of activity for your application.

=item *

C<Maximum> - The highest value observed during the specified period.
Use this value to determine high volumes of activity for your
application.

=item *

C<Sum> - The sum of all values submitted for the matching metric. You
can use this statistic to determine the total volume of a metric.

=item *

C<Average> - The value of C<Sum> / C<SampleCount> during the specified
period. By comparing this statistic with the C<Minimum> and C<Maximum>
values, you can determine the full scope of a metric and how close the
average use is to the C<Minimum> and C<Maximum> values. This comparison
helps you to know when to increase or decrease your resources.

=item *

C<SampleCount> - The count, or number, of data points used for the
statistical calculation.

=back




=head2 B<REQUIRED> Unit => Str

The unit for the metric data request.

Valid units depend on the metric data being requested. For the valid
units with each available metric, see the C<metricName> parameter.

Valid values are: C<"Seconds">, C<"Microseconds">, C<"Milliseconds">, C<"Bytes">, C<"Kilobytes">, C<"Megabytes">, C<"Gigabytes">, C<"Terabytes">, C<"Bits">, C<"Kilobits">, C<"Megabits">, C<"Gigabits">, C<"Terabits">, C<"Percent">, C<"Count">, C<"Bytes/Second">, C<"Kilobytes/Second">, C<"Megabytes/Second">, C<"Gigabytes/Second">, C<"Terabytes/Second">, C<"Bits/Second">, C<"Kilobits/Second">, C<"Megabits/Second">, C<"Gigabits/Second">, C<"Terabits/Second">, C<"Count/Second">, C<"None">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBucketMetricData in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

