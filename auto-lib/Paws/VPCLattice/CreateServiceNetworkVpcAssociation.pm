
package Paws::VPCLattice::CreateServiceNetworkVpcAssociation;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroupIds');
  has ServiceNetworkIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceNetworkIdentifier', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::VPCLattice::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has VpcIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateServiceNetworkVpcAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/servicenetworkvpcassociations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::CreateServiceNetworkVpcAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::CreateServiceNetworkVpcAssociation - Arguments for method CreateServiceNetworkVpcAssociation on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateServiceNetworkVpcAssociation on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method CreateServiceNetworkVpcAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateServiceNetworkVpcAssociation.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $CreateServiceNetworkVpcAssociationResponse =
      $vpc -lattice->CreateServiceNetworkVpcAssociation(
      ServiceNetworkIdentifier => 'MyServiceNetworkIdentifier',
      VpcIdentifier            => 'MyVpcId',
      ClientToken              => 'MyClientToken',                # OPTIONAL
      SecurityGroupIds         => [
        'MySecurityGroupId', ...    # min: 5, max: 200
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Arn       = $CreateServiceNetworkVpcAssociationResponse->Arn;
    my $CreatedBy = $CreateServiceNetworkVpcAssociationResponse->CreatedBy;
    my $Id        = $CreateServiceNetworkVpcAssociationResponse->Id;
    my $SecurityGroupIds =
      $CreateServiceNetworkVpcAssociationResponse->SecurityGroupIds;
    my $Status = $CreateServiceNetworkVpcAssociationResponse->Status;

# Returns a L<Paws::VPCLattice::CreateServiceNetworkVpcAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/CreateServiceNetworkVpcAssociation>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you retry a request that completed
successfully using the same client token and parameters, the retry
succeeds without performing any actions. If the parameters aren't
identical, the retry fails.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The IDs of the security groups. Security groups aren't added by
default. You can add a security group to apply network level controls
to control which resources in a VPC are allowed to access the service
network and its services. For more information, see Control traffic to
resources using security groups
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html)
in the I<Amazon VPC User Guide>.



=head2 B<REQUIRED> ServiceNetworkIdentifier => Str

The ID or ARN of the service network. You must use an ARN if the
resources are in different accounts.



=head2 Tags => L<Paws::VPCLattice::TagMap>

The tags for the association.



=head2 B<REQUIRED> VpcIdentifier => Str

The ID of the VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateServiceNetworkVpcAssociation in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

