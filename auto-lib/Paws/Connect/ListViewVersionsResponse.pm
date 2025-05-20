
package Paws::Connect::ListViewVersionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ViewVersionSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::ViewVersionSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListViewVersionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 ViewVersionSummaryList => ArrayRef[L<Paws::Connect::ViewVersionSummary>]

A list of view version summaries.


=head2 _request_id => Str


=cut

