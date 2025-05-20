
package Paws::VPCLattice::UpdateResourceGateway;
  use Moose;
  has ResourceGatewayIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceGatewayIdentifier', required => 1);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroupIds');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResourceGateway');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resourcegateways/{resourceGatewayIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::UpdateResourceGatewayResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::UpdateResourceGateway - Arguments for method UpdateResourceGateway on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResourceGateway on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method UpdateResourceGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResourceGateway.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $UpdateResourceGatewayResponse = $vpc -lattice->UpdateResourceGateway(
      ResourceGatewayIdentifier => 'MyResourceGatewayIdentifier',
      SecurityGroupIds          => [
        'MySecurityGroupId', ...    # min: 5, max: 200
      ],    # OPTIONAL
    );

    # Results:
    my $Arn              = $UpdateResourceGatewayResponse->Arn;
    my $Id               = $UpdateResourceGatewayResponse->Id;
    my $IpAddressType    = $UpdateResourceGatewayResponse->IpAddressType;
    my $Name             = $UpdateResourceGatewayResponse->Name;
    my $SecurityGroupIds = $UpdateResourceGatewayResponse->SecurityGroupIds;
    my $Status           = $UpdateResourceGatewayResponse->Status;
    my $SubnetIds        = $UpdateResourceGatewayResponse->SubnetIds;
    my $VpcId            = $UpdateResourceGatewayResponse->VpcId;

    # Returns a L<Paws::VPCLattice::UpdateResourceGatewayResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/UpdateResourceGateway>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceGatewayIdentifier => Str

The ID or ARN of the resource gateway.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The IDs of the security groups associated with the resource gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResourceGateway in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

