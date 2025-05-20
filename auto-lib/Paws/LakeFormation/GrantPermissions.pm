
package Paws::LakeFormation::GrantPermissions;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has Condition => (is => 'ro', isa => 'Paws::LakeFormation::Condition');
  has Permissions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has PermissionsWithGrantOption => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Principal => (is => 'ro', isa => 'Paws::LakeFormation::DataLakePrincipal', required => 1);
  has Resource => (is => 'ro', isa => 'Paws::LakeFormation::Resource', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GrantPermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GrantPermissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::GrantPermissionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GrantPermissions - Arguments for method GrantPermissions on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GrantPermissions on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method GrantPermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GrantPermissions.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $GrantPermissionsResponse = $lakeformation->GrantPermissions(
      Permissions => [
        'ALL',
        ... # values: ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_LF_TAG, ASSOCIATE, GRANT_WITH_LF_TAG_EXPRESSION, CREATE_LF_TAG_EXPRESSION, CREATE_CATALOG, SUPER_USER
      ],
      Principal => {
        DataLakePrincipalIdentifier =>
          'MyDataLakePrincipalString',    # min: 1, max: 255; OPTIONAL
      },
      Resource => {
        Catalog => {
          Id => 'MyCatalogIdString',      # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        DataCellsFilter => {
          DatabaseName   => 'MyNameString',         # min: 1, max: 255; OPTIONAL
          Name           => 'MyNameString',         # min: 1, max: 255; OPTIONAL
          TableCatalogId => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
          TableName      => 'MyNameString',         # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        DataLocation => {
          ResourceArn => 'MyResourceArnString',
          CatalogId   => 'MyCatalogIdString',     # min: 1, max: 255; OPTIONAL
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
          ResourceType => 'DATABASE',             # values: DATABASE, TABLE
          CatalogId    => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
          Expression   => [
            {
              TagKey    => 'MyLFTagKey',          # min: 1, max: 128
              TagValues => [
                'MyLFTagValue', ...               # max: 256
              ],    # min: 1, max: 50

            },
            ...
          ],    # OPTIONAL
          ExpressionName => 'MyNameString',    # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        Table => {
          DatabaseName  => 'MyNameString',         # min: 1, max: 255; OPTIONAL
          CatalogId     => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
          Name          => 'MyNameString',         # min: 1, max: 255; OPTIONAL
          TableWildcard => {

          },                                       # OPTIONAL
        },    # OPTIONAL
        TableWithColumns => {
          DatabaseName => 'MyNameString',         # min: 1, max: 255; OPTIONAL
          Name         => 'MyNameString',         # min: 1, max: 255; OPTIONAL
          CatalogId    => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
          ColumnNames  => [
            'MyNameString', ...                   # min: 1, max: 255; OPTIONAL
          ],    # OPTIONAL
          ColumnWildcard => {
            ExcludedColumnNames => [
              'MyNameString', ...    # min: 1, max: 255; OPTIONAL
            ],    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
      Condition => {
        Expression => 'MyExpressionString',    # max: 3000; OPTIONAL
      },    # OPTIONAL
      PermissionsWithGrantOption => [
        'ALL',
        ... # values: ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_LF_TAG, ASSOCIATE, GRANT_WITH_LF_TAG_EXPRESSION, CREATE_LF_TAG_EXPRESSION, CREATE_CATALOG, SUPER_USER
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/GrantPermissions>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your Lake Formation environment.



=head2 Condition => L<Paws::LakeFormation::Condition>





=head2 B<REQUIRED> Permissions => ArrayRef[Str|Undef]

The permissions granted to the principal on the resource. Lake
Formation defines privileges to grant and revoke access to metadata in
the Data Catalog and data organized in underlying data storage such as
Amazon S3. Lake Formation requires that each principal be authorized to
perform a specific task on Lake Formation resources.



=head2 PermissionsWithGrantOption => ArrayRef[Str|Undef]

Indicates a list of the granted permissions that the principal may pass
to other users. These permissions may only be a subset of the
permissions granted in the C<Privileges>.



=head2 B<REQUIRED> Principal => L<Paws::LakeFormation::DataLakePrincipal>

The principal to be granted the permissions on the resource. Supported
principals are IAM users or IAM roles, and they are defined by their
principal type and their ARN.

Note that if you define a resource with a particular ARN, then later
delete, and recreate a resource with that same ARN, the resource
maintains the permissions already granted.



=head2 B<REQUIRED> Resource => L<Paws::LakeFormation::Resource>

The resource to which permissions are to be granted. Resources in Lake
Formation are the Data Catalog, databases, and tables.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GrantPermissions in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

