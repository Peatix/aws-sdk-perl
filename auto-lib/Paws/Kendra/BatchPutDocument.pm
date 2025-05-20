
package Paws::Kendra::BatchPutDocument;
  use Moose;
  has CustomDocumentEnrichmentConfiguration => (is => 'ro', isa => 'Paws::Kendra::CustomDocumentEnrichmentConfiguration');
  has Documents => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::Document]', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchPutDocument');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::BatchPutDocumentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::BatchPutDocument - Arguments for method BatchPutDocument on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchPutDocument on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method BatchPutDocument.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchPutDocument.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $BatchPutDocumentResponse = $kendra->BatchPutDocument(
      Documents => [
        {
          Id                           => 'MyDocumentId',    # min: 1, max: 2048
          AccessControlConfigurationId =>
            'MyAccessControlConfigurationId',    # min: 1, max: 36; OPTIONAL
          AccessControlList => [
            {
              Access       => 'ALLOW',              # values: ALLOW, DENY
              Name         => 'MyPrincipalName',    # min: 1, max: 200
              Type         => 'USER',               # values: USER, GROUP
              DataSourceId => 'MyDataSourceId',     # min: 1, max: 100; OPTIONAL
            },
            ...
          ],    # OPTIONAL
          Attributes => [
            {
              Key   => 'MyDocumentAttributeKey',    # min: 1, max: 200
              Value => {
                DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                LongValue       => 1,                        # OPTIONAL
                StringListValue => [
                  'MyString', ...                            # min: 1, max: 2048
                ],    # OPTIONAL
                StringValue => 'MyDocumentAttributeStringValue'
                ,     # min: 1, max: 2048; OPTIONAL
              },

            },
            ...
          ],    # OPTIONAL
          Blob        => 'BlobBlob',    # OPTIONAL
          ContentType => 'PDF'
          , # values: PDF, HTML, MS_WORD, PLAIN_TEXT, PPT, RTF, XML, XSLT, MS_EXCEL, CSV, JSON, MD; OPTIONAL
          HierarchicalAccessControlList => [
            {
              PrincipalList => [
                {
                  Access       => 'ALLOW',              # values: ALLOW, DENY
                  Name         => 'MyPrincipalName',    # min: 1, max: 200
                  Type         => 'USER',               # values: USER, GROUP
                  DataSourceId => 'MyDataSourceId', # min: 1, max: 100; OPTIONAL
                },
                ...
              ],    # OPTIONAL

            },
            ...
          ],    # min: 1, max: 30; OPTIONAL
          S3Path => {
            Bucket => 'MyS3BucketName',    # min: 3, max: 63
            Key    => 'MyS3ObjectKey',     # min: 1, max: 1024

          },    # OPTIONAL
          Title => 'MyTitle',    # OPTIONAL
        },
        ...
      ],
      IndexId                               => 'MyIndexId',
      CustomDocumentEnrichmentConfiguration => {
        InlineConfigurations => [
          {
            Condition => {
              ConditionDocumentAttributeKey =>
                'MyDocumentAttributeKey',    # min: 1, max: 200
              Operator => 'GreaterThan'
              , # values: GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
              ConditionOnValue => {
                DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                LongValue       => 1,                        # OPTIONAL
                StringListValue => [
                  'MyString', ...                            # min: 1, max: 2048
                ],    # OPTIONAL
                StringValue => 'MyDocumentAttributeStringValue'
                ,     # min: 1, max: 2048; OPTIONAL
              },
            },    # OPTIONAL
            DocumentContentDeletion => 1,    # OPTIONAL
            Target                  => {
              TargetDocumentAttributeKey =>
                'MyDocumentAttributeKey',    # min: 1, max: 200
              TargetDocumentAttributeValue => {
                DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                LongValue       => 1,                        # OPTIONAL
                StringListValue => [
                  'MyString', ...                            # min: 1, max: 2048
                ],    # OPTIONAL
                StringValue => 'MyDocumentAttributeStringValue'
                ,     # min: 1, max: 2048; OPTIONAL
              },
              TargetDocumentAttributeValueDeletion => 1,    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # max: 100; OPTIONAL
        PostExtractionHookConfiguration => {
          LambdaArn           => 'MyLambdaArn',       # min: 1, max: 2048
          S3Bucket            => 'MyS3BucketName',    # min: 3, max: 63
          InvocationCondition => {
            ConditionDocumentAttributeKey =>
              'MyDocumentAttributeKey',               # min: 1, max: 200
            Operator => 'GreaterThan'
            , # values: GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
            ConditionOnValue => {
              DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
              LongValue       => 1,                        # OPTIONAL
              StringListValue => [
                'MyString', ...                            # min: 1, max: 2048
              ],    # OPTIONAL
              StringValue =>
                'MyDocumentAttributeStringValue',  # min: 1, max: 2048; OPTIONAL
            },
          },    # OPTIONAL
        },    # OPTIONAL
        PreExtractionHookConfiguration => {
          LambdaArn           => 'MyLambdaArn',       # min: 1, max: 2048
          S3Bucket            => 'MyS3BucketName',    # min: 3, max: 63
          InvocationCondition => {
            ConditionDocumentAttributeKey =>
              'MyDocumentAttributeKey',               # min: 1, max: 200
            Operator => 'GreaterThan'
            , # values: GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
            ConditionOnValue => {
              DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
              LongValue       => 1,                        # OPTIONAL
              StringListValue => [
                'MyString', ...                            # min: 1, max: 2048
              ],    # OPTIONAL
              StringValue =>
                'MyDocumentAttributeStringValue',  # min: 1, max: 2048; OPTIONAL
            },
          },    # OPTIONAL
        },    # OPTIONAL
        RoleArn => 'MyRoleArn',    # max: 1284; OPTIONAL
      },    # OPTIONAL
      RoleArn => 'MyRoleArn',    # OPTIONAL
    );

    # Results:
    my $FailedDocuments = $BatchPutDocumentResponse->FailedDocuments;

    # Returns a L<Paws::Kendra::BatchPutDocumentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/BatchPutDocument>

=head1 ATTRIBUTES


=head2 CustomDocumentEnrichmentConfiguration => L<Paws::Kendra::CustomDocumentEnrichmentConfiguration>

Configuration information for altering your document metadata and
content during the document ingestion process when you use the
C<BatchPutDocument> API.

For more information on how to create, modify and delete document
metadata, or make other content alterations when you ingest documents
into Amazon Kendra, see Customizing document metadata during the
ingestion process
(https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html).



=head2 B<REQUIRED> Documents => ArrayRef[L<Paws::Kendra::Document>]

One or more documents to add to the index.

Documents have the following file size limits.

=over

=item *

50 MB total size for any file

=item *

5 MB extracted text for any file

=back

For more information, see Quotas
(https://docs.aws.amazon.com/kendra/latest/dg/quotas.html).



=head2 B<REQUIRED> IndexId => Str

The identifier of the index to add the documents to. You need to create
the index first using the C<CreateIndex> API.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role with permission to access
your S3 bucket. For more information, see IAM access roles for Amazon
Kendra (https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchPutDocument in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

