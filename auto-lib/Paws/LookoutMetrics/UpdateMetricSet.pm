
package Paws::LookoutMetrics::UpdateMetricSet;
  use Moose;
  has DimensionFilterList => (is => 'ro', isa => 'ArrayRef[Paws::LookoutMetrics::MetricSetDimensionFilter]');
  has DimensionList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MetricList => (is => 'ro', isa => 'ArrayRef[Paws::LookoutMetrics::Metric]');
  has MetricSetArn => (is => 'ro', isa => 'Str', required => 1);
  has MetricSetDescription => (is => 'ro', isa => 'Str');
  has MetricSetFrequency => (is => 'ro', isa => 'Str');
  has MetricSource => (is => 'ro', isa => 'Paws::LookoutMetrics::MetricSource');
  has Offset => (is => 'ro', isa => 'Int');
  has TimestampColumn => (is => 'ro', isa => 'Paws::LookoutMetrics::TimestampColumn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMetricSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateMetricSet');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutMetrics::UpdateMetricSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::UpdateMetricSet - Arguments for method UpdateMetricSet on L<Paws::LookoutMetrics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMetricSet on the
L<Amazon Lookout for Metrics|Paws::LookoutMetrics> service. Use the attributes of this class
as arguments to method UpdateMetricSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMetricSet.

