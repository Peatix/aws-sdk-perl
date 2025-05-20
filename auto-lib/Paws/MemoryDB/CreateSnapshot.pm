
package Paws::MemoryDB::CreateSnapshot;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has SnapshotName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::CreateSnapshotResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::CreateSnapshot - Arguments for method CreateSnapshot on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSnapshot on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method CreateSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSnapshot.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $CreateSnapshotResponse = $memory -db->CreateSnapshot(
      ClusterName  => 'MyString',
      SnapshotName => 'MyString',
      KmsKeyId     => 'MyString',    # OPTIONAL
      Tags         => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                             # OPTIONAL
    );

    # Results:
    my $Snapshot = $CreateSnapshotResponse->Snapshot;

    # Returns a L<Paws::MemoryDB::CreateSnapshotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/CreateSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The snapshot is created from this cluster.



=head2 KmsKeyId => Str

The ID of the KMS key used to encrypt the snapshot.



=head2 B<REQUIRED> SnapshotName => Str

A name for the snapshot being created.



=head2 Tags => ArrayRef[L<Paws::MemoryDB::Tag>]

A list of tags to be added to this resource. A tag is a key-value pair.
A tag key must be accompanied by a tag value, although null is
accepted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSnapshot in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

