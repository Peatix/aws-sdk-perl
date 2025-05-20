
package Paws::ApplicationMigration::StartImportResponse;
  use Moose;
  has ImportTask => (is => 'ro', isa => 'Paws::ApplicationMigration::ImportTask', traits => ['NameInRequest'], request_name => 'importTask');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::StartImportResponse

=head1 ATTRIBUTES


=head2 ImportTask => L<Paws::ApplicationMigration::ImportTask>

Start import response import task.


=head2 _request_id => Str


=cut

