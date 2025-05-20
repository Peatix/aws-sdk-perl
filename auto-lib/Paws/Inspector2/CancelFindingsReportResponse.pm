
package Paws::Inspector2::CancelFindingsReportResponse;
  use Moose;
  has ReportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::CancelFindingsReportResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReportId => Str

The ID of the canceled report.


=head2 _request_id => Str


=cut

