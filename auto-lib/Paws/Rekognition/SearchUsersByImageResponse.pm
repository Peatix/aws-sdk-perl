
package Paws::Rekognition::SearchUsersByImageResponse;
  use Moose;
  has FaceModelVersion => (is => 'ro', isa => 'Str');
  has SearchedFace => (is => 'ro', isa => 'Paws::Rekognition::SearchedFaceDetails');
  has UnsearchedFaces => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::UnsearchedFace]');
  has UserMatches => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::UserMatch]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::SearchUsersByImageResponse

=head1 ATTRIBUTES


=head2 FaceModelVersion => Str

Version number of the face detection model associated with the input
collection CollectionId.


=head2 SearchedFace => L<Paws::Rekognition::SearchedFaceDetails>

A list of FaceDetail objects containing the BoundingBox for the largest
face in image, as well as the confidence in the bounding box, that was
searched for matches. If no valid face is detected in the image the
response will contain no SearchedFace object.


=head2 UnsearchedFaces => ArrayRef[L<Paws::Rekognition::UnsearchedFace>]

List of UnsearchedFace objects. Contains the face details infered from
the specified image but not used for search. Contains reasons that
describe why a face wasn't used for Search.


=head2 UserMatches => ArrayRef[L<Paws::Rekognition::UserMatch>]

An array of UserID objects that matched the input face, along with the
confidence in the match. The returned structure will be empty if there
are no matches. Returned if the SearchUsersByImageResponse action is
successful.


=head2 _request_id => Str


=cut

1;