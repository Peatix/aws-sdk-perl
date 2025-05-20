
package Paws::AppMesh::DescribeVirtualGateway;
  use Moose;
  has MeshName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meshName', required => 1);
  has MeshOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'meshOwner');
  has VirtualGatewayName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'virtualGatewayName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVirtualGateway');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::DescribeVirtualGatewayOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::DescribeVirtualGateway - Arguments for method DescribeVirtualGateway on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVirtualGateway on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method DescribeVirtualGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVirtualGateway.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $DescribeVirtualGatewayOutput = $appmesh->DescribeVirtualGateway(
      MeshName           => 'MyResourceName',
      VirtualGatewayName => 'MyResourceName',
      MeshOwner          => 'MyAccountId',      # OPTIONAL
    );

    # Results:
    my $VirtualGateway = $DescribeVirtualGatewayOutput->VirtualGateway;

    # Returns a L<Paws::AppMesh::DescribeVirtualGatewayOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/DescribeVirtualGateway>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MeshName => Str

The name of the service mesh that the gateway route resides in.



=head2 MeshOwner => Str

The Amazon Web Services IAM account ID of the service mesh owner. If
the account ID is not your own, then it's the ID of the account that
shared the mesh with your account. For more information about mesh
sharing, see Working with shared meshes
(https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html).



=head2 B<REQUIRED> VirtualGatewayName => Str

The name of the virtual gateway to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVirtualGateway in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

