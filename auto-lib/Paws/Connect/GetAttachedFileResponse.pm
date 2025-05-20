
package Paws::Connect::GetAttachedFileResponse;
  use Moose;
  has AssociatedResourceArn => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Paws::Connect::CreatedByInfo');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DownloadUrlMetadata => (is => 'ro', isa => 'Paws::Connect::DownloadUrlMetadata');
  has FileArn => (is => 'ro', isa => 'Str');
  has FileId => (is => 'ro', isa => 'Str');
  has FileName => (is => 'ro', isa => 'Str');
  has FileSizeInBytes => (is => 'ro', isa => 'Int', required => 1);
  has FileStatus => (is => 'ro', isa => 'Str');
  has FileUseCaseType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetAttachedFileResponse

=head1 ATTRIBUTES


=head2 AssociatedResourceArn => Str

The resource to which the attached file is (being) uploaded to. Cases
(https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateCase.html)
are the only current supported resource.


=head2 CreatedBy => L<Paws::Connect::CreatedByInfo>

Represents the identity that created the file.


=head2 CreationTime => Str

The time of Creation of the file resource as an ISO timestamp. It's
specified in ISO 8601 format: C<yyyy-MM-ddThh:mm:ss.SSSZ>. For example,
C<2024-05-03T02:41:28.172Z>.


=head2 DownloadUrlMetadata => L<Paws::Connect::DownloadUrlMetadata>

URL and expiry to be used when downloading the attached file.


=head2 FileArn => Str

The unique identifier of the attached file resource (ARN).


=head2 FileId => Str

The unique identifier of the attached file resource.


=head2 FileName => Str

A case-sensitive name of the attached file being uploaded.


=head2 B<REQUIRED> FileSizeInBytes => Int

The size of the attached file in bytes.


=head2 FileStatus => Str

The current status of the attached file.

Valid values are: C<"APPROVED">, C<"REJECTED">, C<"PROCESSING">, C<"FAILED">
=head2 FileUseCaseType => Str

The use case for the file.

Valid values are: C<"EMAIL_MESSAGE">, C<"ATTACHMENT">
=head2 Tags => L<Paws::Connect::TagMap>

The tags used to organize, track, or control access for this resource.
For example, C<{ "Tags": {"key1":"value1", "key2":"value2"} }>.


=head2 _request_id => Str


=cut

