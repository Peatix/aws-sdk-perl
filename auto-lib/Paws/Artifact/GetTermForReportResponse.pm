
package Paws::Artifact::GetTermForReportResponse;
  use Moose;
  has DocumentPresignedUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'documentPresignedUrl');
  has TermToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'termToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Artifact::GetTermForReportResponse

=head1 ATTRIBUTES


=head2 DocumentPresignedUrl => Str

Presigned S3 url to access the term content.


=head2 TermToken => Str

Unique token representing this request event.


=head2 _request_id => Str


=cut

