
package Paws::Glue::ListTableOptimizerRunsResponse;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str');
  has TableOptimizerRuns => (is => 'ro', isa => 'ArrayRef[Paws::Glue::TableOptimizerRun]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListTableOptimizerRunsResponse

=head1 ATTRIBUTES


=head2 CatalogId => Str

The Catalog ID of the table.


=head2 DatabaseName => Str

The name of the database in the catalog in which the table resides.


=head2 NextToken => Str

A continuation token for paginating the returned list of optimizer
runs, returned if the current segment of the list is not the last.


=head2 TableName => Str

The name of the table.


=head2 TableOptimizerRuns => ArrayRef[L<Paws::Glue::TableOptimizerRun>]

A list of the optimizer runs associated with a table.


=head2 _request_id => Str


=cut

1;