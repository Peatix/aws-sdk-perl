
package Paws::Artifact::GetReportMetadataResponse;
  use Moose;
  has ReportDetails => (is => 'ro', isa => 'Paws::Artifact::ReportDetail', traits => ['NameInRequest'], request_name => 'reportDetails');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Artifact::GetReportMetadataResponse

=head1 ATTRIBUTES


=head2 ReportDetails => L<Paws::Artifact::ReportDetail>

Report resource detail.


=head2 _request_id => Str


=cut

