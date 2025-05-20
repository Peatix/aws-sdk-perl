
package Paws::ControlCatalog::ListControlsResponse;
  use Moose;
  has Controls => (is => 'ro', isa => 'ArrayRef[Paws::ControlCatalog::ControlSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlCatalog::ListControlsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Controls => ArrayRef[L<Paws::ControlCatalog::ControlSummary>]

Returns a list of controls, given as structures of type
I<controlSummary>.


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 _request_id => Str


=cut

