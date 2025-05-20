
package Paws::MailManager::GetArchiveExportResponse;
  use Moose;
  has ArchiveId => (is => 'ro', isa => 'Str');
  has ExportDestinationConfiguration => (is => 'ro', isa => 'Paws::MailManager::ExportDestinationConfiguration');
  has Filters => (is => 'ro', isa => 'Paws::MailManager::ArchiveFilters');
  has FromTimestamp => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Paws::MailManager::ExportStatus');
  has ToTimestamp => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::GetArchiveExportResponse

=head1 ATTRIBUTES


=head2 ArchiveId => Str

The identifier of the archive the email export was performed from.


=head2 ExportDestinationConfiguration => L<Paws::MailManager::ExportDestinationConfiguration>

Where the exported emails are being delivered.


=head2 Filters => L<Paws::MailManager::ArchiveFilters>

The criteria used to filter emails included in the export.


=head2 FromTimestamp => Str

The start of the timestamp range the exported emails cover.


=head2 MaxResults => Int

The maximum number of email items included in the export.


=head2 Status => L<Paws::MailManager::ExportStatus>

The current status of the export job.


=head2 ToTimestamp => Str

The end of the date range the exported emails cover.


=head2 _request_id => Str


=cut

1;