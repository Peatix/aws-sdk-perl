
package Paws::DMS::CreateDataMigrationResponse;
  use Moose;
  has DataMigration => (is => 'ro', isa => 'Paws::DMS::DataMigration');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::CreateDataMigrationResponse

=head1 ATTRIBUTES


=head2 DataMigration => L<Paws::DMS::DataMigration>

Information about the created data migration.


=head2 _request_id => Str


=cut

1;