
package Paws::Glue::ListDataQualityStatisticsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Statistics => (is => 'ro', isa => 'ArrayRef[Paws::Glue::StatisticSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListDataQualityStatisticsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token to request the next page of results.


=head2 Statistics => ArrayRef[L<Paws::Glue::StatisticSummary>]

A C<StatisticSummaryList>.


=head2 _request_id => Str


=cut

1;