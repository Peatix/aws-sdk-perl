
package Paws::PerformanceInsights::ListAvailableResourceMetricsResponse;
  use Moose;
  has Metrics => (is => 'ro', isa => 'ArrayRef[Paws::PerformanceInsights::ResponseResourceMetric]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::ListAvailableResourceMetricsResponse

=head1 ATTRIBUTES


=head2 Metrics => ArrayRef[L<Paws::PerformanceInsights::ResponseResourceMetric>]

An array of metrics available to query. Each array element contains the
full name, description, and unit of the metric.


=head2 NextToken => Str

A pagination token that indicates the response didnE<rsquo>t return all
available records because C<MaxRecords> was specified in the previous
request. To get the remaining records, specify C<NextToken> in a
separate request with this value.


=head2 _request_id => Str


=cut

1;