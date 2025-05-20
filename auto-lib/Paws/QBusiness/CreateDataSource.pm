
package Paws::QBusiness::CreateDataSource;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Configuration => (is => 'ro', isa => 'Paws::QBusiness::DataSourceConfiguration', traits => ['NameInRequest'], request_name => 'configuration', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has DocumentEnrichmentConfiguration => (is => 'ro', isa => 'Paws::QBusiness::DocumentEnrichmentConfiguration', traits => ['NameInRequest'], request_name => 'documentEnrichmentConfiguration');
  has IndexId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'indexId', required => 1);
  has MediaExtractionConfiguration => (is => 'ro', isa => 'Paws::QBusiness::MediaExtractionConfiguration', traits => ['NameInRequest'], request_name => 'mediaExtractionConfiguration');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has SyncSchedule => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'syncSchedule');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has VpcConfiguration => (is => 'ro', isa => 'Paws::QBusiness::DataSourceVpcConfiguration', traits => ['NameInRequest'], request_name => 'vpcConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/indices/{indexId}/datasources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::CreateDataSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::CreateDataSource - Arguments for method CreateDataSource on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataSource on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method CreateDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataSource.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $CreateDataSourceResponse = $qbusiness->CreateDataSource(
      ApplicationId => 'MyApplicationId',
      Configuration => {

      },
      DisplayName                     => 'MyDataSourceName',
      IndexId                         => 'MyIndexId',
      ClientToken                     => 'MyClientToken',      # OPTIONAL
      Description                     => 'MyDescription',      # OPTIONAL
      DocumentEnrichmentConfiguration => {
        InlineConfigurations => [
          {
            Condition => {
              Key      => 'MyDocumentAttributeKey',    # min: 1, max: 200
              Operator => 'GREATER_THAN'
              , # values: GREATER_THAN, GREATER_THAN_OR_EQUALS, LESS_THAN, LESS_THAN_OR_EQUALS, EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS, EXISTS, NOT_EXISTS, BEGINS_WITH
              Value => {
                DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                LongValue       => 1,                        # OPTIONAL
                StringListValue => [
                  'MyString', ...                            # min: 1, max: 2048
                ],    # OPTIONAL
                StringValue => 'MyDocumentAttributeValueStringValueString'
                ,     # max: 2048; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            DocumentContentOperator => 'DELETE',    # values: DELETE; OPTIONAL
            Target                  => {
              Key => 'MyDocumentAttributeKey',       # min: 1, max: 200
              AttributeValueOperator => 'DELETE',    # values: DELETE; OPTIONAL
              Value                  => {
                DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                LongValue       => 1,                        # OPTIONAL
                StringListValue => [
                  'MyString', ...                            # min: 1, max: 2048
                ],    # OPTIONAL
                StringValue => 'MyDocumentAttributeValueStringValueString'
                ,     # max: 2048; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 100; OPTIONAL
        PostExtractionHookConfiguration => {
          InvocationCondition => {
            Key      => 'MyDocumentAttributeKey',    # min: 1, max: 200
            Operator => 'GREATER_THAN'
            , # values: GREATER_THAN, GREATER_THAN_OR_EQUALS, LESS_THAN, LESS_THAN_OR_EQUALS, EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS, EXISTS, NOT_EXISTS, BEGINS_WITH
            Value => {
              DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
              LongValue       => 1,                        # OPTIONAL
              StringListValue => [
                'MyString', ...                            # min: 1, max: 2048
              ],    # OPTIONAL
              StringValue => 'MyDocumentAttributeValueStringValueString'
              ,     # max: 2048; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          LambdaArn    => 'MyLambdaArn',       # min: 1, max: 2048; OPTIONAL
          RoleArn      => 'MyRoleArn',         # max: 1284; OPTIONAL
          S3BucketName => 'MyS3BucketName',    # min: 1, max: 63; OPTIONAL
        },    # OPTIONAL
        PreExtractionHookConfiguration => {
          InvocationCondition => {
            Key      => 'MyDocumentAttributeKey',    # min: 1, max: 200
            Operator => 'GREATER_THAN'
            , # values: GREATER_THAN, GREATER_THAN_OR_EQUALS, LESS_THAN, LESS_THAN_OR_EQUALS, EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS, EXISTS, NOT_EXISTS, BEGINS_WITH
            Value => {
              DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
              LongValue       => 1,                        # OPTIONAL
              StringListValue => [
                'MyString', ...                            # min: 1, max: 2048
              ],    # OPTIONAL
              StringValue => 'MyDocumentAttributeValueStringValueString'
              ,     # max: 2048; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          LambdaArn    => 'MyLambdaArn',       # min: 1, max: 2048; OPTIONAL
          RoleArn      => 'MyRoleArn',         # max: 1284; OPTIONAL
          S3BucketName => 'MyS3BucketName',    # min: 1, max: 63; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      MediaExtractionConfiguration => {
        AudioExtractionConfiguration => {
          AudioExtractionStatus => 'ENABLED',    # values: ENABLED, DISABLED

        },    # OPTIONAL
        ImageExtractionConfiguration => {
          ImageExtractionStatus => 'ENABLED',    # values: ENABLED, DISABLED

        },    # OPTIONAL
        VideoExtractionConfiguration => {
          VideoExtractionStatus => 'ENABLED',    # values: ENABLED, DISABLED

        },    # OPTIONAL
      },    # OPTIONAL
      RoleArn      => 'MyRoleArn',         # OPTIONAL
      SyncSchedule => 'MySyncSchedule',    # OPTIONAL
      Tags         => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      VpcConfiguration => {
        SecurityGroupIds => [
          'MySecurityGroupId', ...    # min: 1, max: 200
        ],    # min: 1, max: 10
        SubnetIds => [
          'MySubnetId', ...    # min: 1, max: 200
        ],

      },    # OPTIONAL
    );

    # Results:
    my $DataSourceArn = $CreateDataSourceResponse->DataSourceArn;
    my $DataSourceId  = $CreateDataSourceResponse->DataSourceId;

    # Returns a L<Paws::QBusiness::CreateDataSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/CreateDataSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business application the data source
will be attached to.



=head2 ClientToken => Str

A token you provide to identify a request to create a data source
connector. Multiple calls to the C<CreateDataSource> API with the same
client token will create only one data source connector.



=head2 B<REQUIRED> Configuration => L<Paws::QBusiness::DataSourceConfiguration>

Configuration information to connect your data source repository to
Amazon Q Business. Use this parameter to provide a JSON schema with
configuration information specific to your data source connector.

Each data source has a JSON schema provided by Amazon Q Business that
you must use. For example, the Amazon S3 and Web Crawler connectors
require the following JSON schemas:

=over

=item *

Amazon S3 JSON schema
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/s3-api.html)

=item *

Web Crawler JSON schema
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/web-crawler-api.html)

=back

You can find configuration templates for your specific data source
using the following steps:

=over

=item 1.

Navigate to the Supported connectors
(https://docs.aws.amazon.com/amazonq/latest/business-use-dg/connectors-list.html)
page in the Amazon Q Business User Guide, and select the data source of
your choice.

=item 2.

Then, from your specific data source connector page, select B<Using the
API>. You will find the JSON schema for your data source, including
parameter descriptions, in this section.

=back




=head2 Description => Str

A description for the data source connector.



=head2 B<REQUIRED> DisplayName => Str

A name for the data source connector.



=head2 DocumentEnrichmentConfiguration => L<Paws::QBusiness::DocumentEnrichmentConfiguration>





=head2 B<REQUIRED> IndexId => Str

The identifier of the index that you want to use with the data source
connector.



=head2 MediaExtractionConfiguration => L<Paws::QBusiness::MediaExtractionConfiguration>

The configuration for extracting information from media in documents
during ingestion.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role with permission to access
the data source and required resources.



=head2 SyncSchedule => Str

Sets the frequency for Amazon Q Business to check the documents in your
data source repository and update your index. If you don't set a
schedule, Amazon Q Business won't periodically update the index.

Specify a C<cron-> format schedule string or an empty string to
indicate that the index is updated on demand. You can't specify the
C<Schedule> parameter when the C<Type> parameter is set to C<CUSTOM>.
If you do, you receive a C<ValidationException> exception.



=head2 Tags => ArrayRef[L<Paws::QBusiness::Tag>]

A list of key-value pairs that identify or categorize the data source
connector. You can also use tags to help control access to the data
source connector. Tag keys and values can consist of Unicode letters,
digits, white space, and any of the following symbols: _ . : / = + - @.



=head2 VpcConfiguration => L<Paws::QBusiness::DataSourceVpcConfiguration>

Configuration information for an Amazon VPC (Virtual Private Cloud) to
connect to your data source. For more information, see Using Amazon VPC
with Amazon Q Business connectors
(https://docs.aws.amazon.com/amazonq/latest/business-use-dg/connector-vpc.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataSource in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

