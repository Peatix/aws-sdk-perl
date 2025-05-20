
package Paws::Rekognition::DisassociateFacesResponse;
  use Moose;
  has DisassociatedFaces => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::DisassociatedFace]');
  has UnsuccessfulFaceDisassociations => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::UnsuccessfulFaceDisassociation]');
  has UserStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DisassociateFacesResponse

=head1 ATTRIBUTES


=head2 DisassociatedFaces => ArrayRef[L<Paws::Rekognition::DisassociatedFace>]

An array of DissociatedFace objects containing FaceIds that are
successfully disassociated with the UserID is returned. Returned if the
DisassociatedFaces action is successful.


=head2 UnsuccessfulFaceDisassociations => ArrayRef[L<Paws::Rekognition::UnsuccessfulFaceDisassociation>]

An array of UnsuccessfulDisassociation objects containing FaceIds that
are not successfully associated, along with the reasons for the failure
to associate. Returned if the DisassociateFaces action is successful.


=head2 UserStatus => Str

The status of an update made to a User. Reflects if the User has been
updated for every requested change.

Valid values are: C<"ACTIVE">, C<"UPDATING">, C<"CREATING">, C<"CREATED">
=head2 _request_id => Str


=cut

1;