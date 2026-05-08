package Paws::BedrockAgentRuntime;
  use Moose;
  sub service { 'bedrock-agent-runtime' }
  sub signing_name { 'bedrock' }
  sub version { '2023-07-26' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateInvocation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::CreateInvocation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::CreateSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAgentMemory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::DeleteAgentMemory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::DeleteSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EndSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::EndSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::GenerateQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAgentMemory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::GetAgentMemory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInvocationStep {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::GetInvocationStep', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::GetSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InvokeAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::InvokeAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InvokeFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::InvokeFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InvokeInlineAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::InvokeInlineAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInvocations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::ListInvocations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInvocationSteps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::ListInvocationSteps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::ListSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub OptimizePrompt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::OptimizePrompt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutInvocationStep {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::PutInvocationStep', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Rerank {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::Rerank', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Retrieve {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::Retrieve', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RetrieveAndGenerate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::RetrieveAndGenerate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RetrieveAndGenerateStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::RetrieveAndGenerateStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgentRuntime::UpdateSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllAgentMemory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetAgentMemory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetAgentMemory(@_, nextToken => $next_result->nextToken);
        push @{ $result->memoryContents }, @{ $next_result->memoryContents };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'memoryContents') foreach (@{ $result->memoryContents });
        $result = $self->GetAgentMemory(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'memoryContents') foreach (@{ $result->memoryContents });
    }

    return undef
  }
  sub ListAllInvocations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInvocations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListInvocations(@_, nextToken => $next_result->nextToken);
        push @{ $result->invocationSummaries }, @{ $next_result->invocationSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'invocationSummaries') foreach (@{ $result->invocationSummaries });
        $result = $self->ListInvocations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'invocationSummaries') foreach (@{ $result->invocationSummaries });
    }

    return undef
  }
  sub ListAllInvocationSteps {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInvocationSteps(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListInvocationSteps(@_, nextToken => $next_result->nextToken);
        push @{ $result->invocationStepSummaries }, @{ $next_result->invocationStepSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'invocationStepSummaries') foreach (@{ $result->invocationStepSummaries });
        $result = $self->ListInvocationSteps(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'invocationStepSummaries') foreach (@{ $result->invocationStepSummaries });
    }

    return undef
  }
  sub ListAllSessions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSessions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSessions(@_, nextToken => $next_result->nextToken);
        push @{ $result->sessionSummaries }, @{ $next_result->sessionSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'sessionSummaries') foreach (@{ $result->sessionSummaries });
        $result = $self->ListSessions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'sessionSummaries') foreach (@{ $result->sessionSummaries });
    }

    return undef
  }
  sub RerankAll {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->Rerank(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->Rerank(@_, nextToken => $next_result->nextToken);
        push @{ $result->results }, @{ $next_result->results };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'results') foreach (@{ $result->results });
        $result = $self->Rerank(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'results') foreach (@{ $result->results });
    }

    return undef
  }
  sub RetrieveAll {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->Retrieve(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->Retrieve(@_, nextToken => $next_result->nextToken);
        push @{ $result->retrievalResults }, @{ $next_result->retrievalResults };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'retrievalResults') foreach (@{ $result->retrievalResults });
        $result = $self->Retrieve(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'retrievalResults') foreach (@{ $result->retrievalResults });
    }

    return undef
  }


  sub operations { qw/CreateInvocation CreateSession DeleteAgentMemory DeleteSession EndSession GenerateQuery GetAgentMemory GetInvocationStep GetSession InvokeAgent InvokeFlow InvokeInlineAgent ListInvocations ListInvocationSteps ListSessions ListTagsForResource OptimizePrompt PutInvocationStep Rerank Retrieve RetrieveAndGenerate RetrieveAndGenerateStream TagResource UntagResource UpdateSession / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime - Perl Interface to AWS Agents for Amazon Bedrock Runtime

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('BedrockAgentRuntime');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Contains APIs related to model invocation and querying of knowledge
bases.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26>


=head1 METHODS

=head2 CreateInvocation

=over

=item SessionIdentifier => Str

=item [Description => Str]

=item [InvocationId => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::CreateInvocation>

Returns: a L<Paws::BedrockAgentRuntime::CreateInvocationResponse> instance

Creates a new invocation within a session. An invocation groups the
related invocation steps that store the content from a conversation.
For more information about sessions, see Store and retrieve
conversation history and context with Amazon Bedrock sessions
(https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html).

Related APIs

=over

=item *

ListInvocations
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListInvocations.html)

=item *

ListSessions
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListSessions.html)

