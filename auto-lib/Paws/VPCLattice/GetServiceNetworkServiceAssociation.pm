
package Paws::VPCLattice::GetServiceNetworkServiceAssociation;
  use Moose;
  has ServiceNetworkServiceAssociationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'serviceNetworkServiceAssociationIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetServiceNetworkServiceAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/servicenetworkserviceassociations/{serviceNetworkServiceAssociationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::GetServiceNetworkServiceAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::GetServiceNetworkServiceAssociation - Arguments for method GetServiceNetworkServiceAssociation on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetServiceNetworkServiceAssociation on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method GetServiceNetworkServiceAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetServiceNetworkServiceAssociation.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $GetServiceNetworkServiceAssociationResponse =
      $vpc -lattice->GetServiceNetworkServiceAssociation(
      ServiceNetworkServiceAssociationIdentifier =>
        'MyServiceNetworkServiceAssociationIdentifier',

      );

    # Results:
    my $Arn       = $GetServiceNetworkServiceAssociationResponse->Arn;
    my $CreatedAt = $GetServiceNetworkServiceAssociationResponse->CreatedAt;
    my $CreatedBy = $GetServiceNetworkServiceAssociationResponse->CreatedBy;
    my $CustomDomainName =
      $GetServiceNetworkServiceAssociationResponse->CustomDomainName;
    my $DnsEntry    = $GetServiceNetworkServiceAssociationResponse->DnsEntry;
    my $FailureCode = $GetServiceNetworkServiceAssociationResponse->FailureCode;
    my $FailureMessage =
      $GetServiceNetworkServiceAssociationResponse->FailureMessage;
    my $Id          = $GetServiceNetworkServiceAssociationResponse->Id;
    my $ServiceArn  = $GetServiceNetworkServiceAssociationResponse->ServiceArn;
    my $ServiceId   = $GetServiceNetworkServiceAssociationResponse->ServiceId;
    my $ServiceName = $GetServiceNetworkServiceAssociationResponse->ServiceName;
    my $ServiceNetworkArn =
      $GetServiceNetworkServiceAssociationResponse->ServiceNetworkArn;
    my $ServiceNetworkId =
      $GetServiceNetworkServiceAssociationResponse->ServiceNetworkId;
    my $ServiceNetworkName =
      $GetServiceNetworkServiceAssociationResponse->ServiceNetworkName;
    my $Status = $GetServiceNetworkServiceAssociationResponse->Status;

# Returns a L<Paws::VPCLattice::GetServiceNetworkServiceAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/GetServiceNetworkServiceAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceNetworkServiceAssociationIdentifier => Str

The ID or ARN of the association.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetServiceNetworkServiceAssociation in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

