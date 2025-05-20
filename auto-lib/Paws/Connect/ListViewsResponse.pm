
package Paws::Connect::ListViewsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ViewsSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::ViewSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListViewsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 ViewsSummaryList => ArrayRef[L<Paws::Connect::ViewSummary>]

A list of view summaries.


=head2 _request_id => Str


=cut

