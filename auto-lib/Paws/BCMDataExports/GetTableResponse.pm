
package Paws::BCMDataExports::GetTableResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Schema => (is => 'ro', isa => 'ArrayRef[Paws::BCMDataExports::Column]');
  has TableName => (is => 'ro', isa => 'Str');
  has TableProperties => (is => 'ro', isa => 'Paws::BCMDataExports::TableProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMDataExports::GetTableResponse

=head1 ATTRIBUTES


=head2 Description => Str

The table description.


=head2 Schema => ArrayRef[L<Paws::BCMDataExports::Column>]

The schema of the table.


=head2 TableName => Str

The name of the table.


=head2 TableProperties => L<Paws::BCMDataExports::TableProperties>

TableProperties are additional configurations you can provide to change
the data and schema of a table. Each table can have different
TableProperties. Tables are not required to have any TableProperties.
Each table property has a default value that it assumes if not
specified.


=head2 _request_id => Str


=cut

1;