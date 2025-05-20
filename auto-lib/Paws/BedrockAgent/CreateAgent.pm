
package Paws::BedrockAgent::CreateAgent;
  use Moose;
  has AgentCollaboration => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agentCollaboration');
  has AgentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agentName', required => 1);
  has AgentResourceRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agentResourceRoleArn');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has CustomerEncryptionKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerEncryptionKeyArn');
  has CustomOrchestration => (is => 'ro', isa => 'Paws::BedrockAgent::CustomOrchestration', traits => ['NameInRequest'], request_name => 'customOrchestration');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FoundationModel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'foundationModel');
  has GuardrailConfiguration => (is => 'ro', isa => 'Paws::BedrockAgent::GuardrailConfiguration', traits => ['NameInRequest'], request_name => 'guardrailConfiguration');
  has IdleSessionTTLInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'idleSessionTTLInSeconds');
  has Instruction => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instruction');
  has MemoryConfiguration => (is => 'ro', isa => 'Paws::BedrockAgent::MemoryConfiguration', traits => ['NameInRequest'], request_name => 'memoryConfiguration');
  has OrchestrationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'orchestrationType');
  has PromptOverrideConfiguration => (is => 'ro', isa => 'Paws::BedrockAgent::PromptOverrideConfiguration', traits => ['NameInRequest'], request_name => 'promptOverrideConfiguration');
  has Tags => (is => 'ro', isa => 'Paws::BedrockAgent::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAgent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agents/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::CreateAgentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::CreateAgent - Arguments for method CreateAgent on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAgent on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method CreateAgent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAgent.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $CreateAgentResponse = $bedrock -agent->CreateAgent(
      AgentName            => 'MyName',
      AgentCollaboration   => 'SUPERVISOR',        # OPTIONAL
      AgentResourceRoleArn => 'MyAgentRoleArn',    # OPTIONAL
      ClientToken          => 'MyClientToken',     # OPTIONAL
      CustomOrchestration  => {
        Executor => {
          Lambda => 'MyLambdaArn',                 # max: 2048; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      CustomerEncryptionKeyArn => 'MyKmsKeyArn',          # OPTIONAL
      Description              => 'MyDescription',        # OPTIONAL
      FoundationModel          => 'MyModelIdentifier',    # OPTIONAL
      GuardrailConfiguration   => {
        GuardrailIdentifier => 'MyGuardrailIdentifier',    # max: 2048; OPTIONAL
        GuardrailVersion    => 'MyGuardrailVersion',       # OPTIONAL
      },    # OPTIONAL
      IdleSessionTTLInSeconds => 1,                  # OPTIONAL
      Instruction             => 'MyInstruction',    # OPTIONAL
      MemoryConfiguration     => {
        EnabledMemoryTypes => [
          'SESSION_SUMMARY', ...                     # values: SESSION_SUMMARY
        ],    # min: 1, max: 1
        SessionSummaryConfiguration => {
          MaxRecentSessions => 1,    # min: 1; OPTIONAL
        },    # OPTIONAL
        StorageDays => 1,    # max: 365; OPTIONAL
      },    # OPTIONAL
      OrchestrationType           => 'DEFAULT',    # OPTIONAL
      PromptOverrideConfiguration => {
        PromptConfigurations => [
          {
            AdditionalModelRequestFields => {

            },    # OPTIONAL
            BasePromptTemplate =>
              'MyBasePromptTemplate',    # min: 1, max: 100000; OPTIONAL
            FoundationModel        => 'MyModelIdentifier',   # min: 1, max: 2048
            InferenceConfiguration => {
              MaximumLength => 1,                      # OPTIONAL
              StopSequences => [ 'MyString', ... ],    # max: 4; OPTIONAL
              Temperature   => 1.0,                    # max: 1; OPTIONAL
              TopK          => 1,                      # max: 500; OPTIONAL
              TopP          => 1.0,                    # max: 1; OPTIONAL
            },    # OPTIONAL
            ParserMode => 'DEFAULT',    # values: DEFAULT, OVERRIDDEN; OPTIONAL
            PromptCreationMode =>
              'DEFAULT',                # values: DEFAULT, OVERRIDDEN; OPTIONAL
            PromptState => 'ENABLED',      # values: ENABLED, DISABLED; OPTIONAL
            PromptType  => 'PRE_PROCESSING'
            , # values: PRE_PROCESSING, ORCHESTRATION, POST_PROCESSING, KNOWLEDGE_BASE_RESPONSE_GENERATION, MEMORY_SUMMARIZATION; OPTIONAL
          },
          ...
        ],    # max: 10
        OverrideLambda => 'MyLambdaArn',    # max: 2048; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Agent = $CreateAgentResponse->Agent;

    # Returns a L<Paws::BedrockAgent::CreateAgentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/CreateAgent>

=head1 ATTRIBUTES


=head2 AgentCollaboration => Str

The agent's collaboration role.

Valid values are: C<"SUPERVISOR">, C<"SUPERVISOR_ROUTER">, C<"DISABLED">

=head2 B<REQUIRED> AgentName => Str

A name for the agent that you create.



=head2 AgentResourceRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role with permissions to
invoke API operations on the agent.



=head2 ClientToken => Str

A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 CustomerEncryptionKeyArn => Str

The Amazon Resource Name (ARN) of the KMS key with which to encrypt the
agent.



=head2 CustomOrchestration => L<Paws::BedrockAgent::CustomOrchestration>

Contains details of the custom orchestration configured for the agent.



=head2 Description => Str

A description of the agent.



=head2 FoundationModel => Str

The identifier for the model that you want to be used for orchestration
by the agent you create.

The C<modelId> to provide depends on the type of model or throughput
that you use:

=over

=item *

If you use a base model, specify the model ID or its ARN. For a list of
model IDs for base models, see Amazon Bedrock base model IDs (on-demand
throughput)
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns)
in the Amazon Bedrock User Guide.

=item *

If you use an inference profile, specify the inference profile ID or
its ARN. For a list of inference profile IDs, see Supported Regions and
models for cross-region inference
(https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html)
in the Amazon Bedrock User Guide.

=item *

If you use a provisioned model, specify the ARN of the Provisioned
Throughput. For more information, see Run inference using a Provisioned
Throughput
(https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html)
in the Amazon Bedrock User Guide.

=item *

If you use a custom model, first purchase Provisioned Throughput for
it. Then specify the ARN of the resulting provisioned model. For more
information, see Use a custom model in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html)
in the Amazon Bedrock User Guide.

=item *

If you use an imported model
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html),
specify the ARN of the imported model. You can get the model ARN from a
successful call to CreateModelImportJob
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html)
or from the Imported models page in the Amazon Bedrock console.