=item *

GetSession
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_GetSession.html)

=back



=head2 CreateSession

=over

=item [EncryptionKeyArn => Str]

=item [SessionMetadata => L<Paws::BedrockAgentRuntime::SessionMetadataMap>]

=item [Tags => L<Paws::BedrockAgentRuntime::TagsMap>]


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::CreateSession>

Returns: a L<Paws::BedrockAgentRuntime::CreateSessionResponse> instance

Creates a session to temporarily store conversations for generative AI
(GenAI) applications built with open-source frameworks such as
LangGraph and LlamaIndex. Sessions enable you to save the state of
conversations at checkpoints, with the added security and
infrastructure of Amazon Web Services. For more information, see Store
and retrieve conversation history and context with Amazon Bedrock
sessions
(https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html).

By default, Amazon Bedrock uses Amazon Web Services-managed keys for
session encryption, including session metadata, or you can use your own
KMS key. For more information, see Amazon Bedrock session encryption
(https://docs.aws.amazon.com/bedrock/latest/userguide/session-encryption.html).

You use a session to store state and conversation history for
generative AI applications built with open-source frameworks. For
Amazon Bedrock Agents, the service automatically manages conversation
context and associates them with the agent-specific sessionId you
specify in the InvokeAgent
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html)
API operation.

Related APIs:

=over

=item *

ListSessions
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListSessions.html)

=item *

GetSession
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_GetSession.html)

=item *

EndSession
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_EndSession.html)

=item *

DeleteSession
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_DeleteSession.html)

=back



=head2 DeleteAgentMemory

=over

=item AgentAliasId => Str

=item AgentId => Str

=item [MemoryId => Str]

=item [SessionId => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::DeleteAgentMemory>

Returns: a L<Paws::BedrockAgentRuntime::DeleteAgentMemoryResponse> instance

Deletes memory from the specified memory identifier.


=head2 DeleteSession

=over

=item SessionIdentifier => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::DeleteSession>

Returns: a L<Paws::BedrockAgentRuntime::DeleteSessionResponse> instance

Deletes a session that you ended. You can't delete a session with an
C<ACTIVE> status. To delete an active session, you must first end it
with the EndSession
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_EndSession.html)
API operation. For more information about sessions, see Store and
retrieve conversation history and context with Amazon Bedrock sessions
(https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html).


=head2 EndSession

=over

=item SessionIdentifier => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::EndSession>

Returns: a L<Paws::BedrockAgentRuntime::EndSessionResponse> instance

Ends the session. After you end a session, you can still access its
content but you canE<rsquo>t add to it. To delete the session and it's
content, you use the DeleteSession API operation. For more information
about sessions, see Store and retrieve conversation history and context
with Amazon Bedrock sessions
(https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html).


=head2 GenerateQuery

=over

=item QueryGenerationInput => L<Paws::BedrockAgentRuntime::QueryGenerationInput>

=item TransformationConfiguration => L<Paws::BedrockAgentRuntime::TransformationConfiguration>


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::GenerateQuery>

Returns: a L<Paws::BedrockAgentRuntime::GenerateQueryResponse> instance

Generates an SQL query from a natural language query. For more
information, see Generate a query for structured data
(https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-generate-query.html)
in the Amazon Bedrock User Guide.


=head2 GetAgentMemory

=over

