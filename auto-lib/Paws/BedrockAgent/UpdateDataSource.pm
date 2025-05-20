
package Paws::BedrockAgent::UpdateDataSource;
  use Moose;
  has DataDeletionPolicy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataDeletionPolicy');
  has DataSourceConfiguration => (is => 'ro', isa => 'Paws::BedrockAgent::DataSourceConfiguration', traits => ['NameInRequest'], request_name => 'dataSourceConfiguration', required => 1);
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dataSourceId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ServerSideEncryptionConfiguration => (is => 'ro', isa => 'Paws::BedrockAgent::ServerSideEncryptionConfiguration', traits => ['NameInRequest'], request_name => 'serverSideEncryptionConfiguration');
  has VectorIngestionConfiguration => (is => 'ro', isa => 'Paws::BedrockAgent::VectorIngestionConfiguration', traits => ['NameInRequest'], request_name => 'vectorIngestionConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::UpdateDataSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::UpdateDataSource - Arguments for method UpdateDataSource on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataSource on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method UpdateDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataSource.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $UpdateDataSourceResponse = $bedrock -agent->UpdateDataSource(
      DataSourceConfiguration => {
        Type => 'S3'
        , # values: S3, WEB, CONFLUENCE, SALESFORCE, SHAREPOINT, CUSTOM, REDSHIFT_METADATA
        ConfluenceConfiguration => {
          SourceConfiguration => {
            AuthType => 'BASIC',    # values: BASIC, OAUTH2_CLIENT_CREDENTIALS
            CredentialsSecretArn => 'MySecretArn',
            HostType             => 'SAAS',          # values: SAAS
            HostUrl              => 'MyHttpsUrl',

          },
          CrawlerConfiguration => {
            FilterConfiguration => {
              Type                => 'PATTERN',      # values: PATTERN
              PatternObjectFilter => {
                Filters => [
                  {
                    ObjectType => 'MyFilteredObjectType',    # min: 1, max: 50
                    ExclusionFilters => [
                      'MyFilterPattern', ...                 # min: 1, max: 1000
                    ],    # min: 1, max: 25; OPTIONAL
                    InclusionFilters => [
                      'MyFilterPattern', ...    # min: 1, max: 1000
                    ],    # min: 1, max: 25; OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 25

              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        S3Configuration => {
          BucketArn            => 'MyS3BucketArn',    # min: 1, max: 2048
          BucketOwnerAccountId =>
            'MyBucketOwnerAccountId',    # min: 12, max: 12; OPTIONAL
          InclusionPrefixes => [
            'MyS3Prefix', ...            # min: 1, max: 300
          ],    # min: 1, max: 1; OPTIONAL
        },    # OPTIONAL
        SalesforceConfiguration => {
          SourceConfiguration => {
            AuthType =>
              'OAUTH2_CLIENT_CREDENTIALS',   # values: OAUTH2_CLIENT_CREDENTIALS
            CredentialsSecretArn => 'MySecretArn',
            HostUrl              => 'MyHttpsUrl',

          },
          CrawlerConfiguration => {
            FilterConfiguration => {
              Type                => 'PATTERN',    # values: PATTERN
              PatternObjectFilter => {
                Filters => [
                  {
                    ObjectType => 'MyFilteredObjectType',    # min: 1, max: 50
                    ExclusionFilters => [
                      'MyFilterPattern', ...                 # min: 1, max: 1000
                    ],    # min: 1, max: 25; OPTIONAL
                    InclusionFilters => [
                      'MyFilterPattern', ...    # min: 1, max: 1000
                    ],    # min: 1, max: 25; OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 25

              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        SharePointConfiguration => {
          SourceConfiguration => {
            AuthType => 'OAUTH2_CLIENT_CREDENTIALS'
            , # values: OAUTH2_CLIENT_CREDENTIALS, OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS
            CredentialsSecretArn => 'MySecretArn',
            Domain               => 'MySharePointDomain',     # min: 1, max: 50
            HostType             => 'ONLINE',                 # values: ONLINE
            SiteUrls             => [ 'MyHttpsUrl', ... ],    # min: 1, max: 100
            TenantId => 'MyMicrosoft365TenantId',   # min: 36, max: 36; OPTIONAL
          },
          CrawlerConfiguration => {
            FilterConfiguration => {
              Type                => 'PATTERN',     # values: PATTERN
              PatternObjectFilter => {
                Filters => [
                  {
                    ObjectType => 'MyFilteredObjectType',    # min: 1, max: 50
                    ExclusionFilters => [
                      'MyFilterPattern', ...                 # min: 1, max: 1000
                    ],    # min: 1, max: 25; OPTIONAL
                    InclusionFilters => [
                      'MyFilterPattern', ...    # min: 1, max: 1000
                    ],    # min: 1, max: 25; OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 25

              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        WebConfiguration => {
          SourceConfiguration => {
            UrlConfiguration => {
              SeedUrls => [
                {
                  Url => 'MyUrl',    # OPTIONAL
                },
                ...
              ],    # min: 1, max: 100; OPTIONAL
            },

          },
          CrawlerConfiguration => {
            CrawlerLimits => {
              MaxPages  => 1,    # min: 1; OPTIONAL
              RateLimit => 1,    # min: 1, max: 300; OPTIONAL
            },    # OPTIONAL
            ExclusionFilters => [
              'MyFilterPattern', ...    # min: 1, max: 1000
            ],    # min: 1, max: 25; OPTIONAL
            InclusionFilters => [
              'MyFilterPattern', ...    # min: 1, max: 1000
            ],    # min: 1, max: 25; OPTIONAL
            Scope => 'HOST_ONLY',    # values: HOST_ONLY, SUBDOMAINS; OPTIONAL
            UserAgent       => 'MyUserAgent',       # min: 15, max: 40; OPTIONAL
            UserAgentHeader => 'MyUserAgentHeader', # min: 61, max: 86; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      DataSourceId                      => 'MyId',
      KnowledgeBaseId                   => 'MyId',
      Name                              => 'MyName',
      DataDeletionPolicy                => 'RETAIN',           # OPTIONAL
      Description                       => 'MyDescription',    # OPTIONAL
      ServerSideEncryptionConfiguration => {
        KmsKeyArn => 'MyKmsKeyArn',    # min: 1, max: 2048; OPTIONAL
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
        ContextEnrichmentConfiguration => {
          Type => 'BEDROCK_FOUNDATION_MODEL', # values: BEDROCK_FOUNDATION_MODEL
          BedrockFoundationModelConfiguration => {
            EnrichmentStrategyConfiguration => {
              Method =>
                'CHUNK_ENTITY_EXTRACTION',    # values: CHUNK_ENTITY_EXTRACTION

            },
            ModelArn => 'MyBedrockModelArn',    # min: 1, max: 2048

          },    # OPTIONAL
        },    # OPTIONAL
        CustomTransformationConfiguration => {
          IntermediateStorage => {
            S3Location => {
              Uri => 'MyS3BucketUri',    # min: 1, max: 2048

            },

          },
          Transformations => [
            {
              StepToApply            => 'POST_CHUNKING', # values: POST_CHUNKING
              TransformationFunction => {
                TransformationLambdaConfiguration => {
                  LambdaArn => 'MyLambdaArn',            # max: 2048

                },

              },

            },
            ...
          ],    # min: 1, max: 1

        },    # OPTIONAL
        ParsingConfiguration => {
          ParsingStrategy => 'BEDROCK_FOUNDATION_MODEL'
          ,    # values: BEDROCK_FOUNDATION_MODEL, BEDROCK_DATA_AUTOMATION
          BedrockDataAutomationConfiguration => {
            ParsingModality => 'MULTIMODAL',    # values: MULTIMODAL; OPTIONAL
          },    # OPTIONAL
          BedrockFoundationModelConfiguration => {
            ModelArn        => 'MyBedrockModelArn',    # min: 1, max: 2048
            ParsingModality => 'MULTIMODAL',    # values: MULTIMODAL; OPTIONAL
            ParsingPrompt   => {
              ParsingPromptText => 'MyParsingPromptText',   # min: 1, max: 10000

            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $DataSource = $UpdateDataSourceResponse->DataSource;

    # Returns a L<Paws::BedrockAgent::UpdateDataSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/UpdateDataSource>

=head1 ATTRIBUTES


=head2 DataDeletionPolicy => Str

The data deletion policy for the data source that you want to update.

Valid values are: C<"RETAIN">, C<"DELETE">

=head2 B<REQUIRED> DataSourceConfiguration => L<Paws::BedrockAgent::DataSourceConfiguration>

The connection configuration for the data source that you want to
update.



=head2 B<REQUIRED> DataSourceId => Str

The unique identifier of the data source.



=head2 Description => Str

Specifies a new description for the data source.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The unique identifier of the knowledge base for the data source.



=head2 B<REQUIRED> Name => Str

Specifies a new name for the data source.



=head2 ServerSideEncryptionConfiguration => L<Paws::BedrockAgent::ServerSideEncryptionConfiguration>

Contains details about server-side encryption of the data source.



=head2 VectorIngestionConfiguration => L<Paws::BedrockAgent::VectorIngestionConfiguration>

Contains details about how to ingest the documents in the data source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataSource in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

