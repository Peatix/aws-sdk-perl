
package Paws::EntityResolution::DeleteSchemaMapping;
  use Moose;
  has SchemaName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'schemaName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSchemaMapping');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/schemas/{schemaName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EntityResolution::DeleteSchemaMappingOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::DeleteSchemaMapping - Arguments for method DeleteSchemaMapping on L<Paws::EntityResolution>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSchemaMapping on the
L<AWS EntityResolution|Paws::EntityResolution> service. Use the attributes of this class
as arguments to method DeleteSchemaMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSchemaMapping.

=head1 SYNOPSIS

    my $entityresolution = Paws->service('EntityResolution');
    my $DeleteSchemaMappingOutput = $entityresolution->DeleteSchemaMapping(
      SchemaName => 'MyEntityName',

    );

    # Results:
    my $Message = $DeleteSchemaMappingOutput->Message;

    # Returns a L<Paws::EntityResolution::DeleteSchemaMappingOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution/DeleteSchemaMapping>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SchemaName => Str

The name of the schema to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSchemaMapping in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