=item AgentAliasId => Str

=item AgentId => Str

=item MemoryId => Str

=item MemoryType => Str

=item [MaxItems => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::GetAgentMemory>

Returns: a L<Paws::BedrockAgentRuntime::GetAgentMemoryResponse> instance

Gets the sessions stored in the memory of the agent.


=head2 GetInvocationStep

=over

=item InvocationIdentifier => Str

=item InvocationStepId => Str

=item SessionIdentifier => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::GetInvocationStep>

Returns: a L<Paws::BedrockAgentRuntime::GetInvocationStepResponse> instance

Retrieves the details of a specific invocation step within an
invocation in a session. For more information about sessions, see Store
and retrieve conversation history and context with Amazon Bedrock
sessions
(https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html).


=head2 GetSession

=over

=item SessionIdentifier => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::GetSession>

Returns: a L<Paws::BedrockAgentRuntime::GetSessionResponse> instance

Retrieves details about a specific session. For more information about
sessions, see Store and retrieve conversation history and context with
Amazon Bedrock sessions
(https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html).


=head2 InvokeAgent

=over

=item AgentAliasId => Str

=item AgentId => Str

=item SessionId => Str

=item [BedrockModelConfigurations => L<Paws::BedrockAgentRuntime::BedrockModelConfigurations>]

=item [EnableTrace => Bool]

=item [EndSession => Bool]

=item [InputText => Str]

=item [MemoryId => Str]

=item [SessionState => L<Paws::BedrockAgentRuntime::SessionState>]

=item [SourceArn => Str]

=item [StreamingConfigurations => L<Paws::BedrockAgentRuntime::StreamingConfigurations>]


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::InvokeAgent>

Returns: a L<Paws::BedrockAgentRuntime::InvokeAgentResponse> instance

Sends a prompt for the agent to process and respond to. Note the
following fields for the request:

=over

=item *

To continue the same conversation with an agent, use the same
C<sessionId> value in the request.

=item *

To activate trace enablement, turn C<enableTrace> to C<true>. Trace
enablement helps you follow the agent's reasoning process that led it
to the information it processed, the actions it took, and the final
result it yielded. For more information, see Trace enablement
(https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-events).

=item *

End a conversation by setting C<endSession> to C<true>.

=item *

In the C<sessionState> object, you can include attributes for the
session or prompt or, if you configured an action group to return
control, results from invocation of the action group.

=back

The response contains both B<chunk> and B<trace> attributes.

The final response is returned in the C<bytes> field of the C<chunk>
object. The C<InvokeAgent> returns one chunk for the entire
interaction.

=over

=item *

The C<attribution> object contains citations for parts of the response.

=item *

If you set C<enableTrace> to C<true> in the request, you can trace the
agent's steps and reasoning process that led it to the response.

=item *

If the action predicted was configured to return control, the response
returns parameters for the action, elicited from the user, in the
C<returnControl> field.

=item *

Errors are also surfaced in the response.

=back



=head2 InvokeFlow

=over

=item FlowAliasIdentifier => Str

=item FlowIdentifier => Str

=item Inputs => ArrayRef[L<Paws::BedrockAgentRuntime::FlowInput>]

=item [EnableTrace => Bool]

=item [ExecutionId => Str]

=item [ModelPerformanceConfiguration => L<Paws::BedrockAgentRuntime::ModelPerformanceConfiguration>]


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::InvokeFlow>

Returns: a L<Paws::BedrockAgentRuntime::InvokeFlowResponse> instance

Invokes an alias of a flow to run the inputs that you specify and
return the output of each node as a stream. If there's an error, the
error is returned. For more information, see Test a flow in Amazon
Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/flows-test.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).

The CLI doesn't support streaming operations in Amazon Bedrock,
including C<InvokeFlow>.


=head2 InvokeInlineAgent

=over

=item FoundationModel => Str

=item Instruction => Str

=item SessionId => Str

=item [ActionGroups => ArrayRef[L<Paws::BedrockAgentRuntime::AgentActionGroup>]]

