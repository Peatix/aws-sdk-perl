
package Paws::BedrockAgent::UpdateKnowledgeBase;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has KnowledgeBaseConfiguration => (is => 'ro', isa => 'Paws::BedrockAgent::KnowledgeBaseConfiguration', traits => ['NameInRequest'], request_name => 'knowledgeBaseConfiguration', required => 1);
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has StorageConfiguration => (is => 'ro', isa => 'Paws::BedrockAgent::StorageConfiguration', traits => ['NameInRequest'], request_name => 'storageConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateKnowledgeBase');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgebases/{knowledgeBaseId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::UpdateKnowledgeBaseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::UpdateKnowledgeBase - Arguments for method UpdateKnowledgeBase on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateKnowledgeBase on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method UpdateKnowledgeBase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateKnowledgeBase.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $UpdateKnowledgeBaseResponse = $bedrock -agent->UpdateKnowledgeBase(
      KnowledgeBaseConfiguration => {
        Type => 'VECTOR',    # values: VECTOR, KENDRA, SQL
        KendraKnowledgeBaseConfiguration => {
          KendraIndexArn => 'MyKendraIndexArn',

        },                   # OPTIONAL
        SqlKnowledgeBaseConfiguration => {
          Type                  => 'REDSHIFT',    # values: REDSHIFT
          RedshiftConfiguration => {
            QueryEngineConfiguration => {
              Type => 'SERVERLESS',    # values: SERVERLESS, PROVISIONED
              ProvisionedConfiguration => {
                AuthConfiguration => {
                  Type => 'IAM',    # values: IAM, USERNAME_PASSWORD, USERNAME
                  DatabaseUser              => 'MyString',       # OPTIONAL
                  UsernamePasswordSecretArn => 'MySecretArn',    # OPTIONAL
                },
                ClusterIdentifier =>
                  'MyRedshiftClusterIdentifier',    # min: 1, max: 63

              },    # OPTIONAL
              ServerlessConfiguration => {
                AuthConfiguration => {
                  Type => 'IAM',    # values: IAM, USERNAME_PASSWORD
                  UsernamePasswordSecretArn => 'MySecretArn',    # OPTIONAL
                },
                WorkgroupArn => 'MyWorkgroupArn',

              },    # OPTIONAL
            },
            StorageConfigurations => [
              {
                Type => 'REDSHIFT',    # values: REDSHIFT, AWS_DATA_CATALOG
                AwsDataCatalogConfiguration => {
                  TableNames => [
                    'MyAwsDataCatalogTableName', ...    # min: 1, max: 200
                  ],    # min: 1, max: 1000

                },    # OPTIONAL
                RedshiftConfiguration => {
                  DatabaseName => 'MyRedshiftDatabase',    # min: 1, max: 200

                },    # OPTIONAL
              },
              ...
            ],    # min: 1, max: 1
            QueryGenerationConfiguration => {
              ExecutionTimeoutSeconds => 1,    # min: 1, max: 200; OPTIONAL
              GenerationContext       => {
                CuratedQueries => [
                  {
                    NaturalLanguage =>
                      'MyNaturalLanguageString',    # min: 1, max: 1000
                    Sql => 'MySqlString',           # min: 1, max: 1000

                  },
                  ...
                ],    # max: 10; OPTIONAL
                Tables => [
                  {
                    Name    => 'MyQueryGenerationTableName',
                    Columns => [
                      {
                        Description =>
                          'MyDescriptionString',    # min: 1, max: 200; OPTIONAL
                        Inclusion =>
                          'INCLUDE',    # values: INCLUDE, EXCLUDE; OPTIONAL
                        Name => 'MyQueryGenerationColumnName'
                        ,               # min: 1, max: 127; OPTIONAL
                      },
                      ...
                    ],    # OPTIONAL
                    Description =>
                      'MyDescriptionString',    # min: 1, max: 200; OPTIONAL
                    Inclusion => 'INCLUDE', # values: INCLUDE, EXCLUDE; OPTIONAL
                  },
                  ...
                ],    # max: 50; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        VectorKnowledgeBaseConfiguration => {
          EmbeddingModelArn =>
            'MyBedrockEmbeddingModelArn',    # min: 20, max: 2048
          EmbeddingModelConfiguration => {
            BedrockEmbeddingModelConfiguration => {
              Dimensions        => 1,    # max: 4096; OPTIONAL
              EmbeddingDataType =>
                'FLOAT32',               # values: FLOAT32, BINARY; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          SupplementalDataStorageConfiguration => {
            StorageLocations => [
              {
                Type       => 'S3',    # values: S3
                S3Location => {
                  Uri => 'MyS3BucketUri',    # min: 1, max: 2048

                },    # OPTIONAL
              },
              ...
            ],    # min: 1, max: 1

          },    # OPTIONAL
        },    # OPTIONAL
      },
      KnowledgeBaseId      => 'MyId',
      Name                 => 'MyName',
      RoleArn              => 'MyKnowledgeBaseRoleArn',
      Description          => 'MyDescription',            # OPTIONAL
      StorageConfiguration => {
        Type => 'OPENSEARCH_SERVERLESS'
        , # values: OPENSEARCH_SERVERLESS, PINECONE, REDIS_ENTERPRISE_CLOUD, RDS, MONGO_DB_ATLAS, NEPTUNE_ANALYTICS, OPENSEARCH_MANAGED_CLUSTER
        MongoDbAtlasConfiguration => {
          CollectionName       => 'MyMongoDbAtlasCollectionName',    # max: 63
          CredentialsSecretArn => 'MySecretArn',                     # OPTIONAL
          DatabaseName         => 'MyMongoDbAtlasDatabaseName',      # max: 63
          Endpoint             => 'MyMongoDbAtlasEndpoint',          # max: 2048
          FieldMapping         => {
            MetadataField => 'MyFieldName',                          # max: 2048
            TextField     => 'MyFieldName',                          # max: 2048
            VectorField   => 'MyFieldName',                          # max: 2048

          },
          VectorIndexName     => 'MyMongoDbAtlasIndexName',          # max: 2048
          EndpointServiceName =>
            'MyMongoDbAtlasEndpointServiceName',    # min: 1, max: 255; OPTIONAL
          TextIndexName => 'MyMongoDbAtlasIndexName',    # max: 2048
        },    # OPTIONAL
        NeptuneAnalyticsConfiguration => {
          FieldMapping => {
            MetadataField => 'MyFieldName',    # max: 2048
            TextField     => 'MyFieldName',    # max: 2048

          },
          GraphArn => 'MyGraphArn',            # min: 1, max: 255

        },    # OPTIONAL
        OpensearchManagedClusterConfiguration => {
          DomainArn      => 'MyOpenSearchManagedClusterDomainArn',   # max: 2048
          DomainEndpoint =>
            'MyOpenSearchManagedClusterDomainEndpoint',              # max: 2048
          FieldMapping => {
            MetadataField => 'MyFieldName',                          # max: 2048
            TextField     => 'MyFieldName',                          # max: 2048
            VectorField   => 'MyFieldName',                          # max: 2048

          },
          VectorIndexName =>
            'MyOpenSearchManagedClusterIndexName',    # min: 1, max: 2048

        },    # OPTIONAL
        OpensearchServerlessConfiguration => {
          CollectionArn => 'MyOpenSearchServerlessCollectionArn',    # max: 2048
          FieldMapping  => {
            MetadataField => 'MyFieldName',                          # max: 2048
            TextField     => 'MyFieldName',                          # max: 2048
            VectorField   => 'MyFieldName',                          # max: 2048

          },
          VectorIndexName => 'MyOpenSearchServerlessIndexName',      # max: 2048

        },    # OPTIONAL
        PineconeConfiguration => {
          ConnectionString     => 'MyPineconeConnectionString',    # max: 2048
          CredentialsSecretArn => 'MySecretArn',                   # OPTIONAL
          FieldMapping         => {
            MetadataField => 'MyFieldName',                        # max: 2048
            TextField     => 'MyFieldName',                        # max: 2048

          },
          Namespace => 'MyPineconeNamespace',    # max: 2048; OPTIONAL
        },    # OPTIONAL
        RdsConfiguration => {
          CredentialsSecretArn => 'MySecretArn',          # OPTIONAL
          DatabaseName         => 'MyRdsDatabaseName',    # max: 63
          FieldMapping         => {
            MetadataField       => 'MyColumnName',        # max: 63
            PrimaryKeyField     => 'MyColumnName',        # max: 63
            TextField           => 'MyColumnName',        # max: 63
            VectorField         => 'MyColumnName',        # max: 63
            CustomMetadataField => 'MyColumnName',        # max: 63
          },
          ResourceArn => 'MyRdsArn',
          TableName   => 'MyRdsTableName',                # max: 63

        },    # OPTIONAL
        RedisEnterpriseCloudConfiguration => {
          CredentialsSecretArn => 'MySecretArn',                     # OPTIONAL
          Endpoint             => 'MyRedisEnterpriseCloudEndpoint',  # max: 2048
          FieldMapping         => {
            MetadataField => 'MyFieldName',                          # max: 2048
            TextField     => 'MyFieldName',                          # max: 2048
            VectorField   => 'MyFieldName',                          # max: 2048

          },
          VectorIndexName => 'MyRedisEnterpriseCloudIndexName',      # max: 2048

        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $KnowledgeBase = $UpdateKnowledgeBaseResponse->KnowledgeBase;

    # Returns a L<Paws::BedrockAgent::UpdateKnowledgeBaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/UpdateKnowledgeBase>

=head1 ATTRIBUTES


=head2 Description => Str

Specifies a new description for the knowledge base.



=head2 B<REQUIRED> KnowledgeBaseConfiguration => L<Paws::BedrockAgent::KnowledgeBaseConfiguration>

Specifies the configuration for the embeddings model used for the
knowledge base. You must use the same configuration as when the
knowledge base was created.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The unique identifier of the knowledge base to update.



=head2 B<REQUIRED> Name => Str

Specifies a new name for the knowledge base.



=head2 B<REQUIRED> RoleArn => Str

Specifies a different Amazon Resource Name (ARN) of the IAM role with
permissions to invoke API operations on the knowledge base.



=head2 StorageConfiguration => L<Paws::BedrockAgent::StorageConfiguration>

Specifies the configuration for the vector store used for the knowledge
base. You must use the same configuration as when the knowledge base
was created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateKnowledgeBase in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

