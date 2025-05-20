
package Paws::EntityResolution::UpdateSchemaMapping;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has MappedInputFields => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::SchemaInputAttribute]', traits => ['NameInRequest'], request_name => 'mappedInputFields', required => 1);
  has SchemaName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'schemaName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSchemaMapping');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/schemas/{schemaName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EntityResolution::UpdateSchemaMappingOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::UpdateSchemaMapping - Arguments for method UpdateSchemaMapping on L<Paws::EntityResolution>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSchemaMapping on the
L<AWS EntityResolution|Paws::EntityResolution> service. Use the attributes of this class
as arguments to method UpdateSchemaMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSchemaMapping.

=head1 SYNOPSIS

    my $entityresolution = Paws->service('EntityResolution');
    my $UpdateSchemaMappingOutput = $entityresolution->UpdateSchemaMapping(
      MappedInputFields => [
        {
          FieldName => 'MyAttributeName',    # max: 255
          Type      => 'NAME'
          , # values: NAME, NAME_FIRST, NAME_MIDDLE, NAME_LAST, ADDRESS, ADDRESS_STREET1, ADDRESS_STREET2, ADDRESS_STREET3, ADDRESS_CITY, ADDRESS_STATE, ADDRESS_COUNTRY, ADDRESS_POSTALCODE, PHONE, PHONE_NUMBER, PHONE_COUNTRYCODE, EMAIL_ADDRESS, UNIQUE_ID, DATE, STRING, PROVIDER_ID, IPV4, IPV6, MAID
          GroupName => 'MyAttributeName',    # max: 255
          Hashed    => 1,                    # OPTIONAL
          MatchKey  => 'MyAttributeName',    # max: 255
          SubType   => 'MyAttributeName',    # max: 255
        },
        ...
      ],
      SchemaName  => 'MyEntityName',
      Description => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $Description       = $UpdateSchemaMappingOutput->Description;
    my $MappedInputFields = $UpdateSchemaMappingOutput->MappedInputFields;
    my $SchemaArn         = $UpdateSchemaMappingOutput->SchemaArn;
    my $SchemaName        = $UpdateSchemaMappingOutput->SchemaName;

    # Returns a L<Paws::EntityResolution::UpdateSchemaMappingOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution/UpdateSchemaMapping>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the schema.



=head2 B<REQUIRED> MappedInputFields => ArrayRef[L<Paws::EntityResolution::SchemaInputAttribute>]

A list of C<MappedInputFields>. Each C<MappedInputField> corresponds to
a column the source data table, and contains column name plus
additional information that Entity Resolution uses for matching.



=head2 B<REQUIRED> SchemaName => Str

The name of the schema. There can't be multiple C<SchemaMappings> with
the same name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSchemaMapping in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

