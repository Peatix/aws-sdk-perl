
package Paws::ControlCatalog::ListObjectivesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Objectives => (is => 'ro', isa => 'ArrayRef[Paws::ControlCatalog::ObjectiveSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlCatalog::ListObjectivesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 B<REQUIRED> Objectives => ArrayRef[L<Paws::ControlCatalog::ObjectiveSummary>]

The list of objectives that the C<ListObjectives> API returns.


=head2 _request_id => Str


=cut

