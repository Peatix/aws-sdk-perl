
package Paws::MailManager::StartArchiveExportResponse;
  use Moose;
  has ExportId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::StartArchiveExportResponse

=head1 ATTRIBUTES


=head2 ExportId => Str

The unique identifier for the initiated export job.


=head2 _request_id => Str


=cut

1;