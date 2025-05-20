
package Paws::LakeFormation::BatchGrantPermissions;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::BatchPermissionsRequestEntry]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGrantPermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/BatchGrantPermissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::BatchGrantPermissionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::BatchGrantPermissions - Arguments for method BatchGrantPermissions on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGrantPermissions on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method BatchGrantPermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGrantPermissions.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $BatchGrantPermissionsResponse = $lakeformation->BatchGrantPermissions(
      Entries => [
        {
          Id        => 'MyIdentifier',    # min: 1, max: 255
          Condition => {
            Expression => 'MyExpressionString',    # max: 3000; OPTIONAL
          },    # OPTIONAL
          Permissions => [
            'ALL',
            ... # values: ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_LF_TAG, ASSOCIATE, GRANT_WITH_LF_TAG_EXPRESSION, CREATE_LF_TAG_EXPRESSION, CREATE_CATALOG, SUPER_USER
          ],    # OPTIONAL
          PermissionsWithGrantOption => [
            'ALL',
            ... # values: ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_LF_TAG, ASSOCIATE, GRANT_WITH_LF_TAG_EXPRESSION, CREATE_LF_TAG_EXPRESSION, CREATE_CATALOG, SUPER_USER
          ],    # OPTIONAL
          Principal => {
            DataLakePrincipalIdentifier =>
              'MyDataLakePrincipalString',    # min: 1, max: 255; OPTIONAL
          },    # OPTIONAL
          Resource => {
            Catalog => {
              Id => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
            },    # OPTIONAL
            DataCellsFilter => {
              DatabaseName   => 'MyNameString',    # min: 1, max: 255; OPTIONAL
              Name           => 'MyNameString',    # min: 1, max: 255; OPTIONAL
              TableCatalogId =>
                'MyCatalogIdString',               # min: 1, max: 255; OPTIONAL
              TableName => 'MyNameString',         # min: 1, max: 255; OPTIONAL
            },    # OPTIONAL
            DataLocation => {
              ResourceArn => 'MyResourceArnString',
              CatalogId   => 'MyCatalogIdString',   # min: 1, max: 255; OPTIONAL
            },    # OPTIONAL
            Database => {
              Name      => 'MyNameString',         # min: 1, max: 255; OPTIONAL
              CatalogId => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
            },    # OPTIONAL
            LFTag => {
              TagKey    => 'MyNameString',    # min: 1, max: 255; OPTIONAL
              TagValues => [
                'MyLFTagValue', ...           # max: 256
              ],    # min: 1, max: 50
              CatalogId => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
            },    # OPTIONAL
            LFTagExpression => {
              Name      => 'MyNameString',         # min: 1, max: 255; OPTIONAL
              CatalogId => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
            },    # OPTIONAL
            LFTagPolicy => {
              ResourceType => 'DATABASE',           # values: DATABASE, TABLE
              CatalogId    => 'MyCatalogIdString',  # min: 1, max: 255; OPTIONAL
              Expression   => [
                {
                  TagKey    => 'MyLFTagKey',        # min: 1, max: 128
                  TagValues => [
                    'MyLFTagValue', ...             # max: 256
                  ],    # min: 1, max: 50

                },
                ...
              ],    # OPTIONAL
              ExpressionName => 'MyNameString',    # min: 1, max: 255; OPTIONAL
            },    # OPTIONAL
            Table => {
              DatabaseName  => 'MyNameString',      # min: 1, max: 255; OPTIONAL
              CatalogId     => 'MyCatalogIdString', # min: 1, max: 255; OPTIONAL
              Name          => 'MyNameString',      # min: 1, max: 255; OPTIONAL
              TableWildcard => {

              },                                    # OPTIONAL
            },    # OPTIONAL
            TableWithColumns => {
              DatabaseName => 'MyNameString',       # min: 1, max: 255; OPTIONAL
              Name         => 'MyNameString',       # min: 1, max: 255; OPTIONAL
              CatalogId    => 'MyCatalogIdString',  # min: 1, max: 255; OPTIONAL
              ColumnNames  => [
                'MyNameString', ...                 # min: 1, max: 255; OPTIONAL
              ],    # OPTIONAL
              ColumnWildcard => {
                ExcludedColumnNames => [
                  'MyNameString', ...    # min: 1, max: 255; OPTIONAL
                ],    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
    );

    # Results:
    my $Failures = $BatchGrantPermissionsResponse->Failures;

    # Returns a L<Paws::LakeFormation::BatchGrantPermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/BatchGrantPermissions>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your Lake Formation environment.



=head2 B<REQUIRED> Entries => ArrayRef[L<Paws::LakeFormation::BatchPermissionsRequestEntry>]

A list of up to 20 entries for resource permissions to be granted by
batch operation to the principal.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGrantPermissions in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

