
package Paws::FSX::UpdateVolumeResponse;
  use Moose;
  has Volume => (is => 'ro', isa => 'Paws::FSX::Volume');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::UpdateVolumeResponse

=head1 ATTRIBUTES


=head2 Volume => L<Paws::FSX::Volume>

A description of the volume just updated. Returned after a successful
C<UpdateVolume> API operation.


=head2 _request_id => Str


=cut

1;