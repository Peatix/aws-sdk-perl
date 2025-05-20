
package Paws::Personalize::CreateMetricAttributionResponse;
  use Moose;
  has MetricAttributionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricAttributionArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateMetricAttributionResponse

=head1 ATTRIBUTES


=head2 MetricAttributionArn => Str

The Amazon Resource Name (ARN) for the new metric attribution.


=head2 _request_id => Str


=cut

1;