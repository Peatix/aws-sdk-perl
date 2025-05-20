
package Paws::TimestreamQuery::CreateScheduledQuery;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ErrorReportConfiguration => (is => 'ro', isa => 'Paws::TimestreamQuery::ErrorReportConfiguration', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NotificationConfiguration => (is => 'ro', isa => 'Paws::TimestreamQuery::NotificationConfiguration', required => 1);
  has QueryString => (is => 'ro', isa => 'Str', required => 1);
  has ScheduleConfiguration => (is => 'ro', isa => 'Paws::TimestreamQuery::ScheduleConfiguration', required => 1);
  has ScheduledQueryExecutionRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::TimestreamQuery::Tag]');
  has TargetConfiguration => (is => 'ro', isa => 'Paws::TimestreamQuery::TargetConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateScheduledQuery');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamQuery::CreateScheduledQueryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::CreateScheduledQuery - Arguments for method CreateScheduledQuery on L<Paws::TimestreamQuery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateScheduledQuery on the
L<Amazon Timestream Query|Paws::TimestreamQuery> service. Use the attributes of this class
as arguments to method CreateScheduledQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateScheduledQuery.

=head1 SYNOPSIS

    my $query.timestream = Paws->service('TimestreamQuery');
    my $CreateScheduledQueryResponse =
      $query . timestream->CreateScheduledQuery(
      ErrorReportConfiguration => {
        S3Configuration => {
          BucketName       => 'MyS3BucketName',     # min: 3, max: 63
          EncryptionOption => 'SSE_S3',    # values: SSE_S3, SSE_KMS; OPTIONAL
          ObjectKeyPrefix => 'MyS3ObjectKeyPrefix', # min: 1, max: 896; OPTIONAL
        },

      },
      Name                      => 'MyScheduledQueryName',
      NotificationConfiguration => {
        SnsConfiguration => {
          TopicArn => 'MyAmazonResourceName',       # min: 1, max: 2048

        },

      },
      QueryString           => 'MyQueryString',
      ScheduleConfiguration => {
        ScheduleExpression => 'MyScheduleExpression',    # min: 1, max: 256

      },
      ScheduledQueryExecutionRoleArn => 'MyAmazonResourceName',
      ClientToken                    => 'MyClientToken',          # OPTIONAL
      KmsKeyId                       => 'MyStringValue2048',      # OPTIONAL
      Tags                           => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TargetConfiguration => {
        TimestreamConfiguration => {
          DatabaseName      => 'MyResourceName',
          DimensionMappings => [
            {
              DimensionValueType => 'VARCHAR',        # values: VARCHAR
              Name               => 'MySchemaName',

            },
            ...
          ],
          TableName            => 'MyResourceName',
          TimeColumn           => 'MySchemaName',
          MeasureNameColumn    => 'MySchemaName',
          MixedMeasureMappings => [
            {
              MeasureValueType =>
                'BIGINT',    # values: BIGINT, BOOLEAN, DOUBLE, VARCHAR, MULTI
              MeasureName                   => 'MySchemaName',
              MultiMeasureAttributeMappings => [
                {
                  MeasureValueType => 'BIGINT'
                  ,    # values: BIGINT, BOOLEAN, DOUBLE, VARCHAR, TIMESTAMP
                  SourceColumn                    => 'MySchemaName',
                  TargetMultiMeasureAttributeName => 'MySchemaName',
                },
                ...
              ],    # min: 1; OPTIONAL
              SourceColumn      => 'MySchemaName',
              TargetMeasureName => 'MySchemaName',
            },
            ...
          ],    # min: 1; OPTIONAL
          MultiMeasureMappings => {
            MultiMeasureAttributeMappings => [
              {
                MeasureValueType => 'BIGINT'
                ,    # values: BIGINT, BOOLEAN, DOUBLE, VARCHAR, TIMESTAMP
                SourceColumn                    => 'MySchemaName',
                TargetMultiMeasureAttributeName => 'MySchemaName',
              },
              ...
            ],    # min: 1; OPTIONAL
            TargetMultiMeasureName => 'MySchemaName',
          },    # OPTIONAL
        },

      },    # OPTIONAL
      );

    # Results:
    my $Arn = $CreateScheduledQueryResponse->Arn;

    # Returns a L<Paws::TimestreamQuery::CreateScheduledQueryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/query.timestream/CreateScheduledQuery>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Using a ClientToken makes the call to CreateScheduledQuery idempotent,
in other words, making the same request repeatedly will produce the
same result. Making multiple identical CreateScheduledQuery requests
has the same effect as making a single request.

=over

=item *

If CreateScheduledQuery is called without a C<ClientToken>, the Query
SDK generates a C<ClientToken> on your behalf.

=item *

After 8 hours, any request with the same C<ClientToken> is treated as a
new request.

=back




=head2 B<REQUIRED> ErrorReportConfiguration => L<Paws::TimestreamQuery::ErrorReportConfiguration>

Configuration for error reporting. Error reports will be generated when
a problem is encountered when writing the query results.



=head2 KmsKeyId => Str

The Amazon KMS key used to encrypt the scheduled query resource,
at-rest. If the Amazon KMS key is not specified, the scheduled query
resource will be encrypted with a Timestream owned Amazon KMS key. To
specify a KMS key, use the key ID, key ARN, alias name, or alias ARN.
When using an alias name, prefix the name with I<alias/>

If ErrorReportConfiguration uses C<SSE_KMS> as encryption type, the
same KmsKeyId is used to encrypt the error report at rest.



=head2 B<REQUIRED> Name => Str

Name of the scheduled query.



=head2 B<REQUIRED> NotificationConfiguration => L<Paws::TimestreamQuery::NotificationConfiguration>

Notification configuration for the scheduled query. A notification is
sent by Timestream when a query run finishes, when the state is updated
or when you delete it.



=head2 B<REQUIRED> QueryString => Str

The query string to run. Parameter names can be specified in the query
string C<@> character followed by an identifier. The named Parameter
C<@scheduled_runtime> is reserved and can be used in the query to get
the time at which the query is scheduled to run.

The timestamp calculated according to the ScheduleConfiguration
parameter, will be the value of C<@scheduled_runtime> paramater for
each query run. For example, consider an instance of a scheduled query
executing on 2021-12-01 00:00:00. For this instance, the
C<@scheduled_runtime> parameter is initialized to the timestamp
2021-12-01 00:00:00 when invoking the query.



=head2 B<REQUIRED> ScheduleConfiguration => L<Paws::TimestreamQuery::ScheduleConfiguration>

The schedule configuration for the query.



=head2 B<REQUIRED> ScheduledQueryExecutionRoleArn => Str

The ARN for the IAM role that Timestream will assume when running the
scheduled query.



=head2 Tags => ArrayRef[L<Paws::TimestreamQuery::Tag>]

A list of key-value pairs to label the scheduled query.



=head2 TargetConfiguration => L<Paws::TimestreamQuery::TargetConfiguration>

Configuration used for writing the result of a query.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateScheduledQuery in L<Paws::TimestreamQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

