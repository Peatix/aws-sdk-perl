
package Paws::Personalize::ListMetricAttributionMetricsResponse;
  use Moose;
  has Metrics => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::MetricAttribute]', traits => ['NameInRequest'], request_name => 'metrics' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListMetricAttributionMetricsResponse

=head1 ATTRIBUTES


=head2 Metrics => ArrayRef[L<Paws::Personalize::MetricAttribute>]

The metrics for the specified metric attribution.


=head2 NextToken => Str

Specify the pagination token from a previous
C<ListMetricAttributionMetricsResponse> request to retrieve the next
page of results.


=head2 _request_id => Str


=cut

1;