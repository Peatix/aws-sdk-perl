
package Paws::FinspaceData::CreateDataset;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alias');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DatasetDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetDescription');
  has DatasetTitle => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetTitle', required => 1);
  has Kind => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kind', required => 1);
  has OwnerInfo => (is => 'ro', isa => 'Paws::FinspaceData::DatasetOwnerInfo', traits => ['NameInRequest'], request_name => 'ownerInfo');
  has PermissionGroupParams => (is => 'ro', isa => 'Paws::FinspaceData::PermissionGroupParams', traits => ['NameInRequest'], request_name => 'permissionGroupParams', required => 1);
  has SchemaDefinition => (is => 'ro', isa => 'Paws::FinspaceData::SchemaUnion', traits => ['NameInRequest'], request_name => 'schemaDefinition');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasetsv2');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::CreateDatasetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::CreateDataset - Arguments for method CreateDataset on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataset on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method CreateDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataset.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $CreateDatasetResponse = $finspace -api->CreateDataset(
      DatasetTitle          => 'MyDatasetTitle',
      Kind                  => 'TABULAR',
      PermissionGroupParams => {
        DatasetPermissions => [
          {
            Permission =>
              'MyStringValueLength1to250',    # min: 1, max: 250; OPTIONAL
          },
          ...
        ],    # OPTIONAL
        PermissionGroupId => 'MyPermissionGroupId',  # min: 1, max: 26; OPTIONAL
      },
      Alias              => 'MyAliasString',           # OPTIONAL
      ClientToken        => 'MyClientToken',           # OPTIONAL
      DatasetDescription => 'MyDatasetDescription',    # OPTIONAL
      OwnerInfo          => {
        Email       => 'MyEmail',          # min: 4, max: 320; OPTIONAL
        Name        => 'MyOwnerName',      # min: 1, max: 250; OPTIONAL
        PhoneNumber => 'MyPhoneNumber',    # min: 10, max: 20; OPTIONAL
      },    # OPTIONAL
      SchemaDefinition => {
        TabularSchemaConfig => {
          Columns => [
            {
              ColumnDescription => 'MyColumnDescription',   # max: 512; OPTIONAL
              ColumnName        => 'MyColumnName',          # max: 126; OPTIONAL
              DataType          => 'STRING'
              , # values: STRING, CHAR, INTEGER, TINYINT, SMALLINT, BIGINT, FLOAT, DOUBLE, DATE, DATETIME, BOOLEAN, BINARY; OPTIONAL
            },
            ...
          ],    # OPTIONAL
          PrimaryKeyColumns => [
            'MyColumnName', ...    # max: 126; OPTIONAL
          ],    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $DatasetId = $CreateDatasetResponse->DatasetId;

    # Returns a L<Paws::FinspaceData::CreateDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/CreateDataset>

=head1 ATTRIBUTES


=head2 Alias => Str

The unique resource identifier for a Dataset.



=head2 ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 DatasetDescription => Str

Description of a Dataset.



=head2 B<REQUIRED> DatasetTitle => Str

Display title for a FinSpace Dataset.



=head2 B<REQUIRED> Kind => Str

The format in which Dataset data is structured.

=over

=item *

C<TABULAR> E<ndash> Data is structured in a tabular format.

=item *

C<NON_TABULAR> E<ndash> Data is structured in a non-tabular format.

=back


Valid values are: C<"TABULAR">, C<"NON_TABULAR">

=head2 OwnerInfo => L<Paws::FinspaceData::DatasetOwnerInfo>

Contact information for a Dataset owner.



=head2 B<REQUIRED> PermissionGroupParams => L<Paws::FinspaceData::PermissionGroupParams>

Permission group parameters for Dataset permissions.



=head2 SchemaDefinition => L<Paws::FinspaceData::SchemaUnion>

Definition for a schema on a tabular Dataset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataset in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

