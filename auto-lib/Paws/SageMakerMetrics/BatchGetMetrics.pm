
package Paws::SageMakerMetrics::BatchGetMetrics;
  use Moose;
  has MetricQueries => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerMetrics::MetricQuery]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetMetrics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/BatchGetMetrics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerMetrics::BatchGetMetricsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerMetrics::BatchGetMetrics - Arguments for method BatchGetMetrics on L<Paws::SageMakerMetrics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetMetrics on the
L<Amazon SageMaker Metrics Service|Paws::SageMakerMetrics> service. Use the attributes of this class
as arguments to method BatchGetMetrics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetMetrics.

=head1 SYNOPSIS

    my $metrics.sagemaker = Paws->service('SageMakerMetrics');
    my $BatchGetMetricsResponse = $metrics . sagemaker->BatchGetMetrics(
      MetricQueries => [
        {
          MetricName => 'MyMetricName',               # min: 1, max: 255
          MetricStat => 'Min',      # values: Min, Max, Avg, Count, StdDev, Last
          Period     => 'OneMinute'
          ,    # values: OneMinute, FiveMinute, OneHour, IterationNumber
          ResourceArn => 'MySageMakerResourceArn',    # max: 2048
          XAxisType   => 'IterationNumber', # values: IterationNumber, Timestamp
          End         => 1,                 # OPTIONAL
          Start       => 1,                 # OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $MetricQueryResults = $BatchGetMetricsResponse->MetricQueryResults;

    # Returns a L<Paws::SageMakerMetrics::BatchGetMetricsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/metrics.sagemaker/BatchGetMetrics>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MetricQueries => ArrayRef[L<Paws::SageMakerMetrics::MetricQuery>]

Queries made to retrieve training metrics from SageMaker.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetMetrics in L<Paws::SageMakerMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

