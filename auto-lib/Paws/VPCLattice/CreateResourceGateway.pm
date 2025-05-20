
package Paws::VPCLattice::CreateResourceGateway;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has IpAddressType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ipAddressType');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroupIds');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnetIds', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::VPCLattice::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has VpcIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResourceGateway');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resourcegateways');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::CreateResourceGatewayResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::CreateResourceGateway - Arguments for method CreateResourceGateway on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResourceGateway on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method CreateResourceGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResourceGateway.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $CreateResourceGatewayResponse = $vpc -lattice->CreateResourceGateway(
      Name      => 'MyResourceGatewayName',
      SubnetIds => [
        'MySubnetId', ...    # min: 5, max: 200
      ],
      VpcIdentifier    => 'MyVpcId',
      ClientToken      => 'MyClientToken',    # OPTIONAL
      IpAddressType    => 'IPV4',             # OPTIONAL
      SecurityGroupIds => [
        'MySecurityGroupId', ...              # min: 5, max: 200
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn              = $CreateResourceGatewayResponse->Arn;
    my $Id               = $CreateResourceGatewayResponse->Id;
    my $IpAddressType    = $CreateResourceGatewayResponse->IpAddressType;
    my $Name             = $CreateResourceGatewayResponse->Name;
    my $SecurityGroupIds = $CreateResourceGatewayResponse->SecurityGroupIds;
    my $Status           = $CreateResourceGatewayResponse->Status;
    my $SubnetIds        = $CreateResourceGatewayResponse->SubnetIds;
    my $VpcIdentifier    = $CreateResourceGatewayResponse->VpcIdentifier;

    # Returns a L<Paws::VPCLattice::CreateResourceGatewayResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/CreateResourceGateway>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you retry a request that completed
successfully using the same client token and parameters, the retry
succeeds without performing any actions. If the parameters aren't
identical, the retry fails.



=head2 IpAddressType => Str

The type of IP address used by the resource gateway.

Valid values are: C<"IPV4">, C<"IPV6">, C<"DUALSTACK">

=head2 B<REQUIRED> Name => Str

The name of the resource gateway.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The IDs of the security groups to apply to the resource gateway. The
security groups must be in the same VPC.



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

The IDs of the VPC subnets in which to create the resource gateway.



=head2 Tags => L<Paws::VPCLattice::TagMap>

The tags for the resource gateway.



=head2 B<REQUIRED> VpcIdentifier => Str

The ID of the VPC for the resource gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResourceGateway in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

