
package Paws::BCMDataExports::GetExportResponse;
  use Moose;
  has Export => (is => 'ro', isa => 'Paws::BCMDataExports::Export');
  has ExportStatus => (is => 'ro', isa => 'Paws::BCMDataExports::ExportStatus');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMDataExports::GetExportResponse

=head1 ATTRIBUTES


=head2 Export => L<Paws::BCMDataExports::Export>

The data for this specific export.


=head2 ExportStatus => L<Paws::BCMDataExports::ExportStatus>

The status of this specific export.


=head2 _request_id => Str


=cut

1;