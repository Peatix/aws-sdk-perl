
package Paws::Inspector2::CreateSbomExportResponse;
  use Moose;
  has ReportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::CreateSbomExportResponse

=head1 ATTRIBUTES


=head2 ReportId => Str

The report ID for the software bill of materials (SBOM) report.


=head2 _request_id => Str


=cut

