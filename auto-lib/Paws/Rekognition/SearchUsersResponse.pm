
package Paws::Rekognition::SearchUsersResponse;
  use Moose;
  has FaceModelVersion => (is => 'ro', isa => 'Str');
  has SearchedFace => (is => 'ro', isa => 'Paws::Rekognition::SearchedFace');
  has SearchedUser => (is => 'ro', isa => 'Paws::Rekognition::SearchedUser');
  has UserMatches => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::UserMatch]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::SearchUsersResponse

=head1 ATTRIBUTES


=head2 FaceModelVersion => Str

Version number of the face detection model associated with the input
CollectionId.


=head2 SearchedFace => L<Paws::Rekognition::SearchedFace>

Contains the ID of a face that was used to search for matches in a
collection.


=head2 SearchedUser => L<Paws::Rekognition::SearchedUser>

Contains the ID of the UserID that was used to search for matches in a
collection.


=head2 UserMatches => ArrayRef[L<Paws::Rekognition::UserMatch>]

An array of UserMatch objects that matched the input face along with
the confidence in the match. Array will be empty if there are no
matches.


=head2 _request_id => Str


=cut

1;