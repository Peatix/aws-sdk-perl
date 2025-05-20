
package Paws::FSX::RestoreVolumeFromSnapshot;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreVolumeFromSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::RestoreVolumeFromSnapshotResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::RestoreVolumeFromSnapshot - Arguments for method RestoreVolumeFromSnapshot on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreVolumeFromSnapshot on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method RestoreVolumeFromSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreVolumeFromSnapshot.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $RestoreVolumeFromSnapshotResponse = $fsx->RestoreVolumeFromSnapshot(
      SnapshotId         => 'MySnapshotId',
      VolumeId           => 'MyVolumeId',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Options            => [
        'DELETE_INTERMEDIATE_SNAPSHOTS',
        ...    # values: DELETE_INTERMEDIATE_SNAPSHOTS, DELETE_CLONED_VOLUMES
      ],    # OPTIONAL
    );

    # Results:
    my $AdministrativeActions =
      $RestoreVolumeFromSnapshotResponse->AdministrativeActions;
    my $Lifecycle = $RestoreVolumeFromSnapshotResponse->Lifecycle;
    my $VolumeId  = $RestoreVolumeFromSnapshotResponse->VolumeId;

    # Returns a L<Paws::FSX::RestoreVolumeFromSnapshotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/RestoreVolumeFromSnapshot>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str





=head2 Options => ArrayRef[Str|Undef]

The settings used when restoring the specified volume from snapshot.

=over

=item *

C<DELETE_INTERMEDIATE_SNAPSHOTS> - Deletes snapshots between the
current state and the specified snapshot. If there are intermediate
snapshots and this option isn't used, C<RestoreVolumeFromSnapshot>
fails.

=item *

C<DELETE_CLONED_VOLUMES> - Deletes any dependent clone volumes created
from intermediate snapshots. If there are any dependent clone volumes
and this option isn't used, C<RestoreVolumeFromSnapshot> fails.

=back




=head2 B<REQUIRED> SnapshotId => Str

The ID of the source snapshot. Specifies the snapshot that you are
restoring from.



=head2 B<REQUIRED> VolumeId => Str

The ID of the volume that you are restoring.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreVolumeFromSnapshot in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

