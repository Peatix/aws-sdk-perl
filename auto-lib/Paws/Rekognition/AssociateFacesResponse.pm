
package Paws::Rekognition::AssociateFacesResponse;
  use Moose;
  has AssociatedFaces => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::AssociatedFace]');
  has UnsuccessfulFaceAssociations => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::UnsuccessfulFaceAssociation]');
  has UserStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::AssociateFacesResponse

=head1 ATTRIBUTES


=head2 AssociatedFaces => ArrayRef[L<Paws::Rekognition::AssociatedFace>]

An array of AssociatedFace objects containing FaceIDs that have been
successfully associated with the UserID. Returned if the AssociateFaces
action is successful.


=head2 UnsuccessfulFaceAssociations => ArrayRef[L<Paws::Rekognition::UnsuccessfulFaceAssociation>]

An array of UnsuccessfulAssociation objects containing FaceIDs that are
not successfully associated along with the reasons. Returned if the
AssociateFaces action is successful.


=head2 UserStatus => Str

The status of an update made to a UserID. Reflects if the UserID has
been updated for every requested change.

Valid values are: C<"ACTIVE">, C<"UPDATING">, C<"CREATING">, C<"CREATED">
=head2 _request_id => Str


=cut

1;