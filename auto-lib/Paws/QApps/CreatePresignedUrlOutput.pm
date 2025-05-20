
package Paws::QApps::CreatePresignedUrlOutput;
  use Moose;
  has FileId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileId', required => 1);
  has PresignedUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'presignedUrl', required => 1);
  has PresignedUrlExpiration => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'presignedUrlExpiration', required => 1);
  has PresignedUrlFields => (is => 'ro', isa => 'Paws::QApps::PresignedUrlFields', traits => ['NameInRequest'], request_name => 'presignedUrlFields', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::CreatePresignedUrlOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileId => Str

The unique identifier assigned to the file to be uploaded.


=head2 B<REQUIRED> PresignedUrl => Str

The URL for a presigned S3 POST operation used to upload a file.


=head2 B<REQUIRED> PresignedUrlExpiration => Str

The date and time that the presigned URL will expire in ISO 8601
format.


=head2 B<REQUIRED> PresignedUrlFields => L<Paws::QApps::PresignedUrlFields>

The form fields to include in the presigned S3 POST operation used to
upload a file.


=head2 _request_id => Str


=cut

