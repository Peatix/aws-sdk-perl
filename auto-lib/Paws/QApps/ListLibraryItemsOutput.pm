
package Paws::QApps::ListLibraryItemsOutput;
  use Moose;
  has LibraryItems => (is => 'ro', isa => 'ArrayRef[Paws::QApps::LibraryItemMember]', traits => ['NameInRequest'], request_name => 'libraryItems');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::ListLibraryItemsOutput

=head1 ATTRIBUTES


=head2 LibraryItems => ArrayRef[L<Paws::QApps::LibraryItemMember>]

The list of library items meeting the request criteria.


=head2 NextToken => Str

The token to use to request the next page of results.


=head2 _request_id => Str


=cut

