
package Paws::Outposts::GetCatalogItemOutput;
  use Moose;
  has CatalogItem => (is => 'ro', isa => 'Paws::Outposts::CatalogItem');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::GetCatalogItemOutput

=head1 ATTRIBUTES


=head2 CatalogItem => L<Paws::Outposts::CatalogItem>

Information about this catalog item.


=head2 _request_id => Str


=cut

