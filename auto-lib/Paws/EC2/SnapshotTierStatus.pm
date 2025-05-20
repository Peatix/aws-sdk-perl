package Paws::EC2::SnapshotTierStatus;
  use Moose;
  has ArchivalCompleteTime => (is => 'ro', isa => 'Str', request_name => 'archivalCompleteTime', traits => ['NameInRequest']);
  has LastTieringOperationStatus => (is => 'ro', isa => 'Str', request_name => 'lastTieringOperationStatus', traits => ['NameInRequest']);
  has LastTieringOperationStatusDetail => (is => 'ro', isa => 'Str', request_name => 'lastTieringOperationStatusDetail', traits => ['NameInRequest']);
  has LastTieringProgress => (is => 'ro', isa => 'Int', request_name => 'lastTieringProgress', traits => ['NameInRequest']);
  has LastTieringStartTime => (is => 'ro', isa => 'Str', request_name => 'lastTieringStartTime', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has RestoreExpiryTime => (is => 'ro', isa => 'Str', request_name => 'restoreExpiryTime', traits => ['NameInRequest']);
  has SnapshotId => (is => 'ro', isa => 'Str', request_name => 'snapshotId', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StorageTier => (is => 'ro', isa => 'Str', request_name => 'storageTier', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has VolumeId => (is => 'ro', isa => 'Str', request_name => 'volumeId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SnapshotTierStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SnapshotTierStatus object:

  $service_obj->Method(Att1 => { ArchivalCompleteTime => $value, ..., VolumeId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SnapshotTierStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->ArchivalCompleteTime

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ArchivalCompleteTime => Str

The date and time when the last archive process was completed.


=head2 LastTieringOperationStatus => Str

The status of the last archive or restore process.


=head2 LastTieringOperationStatusDetail => Str

A message describing the status of the last archive or restore process.


=head2 LastTieringProgress => Int

The progress of the last archive or restore process, as a percentage.


=head2 LastTieringStartTime => Str

The date and time when the last archive or restore process was started.


=head2 OwnerId => Str

The ID of the Amazon Web Services account that owns the snapshot.


=head2 RestoreExpiryTime => Str

Only for archived snapshots that are temporarily restored. Indicates
the date and time when a temporarily restored snapshot will be
automatically re-archived.


=head2 SnapshotId => Str

The ID of the snapshot.


=head2 Status => Str

The state of the snapshot.


=head2 StorageTier => Str

The storage tier in which the snapshot is stored. C<standard> indicates
that the snapshot is stored in the standard snapshot storage tier and
that it is ready for use. C<archive> indicates that the snapshot is
currently archived and that it must be restored before it can be used.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags that are assigned to the snapshot.


=head2 VolumeId => Str

The ID of the volume from which the snapshot was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
