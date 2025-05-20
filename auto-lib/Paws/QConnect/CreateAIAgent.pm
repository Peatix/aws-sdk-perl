
package Paws::QConnect::CreateAIAgent;
  use Moose;
  has AssistantId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assistantId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Configuration => (is => 'ro', isa => 'Paws::QConnect::AIAgentConfiguration', traits => ['NameInRequest'], request_name => 'configuration', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::QConnect::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);
  has VisibilityStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'visibilityStatus', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAIAgent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistants/{assistantId}/aiagents');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::CreateAIAgentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::CreateAIAgent - Arguments for method CreateAIAgent on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAIAgent on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method CreateAIAgent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAIAgent.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $CreateAIAgentResponse = $wisdom->CreateAIAgent(
      AssistantId   => 'MyUuidOrArn',
      Configuration => {
        AnswerRecommendationAIAgentConfiguration => {
          AnswerGenerationAIGuardrailId => 'MyUuidWithQualifier',    # OPTIONAL
          AnswerGenerationAIPromptId    => 'MyUuidWithQualifier',    # OPTIONAL
          AssociationConfigurations     => [
            {
              AssociationConfigurationData => {
                KnowledgeBaseAssociationConfigurationData => {
                  ContentTagFilter => {
                    AndConditions => [
                      {
                        Key   => 'MyTagKey',      # min: 1, max: 128
                        Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
                      },
                      ...
                    ],    # OPTIONAL
                    OrConditions => [
                      {
                        AndConditions => [
                          {
                            Key   => 'MyTagKey',    # min: 1, max: 128
                            Value => 'MyTagValue',  # min: 1, max: 256; OPTIONAL
                          },
                          ...
                        ],    # OPTIONAL
                        TagCondition => {
                          Key   => 'MyTagKey',      # min: 1, max: 128
                          Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
                        },
                      },
                      ...
                    ],    # OPTIONAL
                    TagCondition => {
                      Key   => 'MyTagKey',      # min: 1, max: 128
                      Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
                    },
                  },    # OPTIONAL
                  MaxResults => 1,    # min: 1, max: 100; OPTIONAL
                  OverrideKnowledgeBaseSearchType =>
                    'HYBRID',         # values: HYBRID, SEMANTIC; OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              AssociationId   => 'MyUuid',    # OPTIONAL
              AssociationType =>
                'KNOWLEDGE_BASE',             # values: KNOWLEDGE_BASE; OPTIONAL
            },
            ...
          ],    # OPTIONAL
          IntentLabelingGenerationAIPromptId =>
            'MyUuidWithQualifier',    # OPTIONAL
          Locale => 'MyNonEmptyString',    # min: 1, max: 4096; OPTIONAL
          QueryReformulationAIPromptId => 'MyUuidWithQualifier',    # OPTIONAL
        },    # OPTIONAL
        ManualSearchAIAgentConfiguration => {
          AnswerGenerationAIGuardrailId => 'MyUuidWithQualifier',    # OPTIONAL
          AnswerGenerationAIPromptId    => 'MyUuidWithQualifier',    # OPTIONAL
          AssociationConfigurations     => [
            {
              AssociationConfigurationData => {
                KnowledgeBaseAssociationConfigurationData => {
                  ContentTagFilter => {
                    AndConditions => [
                      {
                        Key   => 'MyTagKey',      # min: 1, max: 128
                        Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
                      },
                      ...
                    ],    # OPTIONAL
                    OrConditions => [
                      {
                        AndConditions => [
                          {
                            Key   => 'MyTagKey',    # min: 1, max: 128
                            Value => 'MyTagValue',  # min: 1, max: 256; OPTIONAL
                          },
                          ...
                        ],    # OPTIONAL
                        TagCondition => {
                          Key   => 'MyTagKey',      # min: 1, max: 128
                          Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
                        },
                      },
                      ...
                    ],    # OPTIONAL
                    TagCondition => {
                      Key   => 'MyTagKey',      # min: 1, max: 128
                      Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
                    },
                  },    # OPTIONAL
                  MaxResults => 1,    # min: 1, max: 100; OPTIONAL
                  OverrideKnowledgeBaseSearchType =>
                    'HYBRID',         # values: HYBRID, SEMANTIC; OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              AssociationId   => 'MyUuid',    # OPTIONAL
              AssociationType =>
                'KNOWLEDGE_BASE',             # values: KNOWLEDGE_BASE; OPTIONAL
            },
            ...
          ],    # OPTIONAL
          Locale => 'MyNonEmptyString',    # min: 1, max: 4096; OPTIONAL
        },    # OPTIONAL
        SelfServiceAIAgentConfiguration => {
          AssociationConfigurations => [
            {
              AssociationConfigurationData => {
                KnowledgeBaseAssociationConfigurationData => {
                  ContentTagFilter => {
                    AndConditions => [
                      {
                        Key   => 'MyTagKey',      # min: 1, max: 128
                        Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
                      },
                      ...
                    ],    # OPTIONAL
                    OrConditions => [
                      {
                        AndConditions => [
                          {
                            Key   => 'MyTagKey',    # min: 1, max: 128
                            Value => 'MyTagValue',  # min: 1, max: 256; OPTIONAL
                          },
                          ...
                        ],    # OPTIONAL
                        TagCondition => {
                          Key   => 'MyTagKey',      # min: 1, max: 128
                          Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
                        },
                      },
                      ...
                    ],    # OPTIONAL
                    TagCondition => {
                      Key   => 'MyTagKey',      # min: 1, max: 128
                      Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
                    },
                  },    # OPTIONAL
                  MaxResults => 1,    # min: 1, max: 100; OPTIONAL
                  OverrideKnowledgeBaseSearchType =>
                    'HYBRID',         # values: HYBRID, SEMANTIC; OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              AssociationId   => 'MyUuid',    # OPTIONAL
              AssociationType =>
                'KNOWLEDGE_BASE',             # values: KNOWLEDGE_BASE; OPTIONAL
            },
            ...
          ],    # OPTIONAL
          SelfServiceAIGuardrailId => 'MyUuidWithQualifier',    # OPTIONAL
          SelfServiceAnswerGenerationAIPromptId =>
            'MyUuidWithQualifier',                              # OPTIONAL
          SelfServicePreProcessingAIPromptId =>
            'MyUuidWithQualifier',                              # OPTIONAL
        },    # OPTIONAL
      },
      Name             => 'MyName',
      Type             => 'MANUAL_SEARCH',
      VisibilityStatus => 'SAVED',
      ClientToken      => 'MyClientToken',    # OPTIONAL
      Description      => 'MyDescription',    # OPTIONAL
      Tags             => {
        'MyTagKey' => 'MyTagValue'
        ,    # key: min: 1, max: 128, value: min: 1, max: 256; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $AiAgent = $CreateAIAgentResponse->AiAgent;

    # Returns a L<Paws::QConnect::CreateAIAgentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/CreateAIAgent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssistantId => Str

The identifier of the Amazon Q in Connect assistant. Can be either the
ID or the ARN. URLs cannot contain the ARN.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/)..



=head2 B<REQUIRED> Configuration => L<Paws::QConnect::AIAgentConfiguration>

The configuration of the AI Agent.



=head2 Description => Str

The description of the AI Agent.



=head2 B<REQUIRED> Name => Str

The name of the AI Agent.



=head2 Tags => L<Paws::QConnect::Tags>

The tags used to organize, track, or control access for this resource.



=head2 B<REQUIRED> Type => Str

The type of the AI Agent.

Valid values are: C<"MANUAL_SEARCH">, C<"ANSWER_RECOMMENDATION">, C<"SELF_SERVICE">

=head2 B<REQUIRED> VisibilityStatus => Str

The visibility status of the AI Agent.

Valid values are: C<"SAVED">, C<"PUBLISHED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAIAgent in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

