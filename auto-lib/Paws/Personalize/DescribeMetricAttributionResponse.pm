
package Paws::Personalize::DescribeMetricAttributionResponse;
  use Moose;
  has MetricAttribution => (is => 'ro', isa => 'Paws::Personalize::MetricAttribution', traits => ['NameInRequest'], request_name => 'metricAttribution' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeMetricAttributionResponse

=head1 ATTRIBUTES


=head2 MetricAttribution => L<Paws::Personalize::MetricAttribution>

The details of the metric attribution.


=head2 _request_id => Str


=cut

1;