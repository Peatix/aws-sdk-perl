
package Paws::LakeFormation::PutDataLakeSettings;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DataLakeSettings => (is => 'ro', isa => 'Paws::LakeFormation::DataLakeSettings', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDataLakeSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/PutDataLakeSettings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::PutDataLakeSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::PutDataLakeSettings - Arguments for method PutDataLakeSettings on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDataLakeSettings on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method PutDataLakeSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDataLakeSettings.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $PutDataLakeSettingsResponse = $lakeformation->PutDataLakeSettings(
      DataLakeSettings => {
        AllowExternalDataFiltering       => 1,    # OPTIONAL
        AllowFullTableExternalDataAccess => 1,    # OPTIONAL
        AuthorizedSessionTagValueList    => [
          'MyNameString', ...                     # min: 1, max: 255
        ],    # OPTIONAL
        CreateDatabaseDefaultPermissions => [
          {
            Permissions => [
              'ALL',
              ... # values: ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_LF_TAG, ASSOCIATE, GRANT_WITH_LF_TAG_EXPRESSION, CREATE_LF_TAG_EXPRESSION, CREATE_CATALOG, SUPER_USER
            ],    # OPTIONAL
            Principal => {
              DataLakePrincipalIdentifier =>
                'MyDataLakePrincipalString',    # min: 1, max: 255; OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        CreateTableDefaultPermissions => [
          {
            Permissions => [
              'ALL',
              ... # values: ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_LF_TAG, ASSOCIATE, GRANT_WITH_LF_TAG_EXPRESSION, CREATE_LF_TAG_EXPRESSION, CREATE_CATALOG, SUPER_USER
            ],    # OPTIONAL
            Principal => {
              DataLakePrincipalIdentifier =>
                'MyDataLakePrincipalString',    # min: 1, max: 255; OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        DataLakeAdmins => [
          {
            DataLakePrincipalIdentifier =>
              'MyDataLakePrincipalString',    # min: 1, max: 255; OPTIONAL
          },
          ...                                 # OPTIONAL
        ],    # max: 30; OPTIONAL
        ExternalDataFilteringAllowList => [
          {
            DataLakePrincipalIdentifier =>
              'MyDataLakePrincipalString',    # min: 1, max: 255; OPTIONAL
          },
          ...                                 # OPTIONAL
        ],    # max: 30; OPTIONAL
        Parameters => {
          'MyKeyString' =>
            'MyParametersMapValue',  # key: min: 1, max: 255, value: max: 512000
        },    # OPTIONAL
        ReadOnlyAdmins => [
          {
            DataLakePrincipalIdentifier =>
              'MyDataLakePrincipalString',    # min: 1, max: 255; OPTIONAL
          },
          ...                                 # OPTIONAL
        ],    # max: 30; OPTIONAL
        TrustedResourceOwners => [
          'MyCatalogIdString', ...    # min: 1, max: 255
        ],    # OPTIONAL
      },
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/PutDataLakeSettings>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your Lake Formation environment.



=head2 B<REQUIRED> DataLakeSettings => L<Paws::LakeFormation::DataLakeSettings>

A structure representing a list of Lake Formation principals designated
as data lake administrators.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDataLakeSettings in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

