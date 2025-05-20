
package Paws::FSX::CopySnapshotAndUpdateVolumeResponse;
  use Moose;
  has AdministrativeActions => (is => 'ro', isa => 'ArrayRef[Paws::FSX::AdministrativeAction]');
  has Lifecycle => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CopySnapshotAndUpdateVolumeResponse

=head1 ATTRIBUTES


=head2 AdministrativeActions => ArrayRef[L<Paws::FSX::AdministrativeAction>]

A list of administrative actions for the file system that are in
process or waiting to be processed. Administrative actions describe
changes to the Amazon FSx system.


=head2 Lifecycle => Str

The lifecycle state of the destination volume.

Valid values are: C<"CREATING">, C<"CREATED">, C<"DELETING">, C<"FAILED">, C<"MISCONFIGURED">, C<"PENDING">, C<"AVAILABLE">
=head2 VolumeId => Str

The ID of the volume that you copied the snapshot to.


=head2 _request_id => Str


=cut

1;