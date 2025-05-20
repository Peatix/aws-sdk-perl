
package Paws::FSX::CopySnapshotAndUpdateVolume;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has CopyStrategy => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SourceSnapshotARN => (is => 'ro', isa => 'Str', required => 1);
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopySnapshotAndUpdateVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::CopySnapshotAndUpdateVolumeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CopySnapshotAndUpdateVolume - Arguments for method CopySnapshotAndUpdateVolume on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopySnapshotAndUpdateVolume on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method CopySnapshotAndUpdateVolume.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopySnapshotAndUpdateVolume.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $CopySnapshotAndUpdateVolumeResponse = $fsx->CopySnapshotAndUpdateVolume(
      SourceSnapshotARN  => 'MyResourceARN',
      VolumeId           => 'MyVolumeId',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      CopyStrategy       => 'CLONE',                   # OPTIONAL
      Options            => [
        'DELETE_INTERMEDIATE_SNAPSHOTS',
        ... # values: DELETE_INTERMEDIATE_SNAPSHOTS, DELETE_CLONED_VOLUMES, DELETE_INTERMEDIATE_DATA
      ],    # OPTIONAL
    );

    # Results:
    my $AdministrativeActions =
      $CopySnapshotAndUpdateVolumeResponse->AdministrativeActions;
    my $Lifecycle = $CopySnapshotAndUpdateVolumeResponse->Lifecycle;
    my $VolumeId  = $CopySnapshotAndUpdateVolumeResponse->VolumeId;

    # Returns a L<Paws::FSX::CopySnapshotAndUpdateVolumeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/CopySnapshotAndUpdateVolume>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str





=head2 CopyStrategy => Str

Specifies the strategy to use when copying data from a snapshot to the
volume.

=over

=item *

C<FULL_COPY> - Copies all data from the snapshot to the volume.

=item *

C<INCREMENTAL_COPY> - Copies only the snapshot data that's changed
since the previous replication.

=back

C<CLONE> isn't a valid copy strategy option for the
C<CopySnapshotAndUpdateVolume> operation.

Valid values are: C<"CLONE">, C<"FULL_COPY">, C<"INCREMENTAL_COPY">

=head2 Options => ArrayRef[Str|Undef]

Confirms that you want to delete data on the destination volume that
wasnE<rsquo>t there during the previous snapshot replication.

Your replication will fail if you donE<rsquo>t include an option for a
specific type of data and that data is on your destination. For
example, if you donE<rsquo>t include C<DELETE_INTERMEDIATE_SNAPSHOTS>
and there are intermediate snapshots on the destination, you
canE<rsquo>t copy the snapshot.

=over

=item *

C<DELETE_INTERMEDIATE_SNAPSHOTS> - Deletes snapshots on the destination
volume that arenE<rsquo>t on the source volume.

=item *

C<DELETE_CLONED_VOLUMES> - Deletes snapshot clones on the destination
volume that aren't on the source volume.

=item *

C<DELETE_INTERMEDIATE_DATA> - Overwrites snapshots on the destination
volume that donE<rsquo>t match the source snapshot that youE<rsquo>re
copying.

=back




=head2 B<REQUIRED> SourceSnapshotARN => Str





=head2 B<REQUIRED> VolumeId => Str

Specifies the ID of the volume that you are copying the snapshot to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopySnapshotAndUpdateVolume in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

