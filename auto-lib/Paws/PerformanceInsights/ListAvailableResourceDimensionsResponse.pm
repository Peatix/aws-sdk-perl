
package Paws::PerformanceInsights::ListAvailableResourceDimensionsResponse;
  use Moose;
  has MetricDimensions => (is => 'ro', isa => 'ArrayRef[Paws::PerformanceInsights::MetricDimensionGroups]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::ListAvailableResourceDimensionsResponse

=head1 ATTRIBUTES


=head2 MetricDimensions => ArrayRef[L<Paws::PerformanceInsights::MetricDimensionGroups>]

The dimension information returned for requested metric types.


=head2 NextToken => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
token, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

1;