
package Paws::Glue::GetUnfilteredTableMetadata;
  use Moose;
  has AuditContext => (is => 'ro', isa => 'Paws::Glue::AuditContext');
  has CatalogId => (is => 'ro', isa => 'Str', required => 1);
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ParentResourceArn => (is => 'ro', isa => 'Str');
  has Permissions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has QuerySessionContext => (is => 'ro', isa => 'Paws::Glue::QuerySessionContext');
  has Region => (is => 'ro', isa => 'Str');
  has RootResourceArn => (is => 'ro', isa => 'Str');
  has SupportedDialect => (is => 'ro', isa => 'Paws::Glue::SupportedDialect');
  has SupportedPermissionTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUnfilteredTableMetadata');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetUnfilteredTableMetadataResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetUnfilteredTableMetadata - Arguments for method GetUnfilteredTableMetadata on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUnfilteredTableMetadata on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetUnfilteredTableMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUnfilteredTableMetadata.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetUnfilteredTableMetadataResponse = $glue->GetUnfilteredTableMetadata(
      CatalogId                => 'MyCatalogIdString',
      DatabaseName             => 'MyNameString',
      Name                     => 'MyNameString',
      SupportedPermissionTypes => [
        'COLUMN_PERMISSION',
        ... # values: COLUMN_PERMISSION, CELL_FILTER_PERMISSION, NESTED_PERMISSION, NESTED_CELL_PERMISSION
      ],
      AuditContext => {
        AdditionalAuditContext => 'MyAuditContextString',  # max: 2048; OPTIONAL
        AllColumnsRequested    => 1,                       # OPTIONAL
        RequestedColumns       => [
          'MyColumnNameString', ...                        # min: 1, max: 1024
        ],    # OPTIONAL
      },    # OPTIONAL
      ParentResourceArn => 'MyArnString',    # OPTIONAL
      Permissions       => [
        'ALL',
        ... # values: ALL, SELECT, ALTER, DROP, DELETE, INSERT, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
      ],    # OPTIONAL
      QuerySessionContext => {
        AdditionalContext => {
          'MyContextKey' =>
            'MyContextValue',    # key: min: 1, max: 128, value: max: 256
        },    # OPTIONAL
        ClusterId            => 'MyNullableString', # OPTIONAL
        QueryAuthorizationId => 'MyHashString',     # min: 1, max: 255; OPTIONAL
        QueryId              => 'MyHashString',     # min: 1, max: 255; OPTIONAL
        QueryStartTime       => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      Region           => 'MyValueString',    # OPTIONAL
      RootResourceArn  => 'MyArnString',      # OPTIONAL
      SupportedDialect => {
        Dialect => 'REDSHIFT',    # values: REDSHIFT, ATHENA, SPARK; OPTIONAL
        DialectVersion =>
          'MyViewDialectVersionString',    # min: 1, max: 255; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $AuthorizedColumns =
      $GetUnfilteredTableMetadataResponse->AuthorizedColumns;
    my $CellFilters = $GetUnfilteredTableMetadataResponse->CellFilters;
    my $IsMultiDialectView =
      $GetUnfilteredTableMetadataResponse->IsMultiDialectView;
    my $IsProtected = $GetUnfilteredTableMetadataResponse->IsProtected;
    my $IsRegisteredWithLakeFormation =
      $GetUnfilteredTableMetadataResponse->IsRegisteredWithLakeFormation;
    my $Permissions = $GetUnfilteredTableMetadataResponse->Permissions;
    my $QueryAuthorizationId =
      $GetUnfilteredTableMetadataResponse->QueryAuthorizationId;
    my $ResourceArn = $GetUnfilteredTableMetadataResponse->ResourceArn;
    my $RowFilter   = $GetUnfilteredTableMetadataResponse->RowFilter;
    my $Table       = $GetUnfilteredTableMetadataResponse->Table;

    # Returns a L<Paws::Glue::GetUnfilteredTableMetadataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetUnfilteredTableMetadata>

=head1 ATTRIBUTES


=head2 AuditContext => L<Paws::Glue::AuditContext>

A structure containing Lake Formation audit context information.



=head2 B<REQUIRED> CatalogId => Str

The catalog ID where the table resides.



=head2 B<REQUIRED> DatabaseName => Str

(Required) Specifies the name of a database that contains the table.



=head2 B<REQUIRED> Name => Str

(Required) Specifies the name of a table for which you are requesting
metadata.



=head2 ParentResourceArn => Str

The resource ARN of the view.



=head2 Permissions => ArrayRef[Str|Undef]

The Lake Formation data permissions of the caller on the table. Used to
authorize the call when no view context is found.



=head2 QuerySessionContext => L<Paws::Glue::QuerySessionContext>

A structure used as a protocol between query engines and Lake Formation
or Glue. Contains both a Lake Formation generated authorization
identifier and information from the request's authorization context.



=head2 Region => Str

Specified only if the base tables belong to a different Amazon Web
Services Region.



=head2 RootResourceArn => Str

The resource ARN of the root view in a chain of nested views.



=head2 SupportedDialect => L<Paws::Glue::SupportedDialect>

A structure specifying the dialect and dialect version used by the
query engine.



=head2 B<REQUIRED> SupportedPermissionTypes => ArrayRef[Str|Undef]

Indicates the level of filtering a third-party analytical engine is
capable of enforcing when calling the C<GetUnfilteredTableMetadata> API
operation. Accepted values are:

=over

=item *

C<COLUMN_PERMISSION> - Column permissions ensure that users can access
only specific columns in the table. If there are particular columns
contain sensitive data, data lake administrators can define column
filters that exclude access to specific columns.

=item *

C<CELL_FILTER_PERMISSION> - Cell-level filtering combines column
filtering (include or exclude columns) and row filter expressions to
restrict access to individual elements in the table.

=item *

C<NESTED_PERMISSION> - Nested permissions combines cell-level filtering
and nested column filtering to restrict access to columns and/or nested
columns in specific rows based on row filter expressions.

=item *

C<NESTED_CELL_PERMISSION> - Nested cell permissions combines nested
permission with nested cell-level filtering. This allows different
subsets of nested columns to be restricted based on an array of row
filter expressions.

=back

Note: Each of these permission types follows a hierarchical order where
each subsequent permission type includes all permission of the previous
type.

Important: If you provide a supported permission type that doesn't
match the user's level of permissions on the table, then Lake Formation
raises an exception. For example, if the third-party engine calling the
C<GetUnfilteredTableMetadata> operation can enforce only column-level
filtering, and the user has nested cell filtering applied on the table,
Lake Formation throws an exception, and will not return unfiltered
table metadata and data access credentials.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUnfilteredTableMetadata in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

