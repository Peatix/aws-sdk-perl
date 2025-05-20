
package Paws::SageMakerMetrics::BatchPutMetricsResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerMetrics::BatchPutMetricsError]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerMetrics::BatchPutMetricsResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::SageMakerMetrics::BatchPutMetricsError>]

Lists any errors that occur when inserting metric data.


=head2 _request_id => Str


=cut

