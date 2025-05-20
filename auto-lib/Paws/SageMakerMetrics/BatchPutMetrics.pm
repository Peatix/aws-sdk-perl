
package Paws::SageMakerMetrics::BatchPutMetrics;
  use Moose;
  has MetricData => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerMetrics::RawMetricData]', required => 1);
  has TrialComponentName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchPutMetrics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/BatchPutMetrics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerMetrics::BatchPutMetricsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerMetrics::BatchPutMetrics - Arguments for method BatchPutMetrics on L<Paws::SageMakerMetrics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchPutMetrics on the
L<Amazon SageMaker Metrics Service|Paws::SageMakerMetrics> service. Use the attributes of this class
as arguments to method BatchPutMetrics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchPutMetrics.

=head1 SYNOPSIS

    my $metrics.sagemaker = Paws->service('SageMakerMetrics');
    my $BatchPutMetricsResponse = $metrics . sagemaker->BatchPutMetrics(
      MetricData => [
        {
          MetricName => 'MyMetricName',          # min: 1, max: 255
          Timestamp  => '1970-01-01T01:00:00',
          Value      => 1,
          Step       => 1,                       # OPTIONAL
        },
        ...
      ],
      TrialComponentName => 'MyExperimentEntityName',

    );

    # Results:
    my $Errors = $BatchPutMetricsResponse->Errors;

    # Returns a L<Paws::SageMakerMetrics::BatchPutMetricsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/metrics.sagemaker/BatchPutMetrics>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MetricData => ArrayRef[L<Paws::SageMakerMetrics::RawMetricData>]

A list of raw metric values to put.



=head2 B<REQUIRED> TrialComponentName => Str

The name of the Trial Component to associate with the metrics. The
Trial Component name must be entirely lowercase.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchPutMetrics in L<Paws::SageMakerMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

