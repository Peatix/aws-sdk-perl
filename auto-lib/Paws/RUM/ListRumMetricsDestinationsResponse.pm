
package Paws::RUM::ListRumMetricsDestinationsResponse;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::RUM::MetricDestinationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::ListRumMetricsDestinationsResponse

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[L<Paws::RUM::MetricDestinationSummary>]

The list of CloudWatch RUM extended metrics destinations associated
with the app monitor that you specified.


=head2 NextToken => Str

A token that you can use in a subsequent operation to retrieve the next
set of results.


=head2 _request_id => Str


=cut

