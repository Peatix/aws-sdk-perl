
package Paws::Forecast::ListMonitorsResponse;
  use Moose;
  has Monitors => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::MonitorSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ListMonitorsResponse

=head1 ATTRIBUTES


=head2 Monitors => ArrayRef[L<Paws::Forecast::MonitorSummary>]

An array of objects that summarize each monitor's properties.


=head2 NextToken => Str

If the response is truncated, Amazon Forecast returns this token. To
retrieve the next set of results, use the token in the next request.


=head2 _request_id => Str


=cut

1;