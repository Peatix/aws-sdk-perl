package Paws::BedrockAgent;
  use Moose;
  sub service { 'bedrock-agent' }
  sub signing_name { 'bedrock' }
  sub version { '2023-06-05' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateAgentCollaborator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::AssociateAgentCollaborator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateAgentKnowledgeBase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::AssociateAgentKnowledgeBase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::CreateAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAgentActionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::CreateAgentActionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAgentAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::CreateAgentAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::CreateDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::CreateFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFlowAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::CreateFlowAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFlowVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::CreateFlowVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKnowledgeBase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::CreateKnowledgeBase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePrompt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::CreatePrompt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePromptVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::CreatePromptVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::DeleteAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAgentActionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::DeleteAgentActionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAgentAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::DeleteAgentAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAgentVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::DeleteAgentVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::DeleteDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::DeleteFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFlowAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::DeleteFlowAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFlowVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::DeleteFlowVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKnowledgeBase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::DeleteKnowledgeBase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKnowledgeBaseDocuments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::DeleteKnowledgeBaseDocuments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePrompt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::DeletePrompt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateAgentCollaborator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::DisassociateAgentCollaborator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateAgentKnowledgeBase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::DisassociateAgentKnowledgeBase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::GetAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAgentActionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::GetAgentActionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAgentAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::GetAgentAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAgentCollaborator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::GetAgentCollaborator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAgentKnowledgeBase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::GetAgentKnowledgeBase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAgentVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::GetAgentVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::GetDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::GetFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFlowAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::GetFlowAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFlowVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::GetFlowVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIngestionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::GetIngestionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKnowledgeBase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::GetKnowledgeBase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKnowledgeBaseDocuments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::GetKnowledgeBaseDocuments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPrompt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::GetPrompt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub IngestKnowledgeBaseDocuments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::IngestKnowledgeBaseDocuments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAgentActionGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::ListAgentActionGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAgentAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::ListAgentAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAgentCollaborators {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::ListAgentCollaborators', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAgentKnowledgeBases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::ListAgentKnowledgeBases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAgents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::ListAgents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAgentVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::ListAgentVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::ListDataSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFlowAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::ListFlowAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFlows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::ListFlows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFlowVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::ListFlowVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIngestionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::ListIngestionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKnowledgeBaseDocuments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::ListKnowledgeBaseDocuments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKnowledgeBases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::ListKnowledgeBases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPrompts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::ListPrompts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PrepareAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::PrepareAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PrepareFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::PrepareFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartIngestionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::StartIngestionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopIngestionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::StopIngestionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::UpdateAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAgentActionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::UpdateAgentActionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAgentAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::UpdateAgentAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAgentCollaborator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::UpdateAgentCollaborator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAgentKnowledgeBase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::UpdateAgentKnowledgeBase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::UpdateDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::UpdateFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFlowAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::UpdateFlowAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateKnowledgeBase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::UpdateKnowledgeBase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePrompt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::UpdatePrompt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ValidateFlowDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockAgent::ValidateFlowDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAgentActionGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAgentActionGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAgentActionGroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->actionGroupSummaries }, @{ $next_result->actionGroupSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'actionGroupSummaries') foreach (@{ $result->actionGroupSummaries });
        $result = $self->ListAgentActionGroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'actionGroupSummaries') foreach (@{ $result->actionGroupSummaries });
    }

    return undef
  }
  sub ListAllAgentAliases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAgentAliases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAgentAliases(@_, nextToken => $next_result->nextToken);
        push @{ $result->agentAliasSummaries }, @{ $next_result->agentAliasSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'agentAliasSummaries') foreach (@{ $result->agentAliasSummaries });
        $result = $self->ListAgentAliases(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'agentAliasSummaries') foreach (@{ $result->agentAliasSummaries });
    }

    return undef
  }
  sub ListAllAgentCollaborators {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAgentCollaborators(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAgentCollaborators(@_, nextToken => $next_result->nextToken);
        push @{ $result->agentCollaboratorSummaries }, @{ $next_result->agentCollaboratorSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'agentCollaboratorSummaries') foreach (@{ $result->agentCollaboratorSummaries });
        $result = $self->ListAgentCollaborators(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'agentCollaboratorSummaries') foreach (@{ $result->agentCollaboratorSummaries });
    }

    return undef
  }
  sub ListAllAgentKnowledgeBases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAgentKnowledgeBases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAgentKnowledgeBases(@_, nextToken => $next_result->nextToken);
        push @{ $result->agentKnowledgeBaseSummaries }, @{ $next_result->agentKnowledgeBaseSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'agentKnowledgeBaseSummaries') foreach (@{ $result->agentKnowledgeBaseSummaries });
        $result = $self->ListAgentKnowledgeBases(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'agentKnowledgeBaseSummaries') foreach (@{ $result->agentKnowledgeBaseSummaries });
    }

    return undef
  }
  sub ListAllAgents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAgents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAgents(@_, nextToken => $next_result->nextToken);
        push @{ $result->agentSummaries }, @{ $next_result->agentSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'agentSummaries') foreach (@{ $result->agentSummaries });
        $result = $self->ListAgents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'agentSummaries') foreach (@{ $result->agentSummaries });
    }

    return undef
  }
  sub ListAllAgentVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAgentVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAgentVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->agentVersionSummaries }, @{ $next_result->agentVersionSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'agentVersionSummaries') foreach (@{ $result->agentVersionSummaries });
        $result = $self->ListAgentVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'agentVersionSummaries') foreach (@{ $result->agentVersionSummaries });
    }

    return undef
  }
  sub ListAllDataSources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataSources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDataSources(@_, nextToken => $next_result->nextToken);
        push @{ $result->dataSourceSummaries }, @{ $next_result->dataSourceSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'dataSourceSummaries') foreach (@{ $result->dataSourceSummaries });
        $result = $self->ListDataSources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'dataSourceSummaries') foreach (@{ $result->dataSourceSummaries });
    }

    return undef
  }
  sub ListAllFlowAliases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFlowAliases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFlowAliases(@_, nextToken => $next_result->nextToken);
        push @{ $result->flowAliasSummaries }, @{ $next_result->flowAliasSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'flowAliasSummaries') foreach (@{ $result->flowAliasSummaries });
        $result = $self->ListFlowAliases(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'flowAliasSummaries') foreach (@{ $result->flowAliasSummaries });
    }

    return undef
  }
  sub ListAllFlows {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFlows(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFlows(@_, nextToken => $next_result->nextToken);
        push @{ $result->flowSummaries }, @{ $next_result->flowSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'flowSummaries') foreach (@{ $result->flowSummaries });
        $result = $self->ListFlows(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'flowSummaries') foreach (@{ $result->flowSummaries });
    }

    return undef
  }
  sub ListAllFlowVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFlowVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFlowVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->flowVersionSummaries }, @{ $next_result->flowVersionSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'flowVersionSummaries') foreach (@{ $result->flowVersionSummaries });
        $result = $self->ListFlowVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'flowVersionSummaries') foreach (@{ $result->flowVersionSummaries });
    }

    return undef
  }
  sub ListAllIngestionJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIngestionJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListIngestionJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->ingestionJobSummaries }, @{ $next_result->ingestionJobSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'ingestionJobSummaries') foreach (@{ $result->ingestionJobSummaries });
        $result = $self->ListIngestionJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'ingestionJobSummaries') foreach (@{ $result->ingestionJobSummaries });
    }

    return undef
  }
  sub ListAllKnowledgeBaseDocuments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListKnowledgeBaseDocuments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListKnowledgeBaseDocuments(@_, nextToken => $next_result->nextToken);
        push @{ $result->documentDetails }, @{ $next_result->documentDetails };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'documentDetails') foreach (@{ $result->documentDetails });
        $result = $self->ListKnowledgeBaseDocuments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'documentDetails') foreach (@{ $result->documentDetails });
    }

    return undef
  }
  sub ListAllKnowledgeBases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListKnowledgeBases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListKnowledgeBases(@_, nextToken => $next_result->nextToken);
        push @{ $result->knowledgeBaseSummaries }, @{ $next_result->knowledgeBaseSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'knowledgeBaseSummaries') foreach (@{ $result->knowledgeBaseSummaries });
        $result = $self->ListKnowledgeBases(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'knowledgeBaseSummaries') foreach (@{ $result->knowledgeBaseSummaries });
    }

    return undef
  }
  sub ListAllPrompts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPrompts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPrompts(@_, nextToken => $next_result->nextToken);
        push @{ $result->promptSummaries }, @{ $next_result->promptSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'promptSummaries') foreach (@{ $result->promptSummaries });
        $result = $self->ListPrompts(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'promptSummaries') foreach (@{ $result->promptSummaries });
    }

    return undef
  }


  sub operations { qw/AssociateAgentCollaborator AssociateAgentKnowledgeBase CreateAgent CreateAgentActionGroup CreateAgentAlias CreateDataSource CreateFlow CreateFlowAlias CreateFlowVersion CreateKnowledgeBase CreatePrompt CreatePromptVersion DeleteAgent DeleteAgentActionGroup DeleteAgentAlias DeleteAgentVersion DeleteDataSource DeleteFlow DeleteFlowAlias DeleteFlowVersion DeleteKnowledgeBase DeleteKnowledgeBaseDocuments DeletePrompt DisassociateAgentCollaborator DisassociateAgentKnowledgeBase GetAgent GetAgentActionGroup GetAgentAlias GetAgentCollaborator GetAgentKnowledgeBase GetAgentVersion GetDataSource GetFlow GetFlowAlias GetFlowVersion GetIngestionJob GetKnowledgeBase GetKnowledgeBaseDocuments GetPrompt IngestKnowledgeBaseDocuments ListAgentActionGroups ListAgentAliases ListAgentCollaborators ListAgentKnowledgeBases ListAgents ListAgentVersions ListDataSources ListFlowAliases ListFlows ListFlowVersions ListIngestionJobs ListKnowledgeBaseDocuments ListKnowledgeBases ListPrompts ListTagsForResource PrepareAgent PrepareFlow StartIngestionJob StopIngestionJob TagResource UntagResource UpdateAgent UpdateAgentActionGroup UpdateAgentAlias UpdateAgentCollaborator UpdateAgentKnowledgeBase UpdateDataSource UpdateFlow UpdateFlowAlias UpdateKnowledgeBase UpdatePrompt ValidateFlowDefinition / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent - Perl Interface to AWS Agents for Amazon Bedrock

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('BedrockAgent');
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

Describes the API operations for creating and managing Amazon Bedrock
agents.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05>


=head1 METHODS

=head2 AssociateAgentCollaborator

=over

=item AgentDescriptor => L<Paws::BedrockAgent::AgentDescriptor>

=item AgentId => Str

=item AgentVersion => Str

=item CollaborationInstruction => Str

=item CollaboratorName => Str

=item [ClientToken => Str]

=item [RelayConversationHistory => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::AssociateAgentCollaborator>

Returns: a L<Paws::BedrockAgent::AssociateAgentCollaboratorResponse> instance

Makes an agent a collaborator for another agent.


=head2 AssociateAgentKnowledgeBase

=over

=item AgentId => Str

=item AgentVersion => Str

=item Description => Str

=item KnowledgeBaseId => Str

=item [KnowledgeBaseState => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::AssociateAgentKnowledgeBase>

Returns: a L<Paws::BedrockAgent::AssociateAgentKnowledgeBaseResponse> instance

Associates a knowledge base with an agent. If a knowledge base is
associated and its C<indexState> is set to C<Enabled>, the agent
queries the knowledge base for information to augment its response to
the user.


=head2 CreateAgent

=over

=item AgentName => Str

=item [AgentCollaboration => Str]

=item [AgentResourceRoleArn => Str]

=item [ClientToken => Str]

=item [CustomerEncryptionKeyArn => Str]

=item [CustomOrchestration => L<Paws::BedrockAgent::CustomOrchestration>]

=item [Description => Str]

=item [FoundationModel => Str]

=item [GuardrailConfiguration => L<Paws::BedrockAgent::GuardrailConfiguration>]

=item [IdleSessionTTLInSeconds => Int]

=item [Instruction => Str]

=item [MemoryConfiguration => L<Paws::BedrockAgent::MemoryConfiguration>]

=item [OrchestrationType => Str]

=item [PromptOverrideConfiguration => L<Paws::BedrockAgent::PromptOverrideConfiguration>]

=item [Tags => L<Paws::BedrockAgent::TagsMap>]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::CreateAgent>

Returns: a L<Paws::BedrockAgent::CreateAgentResponse> instance

Creates an agent that orchestrates interactions between foundation
models, data sources, software applications, user conversations, and
APIs to carry out tasks to help customers.

=over

=item *

Specify the following fields for security purposes.

=over

=item *

C<agentResourceRoleArn> E<ndash> The Amazon Resource Name (ARN) of the
role with permissions to invoke API operations on an agent.

=item *

(Optional) C<customerEncryptionKeyArn> E<ndash> The Amazon Resource
Name (ARN) of a KMS key to encrypt the creation of the agent.

=item *

(Optional) C<idleSessionTTLinSeconds> E<ndash> Specify the number of
seconds for which the agent should maintain session information. After
this time expires, the subsequent C<InvokeAgent> request begins a new
session.

=back

=item *

To enable your agent to retain conversational context across multiple
sessions, include a C<memoryConfiguration> object. For more
information, see Configure memory
(https://docs.aws.amazon.com/bedrock/latest/userguide/agents-configure-memory.html).

=item *

To override the default prompt behavior for agent orchestration and to
use advanced prompts, include a C<promptOverrideConfiguration> object.
For more information, see Advanced prompts
(https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html).

=item *

If your agent fails to be created, the response returns a list of
C<failureReasons> alongside a list of C<recommendedActions> for you to
troubleshoot.

=item *

The agent instructions will not be honored if your agent has only one
knowledge base, uses default prompts, has no action group, and user
input is disabled.

=back



=head2 CreateAgentActionGroup

=over

=item ActionGroupName => Str

=item AgentId => Str

=item AgentVersion => Str

=item [ActionGroupExecutor => L<Paws::BedrockAgent::ActionGroupExecutor>]

=item [ActionGroupState => Str]

=item [ApiSchema => L<Paws::BedrockAgent::APISchema>]

=item [ClientToken => Str]

=item [Description => Str]

=item [FunctionSchema => L<Paws::BedrockAgent::FunctionSchema>]

=item [ParentActionGroupSignature => Str]

=item [ParentActionGroupSignatureParams => L<Paws::BedrockAgent::ActionGroupSignatureParams>]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::CreateAgentActionGroup>

Returns: a L<Paws::BedrockAgent::CreateAgentActionGroupResponse> instance

Creates an action group for an agent. An action group represents the
actions that an agent can carry out for the customer by defining the
APIs that an agent can call and the logic for calling them.

To allow your agent to request the user for additional information when
trying to complete a task, add an action group with the
C<parentActionGroupSignature> field set to C<AMAZON.UserInput>.

To allow your agent to generate, run, and troubleshoot code when trying
to complete a task, add an action group with the
C<parentActionGroupSignature> field set to C<AMAZON.CodeInterpreter>.

You must leave the C<description>, C<apiSchema>, and
C<actionGroupExecutor> fields blank for this action group. During
orchestration, if your agent determines that it needs to invoke an API
in an action group, but doesn't have enough information to complete the
API request, it will invoke this action group instead and return an
Observation
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Observation.html)
reprompting the user for more information.


=head2 CreateAgentAlias

=over

=item AgentAliasName => Str

=item AgentId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [RoutingConfiguration => ArrayRef[L<Paws::BedrockAgent::AgentAliasRoutingConfigurationListItem>]]

=item [Tags => L<Paws::BedrockAgent::TagsMap>]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::CreateAgentAlias>

Returns: a L<Paws::BedrockAgent::CreateAgentAliasResponse> instance

Creates an alias of an agent that can be used to deploy the agent.


=head2 CreateDataSource

=over

=item DataSourceConfiguration => L<Paws::BedrockAgent::DataSourceConfiguration>

=item KnowledgeBaseId => Str

=item Name => Str

=item [ClientToken => Str]

=item [DataDeletionPolicy => Str]

=item [Description => Str]

=item [ServerSideEncryptionConfiguration => L<Paws::BedrockAgent::ServerSideEncryptionConfiguration>]

=item [VectorIngestionConfiguration => L<Paws::BedrockAgent::VectorIngestionConfiguration>]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::CreateDataSource>

Returns: a L<Paws::BedrockAgent::CreateDataSourceResponse> instance

Connects a knowledge base to a data source. You specify the
configuration for the specific data source service in the
C<dataSourceConfiguration> field.

You can't change the C<chunkingConfiguration> after you create the data
source connector.


=head2 CreateFlow

=over

=item ExecutionRoleArn => Str

=item Name => Str

=item [ClientToken => Str]

=item [CustomerEncryptionKeyArn => Str]

=item [Definition => L<Paws::BedrockAgent::FlowDefinition>]

=item [Description => Str]

=item [Tags => L<Paws::BedrockAgent::TagsMap>]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::CreateFlow>

Returns: a L<Paws::BedrockAgent::CreateFlowResponse> instance

Creates a prompt flow that you can use to send an input through various
steps to yield an output. Configure nodes, each of which corresponds to
a step of the flow, and create connections between the nodes to create
paths to different outputs. For more information, see How it works
(https://docs.aws.amazon.com/bedrock/latest/userguide/flows-how-it-works.html)
and Create a flow in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/flows-create.html)
in the Amazon Bedrock User Guide.


=head2 CreateFlowAlias

=over

=item FlowIdentifier => Str

=item Name => Str

=item RoutingConfiguration => ArrayRef[L<Paws::BedrockAgent::FlowAliasRoutingConfigurationListItem>]

=item [ClientToken => Str]

=item [ConcurrencyConfiguration => L<Paws::BedrockAgent::FlowAliasConcurrencyConfiguration>]

=item [Description => Str]

=item [Tags => L<Paws::BedrockAgent::TagsMap>]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::CreateFlowAlias>

Returns: a L<Paws::BedrockAgent::CreateFlowAliasResponse> instance

Creates an alias of a flow for deployment. For more information, see
Deploy a flow in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html)
in the Amazon Bedrock User Guide.


=head2 CreateFlowVersion

=over

=item FlowIdentifier => Str

=item [ClientToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::CreateFlowVersion>

Returns: a L<Paws::BedrockAgent::CreateFlowVersionResponse> instance

Creates a version of the flow that you can deploy. For more
information, see Deploy a flow in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html)
in the Amazon Bedrock User Guide.


=head2 CreateKnowledgeBase

=over

=item KnowledgeBaseConfiguration => L<Paws::BedrockAgent::KnowledgeBaseConfiguration>

=item Name => Str

=item RoleArn => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [StorageConfiguration => L<Paws::BedrockAgent::StorageConfiguration>]

=item [Tags => L<Paws::BedrockAgent::TagsMap>]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::CreateKnowledgeBase>

Returns: a L<Paws::BedrockAgent::CreateKnowledgeBaseResponse> instance

Creates a knowledge base. A knowledge base contains your data sources
so that Large Language Models (LLMs) can use your data. To create a
knowledge base, you must first set up your data sources and configure a
supported vector store. For more information, see Set up a knowledge
base
(https://docs.aws.amazon.com/bedrock/latest/userguide/knowlege-base-prereq.html).

If you prefer to let Amazon Bedrock create and manage a vector store
for you in Amazon OpenSearch Service, use the console. For more
information, see Create a knowledge base
(https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-create).

=over

=item *

Provide the C<name> and an optional C<description>.

=item *

Provide the Amazon Resource Name (ARN) with permissions to create a
knowledge base in the C<roleArn> field.

=item *

Provide the embedding model to use in the C<embeddingModelArn> field in
the C<knowledgeBaseConfiguration> object.

=item *

Provide the configuration for your vector store in the
C<storageConfiguration> object.

=over

=item *

For an Amazon OpenSearch Service database, use the
C<opensearchServerlessConfiguration> object. For more information, see
Create a vector store in Amazon OpenSearch Service
(https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-oss.html).

=item *

For an Amazon Aurora database, use the C<RdsConfiguration> object. For
more information, see Create a vector store in Amazon Aurora
(https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-rds.html).

=item *

For a Pinecone database, use the C<pineconeConfiguration> object. For
more information, see Create a vector store in Pinecone
(https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-pinecone.html).

=item *

For a Redis Enterprise Cloud database, use the
C<redisEnterpriseCloudConfiguration> object. For more information, see
Create a vector store in Redis Enterprise Cloud
(https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-redis.html).

=back

=back



=head2 CreatePrompt

=over

=item Name => Str

=item [ClientToken => Str]

=item [CustomerEncryptionKeyArn => Str]

=item [DefaultVariant => Str]

=item [Description => Str]

=item [Tags => L<Paws::BedrockAgent::TagsMap>]

=item [Variants => ArrayRef[L<Paws::BedrockAgent::PromptVariant>]]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::CreatePrompt>

Returns: a L<Paws::BedrockAgent::CreatePromptResponse> instance

Creates a prompt in your prompt library that you can add to a flow. For
more information, see Prompt management in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html),
Create a prompt using Prompt management
(https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-create.html)
and Prompt flows in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/flows.html) in
the Amazon Bedrock User Guide.


=head2 CreatePromptVersion

=over

=item PromptIdentifier => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => L<Paws::BedrockAgent::TagsMap>]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::CreatePromptVersion>

