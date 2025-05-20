
package Paws::Rekognition::GetFaceLivenessSessionResultsResponse;
  use Moose;
  has AuditImages => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::AuditImage]');
  has Confidence => (is => 'ro', isa => 'Num');
  has ReferenceImage => (is => 'ro', isa => 'Paws::Rekognition::AuditImage');
  has SessionId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetFaceLivenessSessionResultsResponse

=head1 ATTRIBUTES


=head2 AuditImages => ArrayRef[L<Paws::Rekognition::AuditImage>]

A set of images from the Face Liveness video that can be used for audit
purposes. It includes a bounding box of the face and the Base64-encoded
bytes that return an image. If the CreateFaceLivenessSession request
included an OutputConfig argument, the image will be uploaded to an
S3Object specified in the output configuration. If no Amazon S3 bucket
is defined, raw bytes are sent instead.


=head2 Confidence => Num

Probabalistic confidence score for if the person in the given video was
live, represented as a float value between 0 to 100.


=head2 ReferenceImage => L<Paws::Rekognition::AuditImage>

A high-quality image from the Face Liveness video that can be used for
face comparison or search. It includes a bounding box of the face and
the Base64-encoded bytes that return an image. If the
CreateFaceLivenessSession request included an OutputConfig argument,
the image will be uploaded to an S3Object specified in the output
configuration. In case the reference image is not returned, it's
recommended to retry the Liveness check.


=head2 B<REQUIRED> SessionId => Str

The sessionId for which this request was called.


=head2 B<REQUIRED> Status => Str

Represents a status corresponding to the state of the session. Possible
statuses are: CREATED, IN_PROGRESS, SUCCEEDED, FAILED, EXPIRED.

Valid values are: C<"CREATED">, C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">, C<"EXPIRED">
=head2 _request_id => Str


=cut

1;