
package Paws::SESv2::GetExportJobResponse;
  use Moose;
  has CompletedTimestamp => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has ExportDataSource => (is => 'ro', isa => 'Paws::SESv2::ExportDataSource');
  has ExportDestination => (is => 'ro', isa => 'Paws::SESv2::ExportDestination');
  has ExportSourceType => (is => 'ro', isa => 'Str');
  has FailureInfo => (is => 'ro', isa => 'Paws::SESv2::FailureInfo');
  has JobId => (is => 'ro', isa => 'Str');
  has JobStatus => (is => 'ro', isa => 'Str');
  has Statistics => (is => 'ro', isa => 'Paws::SESv2::ExportStatistics');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetExportJobResponse

=head1 ATTRIBUTES


=head2 CompletedTimestamp => Str

The timestamp of when the export job was completed.


=head2 CreatedTimestamp => Str

The timestamp of when the export job was created.


=head2 ExportDataSource => L<Paws::SESv2::ExportDataSource>

The data source of the export job.


=head2 ExportDestination => L<Paws::SESv2::ExportDestination>

The destination of the export job.


=head2 ExportSourceType => Str

The type of source of the export job.

Valid values are: C<"METRICS_DATA">, C<"MESSAGE_INSIGHTS">
=head2 FailureInfo => L<Paws::SESv2::FailureInfo>

The failure details about an export job.


=head2 JobId => Str

The export job ID.


=head2 JobStatus => Str

The status of the export job.

Valid values are: C<"CREATED">, C<"PROCESSING">, C<"COMPLETED">, C<"FAILED">, C<"CANCELLED">
=head2 Statistics => L<Paws::SESv2::ExportStatistics>

The statistics about the export job.


=head2 _request_id => Str


=cut

