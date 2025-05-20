
package Paws::QBusiness::UpdateDataSource;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has Configuration => (is => 'ro', isa => 'Paws::QBusiness::DataSourceConfiguration', traits => ['NameInRequest'], request_name => 'configuration');
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dataSourceId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has DocumentEnrichmentConfiguration => (is => 'ro', isa => 'Paws::QBusiness::DocumentEnrichmentConfiguration', traits => ['NameInRequest'], request_name => 'documentEnrichmentConfiguration');
  has IndexId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'indexId', required => 1);
  has MediaExtractionConfiguration => (is => 'ro', isa => 'Paws::QBusiness::MediaExtractionConfiguration', traits => ['NameInRequest'], request_name => 'mediaExtractionConfiguration');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has SyncSchedule => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'syncSchedule');
  has VpcConfiguration => (is => 'ro', isa => 'Paws::QBusiness::DataSourceVpcConfiguration', traits => ['NameInRequest'], request_name => 'vpcConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::UpdateDataSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::UpdateDataSource - Arguments for method UpdateDataSource on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataSource on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method UpdateDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataSource.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $UpdateDataSourceResponse = $qbusiness->UpdateDataSource(
      ApplicationId => 'MyApplicationId',
      DataSourceId  => 'MyDataSourceId',
      IndexId       => 'MyIndexId',
      Configuration => {

      },    # OPTIONAL
      Description                     => 'MyDescription',       # OPTIONAL
      DisplayName                     => 'MyDataSourceName',    # OPTIONAL
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
      RoleArn          => 'MyRoleArn',         # OPTIONAL
      SyncSchedule     => 'MySyncSchedule',    # OPTIONAL
      VpcConfiguration => {
        SecurityGroupIds => [
          'MySecurityGroupId', ...             # min: 1, max: 200
        ],    # min: 1, max: 10
        SubnetIds => [
          'MySubnetId', ...    # min: 1, max: 200
        ],

      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/UpdateDataSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business application the data source is
attached to.



=head2 Configuration => L<Paws::QBusiness::DataSourceConfiguration>





=head2 B<REQUIRED> DataSourceId => Str

The identifier of the data source connector.



=head2 Description => Str

The description of the data source connector.



=head2 DisplayName => Str

A name of the data source connector.



=head2 DocumentEnrichmentConfiguration => L<Paws::QBusiness::DocumentEnrichmentConfiguration>





=head2 B<REQUIRED> IndexId => Str

The identifier of the index attached to the data source connector.



=head2 MediaExtractionConfiguration => L<Paws::QBusiness::MediaExtractionConfiguration>

The configuration for extracting information from media in documents
for your data source.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role with permission to access
the data source and required resources.



=head2 SyncSchedule => Str

The chosen update frequency for your data source.



=head2 VpcConfiguration => L<Paws::QBusiness::DataSourceVpcConfiguration>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataSource in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

