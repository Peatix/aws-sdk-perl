
package Paws::IoTManagedIntegrations::ListSchemaVersions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NamespaceFilter');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has SchemaId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'SchemaIdFilter');
  has SemanticVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'SemanticVersionFilter');
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Type', required => 1);
  has Visibility => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'VisibilityFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSchemaVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/schema-versions/{Type}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::ListSchemaVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::ListSchemaVersions - Arguments for method ListSchemaVersions on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSchemaVersions on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method ListSchemaVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSchemaVersions.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $ListSchemaVersionsResponse =
      $api . iotmanagedintegrations->ListSchemaVersions(
      Type            => 'capability',
      MaxResults      => 1,                                 # OPTIONAL
      Namespace       => 'MySchemaVersionNamespaceName',    # OPTIONAL
      NextToken       => 'MyNextToken',                     # OPTIONAL
      SchemaId        => 'MySchemaId',                      # OPTIONAL
      SemanticVersion => 'MySchemaVersionVersion',          # OPTIONAL
      Visibility      => 'PUBLIC',                          # OPTIONAL
      );

    # Results:
    my $Items     = $ListSchemaVersionsResponse->Items;
    my $NextToken = $ListSchemaVersionsResponse->NextToken;

 # Returns a L<Paws::IoTManagedIntegrations::ListSchemaVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/ListSchemaVersions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return at one time.



=head2 Namespace => Str

Filter on the name of the schema version.



=head2 NextToken => Str

A token that can be used to retrieve the next set of results.



=head2 SchemaId => Str

Filter on the id of the schema version.



=head2 SemanticVersion => Str

The schema version. If this is left blank, it defaults to the latest
version.



=head2 B<REQUIRED> Type => Str

Filter on the type of schema version.

Valid values are: C<"capability">, C<"definition">

=head2 Visibility => Str

The visibility of the schema version.

Valid values are: C<"PUBLIC">, C<"PRIVATE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSchemaVersions in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

