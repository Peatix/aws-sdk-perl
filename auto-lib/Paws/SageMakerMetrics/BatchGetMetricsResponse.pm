
package Paws::SageMakerMetrics::BatchGetMetricsResponse;
  use Moose;
  has MetricQueryResults => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerMetrics::MetricQueryResult]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerMetrics::BatchGetMetricsResponse

=head1 ATTRIBUTES


=head2 MetricQueryResults => ArrayRef[L<Paws::SageMakerMetrics::MetricQueryResult>]

The results of a query to retrieve training metrics from SageMaker.


=head2 _request_id => Str


=cut

