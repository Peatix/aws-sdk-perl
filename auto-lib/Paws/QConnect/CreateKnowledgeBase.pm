
package Paws::QConnect::CreateKnowledgeBase;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has KnowledgeBaseType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'knowledgeBaseType', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RenderingConfiguration => (is => 'ro', isa => 'Paws::QConnect::RenderingConfiguration', traits => ['NameInRequest'], request_name => 'renderingConfiguration');
  has ServerSideEncryptionConfiguration => (is => 'ro', isa => 'Paws::QConnect::ServerSideEncryptionConfiguration', traits => ['NameInRequest'], request_name => 'serverSideEncryptionConfiguration');
  has SourceConfiguration => (is => 'ro', isa => 'Paws::QConnect::SourceConfiguration', traits => ['NameInRequest'], request_name => 'sourceConfiguration');
  has Tags => (is => 'ro', isa => 'Paws::QConnect::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has VectorIngestionConfiguration => (is => 'ro', isa => 'Paws::QConnect::VectorIngestionConfiguration', traits => ['NameInRequest'], request_name => 'vectorIngestionConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKnowledgeBase');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::CreateKnowledgeBaseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::CreateKnowledgeBase - Arguments for method CreateKnowledgeBase on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateKnowledgeBase on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method CreateKnowledgeBase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateKnowledgeBase.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $CreateKnowledgeBaseResponse = $wisdom->CreateKnowledgeBase(
      KnowledgeBaseType      => 'EXTERNAL',
      Name                   => 'MyName',
      ClientToken            => 'MyNonEmptyString',    # OPTIONAL
      Description            => 'MyDescription',       # OPTIONAL
      RenderingConfiguration => {
        TemplateUri => 'MyUri',    # min: 1, max: 4096; OPTIONAL
      },    # OPTIONAL
      ServerSideEncryptionConfiguration => {
        KmsKeyId => 'MyNonEmptyString',    # min: 1, max: 4096
      },    # OPTIONAL
      SourceConfiguration => {
        AppIntegrations => {
          AppIntegrationArn => 'MyGenericArn',    # min: 1, max: 2048
          ObjectFields      => [
            'MyNonEmptyString', ...               # min: 1, max: 4096
          ],    # min: 1, max: 100; OPTIONAL
        },    # OPTIONAL
        ManagedSourceConfiguration => {
          WebCrawlerConfiguration => {
            UrlConfiguration => {
              SeedUrls => [
                {
                  Url => 'MyWebUrl',    # OPTIONAL
                },
                ...
              ],    # min: 1, max: 100; OPTIONAL
            },
            CrawlerLimits => {
              RateLimit => 1,    # min: 1, max: 300; OPTIONAL
            },    # OPTIONAL
            ExclusionFilters => [
              'MyUrlFilterPattern', ...    # min: 1, max: 1000
            ],    # min: 1, max: 25; OPTIONAL
            InclusionFilters => [
              'MyUrlFilterPattern', ...    # min: 1, max: 1000
            ],    # min: 1, max: 25; OPTIONAL
            Scope => 'HOST_ONLY',    # values: HOST_ONLY, SUBDOMAINS; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
      VectorIngestionConfiguration => {
        ChunkingConfiguration => {
          ChunkingStrategy =>
            'FIXED_SIZE',    # values: FIXED_SIZE, NONE, HIERARCHICAL, SEMANTIC
          FixedSizeChunkingConfiguration => {
            MaxTokens         => 1,    # min: 1
            OverlapPercentage => 1,    # min: 1, max: 99

          },    # OPTIONAL
          HierarchicalChunkingConfiguration => {
            LevelConfigurations => [
              {
                MaxTokens => 1,    # min: 1, max: 8192

              },
              ...
            ],    # min: 2, max: 2
            OverlapTokens => 1,    # min: 1

          },    # OPTIONAL
          SemanticChunkingConfiguration => {
            BreakpointPercentileThreshold => 1,    # min: 50, max: 99
            BufferSize                    => 1,    # max: 1
            MaxTokens                     => 1,    # min: 1

          },    # OPTIONAL
        },    # OPTIONAL
        ParsingConfiguration => {
          ParsingStrategy =>
            'BEDROCK_FOUNDATION_MODEL',    # values: BEDROCK_FOUNDATION_MODEL
          BedrockFoundationModelConfiguration => {
            ModelArn      => 'MyBedrockModelArnForParsing',  # min: 1, max: 2048
            ParsingPrompt => {
              ParsingPromptText => 'MyParsingPromptText',   # min: 1, max: 10000

            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $KnowledgeBase = $CreateKnowledgeBaseResponse->KnowledgeBase;

    # Returns a L<Paws::QConnect::CreateKnowledgeBaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/CreateKnowledgeBase>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 Description => Str

The description.



=head2 B<REQUIRED> KnowledgeBaseType => Str

The type of knowledge base. Only CUSTOM knowledge bases allow you to
upload your own content. EXTERNAL knowledge bases support integrations
with third-party systems whose content is synchronized automatically.

Valid values are: C<"EXTERNAL">, C<"CUSTOM">, C<"QUICK_RESPONSES">, C<"MESSAGE_TEMPLATES">, C<"MANAGED">

=head2 B<REQUIRED> Name => Str

The name of the knowledge base.



=head2 RenderingConfiguration => L<Paws::QConnect::RenderingConfiguration>

Information about how to render the content.



=head2 ServerSideEncryptionConfiguration => L<Paws::QConnect::ServerSideEncryptionConfiguration>

The configuration information for the customer managed key used for
encryption.

This KMS key must have a policy that allows C<kms:CreateGrant>,
C<kms:DescribeKey>, C<kms:Decrypt>, and C<kms:GenerateDataKey*>
permissions to the IAM identity using the key to invoke Amazon Q in
Connect.

For more information about setting up a customer managed key for Amazon
Q in Connect, see Enable Amazon Q in Connect for your instance
(https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html).



=head2 SourceConfiguration => L<Paws::QConnect::SourceConfiguration>

The source of the knowledge base content. Only set this argument for
EXTERNAL or Managed knowledge bases.



=head2 Tags => L<Paws::QConnect::Tags>

The tags used to organize, track, or control access for this resource.



=head2 VectorIngestionConfiguration => L<Paws::QConnect::VectorIngestionConfiguration>

Contains details about how to ingest the documents in a data source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateKnowledgeBase in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

