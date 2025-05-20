
package Paws::DynamoDB::ImportTable;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has InputCompressionType => (is => 'ro', isa => 'Str');
  has InputFormat => (is => 'ro', isa => 'Str', required => 1);
  has InputFormatOptions => (is => 'ro', isa => 'Paws::DynamoDB::InputFormatOptions');
  has S3BucketSource => (is => 'ro', isa => 'Paws::DynamoDB::S3BucketSource', required => 1);
  has TableCreationParameters => (is => 'ro', isa => 'Paws::DynamoDB::TableCreationParameters', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::ImportTableOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ImportTable - Arguments for method ImportTable on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportTable on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method ImportTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportTable.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $ImportTableOutput = $dynamodb->ImportTable(
      InputFormat    => 'DYNAMODB_JSON',
      S3BucketSource => {
        S3Bucket      => 'MyS3Bucket',         # max: 255
        S3BucketOwner => 'MyS3BucketOwner',    # OPTIONAL
        S3KeyPrefix   => 'MyS3Prefix',         # max: 1024; OPTIONAL
      },
      TableCreationParameters => {
        AttributeDefinitions => [
          {
            AttributeName => 'MyKeySchemaAttributeName',    # min: 1, max: 255
            AttributeType => 'S',                           # values: S, N, B

          },
          ...
        ],
        KeySchema => [
          {
            AttributeName => 'MyKeySchemaAttributeName',   # min: 1, max: 255
            KeyType       => 'HASH',                       # values: HASH, RANGE

          },
          ...
        ],    # min: 1, max: 2
        TableName   => 'MyTableName',    # min: 3, max: 255
        BillingMode =>
          'PROVISIONED',    # values: PROVISIONED, PAY_PER_REQUEST; OPTIONAL
        GlobalSecondaryIndexes => [
          {
            IndexName => 'MyIndexName',    # min: 3, max: 255
            KeySchema => [
              {
                AttributeName => 'MyKeySchemaAttributeName',  # min: 1, max: 255
                KeyType       => 'HASH',    # values: HASH, RANGE

              },
              ...
            ],    # min: 1, max: 2
            Projection => {
              NonKeyAttributes => [
                'MyNonKeyAttributeName', ...    # min: 1, max: 255
              ],    # min: 1, max: 20; OPTIONAL
              ProjectionType =>
                'ALL',    # values: ALL, KEYS_ONLY, INCLUDE; OPTIONAL
            },
            OnDemandThroughput => {
              MaxReadRequestUnits  => 1,    # OPTIONAL
              MaxWriteRequestUnits => 1,    # OPTIONAL
            },    # OPTIONAL
            ProvisionedThroughput => {
              ReadCapacityUnits  => 1,    # min: 1
              WriteCapacityUnits => 1,    # min: 1

            },    # OPTIONAL
            WarmThroughput => {
              ReadUnitsPerSecond  => 1,    # OPTIONAL
              WriteUnitsPerSecond => 1,    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        OnDemandThroughput => {
          MaxReadRequestUnits  => 1,    # OPTIONAL
          MaxWriteRequestUnits => 1,    # OPTIONAL
        },    # OPTIONAL
        ProvisionedThroughput => {
          ReadCapacityUnits  => 1,    # min: 1
          WriteCapacityUnits => 1,    # min: 1

        },    # OPTIONAL
        SSESpecification => {
          Enabled        => 1,                   # OPTIONAL
          KMSMasterKeyId => 'MyKMSMasterKeyId',  # OPTIONAL
          SSEType        => 'AES256',            # values: AES256, KMS; OPTIONAL
        },    # OPTIONAL
      },
      ClientToken          => 'MyClientToken',    # OPTIONAL
      InputCompressionType => 'GZIP',             # OPTIONAL
      InputFormatOptions   => {
        Csv => {
          Delimiter  => 'MyCsvDelimiter',         # min: 1, max: 1; OPTIONAL
          HeaderList => [
            'MyCsvHeader', ...                    # min: 1, max: 65536
          ],    # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ImportTableDescription = $ImportTableOutput->ImportTableDescription;

    # Returns a L<Paws::DynamoDB::ImportTableOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/ImportTable>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Providing a C<ClientToken> makes the call to C<ImportTableInput>
idempotent, meaning that multiple identical calls have the same effect
as one single call.

A client token is valid for 8 hours after the first request that uses
it is completed. After 8 hours, any request with the same client token
is treated as a new request. Do not resubmit the same request with the
same client token for more than 8 hours, or the result might not be
idempotent.

If you submit a request with the same client token but a change in
other parameters within the 8-hour idempotency window, DynamoDB returns
an C<IdempotentParameterMismatch> exception.



=head2 InputCompressionType => Str

Type of compression to be used on the input coming from the imported
table.

Valid values are: C<"GZIP">, C<"ZSTD">, C<"NONE">

=head2 B<REQUIRED> InputFormat => Str

The format of the source data. Valid values for C<ImportFormat> are
C<CSV>, C<DYNAMODB_JSON> or C<ION>.

Valid values are: C<"DYNAMODB_JSON">, C<"ION">, C<"CSV">

=head2 InputFormatOptions => L<Paws::DynamoDB::InputFormatOptions>

Additional properties that specify how the input is formatted,



=head2 B<REQUIRED> S3BucketSource => L<Paws::DynamoDB::S3BucketSource>

The S3 bucket that provides the source for the import.



=head2 B<REQUIRED> TableCreationParameters => L<Paws::DynamoDB::TableCreationParameters>

Parameters for the table to import the data into.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportTable in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

