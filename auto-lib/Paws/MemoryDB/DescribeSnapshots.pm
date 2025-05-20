
package Paws::MemoryDB::DescribeSnapshots;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ShowDetail => (is => 'ro', isa => 'Bool');
  has SnapshotName => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::DescribeSnapshotsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::DescribeSnapshots - Arguments for method DescribeSnapshots on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSnapshots on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method DescribeSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSnapshots.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $DescribeSnapshotsResponse = $memory -db->DescribeSnapshots(
      ClusterName  => 'MyString',    # OPTIONAL
      MaxResults   => 1,             # OPTIONAL
      NextToken    => 'MyString',    # OPTIONAL
      ShowDetail   => 1,             # OPTIONAL
      SnapshotName => 'MyString',    # OPTIONAL
      Source       => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeSnapshotsResponse->NextToken;
    my $Snapshots = $DescribeSnapshotsResponse->Snapshots;

    # Returns a L<Paws::MemoryDB::DescribeSnapshotsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/DescribeSnapshots>

=head1 ATTRIBUTES


=head2 ClusterName => Str

A user-supplied cluster identifier. If this parameter is specified,
only snapshots associated with that specific cluster are described.



=head2 MaxResults => Int

The maximum number of records to include in the response. If more
records exist than the specified MaxResults value, a token is included
in the response so that the remaining results can be retrieved.



=head2 NextToken => Str

An optional argument to pass in case the total number of records
exceeds the value of MaxResults. If nextToken is returned, there are
more results available. The value of nextToken is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.



=head2 ShowDetail => Bool

A Boolean value which if true, the shard configuration is included in
the snapshot description.



=head2 SnapshotName => Str

A user-supplied name of the snapshot. If this parameter is specified,
only this named snapshot is described.



=head2 Source => Str

If set to system, the output shows snapshots that were automatically
created by MemoryDB. If set to user the output shows snapshots that
were manually created. If omitted, the output shows both automatically
and manually created snapshots.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSnapshots in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

