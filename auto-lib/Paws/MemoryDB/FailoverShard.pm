
package Paws::MemoryDB::FailoverShard;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', required => 1);
  has ShardName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'FailoverShard');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::FailoverShardResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::FailoverShard - Arguments for method FailoverShard on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method FailoverShard on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method FailoverShard.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to FailoverShard.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $FailoverShardResponse = $memory -db->FailoverShard(
      ClusterName => 'MyString',
      ShardName   => 'MyString',

    );

    # Results:
    my $Cluster = $FailoverShardResponse->Cluster;

    # Returns a L<Paws::MemoryDB::FailoverShardResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/FailoverShard>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The cluster being failed over.



=head2 B<REQUIRED> ShardName => Str

The name of the shard.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method FailoverShard in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

