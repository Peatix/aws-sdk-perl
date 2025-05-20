
package Paws::FSX::DeleteVolumeResponse;
  use Moose;
  has Lifecycle => (is => 'ro', isa => 'Str');
  has OntapResponse => (is => 'ro', isa => 'Paws::FSX::DeleteVolumeOntapResponse');
  has VolumeId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DeleteVolumeResponse

=head1 ATTRIBUTES


=head2 Lifecycle => Str

The lifecycle state of the volume being deleted. If the C<DeleteVolume>
operation is successful, this value is C<DELETING>.

Valid values are: C<"CREATING">, C<"CREATED">, C<"DELETING">, C<"FAILED">, C<"MISCONFIGURED">, C<"PENDING">, C<"AVAILABLE">
=head2 OntapResponse => L<Paws::FSX::DeleteVolumeOntapResponse>

Returned after a C<DeleteVolume> request, showing the status of the
delete request.


=head2 VolumeId => Str

The ID of the volume that's being deleted.


=head2 _request_id => Str


=cut

1;