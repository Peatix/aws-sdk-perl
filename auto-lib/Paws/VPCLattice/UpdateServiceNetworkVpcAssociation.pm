
package Paws::VPCLattice::UpdateServiceNetworkVpcAssociation;
  use Moose;
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroupIds', required => 1);
  has ServiceNetworkVpcAssociationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'serviceNetworkVpcAssociationIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServiceNetworkVpcAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/servicenetworkvpcassociations/{serviceNetworkVpcAssociationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::UpdateServiceNetworkVpcAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::UpdateServiceNetworkVpcAssociation - Arguments for method UpdateServiceNetworkVpcAssociation on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateServiceNetworkVpcAssociation on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method UpdateServiceNetworkVpcAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateServiceNetworkVpcAssociation.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $UpdateServiceNetworkVpcAssociationResponse =
      $vpc -lattice->UpdateServiceNetworkVpcAssociation(
      SecurityGroupIds => [
        'MySecurityGroupId', ...    # min: 5, max: 200
      ],
      ServiceNetworkVpcAssociationIdentifier =>
        'MyServiceNetworkVpcAssociationIdentifier',

      );

    # Results:
    my $Arn       = $UpdateServiceNetworkVpcAssociationResponse->Arn;
    my $CreatedBy = $UpdateServiceNetworkVpcAssociationResponse->CreatedBy;
    my $Id        = $UpdateServiceNetworkVpcAssociationResponse->Id;
    my $SecurityGroupIds =
      $UpdateServiceNetworkVpcAssociationResponse->SecurityGroupIds;
    my $Status = $UpdateServiceNetworkVpcAssociationResponse->Status;

# Returns a L<Paws::VPCLattice::UpdateServiceNetworkVpcAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/UpdateServiceNetworkVpcAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecurityGroupIds => ArrayRef[Str|Undef]

The IDs of the security groups.



=head2 B<REQUIRED> ServiceNetworkVpcAssociationIdentifier => Str

The ID or ARN of the association.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateServiceNetworkVpcAssociation in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

