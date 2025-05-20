
package Paws::MemoryDB::ListAllowedNodeTypeUpdates;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAllowedNodeTypeUpdates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::ListAllowedNodeTypeUpdatesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::ListAllowedNodeTypeUpdates - Arguments for method ListAllowedNodeTypeUpdates on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAllowedNodeTypeUpdates on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method ListAllowedNodeTypeUpdates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAllowedNodeTypeUpdates.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $ListAllowedNodeTypeUpdatesResponse =
      $memory -db->ListAllowedNodeTypeUpdates(
      ClusterName => 'MyString',

      );

    # Results:
    my $ScaleDownNodeTypes =
      $ListAllowedNodeTypeUpdatesResponse->ScaleDownNodeTypes;
    my $ScaleUpNodeTypes =
      $ListAllowedNodeTypeUpdatesResponse->ScaleUpNodeTypes;

    # Returns a L<Paws::MemoryDB::ListAllowedNodeTypeUpdatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/ListAllowedNodeTypeUpdates>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The name of the cluster you want to scale. MemoryDB uses the cluster
name to identify the current node type being used by this cluster, and
from that to create a list of node types you can scale up to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAllowedNodeTypeUpdates in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

