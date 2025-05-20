
package Paws::Glue::GetCatalogResponse;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Paws::Glue::Catalog');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetCatalogResponse

=head1 ATTRIBUTES


=head2 Catalog => L<Paws::Glue::Catalog>

A C<Catalog> object. The definition of the specified catalog in the
Glue Data Catalog.


=head2 _request_id => Str


=cut

1;