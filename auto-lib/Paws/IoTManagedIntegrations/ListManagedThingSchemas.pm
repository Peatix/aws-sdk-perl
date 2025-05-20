
package Paws::IoTManagedIntegrations::ListManagedThingSchemas;
  use Moose;
  has CapabilityIdFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'CapabilityIdFilter');
  has EndpointIdFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'EndpointIdFilter');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListManagedThingSchemas');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/managed-thing-schemas/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::ListManagedThingSchemasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::ListManagedThingSchemas - Arguments for method ListManagedThingSchemas on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListManagedThingSchemas on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method ListManagedThingSchemas.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListManagedThingSchemas.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $ListManagedThingSchemasResponse =
      $api . iotmanagedintegrations->ListManagedThingSchemas(
      Identifier         => 'MyManagedThingId',
      CapabilityIdFilter => 'MyCapabilityId',     # OPTIONAL
      EndpointIdFilter   => 'MyEndpointId',       # OPTIONAL
      MaxResults         => 1,                    # OPTIONAL
      NextToken          => 'MyNextToken',        # OPTIONAL
      );

    # Results:
    my $Items     = $ListManagedThingSchemasResponse->Items;
    my $NextToken = $ListManagedThingSchemasResponse->NextToken;

# Returns a L<Paws::IoTManagedIntegrations::ListManagedThingSchemasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/ListManagedThingSchemas>

=head1 ATTRIBUTES


=head2 CapabilityIdFilter => Str

Filter on a capability id.



=head2 EndpointIdFilter => Str

Filter on an endpoint id.



=head2 B<REQUIRED> Identifier => Str

The managed thing id.



=head2 MaxResults => Int

The maximum number of results to return at one time.



=head2 NextToken => Str

A token that can be used to retrieve the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListManagedThingSchemas in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

