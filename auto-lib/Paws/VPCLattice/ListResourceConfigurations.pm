
package Paws::VPCLattice::ListResourceConfigurations;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ResourceConfigurationGroupIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceConfigurationGroupIdentifier');
  has ResourceGatewayIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceGatewayIdentifier');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resourceconfigurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::ListResourceConfigurationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::ListResourceConfigurations - Arguments for method ListResourceConfigurations on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceConfigurations on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method ListResourceConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceConfigurations.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $ListResourceConfigurationsResponse =
      $vpc -lattice->ListResourceConfigurations(
      MaxResults                           => 1,                # OPTIONAL
      NextToken                            => 'MyNextToken',    # OPTIONAL
      ResourceConfigurationGroupIdentifier =>
        'MyResourceConfigurationIdentifier',                    # OPTIONAL
      ResourceGatewayIdentifier => 'MyResourceGatewayIdentifier',    # OPTIONAL
      );

    # Results:
    my $Items     = $ListResourceConfigurationsResponse->Items;
    my $NextToken = $ListResourceConfigurationsResponse->NextToken;

    # Returns a L<Paws::VPCLattice::ListResourceConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/ListResourceConfigurations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum page size.



=head2 NextToken => Str

A pagination token for the next page of results.



=head2 ResourceConfigurationGroupIdentifier => Str

The ID of the group resource configuration.



=head2 ResourceGatewayIdentifier => Str

The ID of the resource gateway for the resource configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceConfigurations in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

