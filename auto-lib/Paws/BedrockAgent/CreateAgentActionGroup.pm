
package Paws::BedrockAgent::CreateAgentActionGroup;
  use Moose;
  has ActionGroupExecutor => (is => 'ro', isa => 'Paws::BedrockAgent::ActionGroupExecutor', traits => ['NameInRequest'], request_name => 'actionGroupExecutor');
  has ActionGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionGroupName', required => 1);
  has ActionGroupState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionGroupState');
  has AgentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentId', required => 1);
  has AgentVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentVersion', required => 1);
  has ApiSchema => (is => 'ro', isa => 'Paws::BedrockAgent::APISchema', traits => ['NameInRequest'], request_name => 'apiSchema');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FunctionSchema => (is => 'ro', isa => 'Paws::BedrockAgent::FunctionSchema', traits => ['NameInRequest'], request_name => 'functionSchema');
  has ParentActionGroupSignature => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentActionGroupSignature');
  has ParentActionGroupSignatureParams => (is => 'ro', isa => 'Paws::BedrockAgent::ActionGroupSignatureParams', traits => ['NameInRequest'], request_name => 'parentActionGroupSignatureParams');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAgentActionGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agents/{agentId}/agentversions/{agentVersion}/actiongroups/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::CreateAgentActionGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::CreateAgentActionGroup - Arguments for method CreateAgentActionGroup on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAgentActionGroup on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method CreateAgentActionGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAgentActionGroup.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $CreateAgentActionGroupResponse =
      $bedrock -agent->CreateAgentActionGroup(
      ActionGroupName     => 'MyName',
      AgentId             => 'MyId',
      AgentVersion        => 'MyDraftVersion',
      ActionGroupExecutor => {
        CustomControl => 'RETURN_CONTROL',    # values: RETURN_CONTROL; OPTIONAL
        Lambda        => 'MyLambdaArn',       # max: 2048; OPTIONAL
      },    # OPTIONAL
      ActionGroupState => 'ENABLED',    # OPTIONAL
      ApiSchema        => {
        Payload => 'MyPayload',         # OPTIONAL
        S3      => {
          S3BucketName => 'MyS3BucketName',    # min: 3, max: 63; OPTIONAL
          S3ObjectKey  => 'MyS3ObjectKey',     # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ClientToken    => 'MyClientToken',    # OPTIONAL
      Description    => 'MyDescription',    # OPTIONAL
      FunctionSchema => {
        Functions => [
          {
            Name        => 'MyName',
            Description =>
              'MyFunctionDescription',    # min: 1, max: 1200; OPTIONAL
            Parameters => {
              'MyName' => {
                Type =>
                  'string',    # values: string, number, integer, boolean, array
                Description =>
                  'MyParameterDescription',    # min: 1, max: 500; OPTIONAL
                Required => 1,                 # OPTIONAL
              },
            },    # OPTIONAL
            RequireConfirmation =>
              'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      ParentActionGroupSignature       => 'AMAZON.UserInput',    # OPTIONAL
      ParentActionGroupSignatureParams => {
        'MyActionGroupSignatureParamsKeyString' =>
          'MyActionGroupSignatureParamsValueString'
        ,    # key: max: 100, value: max: 100
      },    # OPTIONAL
      );

    # Results:
    my $AgentActionGroup = $CreateAgentActionGroupResponse->AgentActionGroup;

    # Returns a L<Paws::BedrockAgent::CreateAgentActionGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/CreateAgentActionGroup>

=head1 ATTRIBUTES


=head2 ActionGroupExecutor => L<Paws::BedrockAgent::ActionGroupExecutor>

The Amazon Resource Name (ARN) of the Lambda function containing the
business logic that is carried out upon invoking the action or the
custom control method for handling the information elicited from the
user.



=head2 B<REQUIRED> ActionGroupName => Str

The name to give the action group.



=head2 ActionGroupState => Str

Specifies whether the action group is available for the agent to invoke
or not when sending an InvokeAgent
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html)
request.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 B<REQUIRED> AgentId => Str

The unique identifier of the agent for which to create the action
group.



=head2 B<REQUIRED> AgentVersion => Str

The version of the agent for which to create the action group.



=head2 ApiSchema => L<Paws::BedrockAgent::APISchema>

Contains either details about the S3 object containing the OpenAPI
schema for the action group or the JSON or YAML-formatted payload
defining the schema. For more information, see Action group OpenAPI
schemas
(https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html).



=head2 ClientToken => Str

A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 Description => Str

A description of the action group.



=head2 FunctionSchema => L<Paws::BedrockAgent::FunctionSchema>

Contains details about the function schema for the action group or the
JSON or YAML-formatted payload defining the schema.



=head2 ParentActionGroupSignature => Str

Specify a built-in or computer use action for this action group. If you
specify a value, you must leave the C<description>, C<apiSchema>, and
C<actionGroupExecutor> fields empty for this action group.

=over

=item *

To allow your agent to request the user for additional information when
trying to complete a task, set this field to C<AMAZON.UserInput>.

=item *

To allow your agent to generate, run, and troubleshoot code when trying
to complete a task, set this field to C<AMAZON.CodeInterpreter>.

=item *

To allow your agent to use an Anthropic computer use tool, specify one
of the following values.

Computer use is a new Anthropic Claude model capability (in beta)
available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet v2
only. When operating computer use functionality, we recommend taking
additional security precautions, such as executing computer actions in
virtual environments with restricted data access and limited internet
connectivity. For more information, see Configure an Amazon Bedrock
Agent to complete tasks with computer use tools
(https://docs.aws.amazon.com/bedrock/latest/userguide/agent-computer-use.html).

=over

=item *

C<ANTHROPIC.Computer> - Gives the agent permission to use the mouse and
keyboard and take screenshots.

=item *

C<ANTHROPIC.TextEditor> - Gives the agent permission to view, create
and edit files.

=item *

C<ANTHROPIC.Bash> - Gives the agent permission to run commands in a
bash shell.

=back

=back


Valid values are: C<"AMAZON.UserInput">, C<"AMAZON.CodeInterpreter">, C<"ANTHROPIC.Computer">, C<"ANTHROPIC.Bash">, C<"ANTHROPIC.TextEditor">

=head2 ParentActionGroupSignatureParams => L<Paws::BedrockAgent::ActionGroupSignatureParams>

The configuration settings for a computer use action.

Computer use is a new Anthropic Claude model capability (in beta)
available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet v2
only. For more information, see Configure an Amazon Bedrock Agent to
complete tasks with computer use tools
(https://docs.aws.amazon.com/bedrock/latest/userguide/agent-computer-use.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAgentActionGroup in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

