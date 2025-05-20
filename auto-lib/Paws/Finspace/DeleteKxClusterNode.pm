
package Paws::Finspace::DeleteKxClusterNode;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterName', required => 1);
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);
  has NodeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'nodeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteKxClusterNode');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/clusters/{clusterName}/nodes/{nodeId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::DeleteKxClusterNodeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::DeleteKxClusterNode - Arguments for method DeleteKxClusterNode on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteKxClusterNode on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method DeleteKxClusterNode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteKxClusterNode.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $DeleteKxClusterNodeResponse = $finspace->DeleteKxClusterNode(
      ClusterName   => 'MyKxClusterName',
      EnvironmentId => 'MyKxEnvironmentId',
      NodeId        => 'MyKxClusterNodeIdString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/DeleteKxClusterNode>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The name of the cluster, for which you want to delete the nodes.



=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment.



=head2 B<REQUIRED> NodeId => Str

A unique identifier for the node that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteKxClusterNode in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

