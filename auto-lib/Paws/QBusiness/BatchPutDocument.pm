
package Paws::QBusiness::BatchPutDocument;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has DataSourceSyncId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSourceSyncId');
  has Documents => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::Document]', traits => ['NameInRequest'], request_name => 'documents', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'indexId', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchPutDocument');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/indices/{indexId}/documents');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::BatchPutDocumentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::BatchPutDocument - Arguments for method BatchPutDocument on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchPutDocument on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method BatchPutDocument.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchPutDocument.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $BatchPutDocumentResponse = $qbusiness->BatchPutDocument(
      ApplicationId => 'MyApplicationId',
      Documents     => [
        {
          Id                  => 'MyDocumentId',    # min: 1, max: 1825
          AccessConfiguration => {
            AccessControls => [
              {
                Principals => [
                  {
                    Group => {
                      Access         => 'ALLOW',    # values: ALLOW, DENY
                      MembershipType =>
                        'INDEX',    # values: INDEX, DATASOURCE; OPTIONAL
                      Name => 'MyGroupName',    # min: 1, max: 1024; OPTIONAL
                    },    # OPTIONAL
                    User => {
                      Access => 'ALLOW',       # values: ALLOW, DENY
                      Id     => 'MyUserId',    # min: 1, max: 1024; OPTIONAL
                      MembershipType =>
                        'INDEX',    # values: INDEX, DATASOURCE; OPTIONAL
                    },    # OPTIONAL
                  },
                  ...
                ],
                MemberRelation => 'AND',    # values: AND, OR; OPTIONAL
              },
              ...
            ],
            MemberRelation => 'AND',        # values: AND, OR; OPTIONAL
          },    # OPTIONAL
          Attributes => [
            {
              Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
              Value => {
                DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                LongValue       => 1,                        # OPTIONAL
                StringListValue => [
                  'MyString', ...                            # min: 1, max: 2048
                ],    # OPTIONAL
                StringValue => 'MyDocumentAttributeValueStringValueString'
                ,     # max: 2048; OPTIONAL
              },

            },
            ...
          ],    # min: 1, max: 500; OPTIONAL
          Content => {
            Blob => 'BlobBlob',    # OPTIONAL
            S3   => {
              Bucket => 'MyS3BucketName',    # min: 1, max: 63
              Key    => 'MyS3ObjectKey',     # min: 1, max: 1024

            },    # OPTIONAL
          },    # OPTIONAL
          ContentType => 'PDF'
          , # values: PDF, HTML, MS_WORD, PLAIN_TEXT, PPT, RTF, XML, XSLT, MS_EXCEL, CSV, JSON, MD; OPTIONAL
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
                      'MyString', ...    # min: 1, max: 2048
                    ],    # OPTIONAL
                    StringValue => 'MyDocumentAttributeValueStringValueString'
                    ,     # max: 2048; OPTIONAL
                  },
                },    # OPTIONAL
                DocumentContentOperator => 'DELETE',  # values: DELETE; OPTIONAL
                Target                  => {
                  Key => 'MyDocumentAttributeKey',    # min: 1, max: 200
                  AttributeValueOperator => 'DELETE', # values: DELETE; OPTIONAL
                  Value                  => {
                    DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                    LongValue       => 1,                        # OPTIONAL
                    StringListValue => [
                      'MyString', ...    # min: 1, max: 2048
                    ],    # OPTIONAL
                    StringValue => 'MyDocumentAttributeValueStringValueString'
                    ,     # max: 2048; OPTIONAL
                  },
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
                    'MyString', ...    # min: 1, max: 2048
                  ],    # OPTIONAL
                  StringValue => 'MyDocumentAttributeValueStringValueString'
                  ,     # max: 2048; OPTIONAL
                },
              },    # OPTIONAL
              LambdaArn    => 'MyLambdaArn',       # min: 1, max: 2048; OPTIONAL
              RoleArn      => 'MyRoleArn',         # max: 1284; OPTIONAL
              S3BucketName => 'MyS3BucketName',    # min: 1, max: 63
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
                    'MyString', ...    # min: 1, max: 2048
                  ],    # OPTIONAL
                  StringValue => 'MyDocumentAttributeValueStringValueString'
                  ,     # max: 2048; OPTIONAL
                },
              },    # OPTIONAL
              LambdaArn    => 'MyLambdaArn',       # min: 1, max: 2048; OPTIONAL
              RoleArn      => 'MyRoleArn',         # max: 1284; OPTIONAL
              S3BucketName => 'MyS3BucketName',    # min: 1, max: 63
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
          Title => 'MyTitle',    # min: 1, max: 1024; OPTIONAL
        },
        ...
      ],
      IndexId          => 'MyIndexId',
      DataSourceSyncId => 'MyExecutionId',    # OPTIONAL
      RoleArn          => 'MyRoleArn',        # OPTIONAL
    );

    # Results:
    my $FailedDocuments = $BatchPutDocumentResponse->FailedDocuments;

    # Returns a L<Paws::QBusiness::BatchPutDocumentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/BatchPutDocument>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business application.



=head2 DataSourceSyncId => Str

The identifier of the data source sync during which the documents were
added.



=head2 B<REQUIRED> Documents => ArrayRef[L<Paws::QBusiness::Document>]

One or more documents to add to the index.



=head2 B<REQUIRED> IndexId => Str

The identifier of the Amazon Q Business index to add the documents to.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role with permission to access
your S3 bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchPutDocument in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

