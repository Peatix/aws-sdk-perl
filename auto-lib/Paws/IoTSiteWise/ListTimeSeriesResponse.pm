
package Paws::IoTSiteWise::ListTimeSeriesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TimeSeriesSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::TimeSeriesSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListTimeSeriesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 B<REQUIRED> TimeSeriesSummaries => ArrayRef[L<Paws::IoTSiteWise::TimeSeriesSummary>]

One or more time series summaries to list.


=head2 _request_id => Str


=cut

