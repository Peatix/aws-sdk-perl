
package Paws::VPCLattice::DeleteServiceNetworkServiceAssociation;
  use Moose;
  has ServiceNetworkServiceAssociationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'serviceNetworkServiceAssociationIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteServiceNetworkServiceAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/servicenetworkserviceassociations/{serviceNetworkServiceAssociationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::DeleteServiceNetworkServiceAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::DeleteServiceNetworkServiceAssociation - Arguments for method DeleteServiceNetworkServiceAssociation on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteServiceNetworkServiceAssociation on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method DeleteServiceNetworkServiceAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteServiceNetworkServiceAssociation.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $DeleteServiceNetworkServiceAssociationResponse =
      $vpc -lattice->DeleteServiceNetworkServiceAssociation(
      ServiceNetworkServiceAssociationIdentifier =>
        'MyServiceNetworkServiceAssociationIdentifier',

      );

    # Results:
    my $Arn    = $DeleteServiceNetworkServiceAssociationResponse->Arn;
    my $Id     = $DeleteServiceNetworkServiceAssociationResponse->Id;
    my $Status = $DeleteServiceNetworkServiceAssociationResponse->Status;

# Returns a L<Paws::VPCLattice::DeleteServiceNetworkServiceAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/DeleteServiceNetworkServiceAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceNetworkServiceAssociationIdentifier => Str

The ID or ARN of the association.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteServiceNetworkServiceAssociation in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

