
package Paws::CloudWatch::DeleteAnomalyDetector;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::Dimension]');
  has MetricMathAnomalyDetector => (is => 'ro', isa => 'Paws::CloudWatch::MetricMathAnomalyDetector');
  has MetricName => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has SingleMetricAnomalyDetector => (is => 'ro', isa => 'Paws::CloudWatch::SingleMetricAnomalyDetector');
  has Stat => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAnomalyDetector');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::DeleteAnomalyDetectorOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAnomalyDetectorResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::DeleteAnomalyDetector - Arguments for method DeleteAnomalyDetector on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAnomalyDetector on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method DeleteAnomalyDetector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAnomalyDetector.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $DeleteAnomalyDetectorOutput = $monitoring->DeleteAnomalyDetector(
      Dimensions => [
        {
          Name  => 'MyDimensionName',     # min: 1, max: 255
          Value => 'MyDimensionValue',    # min: 1, max: 1024

        },
        ...
      ],    # OPTIONAL
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/DeleteAnomalyDetector>

=head1 ATTRIBUTES


=head2 Dimensions => ArrayRef[L<Paws::CloudWatch::Dimension>]

The metric dimensions associated with the anomaly detection model to
delete.



=head2 MetricMathAnomalyDetector => L<Paws::CloudWatch::MetricMathAnomalyDetector>

The metric math anomaly detector to be deleted.

When using C<MetricMathAnomalyDetector>, you cannot include following
parameters in the same operation:

=over

=item *

C<Dimensions>,

=item *

C<MetricName>

=item *

C<Namespace>

=item *

C<Stat>

=item *

the C<SingleMetricAnomalyDetector> parameters of
C<DeleteAnomalyDetectorInput>

=back

Instead, specify the metric math anomaly detector attributes as part of
the C<MetricMathAnomalyDetector> property.



=head2 MetricName => Str

The metric name associated with the anomaly detection model to delete.



=head2 Namespace => Str

The namespace associated with the anomaly detection model to delete.



=head2 SingleMetricAnomalyDetector => L<Paws::CloudWatch::SingleMetricAnomalyDetector>

A single metric anomaly detector to be deleted.

When using C<SingleMetricAnomalyDetector>, you cannot include the
following parameters in the same operation:

=over

=item *

C<Dimensions>,

=item *

C<MetricName>

=item *

C<Namespace>

=item *

C<Stat>

=item *

the C<MetricMathAnomalyDetector> parameters of
C<DeleteAnomalyDetectorInput>

=back

Instead, specify the single metric anomaly detector attributes as part
of the C<SingleMetricAnomalyDetector> property.



=head2 Stat => Str

The statistic associated with the anomaly detection model to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAnomalyDetector in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

