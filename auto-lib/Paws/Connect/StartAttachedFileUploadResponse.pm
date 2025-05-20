
package Paws::Connect::StartAttachedFileUploadResponse;
  use Moose;
  has CreatedBy => (is => 'ro', isa => 'Paws::Connect::CreatedByInfo');
  has CreationTime => (is => 'ro', isa => 'Str');
  has FileArn => (is => 'ro', isa => 'Str');
  has FileId => (is => 'ro', isa => 'Str');
  has FileStatus => (is => 'ro', isa => 'Str');
  has UploadUrlMetadata => (is => 'ro', isa => 'Paws::Connect::UploadUrlMetadata');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::StartAttachedFileUploadResponse

=head1 ATTRIBUTES


=head2 CreatedBy => L<Paws::Connect::CreatedByInfo>

Represents the identity that created the file.


=head2 CreationTime => Str

The time of Creation of the file resource as an ISO timestamp. It's
specified in ISO 8601 format: C<yyyy-MM-ddThh:mm:ss.SSSZ>. For example,
C<2024-05-03T02:41:28.172Z>.


=head2 FileArn => Str

The unique identifier of the attached file resource (ARN).


=head2 FileId => Str

The unique identifier of the attached file resource.


=head2 FileStatus => Str

The current status of the attached file.

Valid values are: C<"APPROVED">, C<"REJECTED">, C<"PROCESSING">, C<"FAILED">
=head2 UploadUrlMetadata => L<Paws::Connect::UploadUrlMetadata>

The headers to be provided while uploading the file to the URL.


=head2 _request_id => Str


=cut

