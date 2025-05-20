
package Paws::BedrockAgentRuntime::Retrieve;
  use Moose;
  has GuardrailConfiguration => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::GuardrailConfiguration', traits => ['NameInRequest'], request_name => 'guardrailConfiguration');
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RetrievalConfiguration => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::KnowledgeBaseRetrievalConfiguration', traits => ['NameInRequest'], request_name => 'retrievalConfiguration');
  has RetrievalQuery => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::KnowledgeBaseQuery', traits => ['NameInRequest'], request_name => 'retrievalQuery', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Retrieve');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgebases/{knowledgeBaseId}/retrieve');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgentRuntime::RetrieveResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::Retrieve - Arguments for method Retrieve on L<Paws::BedrockAgentRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Retrieve on the
L<Agents for Amazon Bedrock Runtime|Paws::BedrockAgentRuntime> service. Use the attributes of this class
as arguments to method Retrieve.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Retrieve.

=head1 SYNOPSIS

    my $bedrock-agent-runtime = Paws->service('BedrockAgentRuntime');
    my $RetrieveResponse = $bedrock -agent-runtime->Retrieve(
      KnowledgeBaseId => 'MyKnowledgeBaseId',
      RetrievalQuery  => {
        Text => 'MyKnowledgeBaseQueryTextString',    # max: 1000

      },
      GuardrailConfiguration => {
        GuardrailId => 'MyGuardrailConfigurationGuardrailIdString',    # max: 64
        GuardrailVersion =>
          'MyGuardrailConfigurationGuardrailVersionString',    # min: 1, max: 5

      },    # OPTIONAL
      NextToken              => 'MyNextToken',    # OPTIONAL
      RetrievalConfiguration => {
        VectorSearchConfiguration => {
          Filter => {
            AndAll => [ <RetrievalFilter>, ... ],    # min: 2; OPTIONAL
            Equals => {
              Key   => 'MyFilterKey',                # min: 1, max: 100
              Value => {

              },

            },    # OPTIONAL
            GreaterThan => {
              Key   => 'MyFilterKey',    # min: 1, max: 100
              Value => {

              },

            },    # OPTIONAL
            GreaterThanOrEquals => {
              Key   => 'MyFilterKey',    # min: 1, max: 100
              Value => {

              },

            },    # OPTIONAL
            In => {
              Key   => 'MyFilterKey',    # min: 1, max: 100
              Value => {

              },

            },    # OPTIONAL
            LessThan => {
              Key   => 'MyFilterKey',    # min: 1, max: 100
              Value => {

              },

            },    # OPTIONAL
            LessThanOrEquals => {
              Key   => 'MyFilterKey',    # min: 1, max: 100
              Value => {

              },

            },    # OPTIONAL
            ListContains => {
              Key   => 'MyFilterKey',    # min: 1, max: 100
              Value => {

              },

            },    # OPTIONAL
            NotEquals => {
              Key   => 'MyFilterKey',    # min: 1, max: 100
              Value => {

              },

            },    # OPTIONAL
            NotIn => {
              Key   => 'MyFilterKey',    # min: 1, max: 100
              Value => {

              },

            },    # OPTIONAL
            OrAll      => [ <RetrievalFilter>, ... ],    # min: 2; OPTIONAL
            StartsWith => {
              Key   => 'MyFilterKey',                    # min: 1, max: 100
              Value => {

              },

            },    # OPTIONAL
            StringContains => {
              Key   => 'MyFilterKey',    # min: 1, max: 100
              Value => {

              },

            },    # OPTIONAL
          },    # OPTIONAL
          ImplicitFilterConfiguration => {
            MetadataAttributes => [
              {
                Description => 'MyMetadataAttributeSchemaDescriptionString'
                ,                 # min: 1, max: 1024
                Key  => 'MyMetadataAttributeSchemaKeyString', # min: 1, max: 256
                Type => 'STRING', # values: STRING, NUMBER, BOOLEAN, STRING_LIST

              },
              ...
            ],    # min: 1, max: 25
            ModelArn => 'MyBedrockModelArn',    # min: 1, max: 2048

          },    # OPTIONAL
          NumberOfResults    => 1,          # min: 1, max: 100; OPTIONAL
          OverrideSearchType => 'HYBRID',   # values: HYBRID, SEMANTIC; OPTIONAL
          RerankingConfiguration => {
            Type => 'BEDROCK_RERANKING_MODEL', # values: BEDROCK_RERANKING_MODEL
            BedrockRerankingConfiguration => {
              ModelConfiguration => {
                ModelArn => 'MyBedrockRerankingModelArn',    # min: 1, max: 2048
                AdditionalModelRequestFields => {
                  'MyAdditionalModelRequestFieldsKey' => {

                  },    # key: min: 1, max: 100
                },    # OPTIONAL
              },
              MetadataConfiguration => {
                SelectionMode => 'SELECTIVE',    # values: SELECTIVE, ALL
                SelectiveModeConfiguration => {
                  FieldsToExclude => [
                    {
                      FieldName => 'MyFieldForRerankingFieldNameString'
                      ,    # min: 1, max: 2000

                    },
                    ...
                  ],    # min: 1, max: 100; OPTIONAL
                  FieldsToInclude => [
                    {
                      FieldName => 'MyFieldForRerankingFieldNameString'
                      ,    # min: 1, max: 2000

                    },
                    ...
                  ],    # min: 1, max: 100; OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              NumberOfRerankedResults => 1,    # min: 1, max: 100; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },

      },    # OPTIONAL
    );

    # Results:
    my $GuardrailAction  = $RetrieveResponse->GuardrailAction;
    my $NextToken        = $RetrieveResponse->NextToken;
    my $RetrievalResults = $RetrieveResponse->RetrievalResults;

    # Returns a L<Paws::BedrockAgentRuntime::RetrieveResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime/Retrieve>

=head1 ATTRIBUTES


=head2 GuardrailConfiguration => L<Paws::BedrockAgentRuntime::GuardrailConfiguration>

Guardrail settings.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The unique identifier of the knowledge base to query.



=head2 NextToken => Str

If there are more results than can fit in the response, the response
returns a C<nextToken>. Use this token in the C<nextToken> field of
another request to retrieve the next batch of results.



=head2 RetrievalConfiguration => L<Paws::BedrockAgentRuntime::KnowledgeBaseRetrievalConfiguration>

Contains configurations for the knowledge base query and retrieval
process. For more information, see Query configurations
(https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html).



=head2 B<REQUIRED> RetrievalQuery => L<Paws::BedrockAgentRuntime::KnowledgeBaseQuery>

Contains the query to send the knowledge base.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Retrieve in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

