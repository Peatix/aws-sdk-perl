
package Paws::VPCLattice::GetServiceNetworkResourceAssociation;
  use Moose;
  has ServiceNetworkResourceAssociationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'serviceNetworkResourceAssociationIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetServiceNetworkResourceAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/servicenetworkresourceassociations/{serviceNetworkResourceAssociationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::GetServiceNetworkResourceAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::GetServiceNetworkResourceAssociation - Arguments for method GetServiceNetworkResourceAssociation on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetServiceNetworkResourceAssociation on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method GetServiceNetworkResourceAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetServiceNetworkResourceAssociation.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $GetServiceNetworkResourceAssociationResponse =
      $vpc -lattice->GetServiceNetworkResourceAssociation(
      ServiceNetworkResourceAssociationIdentifier =>
        'MyServiceNetworkResourceAssociationIdentifier',

      );

    # Results:
    my $Arn       = $GetServiceNetworkResourceAssociationResponse->Arn;
    my $CreatedAt = $GetServiceNetworkResourceAssociationResponse->CreatedAt;
    my $CreatedBy = $GetServiceNetworkResourceAssociationResponse->CreatedBy;
    my $DnsEntry  = $GetServiceNetworkResourceAssociationResponse->DnsEntry;
    my $FailureCode =
      $GetServiceNetworkResourceAssociationResponse->FailureCode;
    my $FailureReason =
      $GetServiceNetworkResourceAssociationResponse->FailureReason;
    my $Id = $GetServiceNetworkResourceAssociationResponse->Id;
    my $IsManagedAssociation =
      $GetServiceNetworkResourceAssociationResponse->IsManagedAssociation;
    my $LastUpdatedAt =
      $GetServiceNetworkResourceAssociationResponse->LastUpdatedAt;
    my $PrivateDnsEntry =
      $GetServiceNetworkResourceAssociationResponse->PrivateDnsEntry;
    my $ResourceConfigurationArn =
      $GetServiceNetworkResourceAssociationResponse->ResourceConfigurationArn;
    my $ResourceConfigurationId =
      $GetServiceNetworkResourceAssociationResponse->ResourceConfigurationId;
    my $ResourceConfigurationName =
      $GetServiceNetworkResourceAssociationResponse->ResourceConfigurationName;
    my $ServiceNetworkArn =
      $GetServiceNetworkResourceAssociationResponse->ServiceNetworkArn;
    my $ServiceNetworkId =
      $GetServiceNetworkResourceAssociationResponse->ServiceNetworkId;
    my $ServiceNetworkName =
      $GetServiceNetworkResourceAssociationResponse->ServiceNetworkName;
    my $Status = $GetServiceNetworkResourceAssociationResponse->Status;

# Returns a L<Paws::VPCLattice::GetServiceNetworkResourceAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/GetServiceNetworkResourceAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceNetworkResourceAssociationIdentifier => Str

The ID of the association.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetServiceNetworkResourceAssociation in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

