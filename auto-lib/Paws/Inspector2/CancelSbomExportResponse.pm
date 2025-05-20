
package Paws::Inspector2::CancelSbomExportResponse;
  use Moose;
  has ReportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::CancelSbomExportResponse

=head1 ATTRIBUTES


=head2 ReportId => Str

The report ID of the canceled SBOM export.


=head2 _request_id => Str


=cut

