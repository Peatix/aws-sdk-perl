
package Paws::CustomerProfiles::DetectProfileObjectTypeResponse;
  use Moose;
  has DetectedProfileObjectTypes => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::DetectedProfileObjectType]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::DetectProfileObjectTypeResponse

=head1 ATTRIBUTES


=head2 DetectedProfileObjectTypes => ArrayRef[L<Paws::CustomerProfiles::DetectedProfileObjectType>]

Detected C<ProfileObjectType> mappings from given objects. A maximum of
one mapping is supported.


=head2 _request_id => Str


=cut

