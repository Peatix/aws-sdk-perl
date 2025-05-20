
package Paws::Glue::GetCatalogsResponse;
  use Moose;
  has CatalogList => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Catalog]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetCatalogsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CatalogList => ArrayRef[L<Paws::Glue::Catalog>]

An array of C<Catalog> objects. A list of C<Catalog> objects from the
specified parent catalog.


=head2 NextToken => Str

A continuation token for paginating the returned list of tokens,
returned if the current segment of the list is not the last.


=head2 _request_id => Str


=cut

1;