
package Paws::CustomerProfiles::GetSegmentSnapshotResponse;
  use Moose;
  has DataFormat => (is => 'ro', isa => 'Str', required => 1);
  has DestinationUri => (is => 'ro', isa => 'Str');
  has EncryptionKey => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetSegmentSnapshotResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataFormat => Str

The format in which the segment will be exported.

Valid values are: C<"CSV">, C<"JSONL">, C<"ORC">
=head2 DestinationUri => Str

The destination to which the segment will be exported. This field must
be provided if the request is not submitted from the Amazon Connect
Admin Website.


=head2 EncryptionKey => Str

The Amazon Resource Name (ARN) of the KMS key used to encrypt the
exported segment.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that allows Customer
Profiles service principal to assume the role for conducting KMS and S3
operations.


=head2 B<REQUIRED> SnapshotId => Str

The unique identifier of the segment snapshot.


=head2 B<REQUIRED> Status => Str

The status of the asynchronous job for exporting the segment snapshot.

Valid values are: C<"COMPLETED">, C<"IN_PROGRESS">, C<"FAILED">
=head2 StatusMessage => Str

The status message of the asynchronous job for exporting the segment
snapshot.


=head2 _request_id => Str


=cut

