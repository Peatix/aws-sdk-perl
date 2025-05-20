
package Paws::Artifact::GetReportResponse;
  use Moose;
  has DocumentPresignedUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'documentPresignedUrl');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Artifact::GetReportResponse

=head1 ATTRIBUTES


=head2 DocumentPresignedUrl => Str

Presigned S3 url to access the report content.


=head2 _request_id => Str


=cut

