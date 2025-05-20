
package Paws::MemoryDB::CopySnapshot;
  use Moose;
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has SourceSnapshotName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::Tag]');
  has TargetBucket => (is => 'ro', isa => 'Str');
  has TargetSnapshotName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopySnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::CopySnapshotResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::CopySnapshot - Arguments for method CopySnapshot on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopySnapshot on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method CopySnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopySnapshot.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $CopySnapshotResponse = $memory -db->CopySnapshot(
      SourceSnapshotName => 'MyString',
      TargetSnapshotName => 'MyString',
      KmsKeyId           => 'MyKmsKeyId',    # OPTIONAL
      Tags               => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                     # OPTIONAL
      TargetBucket => 'MyTargetBucket',      # OPTIONAL
    );

    # Results:
    my $Snapshot = $CopySnapshotResponse->Snapshot;

    # Returns a L<Paws::MemoryDB::CopySnapshotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/CopySnapshot>

=head1 ATTRIBUTES


=head2 KmsKeyId => Str

The ID of the KMS key used to encrypt the target snapshot.



=head2 B<REQUIRED> SourceSnapshotName => Str

The name of an existing snapshot from which to make a copy.



=head2 Tags => ArrayRef[L<Paws::MemoryDB::Tag>]

A list of tags to be added to this resource. A tag is a key-value pair.
A tag key must be accompanied by a tag value, although null is
accepted.



=head2 TargetBucket => Str

The Amazon S3 bucket to which the snapshot is exported. This parameter
is used only when exporting a snapshot for external access. When using
this parameter to export a snapshot, be sure MemoryDB has the needed
permissions to this S3 bucket. For more information, see Step 2: Grant
MemoryDB Access to Your Amazon S3 Bucket
(https://docs.aws.amazon.com/MemoryDB/latest/devguide/snapshots-exporting.html).



=head2 B<REQUIRED> TargetSnapshotName => Str

A name for the snapshot copy. MemoryDB does not permit overwriting a
snapshot, therefore this name must be unique within its context -
MemoryDB or an Amazon S3 bucket if exporting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopySnapshot in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

