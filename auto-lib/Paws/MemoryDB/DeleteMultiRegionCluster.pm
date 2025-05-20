
package Paws::MemoryDB::DeleteMultiRegionCluster;
  use Moose;
  has MultiRegionClusterName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMultiRegionCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::DeleteMultiRegionClusterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::DeleteMultiRegionCluster - Arguments for method DeleteMultiRegionCluster on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMultiRegionCluster on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method DeleteMultiRegionCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMultiRegionCluster.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $DeleteMultiRegionClusterResponse =
      $memory -db->DeleteMultiRegionCluster(
      MultiRegionClusterName => 'MyString',

      );

    # Results:
    my $MultiRegionCluster =
      $DeleteMultiRegionClusterResponse->MultiRegionCluster;

    # Returns a L<Paws::MemoryDB::DeleteMultiRegionClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/DeleteMultiRegionCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MultiRegionClusterName => Str

The name of the multi-Region cluster to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMultiRegionCluster in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

