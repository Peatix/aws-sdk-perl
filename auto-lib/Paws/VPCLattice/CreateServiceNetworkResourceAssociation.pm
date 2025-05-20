
package Paws::VPCLattice::CreateServiceNetworkResourceAssociation;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ResourceConfigurationIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceConfigurationIdentifier', required => 1);
  has ServiceNetworkIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceNetworkIdentifier', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::VPCLattice::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateServiceNetworkResourceAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/servicenetworkresourceassociations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::CreateServiceNetworkResourceAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::CreateServiceNetworkResourceAssociation - Arguments for method CreateServiceNetworkResourceAssociation on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateServiceNetworkResourceAssociation on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method CreateServiceNetworkResourceAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateServiceNetworkResourceAssociation.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $CreateServiceNetworkResourceAssociationResponse =
      $vpc -lattice->CreateServiceNetworkResourceAssociation(
      ResourceConfigurationIdentifier => 'MyResourceConfigurationIdentifier',
      ServiceNetworkIdentifier => 'MyServiceNetworkIdentifierWithoutRegex',
      ClientToken              => 'MyClientToken',    # OPTIONAL
      Tags                     => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Arn       = $CreateServiceNetworkResourceAssociationResponse->Arn;
    my $CreatedBy = $CreateServiceNetworkResourceAssociationResponse->CreatedBy;
    my $Id        = $CreateServiceNetworkResourceAssociationResponse->Id;
    my $Status    = $CreateServiceNetworkResourceAssociationResponse->Status;

# Returns a L<Paws::VPCLattice::CreateServiceNetworkResourceAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/CreateServiceNetworkResourceAssociation>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you retry a request that completed
successfully using the same client token and parameters, the retry
succeeds without performing any actions. If the parameters aren't
identical, the retry fails.



=head2 B<REQUIRED> ResourceConfigurationIdentifier => Str

The ID of the resource configuration to associate with the service
network.



=head2 B<REQUIRED> ServiceNetworkIdentifier => Str

The ID of the service network to associate with the resource
configuration.



=head2 Tags => L<Paws::VPCLattice::TagMap>

The tags for the association.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateServiceNetworkResourceAssociation in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

