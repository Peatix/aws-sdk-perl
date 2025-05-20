
package Paws::Rekognition::DeleteFacesResponse;
  use Moose;
  has DeletedFaces => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has UnsuccessfulFaceDeletions => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::UnsuccessfulFaceDeletion]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DeleteFacesResponse

=head1 ATTRIBUTES


=head2 DeletedFaces => ArrayRef[Str|Undef]

An array of strings (face IDs) of the faces that were deleted.


=head2 UnsuccessfulFaceDeletions => ArrayRef[L<Paws::Rekognition::UnsuccessfulFaceDeletion>]

An array of any faces that weren't deleted.


=head2 _request_id => Str


=cut

1;