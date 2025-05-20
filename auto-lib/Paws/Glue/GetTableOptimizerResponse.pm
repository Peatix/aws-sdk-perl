
package Paws::Glue::GetTableOptimizerResponse;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str');
  has TableOptimizer => (is => 'ro', isa => 'Paws::Glue::TableOptimizer');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetTableOptimizerResponse

=head1 ATTRIBUTES


=head2 CatalogId => Str

The Catalog ID of the table.


=head2 DatabaseName => Str

The name of the database in the catalog in which the table resides.


=head2 TableName => Str

The name of the table.


=head2 TableOptimizer => L<Paws::Glue::TableOptimizer>

The optimizer associated with the specified table.


=head2 _request_id => Str


=cut

1;