Returns: a L<Paws::BedrockAgent::CreatePromptVersionResponse> instance

Creates a static snapshot of your prompt that can be deployed to
production. For more information, see Deploy prompts using Prompt
management by creating versions
(https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-deploy.html)
in the Amazon Bedrock User Guide.


=head2 DeleteAgent

=over

=item AgentId => Str

=item [SkipResourceInUseCheck => Bool]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::DeleteAgent>

Returns: a L<Paws::BedrockAgent::DeleteAgentResponse> instance

Deletes an agent.


=head2 DeleteAgentActionGroup

=over

=item ActionGroupId => Str

=item AgentId => Str

=item AgentVersion => Str

=item [SkipResourceInUseCheck => Bool]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::DeleteAgentActionGroup>

Returns: a L<Paws::BedrockAgent::DeleteAgentActionGroupResponse> instance

Deletes an action group in an agent.


=head2 DeleteAgentAlias

=over

=item AgentAliasId => Str

=item AgentId => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::DeleteAgentAlias>

Returns: a L<Paws::BedrockAgent::DeleteAgentAliasResponse> instance

Deletes an alias of an agent.


=head2 DeleteAgentVersion

=over

=item AgentId => Str

=item AgentVersion => Str

=item [SkipResourceInUseCheck => Bool]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::DeleteAgentVersion>

