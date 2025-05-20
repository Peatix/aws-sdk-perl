
package Paws::MemoryDB::UpdateMultiRegionCluster;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has MultiRegionClusterName => (is => 'ro', isa => 'Str', required => 1);
  has MultiRegionParameterGroupName => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
  has ShardConfiguration => (is => 'ro', isa => 'Paws::MemoryDB::ShardConfigurationRequest');
  has UpdateStrategy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMultiRegionCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::UpdateMultiRegionClusterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::UpdateMultiRegionCluster - Arguments for method UpdateMultiRegionCluster on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMultiRegionCluster on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method UpdateMultiRegionCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMultiRegionCluster.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $UpdateMultiRegionClusterResponse =
      $memory -db->UpdateMultiRegionCluster(
      MultiRegionClusterName        => 'MyString',
      Description                   => 'MyString',    # OPTIONAL
      EngineVersion                 => 'MyString',    # OPTIONAL
      MultiRegionParameterGroupName => 'MyString',    # OPTIONAL
      NodeType                      => 'MyString',    # OPTIONAL
      ShardConfiguration            => {
        ShardCount => 1,                              # OPTIONAL
      },    # OPTIONAL
      UpdateStrategy => 'coordinated',    # OPTIONAL
      );

    # Results:
    my $MultiRegionCluster =
      $UpdateMultiRegionClusterResponse->MultiRegionCluster;

    # Returns a L<Paws::MemoryDB::UpdateMultiRegionClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/UpdateMultiRegionCluster>

=head1 ATTRIBUTES


=head2 Description => Str

A new description for the multi-Region cluster.



=head2 EngineVersion => Str

The new engine version to be used for the multi-Region cluster.



=head2 B<REQUIRED> MultiRegionClusterName => Str

The name of the multi-Region cluster to be updated.



=head2 MultiRegionParameterGroupName => Str

The new multi-Region parameter group to be associated with the cluster.



=head2 NodeType => Str

The new node type to be used for the multi-Region cluster.



=head2 ShardConfiguration => L<Paws::MemoryDB::ShardConfigurationRequest>





=head2 UpdateStrategy => Str

The strategy to use for the update operation. Supported values are
"coordinated" or "uncoordinated".

Valid values are: C<"coordinated">, C<"uncoordinated">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMultiRegionCluster in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

