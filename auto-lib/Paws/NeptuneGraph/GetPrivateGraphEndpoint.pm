
package Paws::NeptuneGraph::GetPrivateGraphEndpoint;
  use Moose;
  has GraphIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'graphIdentifier', required => 1);
  has VpcId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vpcId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPrivateGraphEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/graphs/{graphIdentifier}/endpoints/{vpcId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::GetPrivateGraphEndpointOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::GetPrivateGraphEndpoint - Arguments for method GetPrivateGraphEndpoint on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPrivateGraphEndpoint on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method GetPrivateGraphEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPrivateGraphEndpoint.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $GetPrivateGraphEndpointOutput =
      $neptune -graph->GetPrivateGraphEndpoint(
      GraphIdentifier => 'MyGraphIdentifier',
      VpcId           => 'MyVpcId',

      );

    # Results:
    my $Status        = $GetPrivateGraphEndpointOutput->Status;
    my $SubnetIds     = $GetPrivateGraphEndpointOutput->SubnetIds;
    my $VpcEndpointId = $GetPrivateGraphEndpointOutput->VpcEndpointId;
    my $VpcId         = $GetPrivateGraphEndpointOutput->VpcId;

    # Returns a L<Paws::NeptuneGraph::GetPrivateGraphEndpointOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/GetPrivateGraphEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GraphIdentifier => Str

The unique identifier of the Neptune Analytics graph.



=head2 B<REQUIRED> VpcId => Str

The ID of the VPC where the private endpoint is located.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPrivateGraphEndpoint in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