Returns: a L<Paws::BedrockAgent::DeleteAgentVersionResponse> instance

Deletes a version of an agent.


=head2 DeleteDataSource

=over

=item DataSourceId => Str

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::DeleteDataSource>

Returns: a L<Paws::BedrockAgent::DeleteDataSourceResponse> instance

Deletes a data source from a knowledge base.


=head2 DeleteFlow

=over

=item FlowIdentifier => Str

=item [SkipResourceInUseCheck => Bool]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::DeleteFlow>

Returns: a L<Paws::BedrockAgent::DeleteFlowResponse> instance

Deletes a flow.


=head2 DeleteFlowAlias

=over

=item AliasIdentifier => Str

=item FlowIdentifier => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::DeleteFlowAlias>

Returns: a L<Paws::BedrockAgent::DeleteFlowAliasResponse> instance

Deletes an alias of a flow.


=head2 DeleteFlowVersion

=over

=item FlowIdentifier => Str

=item FlowVersion => Str

=item [SkipResourceInUseCheck => Bool]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::DeleteFlowVersion>

Returns: a L<Paws::BedrockAgent::DeleteFlowVersionResponse> instance

Deletes a version of a flow.


=head2 DeleteKnowledgeBase

=over

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::DeleteKnowledgeBase>

Returns: a L<Paws::BedrockAgent::DeleteKnowledgeBaseResponse> instance

