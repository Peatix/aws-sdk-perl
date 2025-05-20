
package Paws::WorkDocs::SearchResourcesResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::WorkDocs::ResponseItem]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::SearchResourcesResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::WorkDocs::ResponseItem>]

List of Documents, Folders, Comments, and Document Versions matching
the query.


=head2 Marker => Str

The marker to use when requesting the next set of results. If there are
no additional results, the string is empty.


=head2 _request_id => Str


=cut

