
package Paws::ApplicationMigration::StartExportResponse;
  use Moose;
  has ExportTask => (is => 'ro', isa => 'Paws::ApplicationMigration::ExportTask', traits => ['NameInRequest'], request_name => 'exportTask');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::StartExportResponse

=head1 ATTRIBUTES


=head2 ExportTask => L<Paws::ApplicationMigration::ExportTask>

Start export response export task.


=head2 _request_id => Str


=cut

