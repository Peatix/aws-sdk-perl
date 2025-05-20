
package Paws::Glue::GetUnfilteredPartitionMetadata;
  use Moose;
  has AuditContext => (is => 'ro', isa => 'Paws::Glue::AuditContext');
  has CatalogId => (is => 'ro', isa => 'Str', required => 1);
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has PartitionValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has QuerySessionContext => (is => 'ro', isa => 'Paws::Glue::QuerySessionContext');
  has Region => (is => 'ro', isa => 'Str');
  has SupportedPermissionTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUnfilteredPartitionMetadata');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetUnfilteredPartitionMetadataResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetUnfilteredPartitionMetadata - Arguments for method GetUnfilteredPartitionMetadata on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUnfilteredPartitionMetadata on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetUnfilteredPartitionMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUnfilteredPartitionMetadata.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetUnfilteredPartitionMetadataResponse =
      $glue->GetUnfilteredPartitionMetadata(
      CatalogId       => 'MyCatalogIdString',
      DatabaseName    => 'MyNameString',
      PartitionValues => [
        'MyValueString', ...    # min: 1, max: 1024
      ],
      SupportedPermissionTypes => [
        'COLUMN_PERMISSION',
        ... # values: COLUMN_PERMISSION, CELL_FILTER_PERMISSION, NESTED_PERMISSION, NESTED_CELL_PERMISSION
      ],
      TableName    => 'MyNameString',
      AuditContext => {
        AdditionalAuditContext => 'MyAuditContextString',  # max: 2048; OPTIONAL
        AllColumnsRequested    => 1,                       # OPTIONAL
        RequestedColumns       => [
          'MyColumnNameString', ...                        # min: 1, max: 1024
        ],    # OPTIONAL
      },    # OPTIONAL
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
      Region => 'MyValueString',    # OPTIONAL
      );

    # Results:
    my $AuthorizedColumns =
      $GetUnfilteredPartitionMetadataResponse->AuthorizedColumns;
    my $IsRegisteredWithLakeFormation =
      $GetUnfilteredPartitionMetadataResponse->IsRegisteredWithLakeFormation;
    my $Partition = $GetUnfilteredPartitionMetadataResponse->Partition;

    # Returns a L<Paws::Glue::GetUnfilteredPartitionMetadataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetUnfilteredPartitionMetadata>

=head1 ATTRIBUTES


=head2 AuditContext => L<Paws::Glue::AuditContext>

A structure containing Lake Formation audit context information.



=head2 B<REQUIRED> CatalogId => Str

The catalog ID where the partition resides.



=head2 B<REQUIRED> DatabaseName => Str

(Required) Specifies the name of a database that contains the
partition.



=head2 B<REQUIRED> PartitionValues => ArrayRef[Str|Undef]

(Required) A list of partition key values.



=head2 QuerySessionContext => L<Paws::Glue::QuerySessionContext>

A structure used as a protocol between query engines and Lake Formation
or Glue. Contains both a Lake Formation generated authorization
identifier and information from the request's authorization context.



=head2 Region => Str

Specified only if the base tables belong to a different Amazon Web
Services Region.



=head2 B<REQUIRED> SupportedPermissionTypes => ArrayRef[Str|Undef]

(Required) A list of supported permission types.



=head2 B<REQUIRED> TableName => Str

(Required) Specifies the name of a table that contains the partition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUnfilteredPartitionMetadata in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

