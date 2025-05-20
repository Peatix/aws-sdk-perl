
package Paws::EC2::StartDeclarativePoliciesReportResult;
  use Moose;
  has ReportId => (is => 'ro', isa => 'Str', request_name => 'reportId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::StartDeclarativePoliciesReportResult

=head1 ATTRIBUTES


=head2 ReportId => Str

The ID of the report.


=head2 _request_id => Str


=cut

