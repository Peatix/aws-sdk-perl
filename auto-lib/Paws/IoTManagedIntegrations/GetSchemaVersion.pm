
package Paws::IoTManagedIntegrations::GetSchemaVersion;
  use Moose;
  has Format => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Format');
  has SchemaVersionedId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SchemaVersionedId', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSchemaVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/schema-versions/{Type}/{SchemaVersionedId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::GetSchemaVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetSchemaVersion - Arguments for method GetSchemaVersion on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSchemaVersion on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method GetSchemaVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSchemaVersion.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $GetSchemaVersionResponse =
      $api . iotmanagedintegrations->GetSchemaVersion(
      SchemaVersionedId => 'MySchemaVersionedId',
      Type              => 'capability',
      Format            => 'AWS',                   # OPTIONAL
      );

    # Results:
    my $Description     = $GetSchemaVersionResponse->Description;
    my $Namespace       = $GetSchemaVersionResponse->Namespace;
    my $Schema          = $GetSchemaVersionResponse->Schema;
    my $SchemaId        = $GetSchemaVersionResponse->SchemaId;
    my $SemanticVersion = $GetSchemaVersionResponse->SemanticVersion;
    my $Type            = $GetSchemaVersionResponse->Type;
    my $Visibility      = $GetSchemaVersionResponse->Visibility;

   # Returns a L<Paws::IoTManagedIntegrations::GetSchemaVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/GetSchemaVersion>

=head1 ATTRIBUTES


=head2 Format => Str

The format of the schema version.

Valid values are: C<"AWS">, C<"ZCL">, C<"CONNECTOR">

=head2 B<REQUIRED> SchemaVersionedId => Str

Schema id with a version specified. If the version is missing, it
defaults to latest version.



=head2 B<REQUIRED> Type => Str

The type of schema version.

Valid values are: C<"capability">, C<"definition">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSchemaVersion in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

