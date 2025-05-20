
package Paws::Rekognition::GetContentModerationResponse;
  use Moose;
  has GetRequestMetadata => (is => 'ro', isa => 'Paws::Rekognition::GetContentModerationRequestMetadata');
  has JobId => (is => 'ro', isa => 'Str');
  has JobStatus => (is => 'ro', isa => 'Str');
  has JobTag => (is => 'ro', isa => 'Str');
  has ModerationLabels => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::ContentModerationDetection]');
  has ModerationModelVersion => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has Video => (is => 'ro', isa => 'Paws::Rekognition::Video');
  has VideoMetadata => (is => 'ro', isa => 'Paws::Rekognition::VideoMetadata');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetContentModerationResponse

=head1 ATTRIBUTES


=head2 GetRequestMetadata => L<Paws::Rekognition::GetContentModerationRequestMetadata>

Information about the paramters used when getting a response. Includes
information on aggregation and sorting methods.


=head2 JobId => Str

Job identifier for the content moderation operation for which you want
to obtain results. The job identifer is returned by an initial call to
StartContentModeration.


=head2 JobStatus => Str

The current status of the content moderation analysis job.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 JobTag => Str

A job identifier specified in the call to StartContentModeration and
returned in the job completion notification sent to your Amazon Simple
Notification Service topic.


=head2 ModerationLabels => ArrayRef[L<Paws::Rekognition::ContentModerationDetection>]

The detected inappropriate, unwanted, or offensive content moderation
labels and the time(s) they were detected.


=head2 ModerationModelVersion => Str

Version number of the moderation detection model that was used to
detect inappropriate, unwanted, or offensive content.


=head2 NextToken => Str

If the response is truncated, Amazon Rekognition Video returns this
token that you can use in the subsequent request to retrieve the next
set of content moderation labels.


=head2 StatusMessage => Str

If the job fails, C<StatusMessage> provides a descriptive error
message.


=head2 Video => L<Paws::Rekognition::Video>




=head2 VideoMetadata => L<Paws::Rekognition::VideoMetadata>

Information about a video that Amazon Rekognition analyzed.
C<Videometadata> is returned in every page of paginated responses from
C<GetContentModeration>.


=head2 _request_id => Str


=cut

1;