Deletes a knowledge base. Before deleting a knowledge base, you should
disassociate the knowledge base from any agents that it is associated
with by making a DisassociateAgentKnowledgeBase
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_DisassociateAgentKnowledgeBase.html)
request.


=head2 DeleteKnowledgeBaseDocuments

=over

=item DataSourceId => Str

=item DocumentIdentifiers => ArrayRef[L<Paws::BedrockAgent::DocumentIdentifier>]

=item KnowledgeBaseId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::DeleteKnowledgeBaseDocuments>

Returns: a L<Paws::BedrockAgent::DeleteKnowledgeBaseDocumentsResponse> instance

Deletes documents from a data source and syncs the changes to the
knowledge base that is connected to it. For more information, see
Ingest changes directly into a knowledge base
(https://docs.aws.amazon.com/bedrock/latest/userguide/kb-direct-ingestion.html)
in the Amazon Bedrock User Guide.


=head2 DeletePrompt

=over

=item PromptIdentifier => Str

=item [PromptVersion => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::DeletePrompt>

Returns: a L<Paws::BedrockAgent::DeletePromptResponse> instance

Deletes a prompt or a version of it, depending on whether you include
the C<promptVersion> field or not. For more information, see Delete
prompts from the Prompt management tool
(https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-manage.html#prompt-management-delete.html)
and Delete a version of a prompt from the Prompt management tool
(https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-deploy.html#prompt-management-versions-delete.html)
in the Amazon Bedrock User Guide.


=head2 DisassociateAgentCollaborator

=over

=item AgentId => Str

=item AgentVersion => Str

=item CollaboratorId => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::DisassociateAgentCollaborator>

Returns: a L<Paws::BedrockAgent::DisassociateAgentCollaboratorResponse> instance

Disassociates an agent collaborator.


=head2 DisassociateAgentKnowledgeBase

=over

=item AgentId => Str

=item AgentVersion => Str

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::DisassociateAgentKnowledgeBase>

Returns: a L<Paws::BedrockAgent::DisassociateAgentKnowledgeBaseResponse> instance

Disassociates a knowledge base from an agent.


=head2 GetAgent

=over

=item AgentId => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::GetAgent>

Returns: a L<Paws::BedrockAgent::GetAgentResponse> instance

Gets information about an agent.


=head2 GetAgentActionGroup

=over

=item ActionGroupId => Str

=item AgentId => Str

=item AgentVersion => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::GetAgentActionGroup>

Returns: a L<Paws::BedrockAgent::GetAgentActionGroupResponse> instance

Gets information about an action group for an agent.


=head2 GetAgentAlias

=over

=item AgentAliasId => Str

=item AgentId => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::GetAgentAlias>

Returns: a L<Paws::BedrockAgent::GetAgentAliasResponse> instance

Gets information about an alias of an agent.


=head2 GetAgentCollaborator

=over

=item AgentId => Str

=item AgentVersion => Str

=item CollaboratorId => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::GetAgentCollaborator>

Returns: a L<Paws::BedrockAgent::GetAgentCollaboratorResponse> instance

Retrieves information about an agent's collaborator.


=head2 GetAgentKnowledgeBase

=over

=item AgentId => Str

=item AgentVersion => Str

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::GetAgentKnowledgeBase>

Returns: a L<Paws::BedrockAgent::GetAgentKnowledgeBaseResponse> instance

Gets information about a knowledge base associated with an agent.


=head2 GetAgentVersion

=over

=item AgentId => Str

=item AgentVersion => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::GetAgentVersion>

Returns: a L<Paws::BedrockAgent::GetAgentVersionResponse> instance

Gets details about a version of an agent.


=head2 GetDataSource

=over

=item DataSourceId => Str

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::GetDataSource>

Returns: a L<Paws::BedrockAgent::GetDataSourceResponse> instance

Gets information about a data source.


=head2 GetFlow

=over

=item FlowIdentifier => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::GetFlow>

Returns: a L<Paws::BedrockAgent::GetFlowResponse> instance

Retrieves information about a flow. For more information, see Manage a
flow in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/flows-manage.html)
in the Amazon Bedrock User Guide.


=head2 GetFlowAlias

=over

=item AliasIdentifier => Str

=item FlowIdentifier => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::GetFlowAlias>

Returns: a L<Paws::BedrockAgent::GetFlowAliasResponse> instance

Retrieves information about a flow. For more information, see Deploy a
flow in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html)
in the Amazon Bedrock User Guide.


=head2 GetFlowVersion

=over

=item FlowIdentifier => Str

=item FlowVersion => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::GetFlowVersion>

Returns: a L<Paws::BedrockAgent::GetFlowVersionResponse> instance

Retrieves information about a version of a flow. For more information,
see Deploy a flow in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html)
in the Amazon Bedrock User Guide.


=head2 GetIngestionJob

=over

=item DataSourceId => Str

=item IngestionJobId => Str

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::GetIngestionJob>

Returns: a L<Paws::BedrockAgent::GetIngestionJobResponse> instance

Gets information about a data ingestion job. Data sources are ingested
into your knowledge base so that Large Language Models (LLMs) can use
your data.


=head2 GetKnowledgeBase

=over

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::GetKnowledgeBase>

Returns: a L<Paws::BedrockAgent::GetKnowledgeBaseResponse> instance

Gets information about a knoweldge base.


=head2 GetKnowledgeBaseDocuments

=over

=item DataSourceId => Str

=item DocumentIdentifiers => ArrayRef[L<Paws::BedrockAgent::DocumentIdentifier>]

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::GetKnowledgeBaseDocuments>

Returns: a L<Paws::BedrockAgent::GetKnowledgeBaseDocumentsResponse> instance

Retrieves specific documents from a data source that is connected to a
knowledge base. For more information, see Ingest changes directly into
a knowledge base
(https://docs.aws.amazon.com/bedrock/latest/userguide/kb-direct-ingestion.html)
in the Amazon Bedrock User Guide.


=head2 GetPrompt

=over

=item PromptIdentifier => Str

=item [PromptVersion => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::GetPrompt>

Returns: a L<Paws::BedrockAgent::GetPromptResponse> instance

Retrieves information about the working draft (C<DRAFT> version) of a
prompt or a version of it, depending on whether you include the
C<promptVersion> field or not. For more information, see View
information about prompts using Prompt management
(https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-manage.html#prompt-management-view.html)
and View information about a version of your prompt
(https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-deploy.html#prompt-management-versions-view.html)
in the Amazon Bedrock User Guide.


=head2 IngestKnowledgeBaseDocuments

=over

=item DataSourceId => Str

=item Documents => ArrayRef[L<Paws::BedrockAgent::KnowledgeBaseDocument>]

=item KnowledgeBaseId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::IngestKnowledgeBaseDocuments>

Returns: a L<Paws::BedrockAgent::IngestKnowledgeBaseDocumentsResponse> instance

Ingests documents directly into the knowledge base that is connected to
the data source. The C<dataSourceType> specified in the content for
each document must match the type of the data source that you specify
in the header. For more information, see Ingest changes directly into a
knowledge base
(https://docs.aws.amazon.com/bedrock/latest/userguide/kb-direct-ingestion.html)
in the Amazon Bedrock User Guide.


=head2 ListAgentActionGroups

=over

=item AgentId => Str

=item AgentVersion => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::ListAgentActionGroups>

Returns: a L<Paws::BedrockAgent::ListAgentActionGroupsResponse> instance

Lists the action groups for an agent and information about each one.


=head2 ListAgentAliases

=over

=item AgentId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::ListAgentAliases>

Returns: a L<Paws::BedrockAgent::ListAgentAliasesResponse> instance

Lists the aliases of an agent and information about each one.


=head2 ListAgentCollaborators

=over

=item AgentId => Str

=item AgentVersion => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::ListAgentCollaborators>

Returns: a L<Paws::BedrockAgent::ListAgentCollaboratorsResponse> instance

Retrieve a list of an agent's collaborators.


=head2 ListAgentKnowledgeBases

=over

=item AgentId => Str

=item AgentVersion => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::ListAgentKnowledgeBases>

Returns: a L<Paws::BedrockAgent::ListAgentKnowledgeBasesResponse> instance

Lists knowledge bases associated with an agent and information about
each one.


=head2 ListAgents

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::ListAgents>

Returns: a L<Paws::BedrockAgent::ListAgentsResponse> instance

Lists the agents belonging to an account and information about each
agent.


=head2 ListAgentVersions

=over

=item AgentId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::ListAgentVersions>

Returns: a L<Paws::BedrockAgent::ListAgentVersionsResponse> instance

Lists the versions of an agent and information about each version.


=head2 ListDataSources

=over

=item KnowledgeBaseId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::ListDataSources>

Returns: a L<Paws::BedrockAgent::ListDataSourcesResponse> instance

Lists the data sources in a knowledge base and information about each
one.


=head2 ListFlowAliases

=over

=item FlowIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::ListFlowAliases>

Returns: a L<Paws::BedrockAgent::ListFlowAliasesResponse> instance

Returns a list of aliases for a flow.


=head2 ListFlows

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::ListFlows>

Returns: a L<Paws::BedrockAgent::ListFlowsResponse> instance

Returns a list of flows and information about each flow. For more
information, see Manage a flow in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/flows-manage.html)
in the Amazon Bedrock User Guide.


=head2 ListFlowVersions

=over

=item FlowIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::ListFlowVersions>

Returns: a L<Paws::BedrockAgent::ListFlowVersionsResponse> instance

Returns a list of information about each flow. For more information,
see Deploy a flow in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html)
in the Amazon Bedrock User Guide.


=head2 ListIngestionJobs

=over

=item DataSourceId => Str

=item KnowledgeBaseId => Str

=item [Filters => ArrayRef[L<Paws::BedrockAgent::IngestionJobFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::BedrockAgent::IngestionJobSortBy>]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::ListIngestionJobs>

Returns: a L<Paws::BedrockAgent::ListIngestionJobsResponse> instance

Lists the data ingestion jobs for a data source. The list also includes
information about each job.


=head2 ListKnowledgeBaseDocuments

=over

=item DataSourceId => Str

=item KnowledgeBaseId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::ListKnowledgeBaseDocuments>

Returns: a L<Paws::BedrockAgent::ListKnowledgeBaseDocumentsResponse> instance

Retrieves all the documents contained in a data source that is
connected to a knowledge base. For more information, see Ingest changes
directly into a knowledge base
(https://docs.aws.amazon.com/bedrock/latest/userguide/kb-direct-ingestion.html)
in the Amazon Bedrock User Guide.


=head2 ListKnowledgeBases

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::ListKnowledgeBases>

Returns: a L<Paws::BedrockAgent::ListKnowledgeBasesResponse> instance

Lists the knowledge bases in an account. The list also
includesinformation about each knowledge base.


=head2 ListPrompts

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PromptIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::ListPrompts>

Returns: a L<Paws::BedrockAgent::ListPromptsResponse> instance

Returns either information about the working draft (C<DRAFT> version)
of each prompt in an account, or information about of all versions of a
prompt, depending on whether you include the C<promptIdentifier> field
or not. For more information, see View information about prompts using
Prompt management
(https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-manage.html#prompt-management-view.html)
in the Amazon Bedrock User Guide.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::ListTagsForResource>

Returns: a L<Paws::BedrockAgent::ListTagsForResourceResponse> instance

List all the tags for the resource you specify.


=head2 PrepareAgent

=over

=item AgentId => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::PrepareAgent>

Returns: a L<Paws::BedrockAgent::PrepareAgentResponse> instance

Creates a C<DRAFT> version of the agent that can be used for internal
testing.


=head2 PrepareFlow

=over

=item FlowIdentifier => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::PrepareFlow>

Returns: a L<Paws::BedrockAgent::PrepareFlowResponse> instance

Prepares the C<DRAFT> version of a flow so that it can be invoked. For
more information, see Test a flow in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/flows-test.html)
in the Amazon Bedrock User Guide.


=head2 StartIngestionJob

=over

=item DataSourceId => Str

=item KnowledgeBaseId => Str

=item [ClientToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::StartIngestionJob>

Returns: a L<Paws::BedrockAgent::StartIngestionJobResponse> instance

Begins a data ingestion job. Data sources are ingested into your
knowledge base so that Large Language Models (LLMs) can use your data.


=head2 StopIngestionJob

=over

=item DataSourceId => Str

=item IngestionJobId => Str

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::BedrockAgent::StopIngestionJob>

Returns: a L<Paws::BedrockAgent::StopIngestionJobResponse> instance

Stops a currently running data ingestion job. You can send a
C<StartIngestionJob> request again to ingest the rest of your data when
you are ready.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::BedrockAgent::TagsMap>


=back

Each argument is described in detail in: L<Paws::BedrockAgent::TagResource>

Returns: a L<Paws::BedrockAgent::TagResourceResponse> instance

Associate tags with a resource. For more information, see Tagging
resources
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html)
in the Amazon Bedrock User Guide.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::UntagResource>

Returns: a L<Paws::BedrockAgent::UntagResourceResponse> instance

Remove tags from a resource.


=head2 UpdateAgent

=over

=item AgentId => Str

=item AgentName => Str

=item AgentResourceRoleArn => Str

=item FoundationModel => Str

=item [AgentCollaboration => Str]

=item [CustomerEncryptionKeyArn => Str]

=item [CustomOrchestration => L<Paws::BedrockAgent::CustomOrchestration>]

=item [Description => Str]

=item [GuardrailConfiguration => L<Paws::BedrockAgent::GuardrailConfiguration>]

=item [IdleSessionTTLInSeconds => Int]

=item [Instruction => Str]

=item [MemoryConfiguration => L<Paws::BedrockAgent::MemoryConfiguration>]

=item [OrchestrationType => Str]

=item [PromptOverrideConfiguration => L<Paws::BedrockAgent::PromptOverrideConfiguration>]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::UpdateAgent>

Returns: a L<Paws::BedrockAgent::UpdateAgentResponse> instance

Updates the configuration of an agent.


=head2 UpdateAgentActionGroup

=over

=item ActionGroupId => Str

=item ActionGroupName => Str

=item AgentId => Str

=item AgentVersion => Str

=item [ActionGroupExecutor => L<Paws::BedrockAgent::ActionGroupExecutor>]

=item [ActionGroupState => Str]

=item [ApiSchema => L<Paws::BedrockAgent::APISchema>]

=item [Description => Str]

=item [FunctionSchema => L<Paws::BedrockAgent::FunctionSchema>]

=item [ParentActionGroupSignature => Str]

=item [ParentActionGroupSignatureParams => L<Paws::BedrockAgent::ActionGroupSignatureParams>]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::UpdateAgentActionGroup>

Returns: a L<Paws::BedrockAgent::UpdateAgentActionGroupResponse> instance

Updates the configuration for an action group for an agent.


=head2 UpdateAgentAlias

=over

=item AgentAliasId => Str

=item AgentAliasName => Str

=item AgentId => Str

=item [Description => Str]

=item [RoutingConfiguration => ArrayRef[L<Paws::BedrockAgent::AgentAliasRoutingConfigurationListItem>]]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::UpdateAgentAlias>

Returns: a L<Paws::BedrockAgent::UpdateAgentAliasResponse> instance

Updates configurations for an alias of an agent.


=head2 UpdateAgentCollaborator

=over

=item AgentDescriptor => L<Paws::BedrockAgent::AgentDescriptor>

=item AgentId => Str

=item AgentVersion => Str

=item CollaborationInstruction => Str

=item CollaboratorId => Str

=item CollaboratorName => Str

=item [RelayConversationHistory => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::UpdateAgentCollaborator>

Returns: a L<Paws::BedrockAgent::UpdateAgentCollaboratorResponse> instance

Updates an agent's collaborator.


=head2 UpdateAgentKnowledgeBase

=over

=item AgentId => Str

=item AgentVersion => Str

=item KnowledgeBaseId => Str

=item [Description => Str]

=item [KnowledgeBaseState => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::UpdateAgentKnowledgeBase>

Returns: a L<Paws::BedrockAgent::UpdateAgentKnowledgeBaseResponse> instance

Updates the configuration for a knowledge base that has been associated
with an agent.


=head2 UpdateDataSource

=over

=item DataSourceConfiguration => L<Paws::BedrockAgent::DataSourceConfiguration>

=item DataSourceId => Str

=item KnowledgeBaseId => Str

=item Name => Str

=item [DataDeletionPolicy => Str]

=item [Description => Str]

=item [ServerSideEncryptionConfiguration => L<Paws::BedrockAgent::ServerSideEncryptionConfiguration>]

=item [VectorIngestionConfiguration => L<Paws::BedrockAgent::VectorIngestionConfiguration>]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::UpdateDataSource>

Returns: a L<Paws::BedrockAgent::UpdateDataSourceResponse> instance

Updates the configurations for a data source connector.

You can't change the C<chunkingConfiguration> after you create the data
source connector. Specify the existing C<chunkingConfiguration>.


=head2 UpdateFlow

=over

=item ExecutionRoleArn => Str

=item FlowIdentifier => Str

=item Name => Str

=item [CustomerEncryptionKeyArn => Str]

=item [Definition => L<Paws::BedrockAgent::FlowDefinition>]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::UpdateFlow>

Returns: a L<Paws::BedrockAgent::UpdateFlowResponse> instance

Modifies a flow. Include both fields that you want to keep and fields
that you want to change. For more information, see How it works
(https://docs.aws.amazon.com/bedrock/latest/userguide/flows-how-it-works.html)
and Create a flow in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/flows-create.html)
in the Amazon Bedrock User Guide.


=head2 UpdateFlowAlias

=over

=item AliasIdentifier => Str

=item FlowIdentifier => Str

=item Name => Str

=item RoutingConfiguration => ArrayRef[L<Paws::BedrockAgent::FlowAliasRoutingConfigurationListItem>]

=item [ConcurrencyConfiguration => L<Paws::BedrockAgent::FlowAliasConcurrencyConfiguration>]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::UpdateFlowAlias>

Returns: a L<Paws::BedrockAgent::UpdateFlowAliasResponse> instance

Modifies the alias of a flow. Include both fields that you want to keep
and ones that you want to change. For more information, see Deploy a
flow in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html)
in the Amazon Bedrock User Guide.


=head2 UpdateKnowledgeBase

=over

=item KnowledgeBaseConfiguration => L<Paws::BedrockAgent::KnowledgeBaseConfiguration>

=item KnowledgeBaseId => Str

=item Name => Str

=item RoleArn => Str

=item [Description => Str]

=item [StorageConfiguration => L<Paws::BedrockAgent::StorageConfiguration>]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::UpdateKnowledgeBase>

Returns: a L<Paws::BedrockAgent::UpdateKnowledgeBaseResponse> instance

Updates the configuration of a knowledge base with the fields that you
specify. Because all fields will be overwritten, you must include the
same values for fields that you want to keep the same.

You can change the following fields:

=over

=item *

C<name>

=item *

C<description>

=item *

C<roleArn>

=back

You can't change the C<knowledgeBaseConfiguration> or
C<storageConfiguration> fields, so you must specify the same
configurations as when you created the knowledge base. You can send a
GetKnowledgeBase
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetKnowledgeBase.html)
request and copy the same configurations.


=head2 UpdatePrompt

=over

=item Name => Str

=item PromptIdentifier => Str

=item [CustomerEncryptionKeyArn => Str]

=item [DefaultVariant => Str]

=item [Description => Str]

=item [Variants => ArrayRef[L<Paws::BedrockAgent::PromptVariant>]]


=back

Each argument is described in detail in: L<Paws::BedrockAgent::UpdatePrompt>

Returns: a L<Paws::BedrockAgent::UpdatePromptResponse> instance

Modifies a prompt in your prompt library. Include both fields that you
want to keep and fields that you want to replace. For more information,
see Prompt management in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html)
and Edit prompts in your prompt library
(https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-manage.html#prompt-management-edit)
in the Amazon Bedrock User Guide.


=head2 ValidateFlowDefinition

=over

=item Definition => L<Paws::BedrockAgent::FlowDefinition>


=back

Each argument is described in detail in: L<Paws::BedrockAgent::ValidateFlowDefinition>

Returns: a L<Paws::BedrockAgent::ValidateFlowDefinitionResponse> instance

Validates the definition of a flow.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAgentActionGroups(sub { },AgentId => Str, AgentVersion => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAgentActionGroups(AgentId => Str, AgentVersion => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - actionGroupSummaries, passing the object as the first parameter, and the string 'actionGroupSummaries' as the second parameter 

If not, it will return a a L<Paws::BedrockAgent::ListAgentActionGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAgentAliases(sub { },AgentId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAgentAliases(AgentId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - agentAliasSummaries, passing the object as the first parameter, and the string 'agentAliasSummaries' as the second parameter 

If not, it will return a a L<Paws::BedrockAgent::ListAgentAliasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAgentCollaborators(sub { },AgentId => Str, AgentVersion => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAgentCollaborators(AgentId => Str, AgentVersion => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - agentCollaboratorSummaries, passing the object as the first parameter, and the string 'agentCollaboratorSummaries' as the second parameter 

If not, it will return a a L<Paws::BedrockAgent::ListAgentCollaboratorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAgentKnowledgeBases(sub { },AgentId => Str, AgentVersion => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAgentKnowledgeBases(AgentId => Str, AgentVersion => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - agentKnowledgeBaseSummaries, passing the object as the first parameter, and the string 'agentKnowledgeBaseSummaries' as the second parameter 

If not, it will return a a L<Paws::BedrockAgent::ListAgentKnowledgeBasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAgents(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllAgents([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - agentSummaries, passing the object as the first parameter, and the string 'agentSummaries' as the second parameter 

If not, it will return a a L<Paws::BedrockAgent::ListAgentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAgentVersions(sub { },AgentId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAgentVersions(AgentId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - agentVersionSummaries, passing the object as the first parameter, and the string 'agentVersionSummaries' as the second parameter 

If not, it will return a a L<Paws::BedrockAgent::ListAgentVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataSources(sub { },KnowledgeBaseId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDataSources(KnowledgeBaseId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - dataSourceSummaries, passing the object as the first parameter, and the string 'dataSourceSummaries' as the second parameter 

If not, it will return a a L<Paws::BedrockAgent::ListDataSourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFlowAliases(sub { },FlowIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllFlowAliases(FlowIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - flowAliasSummaries, passing the object as the first parameter, and the string 'flowAliasSummaries' as the second parameter 

If not, it will return a a L<Paws::BedrockAgent::ListFlowAliasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFlows(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllFlows([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - flowSummaries, passing the object as the first parameter, and the string 'flowSummaries' as the second parameter 

If not, it will return a a L<Paws::BedrockAgent::ListFlowsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFlowVersions(sub { },FlowIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllFlowVersions(FlowIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - flowVersionSummaries, passing the object as the first parameter, and the string 'flowVersionSummaries' as the second parameter 

If not, it will return a a L<Paws::BedrockAgent::ListFlowVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIngestionJobs(sub { },DataSourceId => Str, KnowledgeBaseId => Str, [Filters => ArrayRef[L<Paws::BedrockAgent::IngestionJobFilter>], MaxResults => Int, NextToken => Str, SortBy => L<Paws::BedrockAgent::IngestionJobSortBy>])

=head2 ListAllIngestionJobs(DataSourceId => Str, KnowledgeBaseId => Str, [Filters => ArrayRef[L<Paws::BedrockAgent::IngestionJobFilter>], MaxResults => Int, NextToken => Str, SortBy => L<Paws::BedrockAgent::IngestionJobSortBy>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ingestionJobSummaries, passing the object as the first parameter, and the string 'ingestionJobSummaries' as the second parameter 

If not, it will return a a L<Paws::BedrockAgent::ListIngestionJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllKnowledgeBaseDocuments(sub { },DataSourceId => Str, KnowledgeBaseId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllKnowledgeBaseDocuments(DataSourceId => Str, KnowledgeBaseId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - documentDetails, passing the object as the first parameter, and the string 'documentDetails' as the second parameter 

If not, it will return a a L<Paws::BedrockAgent::ListKnowledgeBaseDocumentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllKnowledgeBases(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllKnowledgeBases([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - knowledgeBaseSummaries, passing the object as the first parameter, and the string 'knowledgeBaseSummaries' as the second parameter 

If not, it will return a a L<Paws::BedrockAgent::ListKnowledgeBasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPrompts(sub { },[MaxResults => Int, NextToken => Str, PromptIdentifier => Str])

=head2 ListAllPrompts([MaxResults => Int, NextToken => Str, PromptIdentifier => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - promptSummaries, passing the object as the first parameter, and the string 'promptSummaries' as the second parameter 

If not, it will return a a L<Paws::BedrockAgent::ListPromptsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

