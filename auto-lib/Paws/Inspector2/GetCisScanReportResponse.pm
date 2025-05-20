
package Paws::Inspector2::GetCisScanReportResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Url => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'url');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::GetCisScanReportResponse

=head1 ATTRIBUTES


=head2 Status => Str

The status.

Valid values are: C<"SUCCEEDED">, C<"FAILED">, C<"IN_PROGRESS">
=head2 Url => Str

The URL where a PDF or CSV of the CIS scan report can be downloaded.


=head2 _request_id => Str


=cut

