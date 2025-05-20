
package Paws::DMS::DeleteMigrationProjectResponse;
  use Moose;
  has MigrationProject => (is => 'ro', isa => 'Paws::DMS::MigrationProject');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DeleteMigrationProjectResponse

=head1 ATTRIBUTES


=head2 MigrationProject => L<Paws::DMS::MigrationProject>

The migration project that was deleted.


=head2 _request_id => Str


=cut

1;