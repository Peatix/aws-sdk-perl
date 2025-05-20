
package Paws::Personalize::ListMetricAttributionsResponse;
  use Moose;
  has MetricAttributions => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::MetricAttributionSummary]', traits => ['NameInRequest'], request_name => 'metricAttributions' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListMetricAttributionsResponse

=head1 ATTRIBUTES


=head2 MetricAttributions => ArrayRef[L<Paws::Personalize::MetricAttributionSummary>]

The list of metric attributions.


=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.


=head2 _request_id => Str


=cut

1;