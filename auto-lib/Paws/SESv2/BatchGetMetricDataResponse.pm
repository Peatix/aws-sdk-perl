
package Paws::SESv2::BatchGetMetricDataResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::MetricDataError]');
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::MetricDataResult]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::BatchGetMetricDataResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::SESv2::MetricDataError>]

A list of C<MetricDataError> encountered while processing your metric
data batch request.


=head2 Results => ArrayRef[L<Paws::SESv2::MetricDataResult>]

A list of successfully retrieved C<MetricDataResult>.


=head2 _request_id => Str


=cut

