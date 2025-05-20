
package Paws::MemoryDB::CreateMultiRegionCluster;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has MultiRegionClusterNameSuffix => (is => 'ro', isa => 'Str', required => 1);
  has MultiRegionParameterGroupName => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str', required => 1);
  has NumShards => (is => 'ro', isa => 'Int');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::Tag]');
  has TLSEnabled => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMultiRegionCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::CreateMultiRegionClusterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::CreateMultiRegionCluster - Arguments for method CreateMultiRegionCluster on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMultiRegionCluster on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method CreateMultiRegionCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMultiRegionCluster.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $CreateMultiRegionClusterResponse =
      $memory -db->CreateMultiRegionCluster(
      MultiRegionClusterNameSuffix  => 'MyString',
      NodeType                      => 'MyString',
      Description                   => 'MyString',    # OPTIONAL
      Engine                        => 'MyString',    # OPTIONAL
      EngineVersion                 => 'MyString',    # OPTIONAL
      MultiRegionParameterGroupName => 'MyString',    # OPTIONAL
      NumShards                     => 1,             # OPTIONAL
      TLSEnabled                    => 1,             # OPTIONAL
      Tags                          => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                              # OPTIONAL
      );

    # Results:
    my $MultiRegionCluster =
      $CreateMultiRegionClusterResponse->MultiRegionCluster;

    # Returns a L<Paws::MemoryDB::CreateMultiRegionClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/CreateMultiRegionCluster>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the multi-Region cluster.



=head2 Engine => Str

The name of the engine to be used for the multi-Region cluster.



=head2 EngineVersion => Str

The version of the engine to be used for the multi-Region cluster.



=head2 B<REQUIRED> MultiRegionClusterNameSuffix => Str

A suffix to be added to the Multi-Region cluster name. Amazon MemoryDB
automatically applies a prefix to the Multi-Region cluster Name when it
is created. Each Amazon Region has its own prefix. For instance, a
Multi-Region cluster Name created in the US-West-1 region will begin
with "virxk", along with the suffix name you provide. The suffix
guarantees uniqueness of the Multi-Region cluster name across multiple
regions.



=head2 MultiRegionParameterGroupName => Str

The name of the multi-Region parameter group to be associated with the
cluster.



=head2 B<REQUIRED> NodeType => Str

The node type to be used for the multi-Region cluster.



=head2 NumShards => Int

The number of shards for the multi-Region cluster.



=head2 Tags => ArrayRef[L<Paws::MemoryDB::Tag>]

A list of tags to be applied to the multi-Region cluster.



=head2 TLSEnabled => Bool

Whether to enable TLS encryption for the multi-Region cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMultiRegionCluster in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

