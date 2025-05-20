
package Paws::CodeGuruSecurity::GetMetricsSummaryResponse;
  use Moose;
  has MetricsSummary => (is => 'ro', isa => 'Paws::CodeGuruSecurity::MetricsSummary', traits => ['NameInRequest'], request_name => 'metricsSummary');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruSecurity::GetMetricsSummaryResponse

=head1 ATTRIBUTES


=head2 MetricsSummary => L<Paws::CodeGuruSecurity::MetricsSummary>

The summary metrics from the specified date.


=head2 _request_id => Str


=cut

