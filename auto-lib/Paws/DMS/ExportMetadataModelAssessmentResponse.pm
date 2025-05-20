
package Paws::DMS::ExportMetadataModelAssessmentResponse;
  use Moose;
  has CsvReport => (is => 'ro', isa => 'Paws::DMS::ExportMetadataModelAssessmentResultEntry');
  has PdfReport => (is => 'ro', isa => 'Paws::DMS::ExportMetadataModelAssessmentResultEntry');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ExportMetadataModelAssessmentResponse

=head1 ATTRIBUTES


=head2 CsvReport => L<Paws::DMS::ExportMetadataModelAssessmentResultEntry>

The Amazon S3 details for an assessment exported in CSV format.


=head2 PdfReport => L<Paws::DMS::ExportMetadataModelAssessmentResultEntry>

The Amazon S3 details for an assessment exported in PDF format.


=head2 _request_id => Str


=cut

1;