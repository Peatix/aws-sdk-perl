
package Paws::Inspector2::CreateFindingsReportResponse;
  use Moose;
  has ReportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::CreateFindingsReportResponse

=head1 ATTRIBUTES


=head2 ReportId => Str

The ID of the report.


=head2 _request_id => Str


=cut