=back




=head2 GuardrailConfiguration => L<Paws::BedrockAgent::GuardrailConfiguration>

The unique Guardrail configuration assigned to the agent when it is
created.



=head2 IdleSessionTTLInSeconds => Int

The number of seconds for which Amazon Bedrock keeps information about
a user's conversation with the agent.

A user interaction remains active for the amount of time specified. If
no conversation occurs during this time, the session expires and Amazon
Bedrock deletes any data provided before the timeout.



=head2 Instruction => Str

Instructions that tell the agent what it should do and how it should
interact with users.



=head2 MemoryConfiguration => L<Paws::BedrockAgent::MemoryConfiguration>

Contains the details of the memory configured for the agent.



=head2 OrchestrationType => Str

Specifies the type of orchestration strategy for the agent. This is set
to C<DEFAULT> orchestration type, by default.

Valid values are: C<"DEFAULT">, C<"CUSTOM_ORCHESTRATION">

=head2 PromptOverrideConfiguration => L<Paws::BedrockAgent::PromptOverrideConfiguration>

Contains configurations to override prompts in different parts of an
agent sequence. For more information, see Advanced prompts
(https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html).



=head2 Tags => L<Paws::BedrockAgent::TagsMap>

Any tags that you want to attach to the agent.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAgent in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

