
package Paws::VPCLattice::ListResourceEndpointAssociations;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ResourceConfigurationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceConfigurationIdentifier', required => 1);
  has ResourceEndpointAssociationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceEndpointAssociationIdentifier');
  has VpcEndpointId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'vpcEndpointId');
  has VpcEndpointOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'vpcEndpointOwner');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceEndpointAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resourceendpointassociations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::ListResourceEndpointAssociationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::ListResourceEndpointAssociations - Arguments for method ListResourceEndpointAssociations on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceEndpointAssociations on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method ListResourceEndpointAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceEndpointAssociations.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $ListResourceEndpointAssociationsResponse =
      $vpc -lattice->ListResourceEndpointAssociations(
      ResourceConfigurationIdentifier => 'MyResourceConfigurationIdentifier',
      MaxResults                            => 1,                # OPTIONAL
      NextToken                             => 'MyNextToken',    # OPTIONAL
      ResourceEndpointAssociationIdentifier =>
        'MyResourceEndpointAssociationIdentifier',               # OPTIONAL
      VpcEndpointId    => 'MyVpcEndpointId',                     # OPTIONAL
      VpcEndpointOwner => 'MyVpcEndpointOwner',                  # OPTIONAL
      );

    # Results:
    my $Items     = $ListResourceEndpointAssociationsResponse->Items;
    my $NextToken = $ListResourceEndpointAssociationsResponse->NextToken;

# Returns a L<Paws::VPCLattice::ListResourceEndpointAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/ListResourceEndpointAssociations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum page size.



=head2 NextToken => Str

A pagination token for the next page of results.



=head2 B<REQUIRED> ResourceConfigurationIdentifier => Str

The ID for the resource configuration associated with the VPC endpoint.



=head2 ResourceEndpointAssociationIdentifier => Str

The ID of the association.



=head2 VpcEndpointId => Str

The ID of the VPC endpoint in the association.



=head2 VpcEndpointOwner => Str

The owner of the VPC endpoint in the association.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceEndpointAssociations in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

