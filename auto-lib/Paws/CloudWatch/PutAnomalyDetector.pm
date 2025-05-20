
package Paws::CloudWatch::PutAnomalyDetector;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::CloudWatch::AnomalyDetectorConfiguration');
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::Dimension]');
  has MetricCharacteristics => (is => 'ro', isa => 'Paws::CloudWatch::MetricCharacteristics');
  has MetricMathAnomalyDetector => (is => 'ro', isa => 'Paws::CloudWatch::MetricMathAnomalyDetector');
  has MetricName => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has SingleMetricAnomalyDetector => (is => 'ro', isa => 'Paws::CloudWatch::SingleMetricAnomalyDetector');
  has Stat => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAnomalyDetector');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::PutAnomalyDetectorOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PutAnomalyDetectorResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::PutAnomalyDetector - Arguments for method PutAnomalyDetector on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAnomalyDetector on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method PutAnomalyDetector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAnomalyDetector.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $PutAnomalyDetectorOutput = $monitoring->PutAnomalyDetector(
      Configuration => {
        ExcludedTimeRanges => [
          {
            EndTime   => '1970-01-01T01:00:00',
            StartTime => '1970-01-01T01:00:00',

          },
          ...
        ],    # OPTIONAL
        MetricTimezone => 'MyAnomalyDetectorMetricTimezone', # max: 50; OPTIONAL
      },    # OPTIONAL
      Dimensions => [
        {
          Name  => 'MyDimensionName',     # min: 1, max: 255
          Value => 'MyDimensionValue',    # min: 1, max: 1024

        },
        ...
      ],    # OPTIONAL
      MetricCharacteristics => {
        PeriodicSpikes => 1,    # OPTIONAL
      },    # OPTIONAL
      MetricMathAnomalyDetector => {
        MetricDataQueries => [
          {
            Id         => 'MyMetricId',            # min: 1, max: 255
            AccountId  => 'MyAccountId',           # min: 1, max: 255; OPTIONAL
            Expression => 'MyMetricExpression',    # min: 1, max: 2048; OPTIONAL
            Label      => 'MyMetricLabel',         # OPTIONAL
            MetricStat => {
              Metric => {
                Dimensions => [
                  {
                    Name  => 'MyDimensionName',     # min: 1, max: 255
                    Value => 'MyDimensionValue',    # min: 1, max: 1024

                  },
                  ...
                ],    # max: 30
                MetricName => 'MyMetricName',    # min: 1, max: 255; OPTIONAL
                Namespace  => 'MyNamespace',     # min: 1, max: 255; OPTIONAL
              },
              Period => 1,                       # min: 1
              Stat   => 'MyStat',
              Unit   => 'Seconds'
              , # values: Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None; OPTIONAL
            },    # OPTIONAL
            Period     => 1,    # min: 1
            ReturnData => 1,    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      MetricName                  => 'MyMetricName',    # OPTIONAL
      Namespace                   => 'MyNamespace',     # OPTIONAL
      SingleMetricAnomalyDetector => {
        AccountId  => 'MyAccountId',    # min: 1, max: 255; OPTIONAL
        Dimensions => [
          {
            Name  => 'MyDimensionName',     # min: 1, max: 255
            Value => 'MyDimensionValue',    # min: 1, max: 1024

          },
          ...
        ],    # max: 30
        MetricName => 'MyMetricName',    # min: 1, max: 255; OPTIONAL
        Namespace  => 'MyNamespace',     # min: 1, max: 255; OPTIONAL
        Stat       => 'MyAnomalyDetectorMetricStat',    # max: 50; OPTIONAL
      },    # OPTIONAL
      Stat => 'MyAnomalyDetectorMetricStat',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/PutAnomalyDetector>

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::CloudWatch::AnomalyDetectorConfiguration>

The configuration specifies details about how the anomaly detection
model is to be trained, including time ranges to exclude when training
and updating the model. You can specify as many as 10 time ranges.

The configuration can also include the time zone to use for the metric.



=head2 Dimensions => ArrayRef[L<Paws::CloudWatch::Dimension>]

The metric dimensions to create the anomaly detection model for.



=head2 MetricCharacteristics => L<Paws::CloudWatch::MetricCharacteristics>

Use this object to include parameters to provide information about your
metric to CloudWatch to help it build more accurate anomaly detection
models. Currently, it includes the C<PeriodicSpikes> parameter.



=head2 MetricMathAnomalyDetector => L<Paws::CloudWatch::MetricMathAnomalyDetector>

The metric math anomaly detector to be created.

When using C<MetricMathAnomalyDetector>, you cannot include the
following parameters in the same operation:

=over

=item *

C<Dimensions>

=item *

C<MetricName>

=item *

C<Namespace>

=item *

C<Stat>

=item *

the C<SingleMetricAnomalyDetector> parameters of
C<PutAnomalyDetectorInput>

=back

Instead, specify the metric math anomaly detector attributes as part of
the property C<MetricMathAnomalyDetector>.



=head2 MetricName => Str

The name of the metric to create the anomaly detection model for.



=head2 Namespace => Str

The namespace of the metric to create the anomaly detection model for.



=head2 SingleMetricAnomalyDetector => L<Paws::CloudWatch::SingleMetricAnomalyDetector>

A single metric anomaly detector to be created.

When using C<SingleMetricAnomalyDetector>, you cannot include the
following parameters in the same operation:

=over

=item *

C<Dimensions>

=item *

C<MetricName>

=item *

C<Namespace>

=item *

C<Stat>

=item *

the C<MetricMathAnomalyDetector> parameters of
C<PutAnomalyDetectorInput>

=back

Instead, specify the single metric anomaly detector attributes as part
of the property C<SingleMetricAnomalyDetector>.



=head2 Stat => Str

The statistic to use for the metric and the anomaly detection model.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAnomalyDetector in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