=head1 SYNOPSIS

    my $lookoutmetrics = Paws->service('LookoutMetrics');
    my $UpdateMetricSetResponse = $lookoutmetrics->UpdateMetricSet(
      MetricSetArn        => 'MyArn',
      DimensionFilterList => [
        {
          FilterList => [
            {
              DimensionValue  => 'MyDimensionValue',  # OPTIONAL
              FilterOperation => 'EQUALS',            # values: EQUALS; OPTIONAL
            },
            ...
          ],    # min: 1; OPTIONAL
          Name => 'MyColumnName',    # min: 1, max: 63; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      DimensionList => [
        'MyColumnName', ...    # min: 1, max: 63; OPTIONAL
      ],    # OPTIONAL
      MetricList => [
        {
          AggregationFunction => 'AVG',             # values: AVG, SUM
          MetricName          => 'MyColumnName',    # min: 1, max: 63; OPTIONAL
          Namespace           => 'MyNamespace',     # min: 1, max: 255; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MetricSetDescription => 'MyMetricSetDescription',    # OPTIONAL
      MetricSetFrequency   => 'P1D',                       # OPTIONAL
      MetricSource         => {
        AppFlowConfig => {
          FlowName => 'MyFlowName',    # max: 256; OPTIONAL
          RoleArn  => 'MyArn',         # max: 256
        },    # OPTIONAL
        AthenaSourceConfig => {
          BackTestConfiguration => {
            RunBackTestMode => 1,

          },    # OPTIONAL
          DataCatalog   => 'MyAthenaDataCatalog',   # min: 1, max: 256; OPTIONAL
          DatabaseName  => 'MyAthenaDatabaseName',  # min: 1, max: 255; OPTIONAL
          RoleArn       => 'MyArn',                 # max: 256
          S3ResultsPath => 'MyAthenaS3ResultsPath', # max: 1024; OPTIONAL
          TableName     => 'MyAthenaTableName',     # min: 1, max: 128; OPTIONAL
          WorkGroupName => 'MyAthenaWorkGroupName', # min: 1, max: 128; OPTIONAL
        },    # OPTIONAL
        CloudWatchConfig => {
          BackTestConfiguration => {
            RunBackTestMode => 1,

          },    # OPTIONAL
          RoleArn => 'MyArn',    # max: 256
        },    # OPTIONAL
        RDSSourceConfig => {
          DBInstanceIdentifier =>
            'MyRDSDatabaseIdentifier',    # min: 1, max: 63; OPTIONAL
          DatabaseHost => 'MyDatabaseHost',     # min: 1, max: 253; OPTIONAL
          DatabaseName => 'MyRDSDatabaseName',  # min: 1, max: 64; OPTIONAL
          DatabasePort => 1,                    # min: 1, max: 65535; OPTIONAL
          RoleArn      => 'MyArn',              # max: 256
          SecretManagerArn => 'MyPoirotSecretManagerArn',   # max: 256; OPTIONAL
          TableName        => 'MyTableName',    # min: 1, max: 100; OPTIONAL
          VpcConfiguration => {
            SecurityGroupIdList => [
              'MySecurityGroupId', ...          # min: 1, max: 255
            ],
            SubnetIdList => [
              'MySubnetId', ...                 # max: 255
            ],

          },    # OPTIONAL
        },    # OPTIONAL
        RedshiftSourceConfig => {
          ClusterIdentifier =>
            'MyRedshiftClusterIdentifier',    # min: 1, max: 63; OPTIONAL
          DatabaseHost => 'MyDatabaseHost',         # min: 1, max: 253; OPTIONAL
          DatabaseName => 'MyRedshiftDatabaseName', # min: 1, max: 100; OPTIONAL
          DatabasePort => 1,          # min: 1, max: 65535; OPTIONAL
          RoleArn      => 'MyArn',    # max: 256
          SecretManagerArn => 'MyPoirotSecretManagerArn',   # max: 256; OPTIONAL
          TableName        => 'MyTableName',    # min: 1, max: 100; OPTIONAL
          VpcConfiguration => {
            SecurityGroupIdList => [
              'MySecurityGroupId', ...          # min: 1, max: 255
            ],
            SubnetIdList => [
              'MySubnetId', ...                 # max: 255
            ],

          },    # OPTIONAL
        },    # OPTIONAL
        S3SourceConfig => {
          FileFormatDescriptor => {
            CsvFormatDescriptor => {
              Charset         => 'MyCharset',     # max: 63; OPTIONAL
              ContainsHeader  => 1,
              Delimiter       => 'MyDelimiter',   # max: 1; OPTIONAL
              FileCompression => 'NONE',          # values: NONE, GZIP; OPTIONAL
              HeaderList      => [
                'MyColumnName', ...               # min: 1, max: 63; OPTIONAL
              ],    # OPTIONAL
              QuoteSymbol => 'MyQuoteSymbol',    # max: 1; OPTIONAL
            },    # OPTIONAL
            JsonFormatDescriptor => {
              Charset         => 'MyCharset',    # max: 63; OPTIONAL
              FileCompression => 'NONE',         # values: NONE, GZIP; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          HistoricalDataPathList => [
            'MyHistoricalDataPath', ...    # max: 1024
          ],    # min: 1, max: 1; OPTIONAL
          RoleArn           => 'MyArn',    # max: 256
          TemplatedPathList => [
            'MyTemplatedPath', ...         # max: 1024
          ],    # min: 1, max: 1; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Offset          => 1,    # OPTIONAL
      TimestampColumn => {
        ColumnFormat => 'MyDateTimeFormat',    # max: 63; OPTIONAL
        ColumnName   => 'MyColumnName',        # min: 1, max: 63; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $MetricSetArn = $UpdateMetricSetResponse->MetricSetArn;

    # Returns a L<Paws::LookoutMetrics::UpdateMetricSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics/UpdateMetricSet>

=head1 ATTRIBUTES


=head2 DimensionFilterList => ArrayRef[L<Paws::LookoutMetrics::MetricSetDimensionFilter>]

Describes a list of filters for choosing specific dimensions and
specific values. Each filter consists of the dimension and one of its
values that you want to include. When multiple dimensions or values are
specified, the dimensions are joined with an AND operation and the
values are joined with an OR operation.



=head2 DimensionList => ArrayRef[Str|Undef]

The dimension list.



=head2 MetricList => ArrayRef[L<Paws::LookoutMetrics::Metric>]

The metric list.



=head2 B<REQUIRED> MetricSetArn => Str

The ARN of the dataset to update.



=head2 MetricSetDescription => Str

The dataset's description.



=head2 MetricSetFrequency => Str

The dataset's interval.

Valid values are: C<"P1D">, C<"PT1H">, C<"PT10M">, C<"PT5M">

=head2 MetricSource => L<Paws::LookoutMetrics::MetricSource>





=head2 Offset => Int

After an interval ends, the amount of seconds that the detector waits
before importing data. Offset is only supported for S3, Redshift,
Athena and datasources.



=head2 TimestampColumn => L<Paws::LookoutMetrics::TimestampColumn>

The timestamp column.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMetricSet in L<Paws::LookoutMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

