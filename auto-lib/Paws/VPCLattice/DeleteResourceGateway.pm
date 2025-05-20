
package Paws::VPCLattice::DeleteResourceGateway;
  use Moose;
  has ResourceGatewayIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceGatewayIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteResourceGateway');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resourcegateways/{resourceGatewayIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::DeleteResourceGatewayResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::DeleteResourceGateway - Arguments for method DeleteResourceGateway on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteResourceGateway on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method DeleteResourceGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteResourceGateway.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $DeleteResourceGatewayResponse = $vpc -lattice->DeleteResourceGateway(
      ResourceGatewayIdentifier => 'MyResourceGatewayIdentifier',

    );

    # Results:
    my $Arn    = $DeleteResourceGatewayResponse->Arn;
    my $Id     = $DeleteResourceGatewayResponse->Id;
    my $Name   = $DeleteResourceGatewayResponse->Name;
    my $Status = $DeleteResourceGatewayResponse->Status;

    # Returns a L<Paws::VPCLattice::DeleteResourceGatewayResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/DeleteResourceGateway>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceGatewayIdentifier => Str

The ID or ARN of the resource gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteResourceGateway in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

