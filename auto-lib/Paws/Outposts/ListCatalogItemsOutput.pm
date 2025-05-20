
package Paws::Outposts::ListCatalogItemsOutput;
  use Moose;
  has CatalogItems => (is => 'ro', isa => 'ArrayRef[Paws::Outposts::CatalogItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::ListCatalogItemsOutput

=head1 ATTRIBUTES


=head2 CatalogItems => ArrayRef[L<Paws::Outposts::CatalogItem>]

Information about the catalog items.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

