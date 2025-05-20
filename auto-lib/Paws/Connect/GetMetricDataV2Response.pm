
package Paws::Connect::GetMetricDataV2Response;
  use Moose;
  has MetricResults => (is => 'ro', isa => 'ArrayRef[Paws::Connect::MetricResultV2]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetMetricDataV2Response

=head1 ATTRIBUTES


=head2 MetricResults => ArrayRef[L<Paws::Connect::MetricResultV2>]

Information about the metrics requested in the API request If no
grouping is specified, a summary of metric data is returned.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

