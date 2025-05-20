
package Paws::AuditManager::GetEvidenceFileUploadUrlResponse;
  use Moose;
  has EvidenceFileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'evidenceFileName');
  has UploadUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uploadUrl');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetEvidenceFileUploadUrlResponse

=head1 ATTRIBUTES


=head2 EvidenceFileName => Str

The name of the uploaded manual evidence file that the presigned URL
was generated for.


=head2 UploadUrl => Str

The presigned URL that was generated.


=head2 _request_id => Str


=cut

