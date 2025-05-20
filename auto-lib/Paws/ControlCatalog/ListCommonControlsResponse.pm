
package Paws::ControlCatalog::ListCommonControlsResponse;
  use Moose;
  has CommonControls => (is => 'ro', isa => 'ArrayRef[Paws::ControlCatalog::CommonControlSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlCatalog::ListCommonControlsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommonControls => ArrayRef[L<Paws::ControlCatalog::CommonControlSummary>]

The list of common controls that the C<ListCommonControls> API returns.


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 _request_id => Str


=cut

