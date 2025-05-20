
package Paws::VPCLattice::GetResourceGateway;
  use Moose;
  has ResourceGatewayIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceGatewayIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourceGateway');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resourcegateways/{resourceGatewayIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::GetResourceGatewayResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::GetResourceGateway - Arguments for method GetResourceGateway on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourceGateway on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method GetResourceGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourceGateway.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $GetResourceGatewayResponse = $vpc -lattice->GetResourceGateway(
      ResourceGatewayIdentifier => 'MyResourceGatewayIdentifier',

    );

    # Results:
    my $Arn              = $GetResourceGatewayResponse->Arn;
    my $CreatedAt        = $GetResourceGatewayResponse->CreatedAt;
    my $Id               = $GetResourceGatewayResponse->Id;
    my $IpAddressType    = $GetResourceGatewayResponse->IpAddressType;
    my $LastUpdatedAt    = $GetResourceGatewayResponse->LastUpdatedAt;
    my $Name             = $GetResourceGatewayResponse->Name;
    my $SecurityGroupIds = $GetResourceGatewayResponse->SecurityGroupIds;
    my $Status           = $GetResourceGatewayResponse->Status;
    my $SubnetIds        = $GetResourceGatewayResponse->SubnetIds;
    my $VpcId            = $GetResourceGatewayResponse->VpcId;

    # Returns a L<Paws::VPCLattice::GetResourceGatewayResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/GetResourceGateway>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceGatewayIdentifier => Str

The ID of the resource gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourceGateway in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

