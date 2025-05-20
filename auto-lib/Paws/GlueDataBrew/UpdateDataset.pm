
package Paws::GlueDataBrew::UpdateDataset;
  use Moose;
  has Format => (is => 'ro', isa => 'Str');
  has FormatOptions => (is => 'ro', isa => 'Paws::GlueDataBrew::FormatOptions');
  has Input => (is => 'ro', isa => 'Paws::GlueDataBrew::Input', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has PathOptions => (is => 'ro', isa => 'Paws::GlueDataBrew::PathOptions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasets/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::UpdateDatasetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::UpdateDataset - Arguments for method UpdateDataset on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataset on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method UpdateDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataset.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $UpdateDatasetResponse = $databrew->UpdateDataset(
      Input => {
        DataCatalogInputDefinition => {
          DatabaseName  => 'MyDatabaseName',    # min: 1, max: 255
          TableName     => 'MyTableName',       # min: 1, max: 255
          CatalogId     => 'MyCatalogId',       # min: 1, max: 255; OPTIONAL
          TempDirectory => {
            Bucket      => 'MyBucket',          # min: 3, max: 63
            BucketOwner => 'MyBucketOwner',     # min: 12, max: 12; OPTIONAL
            Key         => 'MyKey',             # min: 1, max: 1280; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        DatabaseInputDefinition => {
          GlueConnectionName => 'MyGlueConnectionName',    # min: 1, max: 255
          DatabaseTableName  =>
            'MyDatabaseTableName',    # min: 1, max: 255; OPTIONAL
          QueryString   => 'MyQueryString',    # min: 1, max: 10000; OPTIONAL
          TempDirectory => {
            Bucket      => 'MyBucket',         # min: 3, max: 63
            BucketOwner => 'MyBucketOwner',    # min: 12, max: 12; OPTIONAL
            Key         => 'MyKey',            # min: 1, max: 1280; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        Metadata => {
          SourceArn => 'MyArn',    # min: 20, max: 2048; OPTIONAL
        },    # OPTIONAL
        S3InputDefinition => {
          Bucket      => 'MyBucket',         # min: 3, max: 63
          BucketOwner => 'MyBucketOwner',    # min: 12, max: 12; OPTIONAL
          Key         => 'MyKey',            # min: 1, max: 1280; OPTIONAL
        },    # OPTIONAL
      },
      Name          => 'MyDatasetName',
      Format        => 'CSV',             # OPTIONAL
      FormatOptions => {
        Csv => {
          Delimiter => 'MyDelimiter',    # min: 1, max: 1; OPTIONAL
          HeaderRow => 1,                # OPTIONAL
        },    # OPTIONAL
        Excel => {
          HeaderRow    => 1,    # OPTIONAL
          SheetIndexes => [
            1, ...              # max: 200
          ],    # min: 1, max: 1; OPTIONAL
          SheetNames => [
            'MySheetName', ...    # min: 1, max: 31
          ],    # min: 1, max: 1; OPTIONAL
        },    # OPTIONAL
        Json => {
          MultiLine => 1,    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      PathOptions => {
        FilesLimit => {
          MaxFiles  => 1,              # min: 1
          Order     => 'DESCENDING',   # values: DESCENDING, ASCENDING; OPTIONAL
          OrderedBy =>
            'LAST_MODIFIED_DATE',      # values: LAST_MODIFIED_DATE; OPTIONAL
        },    # OPTIONAL
        LastModifiedDateCondition => {
          Expression => 'MyExpression',    # min: 4, max: 1024
          ValuesMap  => {
            'MyValueReference' =>
              'MyConditionValue',    # key: min: 2, max: 128, value: max: 1024
          },

        },    # OPTIONAL
        Parameters => {
          'MyPathParameterName' => {
            Name => 'MyPathParameterName',    # min: 1, max: 255
            Type => 'Datetime',               # values: Datetime, Number, String
            CreateColumn    => 1,             # OPTIONAL
            DatetimeOptions => {
              Format         => 'MyDatetimeFormat', # min: 2, max: 100
              LocaleCode     => 'MyLocaleCode',     # min: 2, max: 100; OPTIONAL
              TimezoneOffset => 'MyTimezoneOffset', # min: 1, max: 6; OPTIONAL
            },    # OPTIONAL
            Filter => {
              Expression => 'MyExpression',    # min: 4, max: 1024
              ValuesMap  => {
                'MyValueReference' =>
                  'MyConditionValue',  # key: min: 2, max: 128, value: max: 1024
              },

            },    # OPTIONAL
          },    # key: min: 1, max: 255
        },    # min: 1, max: 10; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Name = $UpdateDatasetResponse->Name;

    # Returns a L<Paws::GlueDataBrew::UpdateDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/UpdateDataset>

=head1 ATTRIBUTES


=head2 Format => Str

The file format of a dataset that is created from an Amazon S3 file or
folder.

Valid values are: C<"CSV">, C<"JSON">, C<"PARQUET">, C<"EXCEL">, C<"ORC">

=head2 FormatOptions => L<Paws::GlueDataBrew::FormatOptions>





=head2 B<REQUIRED> Input => L<Paws::GlueDataBrew::Input>





=head2 B<REQUIRED> Name => Str

The name of the dataset to be updated.



=head2 PathOptions => L<Paws::GlueDataBrew::PathOptions>

A set of options that defines how DataBrew interprets an Amazon S3 path
of the dataset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataset in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

