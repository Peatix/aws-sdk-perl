
package Paws::BedrockAgent::IngestKnowledgeBaseDocuments;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dataSourceId', required => 1);
  has Documents => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::KnowledgeBaseDocument]', traits => ['NameInRequest'], request_name => 'documents', required => 1);
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'IngestKnowledgeBaseDocuments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/documents');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::IngestKnowledgeBaseDocumentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::IngestKnowledgeBaseDocuments - Arguments for method IngestKnowledgeBaseDocuments on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method IngestKnowledgeBaseDocuments on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method IngestKnowledgeBaseDocuments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to IngestKnowledgeBaseDocuments.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $IngestKnowledgeBaseDocumentsResponse =
      $bedrock -agent->IngestKnowledgeBaseDocuments(
      DataSourceId => 'MyId',
      Documents    => [
        {
          Content => {
            DataSourceType => 'CUSTOM',    # values: CUSTOM, S3
            Custom         => {
              CustomDocumentIdentifier => {
                Id => 'MyCustomDocumentIdentifierIdString',  # min: 1, max: 2048

              },
              SourceType    => 'IN_LINE',    # values: IN_LINE, S3_LOCATION
              InlineContent => {
                Type        => 'BYTE',       # values: BYTE, TEXT
                ByteContent => {
                  Data     => 'BlobByteContentBlob',    # min: 1, max: 5242880
                  MimeType => 'MyByteContentDocMimeTypeString',

                },    # OPTIONAL
                TextContent => {
                  Data => 'MyData',    # min: 1, max: 5242880

                },    # OPTIONAL
              },    # OPTIONAL
              S3Location => {
                Uri                  => 'MyS3ObjectUri',    # min: 1, max: 1024
                BucketOwnerAccountId =>
                  'MyBucketOwnerAccountId',    # min: 12, max: 12; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            S3 => {
              S3Location => {
                Uri => 'MyS3BucketUri',    # min: 1, max: 2048

              },

            },    # OPTIONAL
          },
          Metadata => {
            Type =>
              'IN_LINE_ATTRIBUTE',    # values: IN_LINE_ATTRIBUTE, S3_LOCATION
            InlineAttributes => [
              {
                Key   => 'MyKey',     # min: 1, max: 200
                Value => {
                  Type =>
                    'BOOLEAN',    # values: BOOLEAN, NUMBER, STRING, STRING_LIST
                  BooleanValue    => 1,    # OPTIONAL
                  NumberValue     => 1,    # OPTIONAL
                  StringListValue => [
                    'MyStringValue', ...    # min: 1, max: 2048
                  ],    # min: 1, max: 10; OPTIONAL
                  StringValue => 'MyStringValue',    # min: 1, max: 2048
                },

              },
              ...
            ],    # min: 1, max: 50; OPTIONAL
            S3Location => {
              Uri                  => 'MyS3ObjectUri',    # min: 1, max: 1024
              BucketOwnerAccountId =>
                'MyBucketOwnerAccountId',    # min: 12, max: 12; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      KnowledgeBaseId => 'MyId',
      ClientToken     => 'MyClientToken',    # OPTIONAL
      );

    # Results:
    my $DocumentDetails =
      $IngestKnowledgeBaseDocumentsResponse->DocumentDetails;

 # Returns a L<Paws::BedrockAgent::IngestKnowledgeBaseDocumentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/IngestKnowledgeBaseDocuments>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 B<REQUIRED> DataSourceId => Str

The unique identifier of the data source connected to the knowledge
base that you're adding documents to.



=head2 B<REQUIRED> Documents => ArrayRef[L<Paws::BedrockAgent::KnowledgeBaseDocument>]

A list of objects, each of which contains information about the
documents to add.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The unique identifier of the knowledge base to ingest the documents
into.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method IngestKnowledgeBaseDocuments in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