=item [AgentCollaboration => Str]

=item [AgentName => Str]

=item [BedrockModelConfigurations => L<Paws::BedrockAgentRuntime::InlineBedrockModelConfigurations>]

=item [CollaboratorConfigurations => ArrayRef[L<Paws::BedrockAgentRuntime::CollaboratorConfiguration>]]

=item [Collaborators => ArrayRef[L<Paws::BedrockAgentRuntime::Collaborator>]]

=item [CustomerEncryptionKeyArn => Str]

=item [CustomOrchestration => L<Paws::BedrockAgentRuntime::CustomOrchestration>]

=item [EnableTrace => Bool]

=item [EndSession => Bool]

=item [GuardrailConfiguration => L<Paws::BedrockAgentRuntime::GuardrailConfigurationWithArn>]

=item [IdleSessionTTLInSeconds => Int]

=item [InlineSessionState => L<Paws::BedrockAgentRuntime::InlineSessionState>]

=item [InputText => Str]

=item [KnowledgeBases => ArrayRef[L<Paws::BedrockAgentRuntime::KnowledgeBase>]]

=item [OrchestrationType => Str]

=item [PromptOverrideConfiguration => L<Paws::BedrockAgentRuntime::PromptOverrideConfiguration>]

=item [StreamingConfigurations => L<Paws::BedrockAgentRuntime::StreamingConfigurations>]


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::InvokeInlineAgent>

Returns: a L<Paws::BedrockAgentRuntime::InvokeInlineAgentResponse> instance

Invokes an inline Amazon Bedrock agent using the configurations you
provide with the request.

=over

=item *

Specify the following fields for security purposes.

=over

=item *

(Optional) C<customerEncryptionKeyArn> E<ndash> The Amazon Resource
Name (ARN) of a KMS key to encrypt the creation of the agent.

=item *

(Optional) C<idleSessionTTLinSeconds> E<ndash> Specify the number of
seconds for which the agent should maintain session information. After
this time expires, the subsequent C<InvokeInlineAgent> request begins a
new session.

=back

=item *

To override the default prompt behavior for agent orchestration and to
use advanced prompts, include a C<promptOverrideConfiguration> object.
For more information, see Advanced prompts
(https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html).

=item *

The agent instructions will not be honored if your agent has only one
knowledge base, uses default prompts, has no action group, and user
input is disabled.

=back



=head2 ListInvocations

=over

=item SessionIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::ListInvocations>

Returns: a L<Paws::BedrockAgentRuntime::ListInvocationsResponse> instance

Lists all invocations associated with a specific session. For more
information about sessions, see Store and retrieve conversation history
and context with Amazon Bedrock sessions
(https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html).


=head2 ListInvocationSteps

=over

=item SessionIdentifier => Str

=item [InvocationIdentifier => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::ListInvocationSteps>

Returns: a L<Paws::BedrockAgentRuntime::ListInvocationStepsResponse> instance

Lists all invocation steps associated with a session and optionally, an
invocation within the session. For more information about sessions, see
Store and retrieve conversation history and context with Amazon Bedrock
sessions
(https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html).


=head2 ListSessions

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::ListSessions>

Returns: a L<Paws::BedrockAgentRuntime::ListSessionsResponse> instance

Lists all sessions in your Amazon Web Services account. For more
information about sessions, see Store and retrieve conversation history
and context with Amazon Bedrock sessions
(https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html).


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::ListTagsForResource>

Returns: a L<Paws::BedrockAgentRuntime::ListTagsForResourceResponse> instance

List all the tags for the resource you specify.


=head2 OptimizePrompt

=over

=item Input => L<Paws::BedrockAgentRuntime::InputPrompt>

=item TargetModelId => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::OptimizePrompt>

Returns: a L<Paws::BedrockAgentRuntime::OptimizePromptResponse> instance

Optimizes a prompt for the task that you specify. For more information,
see Optimize a prompt
(https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-optimize.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 PutInvocationStep

=over

=item InvocationIdentifier => Str

=item InvocationStepTime => Str

=item Payload => L<Paws::BedrockAgentRuntime::InvocationStepPayload>

=item SessionIdentifier => Str

=item [InvocationStepId => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::PutInvocationStep>

Returns: a L<Paws::BedrockAgentRuntime::PutInvocationStepResponse> instance

Add an invocation step to an invocation in a session. An invocation
step stores fine-grained state checkpoints, including text and images,
for each interaction. For more information about sessions, see Store
and retrieve conversation history and context with Amazon Bedrock
sessions
(https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html).

Related APIs:

=over

=item *

GetInvocationStep
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_GetInvocationStep.html)

=item *

ListInvocationSteps
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListInvocationSteps.html)

=item *

ListInvocations
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListInvocations.html)

