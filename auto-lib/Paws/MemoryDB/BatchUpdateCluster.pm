
package Paws::MemoryDB::BatchUpdateCluster;
  use Moose;
  has ClusterNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has ServiceUpdate => (is => 'ro', isa => 'Paws::MemoryDB::ServiceUpdateRequest');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchUpdateCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::BatchUpdateClusterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::BatchUpdateCluster - Arguments for method BatchUpdateCluster on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchUpdateCluster on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method BatchUpdateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchUpdateCluster.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $BatchUpdateClusterResponse = $memory -db->BatchUpdateCluster(
      ClusterNames  => [ 'MyString', ... ],
      ServiceUpdate => { ServiceUpdateNameToApply => 'MyString', },   # OPTIONAL
    );

    # Results:
    my $ProcessedClusters   = $BatchUpdateClusterResponse->ProcessedClusters;
    my $UnprocessedClusters = $BatchUpdateClusterResponse->UnprocessedClusters;

    # Returns a L<Paws::MemoryDB::BatchUpdateClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/BatchUpdateCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterNames => ArrayRef[Str|Undef]

The cluster names to apply the updates.



=head2 ServiceUpdate => L<Paws::MemoryDB::ServiceUpdateRequest>

The unique ID of the service update




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchUpdateCluster in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

