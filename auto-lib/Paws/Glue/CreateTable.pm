
package Paws::Glue::CreateTable;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has OpenTableFormatInput => (is => 'ro', isa => 'Paws::Glue::OpenTableFormatInput');
  has PartitionIndexes => (is => 'ro', isa => 'ArrayRef[Paws::Glue::PartitionIndex]');
  has TableInput => (is => 'ro', isa => 'Paws::Glue::TableInput', required => 1);
  has TransactionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateTableResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateTable - Arguments for method CreateTable on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTable on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTable.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateTableResponse = $glue->CreateTable(
      DatabaseName => 'MyNameString',
      TableInput   => {
        Name             => 'MyNameString',           # min: 1, max: 255
        Description      => 'MyDescriptionString',    # max: 2048; OPTIONAL
        LastAccessTime   => '1970-01-01T01:00:00',    # OPTIONAL
        LastAnalyzedTime => '1970-01-01T01:00:00',    # OPTIONAL
        Owner            => 'MyNameString',           # min: 1, max: 255
        Parameters       => {
          'MyKeyString' =>
            'MyParametersMapValue',  # key: min: 1, max: 255, value: max: 512000
        },    # OPTIONAL
        PartitionKeys => [
          {
            Name       => 'MyNameString',       # min: 1, max: 255
            Comment    => 'MyCommentString',    # max: 255; OPTIONAL
            Parameters => {
              'MyKeyString' => 'MyParametersMapValue'
              ,    # key: min: 1, max: 255, value: max: 512000
            },    # OPTIONAL
            Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
          },
          ...
        ],    # OPTIONAL
        Retention         => 1,    # OPTIONAL
        StorageDescriptor => {
          AdditionalLocations => [
            'MyLocationString', ...    # max: 2056
          ],    # OPTIONAL
          BucketColumns => [
            'MyNameString', ...    # min: 1, max: 255
          ],    # OPTIONAL
          Columns => [
            {
              Name       => 'MyNameString',       # min: 1, max: 255
              Comment    => 'MyCommentString',    # max: 255; OPTIONAL
              Parameters => {
                'MyKeyString' => 'MyParametersMapValue'
                ,    # key: min: 1, max: 255, value: max: 512000
              },    # OPTIONAL
              Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
            },
            ...
          ],    # OPTIONAL
          Compressed      => 1,                     # OPTIONAL
          InputFormat     => 'MyFormatString',      # max: 128; OPTIONAL
          Location        => 'MyLocationString',    # max: 2056
          NumberOfBuckets => 1,                     # OPTIONAL
          OutputFormat    => 'MyFormatString',      # max: 128; OPTIONAL
          Parameters      => {
            'MyKeyString' => 'MyParametersMapValue'
            ,    # key: min: 1, max: 255, value: max: 512000
          },    # OPTIONAL
          SchemaReference => {
            SchemaId => {
              RegistryName =>
                'MySchemaRegistryNameString',    # min: 1, max: 255; OPTIONAL
              SchemaArn  => 'MyGlueResourceArn', # min: 1, max: 10240; OPTIONAL
              SchemaName =>
                'MySchemaRegistryNameString',    # min: 1, max: 255; OPTIONAL
            },    # OPTIONAL
            SchemaVersionId =>
              'MySchemaVersionIdString',    # min: 36, max: 36; OPTIONAL
            SchemaVersionNumber => 1,       # min: 1, max: 100000; OPTIONAL
          },    # OPTIONAL
          SerdeInfo => {
            Name       => 'MyNameString',    # min: 1, max: 255
            Parameters => {
              'MyKeyString' => 'MyParametersMapValue'
              ,    # key: min: 1, max: 255, value: max: 512000
            },    # OPTIONAL
            SerializationLibrary => 'MyNameString',    # min: 1, max: 255
          },    # OPTIONAL
          SkewedInfo => {
            SkewedColumnNames => [
              'MyNameString', ...    # min: 1, max: 255
            ],    # OPTIONAL
            SkewedColumnValueLocationMaps =>
              { 'MyColumnValuesString' => 'MyColumnValuesString', },  # OPTIONAL
            SkewedColumnValues => [ 'MyColumnValuesString', ... ],    # OPTIONAL
          },    # OPTIONAL
          SortColumns => [
            {
              Column    => 'MyNameString',    # min: 1, max: 255
              SortOrder => 1,                 # max: 1

            },
            ...
          ],    # OPTIONAL
          StoredAsSubDirectories => 1,    # OPTIONAL
        },    # OPTIONAL
        TableType   => 'MyTableTypeString',    # max: 255; OPTIONAL
        TargetTable => {
          CatalogId    => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
          DatabaseName => 'MyNameString',         # min: 1, max: 255
          Name         => 'MyNameString',         # min: 1, max: 255
          Region       => 'MyNameString',         # min: 1, max: 255
        },    # OPTIONAL
        ViewDefinition => {
          Definer         => 'MyArnString',    # min: 20, max: 2048; OPTIONAL
          IsProtected     => 1,                # OPTIONAL
          Representations => [
            {
              Dialect => 'REDSHIFT', # values: REDSHIFT, ATHENA, SPARK; OPTIONAL
              DialectVersion =>
                'MyViewDialectVersionString',    # min: 1, max: 255; OPTIONAL
              ValidationConnection => 'MyNameString',    # min: 1, max: 255
              ViewExpandedText => 'MyViewTextString',    # max: 409600; OPTIONAL
              ViewOriginalText => 'MyViewTextString',    # max: 409600; OPTIONAL
            },
            ...
          ],    # min: 1, max: 10; OPTIONAL
          SubObjects => [
            'MyArnString', ...    # min: 20, max: 2048; OPTIONAL
          ],    # max: 10; OPTIONAL
        },    # OPTIONAL
        ViewExpandedText => 'MyViewTextString',    # max: 409600; OPTIONAL
        ViewOriginalText => 'MyViewTextString',    # max: 409600; OPTIONAL
      },
      CatalogId            => 'MyCatalogIdString',    # OPTIONAL
      OpenTableFormatInput => {
        IcebergInput => {
          MetadataOperation => 'CREATE',            # values: CREATE
          Version           => 'MyVersionString',   # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      PartitionIndexes => [
        {
          IndexName => 'MyNameString',    # min: 1, max: 255
          Keys      => [
            'MyNameString', ...           # min: 1, max: 255
          ],    # min: 1

        },
        ...
      ],    # OPTIONAL
      TransactionId => 'MyTransactionIdString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateTable>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog in which to create the C<Table>. If none is
supplied, the Amazon Web Services account ID is used by default.



=head2 B<REQUIRED> DatabaseName => Str

The catalog database in which to create the new table. For Hive
compatibility, this name is entirely lowercase.



=head2 OpenTableFormatInput => L<Paws::Glue::OpenTableFormatInput>

Specifies an C<OpenTableFormatInput> structure when creating an open
format table.



=head2 PartitionIndexes => ArrayRef[L<Paws::Glue::PartitionIndex>]

A list of partition indexes, C<PartitionIndex> structures, to create in
the table.



=head2 B<REQUIRED> TableInput => L<Paws::Glue::TableInput>

The C<TableInput> object that defines the metadata table to create in
the catalog.



=head2 TransactionId => Str

The ID of the transaction.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTable in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