=item *

ListSessions
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListInvocations.html)

=back



=head2 Rerank

=over

=item Queries => ArrayRef[L<Paws::BedrockAgentRuntime::RerankQuery>]

=item RerankingConfiguration => L<Paws::BedrockAgentRuntime::RerankingConfiguration>

=item Sources => ArrayRef[L<Paws::BedrockAgentRuntime::RerankSource>]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::Rerank>

Returns: a L<Paws::BedrockAgentRuntime::RerankResponse> instance

Reranks the relevance of sources based on queries. For more
information, see Improve the relevance of query responses with a
reranker model
(https://docs.aws.amazon.com/bedrock/latest/userguide/rerank.html).


=head2 Retrieve

=over

=item KnowledgeBaseId => Str

=item RetrievalQuery => L<Paws::BedrockAgentRuntime::KnowledgeBaseQuery>

=item [GuardrailConfiguration => L<Paws::BedrockAgentRuntime::GuardrailConfiguration>]

=item [NextToken => Str]

=item [RetrievalConfiguration => L<Paws::BedrockAgentRuntime::KnowledgeBaseRetrievalConfiguration>]


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::Retrieve>

Returns: a L<Paws::BedrockAgentRuntime::RetrieveResponse> instance

Queries a knowledge base and retrieves information from it.


=head2 RetrieveAndGenerate

=over

=item Input => L<Paws::BedrockAgentRuntime::RetrieveAndGenerateInput>

=item [RetrieveAndGenerateConfiguration => L<Paws::BedrockAgentRuntime::RetrieveAndGenerateConfiguration>]

=item [SessionConfiguration => L<Paws::BedrockAgentRuntime::RetrieveAndGenerateSessionConfiguration>]

=item [SessionId => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::RetrieveAndGenerate>

Returns: a L<Paws::BedrockAgentRuntime::RetrieveAndGenerateResponse> instance

Queries a knowledge base and generates responses based on the retrieved
results and using the specified foundation model or inference profile
(https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html).
The response only cites sources that are relevant to the query.


=head2 RetrieveAndGenerateStream

=over

=item Input => L<Paws::BedrockAgentRuntime::RetrieveAndGenerateInput>

=item [RetrieveAndGenerateConfiguration => L<Paws::BedrockAgentRuntime::RetrieveAndGenerateConfiguration>]

=item [SessionConfiguration => L<Paws::BedrockAgentRuntime::RetrieveAndGenerateSessionConfiguration>]

=item [SessionId => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::RetrieveAndGenerateStream>

Returns: a L<Paws::BedrockAgentRuntime::RetrieveAndGenerateStreamResponse> instance

Queries a knowledge base and generates responses based on the retrieved
results, with output in streaming format.

The CLI doesn't support streaming operations in Amazon Bedrock,
including C<InvokeModelWithResponseStream>.

This operation requires permission for the C<
bedrock:RetrieveAndGenerate> action.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::BedrockAgentRuntime::TagsMap>


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::TagResource>

Returns: a L<Paws::BedrockAgentRuntime::TagResourceResponse> instance

Associate tags with a resource. For more information, see Tagging
resources
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html)
in the Amazon Bedrock User Guide.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::UntagResource>

Returns: a L<Paws::BedrockAgentRuntime::UntagResourceResponse> instance

Remove tags from a resource.


=head2 UpdateSession

=over

=item SessionIdentifier => Str

=item [SessionMetadata => L<Paws::BedrockAgentRuntime::SessionMetadataMap>]


=back

Each argument is described in detail in: L<Paws::BedrockAgentRuntime::UpdateSession>

Returns: a L<Paws::BedrockAgentRuntime::UpdateSessionResponse> instance

Updates the metadata or encryption settings of a session. For more
information about sessions, see Store and retrieve conversation history
and context with Amazon Bedrock sessions
(https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllAgentMemory(sub { },AgentAliasId => Str, AgentId => Str, MemoryId => Str, MemoryType => Str, [MaxItems => Int, NextToken => Str])

=head2 GetAllAgentMemory(AgentAliasId => Str, AgentId => Str, MemoryId => Str, MemoryType => Str, [MaxItems => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - memoryContents, passing the object as the first parameter, and the string 'memoryContents' as the second parameter 

If not, it will return a a L<Paws::BedrockAgentRuntime::GetAgentMemoryResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInvocations(sub { },SessionIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllInvocations(SessionIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - invocationSummaries, passing the object as the first parameter, and the string 'invocationSummaries' as the second parameter 

If not, it will return a a L<Paws::BedrockAgentRuntime::ListInvocationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInvocationSteps(sub { },SessionIdentifier => Str, [InvocationIdentifier => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllInvocationSteps(SessionIdentifier => Str, [InvocationIdentifier => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - invocationStepSummaries, passing the object as the first parameter, and the string 'invocationStepSummaries' as the second parameter 

If not, it will return a a L<Paws::BedrockAgentRuntime::ListInvocationStepsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSessions(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSessions([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - sessionSummaries, passing the object as the first parameter, and the string 'sessionSummaries' as the second parameter 

If not, it will return a a L<Paws::BedrockAgentRuntime::ListSessionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 RerankAll(sub { },Queries => ArrayRef[L<Paws::BedrockAgentRuntime::RerankQuery>], RerankingConfiguration => L<Paws::BedrockAgentRuntime::RerankingConfiguration>, Sources => ArrayRef[L<Paws::BedrockAgentRuntime::RerankSource>], [NextToken => Str])

=head2 RerankAll(Queries => ArrayRef[L<Paws::BedrockAgentRuntime::RerankQuery>], RerankingConfiguration => L<Paws::BedrockAgentRuntime::RerankingConfiguration>, Sources => ArrayRef[L<Paws::BedrockAgentRuntime::RerankSource>], [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - results, passing the object as the first parameter, and the string 'results' as the second parameter 

If not, it will return a a L<Paws::BedrockAgentRuntime::RerankResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 RetrieveAll(sub { },KnowledgeBaseId => Str, RetrievalQuery => L<Paws::BedrockAgentRuntime::KnowledgeBaseQuery>, [GuardrailConfiguration => L<Paws::BedrockAgentRuntime::GuardrailConfiguration>, NextToken => Str, RetrievalConfiguration => L<Paws::BedrockAgentRuntime::KnowledgeBaseRetrievalConfiguration>])

=head2 RetrieveAll(KnowledgeBaseId => Str, RetrievalQuery => L<Paws::BedrockAgentRuntime::KnowledgeBaseQuery>, [GuardrailConfiguration => L<Paws::BedrockAgentRuntime::GuardrailConfiguration>, NextToken => Str, RetrievalConfiguration => L<Paws::BedrockAgentRuntime::KnowledgeBaseRetrievalConfiguration>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - retrievalResults, passing the object as the first parameter, and the string 'retrievalResults' as the second parameter 

If not, it will return a a L<Paws::BedrockAgentRuntime::RetrieveResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

