
package Paws::Deadline::StartSessionsStatisticsAggregationResponse;
  use Moose;
  has AggregationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'aggregationId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::StartSessionsStatisticsAggregationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AggregationId => Str

A unique identifier for the aggregated statistics. Use this identifier
with the C<GetAggregatedStatisticsForSessions> operation to return the
statistics.


=head2 _request_id => Str


=cut

