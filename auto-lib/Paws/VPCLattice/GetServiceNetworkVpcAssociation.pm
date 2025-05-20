
package Paws::VPCLattice::GetServiceNetworkVpcAssociation;
  use Moose;
  has ServiceNetworkVpcAssociationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'serviceNetworkVpcAssociationIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetServiceNetworkVpcAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/servicenetworkvpcassociations/{serviceNetworkVpcAssociationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::GetServiceNetworkVpcAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::GetServiceNetworkVpcAssociation - Arguments for method GetServiceNetworkVpcAssociation on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetServiceNetworkVpcAssociation on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method GetServiceNetworkVpcAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetServiceNetworkVpcAssociation.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $GetServiceNetworkVpcAssociationResponse =
      $vpc -lattice->GetServiceNetworkVpcAssociation(
      ServiceNetworkVpcAssociationIdentifier =>
        'MyServiceNetworkVpcAssociationIdentifier',

      );

    # Results:
    my $Arn         = $GetServiceNetworkVpcAssociationResponse->Arn;
    my $CreatedAt   = $GetServiceNetworkVpcAssociationResponse->CreatedAt;
    my $CreatedBy   = $GetServiceNetworkVpcAssociationResponse->CreatedBy;
    my $FailureCode = $GetServiceNetworkVpcAssociationResponse->FailureCode;
    my $FailureMessage =
      $GetServiceNetworkVpcAssociationResponse->FailureMessage;
    my $Id            = $GetServiceNetworkVpcAssociationResponse->Id;
    my $LastUpdatedAt = $GetServiceNetworkVpcAssociationResponse->LastUpdatedAt;
    my $SecurityGroupIds =
      $GetServiceNetworkVpcAssociationResponse->SecurityGroupIds;
    my $ServiceNetworkArn =
      $GetServiceNetworkVpcAssociationResponse->ServiceNetworkArn;
    my $ServiceNetworkId =
      $GetServiceNetworkVpcAssociationResponse->ServiceNetworkId;
    my $ServiceNetworkName =
      $GetServiceNetworkVpcAssociationResponse->ServiceNetworkName;
    my $Status = $GetServiceNetworkVpcAssociationResponse->Status;
    my $VpcId  = $GetServiceNetworkVpcAssociationResponse->VpcId;

# Returns a L<Paws::VPCLattice::GetServiceNetworkVpcAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/GetServiceNetworkVpcAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceNetworkVpcAssociationIdentifier => Str

The ID or ARN of the association.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetServiceNetworkVpcAssociation in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

