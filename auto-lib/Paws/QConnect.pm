package Paws::QConnect;
  use Moose;
  sub service { 'wisdom' }
  sub signing_name { 'wisdom' }
  sub version { '2020-10-19' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub ActivateMessageTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::ActivateMessageTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAIAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::CreateAIAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAIAgentVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::CreateAIAgentVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAIGuardrail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::CreateAIGuardrail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAIGuardrailVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::CreateAIGuardrailVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAIPrompt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::CreateAIPrompt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAIPromptVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::CreateAIPromptVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssistant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::CreateAssistant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssistantAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::CreateAssistantAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::CreateContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateContentAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::CreateContentAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKnowledgeBase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::CreateKnowledgeBase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMessageTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::CreateMessageTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMessageTemplateAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::CreateMessageTemplateAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMessageTemplateVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::CreateMessageTemplateVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateQuickResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::CreateQuickResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::CreateSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeactivateMessageTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::DeactivateMessageTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAIAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::DeleteAIAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAIAgentVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::DeleteAIAgentVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAIGuardrail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::DeleteAIGuardrail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAIGuardrailVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::DeleteAIGuardrailVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAIPrompt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::DeleteAIPrompt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAIPromptVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::DeleteAIPromptVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssistant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::DeleteAssistant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssistantAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::DeleteAssistantAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::DeleteContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteContentAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::DeleteContentAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::DeleteImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKnowledgeBase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::DeleteKnowledgeBase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMessageTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::DeleteMessageTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMessageTemplateAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::DeleteMessageTemplateAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteQuickResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::DeleteQuickResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAIAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::GetAIAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAIGuardrail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::GetAIGuardrail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAIPrompt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::GetAIPrompt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssistant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::GetAssistant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssistantAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::GetAssistantAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::GetContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContentAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::GetContentAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContentSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::GetContentSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::GetImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKnowledgeBase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::GetKnowledgeBase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMessageTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::GetMessageTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNextMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::GetNextMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQuickResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::GetQuickResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::GetRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::GetSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAIAgents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::ListAIAgents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAIAgentVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::ListAIAgentVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAIGuardrails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::ListAIGuardrails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAIGuardrailVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::ListAIGuardrailVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAIPrompts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::ListAIPrompts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAIPromptVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::ListAIPromptVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssistantAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::ListAssistantAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssistants {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::ListAssistants', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContentAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::ListContentAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::ListContents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::ListImportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKnowledgeBases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::ListKnowledgeBases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMessages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::ListMessages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMessageTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::ListMessageTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMessageTemplateVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::ListMessageTemplateVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQuickResponses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::ListQuickResponses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub NotifyRecommendationsReceived {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::NotifyRecommendationsReceived', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutFeedback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::PutFeedback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub QueryAssistant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::QueryAssistant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveAssistantAIAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::RemoveAssistantAIAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveKnowledgeBaseTemplateUri {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::RemoveKnowledgeBaseTemplateUri', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RenderMessageTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::RenderMessageTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::SearchContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchMessageTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::SearchMessageTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchQuickResponses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::SearchQuickResponses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::SearchSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::SendMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartContentUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::StartContentUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::StartImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAIAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::UpdateAIAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAIGuardrail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::UpdateAIGuardrail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAIPrompt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::UpdateAIPrompt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssistantAIAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::UpdateAssistantAIAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::UpdateContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateKnowledgeBaseTemplateUri {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::UpdateKnowledgeBaseTemplateUri', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMessageTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::UpdateMessageTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMessageTemplateMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::UpdateMessageTemplateMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQuickResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::UpdateQuickResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::UpdateSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSessionData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QConnect::UpdateSessionData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAIAgents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAIAgents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAIAgents(@_, nextToken => $next_result->nextToken);
        push @{ $result->aiAgentSummaries }, @{ $next_result->aiAgentSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'aiAgentSummaries') foreach (@{ $result->aiAgentSummaries });
        $result = $self->ListAIAgents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'aiAgentSummaries') foreach (@{ $result->aiAgentSummaries });
    }

    return undef
  }
  sub ListAllAIAgentVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAIAgentVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAIAgentVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->aiAgentVersionSummaries }, @{ $next_result->aiAgentVersionSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'aiAgentVersionSummaries') foreach (@{ $result->aiAgentVersionSummaries });
        $result = $self->ListAIAgentVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'aiAgentVersionSummaries') foreach (@{ $result->aiAgentVersionSummaries });
    }

    return undef
  }
  sub ListAllAIGuardrails {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAIGuardrails(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAIGuardrails(@_, nextToken => $next_result->nextToken);
        push @{ $result->aiGuardrailSummaries }, @{ $next_result->aiGuardrailSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'aiGuardrailSummaries') foreach (@{ $result->aiGuardrailSummaries });
        $result = $self->ListAIGuardrails(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'aiGuardrailSummaries') foreach (@{ $result->aiGuardrailSummaries });
    }

    return undef
  }
  sub ListAllAIGuardrailVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAIGuardrailVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAIGuardrailVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->aiGuardrailVersionSummaries }, @{ $next_result->aiGuardrailVersionSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'aiGuardrailVersionSummaries') foreach (@{ $result->aiGuardrailVersionSummaries });
        $result = $self->ListAIGuardrailVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'aiGuardrailVersionSummaries') foreach (@{ $result->aiGuardrailVersionSummaries });
    }

    return undef
  }
  sub ListAllAIPrompts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAIPrompts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAIPrompts(@_, nextToken => $next_result->nextToken);
        push @{ $result->aiPromptSummaries }, @{ $next_result->aiPromptSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'aiPromptSummaries') foreach (@{ $result->aiPromptSummaries });
        $result = $self->ListAIPrompts(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'aiPromptSummaries') foreach (@{ $result->aiPromptSummaries });
    }

    return undef
  }
  sub ListAllAIPromptVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAIPromptVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAIPromptVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->aiPromptVersionSummaries }, @{ $next_result->aiPromptVersionSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'aiPromptVersionSummaries') foreach (@{ $result->aiPromptVersionSummaries });
        $result = $self->ListAIPromptVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'aiPromptVersionSummaries') foreach (@{ $result->aiPromptVersionSummaries });
    }

    return undef
  }
  sub ListAllAssistantAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssistantAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssistantAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->assistantAssociationSummaries }, @{ $next_result->assistantAssociationSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assistantAssociationSummaries') foreach (@{ $result->assistantAssociationSummaries });
        $result = $self->ListAssistantAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assistantAssociationSummaries') foreach (@{ $result->assistantAssociationSummaries });
    }

    return undef
  }
  sub ListAllAssistants {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssistants(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssistants(@_, nextToken => $next_result->nextToken);
        push @{ $result->assistantSummaries }, @{ $next_result->assistantSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assistantSummaries') foreach (@{ $result->assistantSummaries });
        $result = $self->ListAssistants(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assistantSummaries') foreach (@{ $result->assistantSummaries });
    }

    return undef
  }
  sub ListAllContentAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContentAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListContentAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->contentAssociationSummaries }, @{ $next_result->contentAssociationSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'contentAssociationSummaries') foreach (@{ $result->contentAssociationSummaries });
        $result = $self->ListContentAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'contentAssociationSummaries') foreach (@{ $result->contentAssociationSummaries });
    }

    return undef
  }
  sub ListAllContents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListContents(@_, nextToken => $next_result->nextToken);
        push @{ $result->contentSummaries }, @{ $next_result->contentSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'contentSummaries') foreach (@{ $result->contentSummaries });
        $result = $self->ListContents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'contentSummaries') foreach (@{ $result->contentSummaries });
    }

    return undef
  }
  sub ListAllImportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListImportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListImportJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->importJobSummaries }, @{ $next_result->importJobSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'importJobSummaries') foreach (@{ $result->importJobSummaries });
        $result = $self->ListImportJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'importJobSummaries') foreach (@{ $result->importJobSummaries });
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
  sub ListAllMessages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMessages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMessages(@_, nextToken => $next_result->nextToken);
        push @{ $result->messages }, @{ $next_result->messages };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'messages') foreach (@{ $result->messages });
        $result = $self->ListMessages(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'messages') foreach (@{ $result->messages });
    }

    return undef
  }
  sub ListAllMessageTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMessageTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMessageTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->messageTemplateSummaries }, @{ $next_result->messageTemplateSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'messageTemplateSummaries') foreach (@{ $result->messageTemplateSummaries });
        $result = $self->ListMessageTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'messageTemplateSummaries') foreach (@{ $result->messageTemplateSummaries });
    }

    return undef
  }
  sub ListAllMessageTemplateVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMessageTemplateVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMessageTemplateVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->messageTemplateVersionSummaries }, @{ $next_result->messageTemplateVersionSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'messageTemplateVersionSummaries') foreach (@{ $result->messageTemplateVersionSummaries });
        $result = $self->ListMessageTemplateVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'messageTemplateVersionSummaries') foreach (@{ $result->messageTemplateVersionSummaries });
    }

    return undef
  }
  sub ListAllQuickResponses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListQuickResponses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListQuickResponses(@_, nextToken => $next_result->nextToken);
        push @{ $result->quickResponseSummaries }, @{ $next_result->quickResponseSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'quickResponseSummaries') foreach (@{ $result->quickResponseSummaries });
        $result = $self->ListQuickResponses(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'quickResponseSummaries') foreach (@{ $result->quickResponseSummaries });
    }

    return undef
  }
  sub QueryAllAssistant {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->QueryAssistant(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->QueryAssistant(@_, nextToken => $next_result->nextToken);
        push @{ $result->results }, @{ $next_result->results };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'results') foreach (@{ $result->results });
        $result = $self->QueryAssistant(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'results') foreach (@{ $result->results });
    }

    return undef
  }
  sub SearchAllContent {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchContent(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchContent(@_, nextToken => $next_result->nextToken);
        push @{ $result->contentSummaries }, @{ $next_result->contentSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'contentSummaries') foreach (@{ $result->contentSummaries });
        $result = $self->SearchContent(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'contentSummaries') foreach (@{ $result->contentSummaries });
    }

    return undef
  }
  sub SearchAllMessageTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchMessageTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchMessageTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->results }, @{ $next_result->results };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'results') foreach (@{ $result->results });
        $result = $self->SearchMessageTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'results') foreach (@{ $result->results });
    }

    return undef
  }
  sub SearchAllQuickResponses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchQuickResponses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchQuickResponses(@_, nextToken => $next_result->nextToken);
        push @{ $result->results }, @{ $next_result->results };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'results') foreach (@{ $result->results });
        $result = $self->SearchQuickResponses(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'results') foreach (@{ $result->results });
    }

    return undef
  }
  sub SearchAllSessions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchSessions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchSessions(@_, nextToken => $next_result->nextToken);
        push @{ $result->sessionSummaries }, @{ $next_result->sessionSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'sessionSummaries') foreach (@{ $result->sessionSummaries });
        $result = $self->SearchSessions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'sessionSummaries') foreach (@{ $result->sessionSummaries });
    }

    return undef
  }


  sub operations { qw/ActivateMessageTemplate CreateAIAgent CreateAIAgentVersion CreateAIGuardrail CreateAIGuardrailVersion CreateAIPrompt CreateAIPromptVersion CreateAssistant CreateAssistantAssociation CreateContent CreateContentAssociation CreateKnowledgeBase CreateMessageTemplate CreateMessageTemplateAttachment CreateMessageTemplateVersion CreateQuickResponse CreateSession DeactivateMessageTemplate DeleteAIAgent DeleteAIAgentVersion DeleteAIGuardrail DeleteAIGuardrailVersion DeleteAIPrompt DeleteAIPromptVersion DeleteAssistant DeleteAssistantAssociation DeleteContent DeleteContentAssociation DeleteImportJob DeleteKnowledgeBase DeleteMessageTemplate DeleteMessageTemplateAttachment DeleteQuickResponse GetAIAgent GetAIGuardrail GetAIPrompt GetAssistant GetAssistantAssociation GetContent GetContentAssociation GetContentSummary GetImportJob GetKnowledgeBase GetMessageTemplate GetNextMessage GetQuickResponse GetRecommendations GetSession ListAIAgents ListAIAgentVersions ListAIGuardrails ListAIGuardrailVersions ListAIPrompts ListAIPromptVersions ListAssistantAssociations ListAssistants ListContentAssociations ListContents ListImportJobs ListKnowledgeBases ListMessages ListMessageTemplates ListMessageTemplateVersions ListQuickResponses ListTagsForResource NotifyRecommendationsReceived PutFeedback QueryAssistant RemoveAssistantAIAgent RemoveKnowledgeBaseTemplateUri RenderMessageTemplate SearchContent SearchMessageTemplates SearchQuickResponses SearchSessions SendMessage StartContentUpload StartImportJob TagResource UntagResource UpdateAIAgent UpdateAIGuardrail UpdateAIPrompt UpdateAssistantAIAgent UpdateContent UpdateKnowledgeBaseTemplateUri UpdateMessageTemplate UpdateMessageTemplateMetadata UpdateQuickResponse UpdateSession UpdateSessionData / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect - Perl Interface to AWS Amazon Q Connect

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('QConnect');
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

=over

=item *

Amazon Q actions
(https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Q_Connect.html)

=item *

Amazon Q data types
(https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Q_Connect.html)

=back

B<Powered by Amazon Bedrock>: Amazon Web Services implements automated
abuse detection
(https://docs.aws.amazon.com/bedrock/latest/userguide/abuse-detection.html).
Because Amazon Q in Connect is built on Amazon Bedrock, users can take
full advantage of the controls implemented in Amazon Bedrock to enforce
safety, security, and the responsible use of artificial intelligence
(AI).

Amazon Q in Connect is a generative AI customer service assistant. It
is an LLM-enhanced evolution of Amazon Connect Wisdom that delivers
real-time recommendations to help contact center agents resolve
customer issues quickly and accurately.

Amazon Q in Connect automatically detects customer intent during calls
and chats using conversational analytics and natural language
understanding (NLU). It then provides agents with immediate, real-time
generative responses and suggested actions, and links to relevant
documents and articles. Agents can also query Amazon Q in Connect
directly using natural language or keywords to answer customer
requests.

Use the Amazon Q in Connect APIs to create an assistant and a knowledge
base, for example, or manage content by uploading custom files.

For more information, see Use Amazon Q in Connect for generative AI
powered agent assistance in real-time
(https://docs.aws.amazon.com/connect/latest/adminguide/amazon-q-connect.html)
in the I<Amazon Connect Administrator Guide>.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 ActivateMessageTemplate

=over

=item KnowledgeBaseId => Str

=item MessageTemplateId => Str

=item VersionNumber => Int


=back

Each argument is described in detail in: L<Paws::QConnect::ActivateMessageTemplate>

Returns: a L<Paws::QConnect::ActivateMessageTemplateResponse> instance

Activates a specific version of the Amazon Q in Connect message
template. After the version is activated, the previous active version
will be deactivated automatically. You can use the C<$ACTIVE_VERSION>
qualifier later to reference the version that is in active status.


=head2 CreateAIAgent

=over

=item AssistantId => Str

=item Configuration => L<Paws::QConnect::AIAgentConfiguration>

=item Name => Str

=item Type => Str

=item VisibilityStatus => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => L<Paws::QConnect::Tags>]


=back

Each argument is described in detail in: L<Paws::QConnect::CreateAIAgent>

Returns: a L<Paws::QConnect::CreateAIAgentResponse> instance

Creates an Amazon Q in Connect AI Agent.


=head2 CreateAIAgentVersion

=over

=item AiAgentId => Str

=item AssistantId => Str

=item [ClientToken => Str]

=item [ModifiedTime => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::CreateAIAgentVersion>

Returns: a L<Paws::QConnect::CreateAIAgentVersionResponse> instance

Creates and Amazon Q in Connect AI Agent version.


=head2 CreateAIGuardrail

=over

=item AssistantId => Str

=item BlockedInputMessaging => Str

=item BlockedOutputsMessaging => Str

=item Name => Str

=item VisibilityStatus => Str

=item [ClientToken => Str]

=item [ContentPolicyConfig => L<Paws::QConnect::AIGuardrailContentPolicyConfig>]

=item [ContextualGroundingPolicyConfig => L<Paws::QConnect::AIGuardrailContextualGroundingPolicyConfig>]

=item [Description => Str]

=item [SensitiveInformationPolicyConfig => L<Paws::QConnect::AIGuardrailSensitiveInformationPolicyConfig>]

=item [Tags => L<Paws::QConnect::Tags>]

=item [TopicPolicyConfig => L<Paws::QConnect::AIGuardrailTopicPolicyConfig>]

=item [WordPolicyConfig => L<Paws::QConnect::AIGuardrailWordPolicyConfig>]


=back

Each argument is described in detail in: L<Paws::QConnect::CreateAIGuardrail>

Returns: a L<Paws::QConnect::CreateAIGuardrailResponse> instance

Creates an Amazon Q in Connect AI Guardrail.


=head2 CreateAIGuardrailVersion

=over

=item AiGuardrailId => Str

=item AssistantId => Str

=item [ClientToken => Str]

=item [ModifiedTime => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::CreateAIGuardrailVersion>

Returns: a L<Paws::QConnect::CreateAIGuardrailVersionResponse> instance

Creates an Amazon Q in Connect AI Guardrail version.


=head2 CreateAIPrompt

=over

=item ApiFormat => Str

=item AssistantId => Str

=item ModelId => Str

=item Name => Str

=item TemplateConfiguration => L<Paws::QConnect::AIPromptTemplateConfiguration>

=item TemplateType => Str

=item Type => Str

=item VisibilityStatus => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => L<Paws::QConnect::Tags>]


=back

Each argument is described in detail in: L<Paws::QConnect::CreateAIPrompt>

Returns: a L<Paws::QConnect::CreateAIPromptResponse> instance

Creates an Amazon Q in Connect AI Prompt.


=head2 CreateAIPromptVersion

=over

=item AiPromptId => Str

=item AssistantId => Str

=item [ClientToken => Str]

=item [ModifiedTime => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::CreateAIPromptVersion>

Returns: a L<Paws::QConnect::CreateAIPromptVersionResponse> instance

Creates an Amazon Q in Connect AI Prompt version.


=head2 CreateAssistant

=over

=item Name => Str

=item Type => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [ServerSideEncryptionConfiguration => L<Paws::QConnect::ServerSideEncryptionConfiguration>]

=item [Tags => L<Paws::QConnect::Tags>]


=back

Each argument is described in detail in: L<Paws::QConnect::CreateAssistant>

Returns: a L<Paws::QConnect::CreateAssistantResponse> instance

Creates an Amazon Q in Connect assistant.


=head2 CreateAssistantAssociation

=over

=item AssistantId => Str

=item Association => L<Paws::QConnect::AssistantAssociationInputData>

=item AssociationType => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::QConnect::Tags>]


=back

Each argument is described in detail in: L<Paws::QConnect::CreateAssistantAssociation>

Returns: a L<Paws::QConnect::CreateAssistantAssociationResponse> instance

Creates an association between an Amazon Q in Connect assistant and
another resource. Currently, the only supported association is with a
knowledge base. An assistant can have only a single association.


=head2 CreateContent

=over

=item KnowledgeBaseId => Str

=item Name => Str

=item UploadId => Str

=item [ClientToken => Str]

=item [Metadata => L<Paws::QConnect::ContentMetadata>]

=item [OverrideLinkOutUri => Str]

=item [Tags => L<Paws::QConnect::Tags>]

=item [Title => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::CreateContent>

Returns: a L<Paws::QConnect::CreateContentResponse> instance

Creates Amazon Q in Connect content. Before to calling this API, use
StartContentUpload
(https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_StartContentUpload.html)
to upload an asset.


=head2 CreateContentAssociation

=over

=item Association => L<Paws::QConnect::ContentAssociationContents>

=item AssociationType => Str

=item ContentId => Str

=item KnowledgeBaseId => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::QConnect::Tags>]


=back

Each argument is described in detail in: L<Paws::QConnect::CreateContentAssociation>

Returns: a L<Paws::QConnect::CreateContentAssociationResponse> instance

Creates an association between a content resource in a knowledge base
and step-by-step guides
(https://docs.aws.amazon.com/connect/latest/adminguide/step-by-step-guided-experiences.html).
Step-by-step guides offer instructions to agents for resolving common
customer issues. You create a content association to integrate Amazon Q
in Connect and step-by-step guides.

After you integrate Amazon Q and step-by-step guides, when Amazon Q
provides a recommendation to an agent based on the intent that it's
detected, it also provides them with the option to start the
step-by-step guide that you have associated with the content.

Note the following limitations:

=over

=item *

You can create only one content association for each content resource
in a knowledge base.

=item *

You can associate a step-by-step guide with multiple content resources.

=back

For more information, see Integrate Amazon Q in Connect with
step-by-step guides
(https://docs.aws.amazon.com/connect/latest/adminguide/integrate-q-with-guides.html)
in the I<Amazon Connect Administrator Guide>.


=head2 CreateKnowledgeBase

=over

=item KnowledgeBaseType => Str

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [RenderingConfiguration => L<Paws::QConnect::RenderingConfiguration>]

=item [ServerSideEncryptionConfiguration => L<Paws::QConnect::ServerSideEncryptionConfiguration>]

=item [SourceConfiguration => L<Paws::QConnect::SourceConfiguration>]

=item [Tags => L<Paws::QConnect::Tags>]

=item [VectorIngestionConfiguration => L<Paws::QConnect::VectorIngestionConfiguration>]


=back

Each argument is described in detail in: L<Paws::QConnect::CreateKnowledgeBase>

Returns: a L<Paws::QConnect::CreateKnowledgeBaseResponse> instance

Creates a knowledge base.

When using this API, you cannot reuse Amazon AppIntegrations
(https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html)
DataIntegrations with external knowledge bases such as Salesforce and
ServiceNow. If you do, you'll get an C<InvalidRequestException> error.

For example, you're programmatically managing your external knowledge
base, and you want to add or remove one of the fields that is being
ingested from Salesforce. Do the following:

=over

=item 1.

Call DeleteKnowledgeBase
(https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_DeleteKnowledgeBase.html).

=item 2.

Call DeleteDataIntegration
(https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html).

=item 3.

Call CreateDataIntegration
(https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
to recreate the DataIntegration or a create different one.

=item 4.

Call CreateKnowledgeBase.

=back



=head2 CreateMessageTemplate

=over

=item ChannelSubtype => Str

=item Content => L<Paws::QConnect::MessageTemplateContentProvider>

=item KnowledgeBaseId => Str

=item Name => Str

=item [ClientToken => Str]

=item [DefaultAttributes => L<Paws::QConnect::MessageTemplateAttributes>]

=item [Description => Str]

=item [GroupingConfiguration => L<Paws::QConnect::GroupingConfiguration>]

=item [Language => Str]

=item [Tags => L<Paws::QConnect::Tags>]


=back

Each argument is described in detail in: L<Paws::QConnect::CreateMessageTemplate>

Returns: a L<Paws::QConnect::CreateMessageTemplateResponse> instance

Creates an Amazon Q in Connect message template. The name of the
message template has to be unique for each knowledge base. The channel
subtype of the message template is immutable and cannot be modified
after creation. After the message template is created, you can use the
C<$LATEST> qualifier to reference the created message template.


=head2 CreateMessageTemplateAttachment

=over

=item Body => Str

=item ContentDisposition => Str

=item KnowledgeBaseId => Str

=item MessageTemplateId => Str

=item Name => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::CreateMessageTemplateAttachment>

Returns: a L<Paws::QConnect::CreateMessageTemplateAttachmentResponse> instance

Uploads an attachment file to the specified Amazon Q in Connect message
template. The name of the message template attachment has to be unique
for each message template referenced by the C<$LATEST> qualifier. The
body of the attachment file should be encoded using base64 encoding.
After the file is uploaded, you can use the pre-signed Amazon S3 URL
returned in response to download the uploaded file.


=head2 CreateMessageTemplateVersion

=over

=item KnowledgeBaseId => Str

=item MessageTemplateId => Str

=item [MessageTemplateContentSha256 => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::CreateMessageTemplateVersion>

Returns: a L<Paws::QConnect::CreateMessageTemplateVersionResponse> instance

Creates a new Amazon Q in Connect message template version from the
current content and configuration of a message template. Versions are
immutable and monotonically increasing. Once a version is created, you
can reference a specific version of the message template by passing in
C<E<lt>message-template-idE<gt>:E<lt>versionNumberE<gt>> as the message
template identifier. An error is displayed if the supplied
C<messageTemplateContentSha256> is different from the
C<messageTemplateContentSha256> of the message template with C<$LATEST>
qualifier. If multiple C<CreateMessageTemplateVersion> requests are
made while the message template remains the same, only the first
invocation creates a new version and the succeeding requests will
return the same response as the first invocation.


=head2 CreateQuickResponse

=over

=item Content => L<Paws::QConnect::QuickResponseDataProvider>

=item KnowledgeBaseId => Str

=item Name => Str

=item [Channels => ArrayRef[Str|Undef]]

=item [ClientToken => Str]

=item [ContentType => Str]

=item [Description => Str]

=item [GroupingConfiguration => L<Paws::QConnect::GroupingConfiguration>]

=item [IsActive => Bool]

=item [Language => Str]

=item [ShortcutKey => Str]

=item [Tags => L<Paws::QConnect::Tags>]


=back

Each argument is described in detail in: L<Paws::QConnect::CreateQuickResponse>

Returns: a L<Paws::QConnect::CreateQuickResponseResponse> instance

Creates an Amazon Q in Connect quick response.


=head2 CreateSession

=over

=item AssistantId => Str

=item Name => Str

=item [AiAgentConfiguration => L<Paws::QConnect::AIAgentConfigurationMap>]

=item [ClientToken => Str]

=item [Description => Str]

=item [TagFilter => L<Paws::QConnect::TagFilter>]

=item [Tags => L<Paws::QConnect::Tags>]


=back

Each argument is described in detail in: L<Paws::QConnect::CreateSession>

Returns: a L<Paws::QConnect::CreateSessionResponse> instance

Creates a session. A session is a contextual container used for
generating recommendations. Amazon Connect creates a new Amazon Q in
Connect session for each contact on which Amazon Q in Connect is
enabled.


=head2 DeactivateMessageTemplate

=over

=item KnowledgeBaseId => Str

=item MessageTemplateId => Str

=item VersionNumber => Int


=back

Each argument is described in detail in: L<Paws::QConnect::DeactivateMessageTemplate>

Returns: a L<Paws::QConnect::DeactivateMessageTemplateResponse> instance

Deactivates a specific version of the Amazon Q in Connect message
template . After the version is deactivated, you can no longer use the
C<$ACTIVE_VERSION> qualifier to reference the version in active status.


=head2 DeleteAIAgent

=over

=item AiAgentId => Str

=item AssistantId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::DeleteAIAgent>

Returns: a L<Paws::QConnect::DeleteAIAgentResponse> instance

Deletes an Amazon Q in Connect AI Agent.


=head2 DeleteAIAgentVersion

=over

=item AiAgentId => Str

=item AssistantId => Str

=item VersionNumber => Int


=back

Each argument is described in detail in: L<Paws::QConnect::DeleteAIAgentVersion>

Returns: a L<Paws::QConnect::DeleteAIAgentVersionResponse> instance

Deletes an Amazon Q in Connect AI Agent Version.


=head2 DeleteAIGuardrail

=over

=item AiGuardrailId => Str

=item AssistantId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::DeleteAIGuardrail>

Returns: a L<Paws::QConnect::DeleteAIGuardrailResponse> instance

Deletes an Amazon Q in Connect AI Guardrail.


=head2 DeleteAIGuardrailVersion

=over

=item AiGuardrailId => Str

=item AssistantId => Str

=item VersionNumber => Int


=back

Each argument is described in detail in: L<Paws::QConnect::DeleteAIGuardrailVersion>

Returns: a L<Paws::QConnect::DeleteAIGuardrailVersionResponse> instance

Delete and Amazon Q in Connect AI Guardrail version.


=head2 DeleteAIPrompt

=over

=item AiPromptId => Str

=item AssistantId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::DeleteAIPrompt>

Returns: a L<Paws::QConnect::DeleteAIPromptResponse> instance

Deletes an Amazon Q in Connect AI Prompt.


=head2 DeleteAIPromptVersion

=over

=item AiPromptId => Str

=item AssistantId => Str

=item VersionNumber => Int


=back

Each argument is described in detail in: L<Paws::QConnect::DeleteAIPromptVersion>

Returns: a L<Paws::QConnect::DeleteAIPromptVersionResponse> instance

Delete and Amazon Q in Connect AI Prompt version.


=head2 DeleteAssistant

=over

=item AssistantId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::DeleteAssistant>

Returns: a L<Paws::QConnect::DeleteAssistantResponse> instance

Deletes an assistant.


=head2 DeleteAssistantAssociation

=over

=item AssistantAssociationId => Str

=item AssistantId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::DeleteAssistantAssociation>

Returns: a L<Paws::QConnect::DeleteAssistantAssociationResponse> instance

Deletes an assistant association.


=head2 DeleteContent

=over

=item ContentId => Str

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::DeleteContent>

Returns: a L<Paws::QConnect::DeleteContentResponse> instance

Deletes the content.


=head2 DeleteContentAssociation

=over

=item ContentAssociationId => Str

=item ContentId => Str

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::DeleteContentAssociation>

Returns: a L<Paws::QConnect::DeleteContentAssociationResponse> instance

Deletes the content association.

For more information about content associations--what they are and when
they are used--see Integrate Amazon Q in Connect with step-by-step
guides
(https://docs.aws.amazon.com/connect/latest/adminguide/integrate-q-with-guides.html)
in the I<Amazon Connect Administrator Guide>.


=head2 DeleteImportJob

=over

=item ImportJobId => Str

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::DeleteImportJob>

Returns: a L<Paws::QConnect::DeleteImportJobResponse> instance

Deletes the quick response import job.


=head2 DeleteKnowledgeBase

=over

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::DeleteKnowledgeBase>

Returns: a L<Paws::QConnect::DeleteKnowledgeBaseResponse> instance

Deletes the knowledge base.

When you use this API to delete an external knowledge base such as
Salesforce or ServiceNow, you must also delete the Amazon
AppIntegrations
(https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html)
DataIntegration. This is because you can't reuse the DataIntegration
after it's been associated with an external knowledge base. However,
you can delete and recreate it. See DeleteDataIntegration
(https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html)
and CreateDataIntegration
(https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
in the I<Amazon AppIntegrations API Reference>.


=head2 DeleteMessageTemplate

=over

=item KnowledgeBaseId => Str

=item MessageTemplateId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::DeleteMessageTemplate>

Returns: a L<Paws::QConnect::DeleteMessageTemplateResponse> instance

Deletes an Amazon Q in Connect message template entirely or a specific
version of the message template if version is supplied in the request.
You can provide the message template identifier as
C<E<lt>message-template-idE<gt>:E<lt>versionNumberE<gt>> to delete a
specific version of the message template. If it is not supplied, the
message template and all available versions will be deleted.


=head2 DeleteMessageTemplateAttachment

=over

=item AttachmentId => Str

=item KnowledgeBaseId => Str

=item MessageTemplateId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::DeleteMessageTemplateAttachment>

Returns: a L<Paws::QConnect::DeleteMessageTemplateAttachmentResponse> instance

Deletes the attachment file from the Amazon Q in Connect message
template that is referenced by C<$LATEST> qualifier. Attachments on
available message template versions will remain unchanged.


=head2 DeleteQuickResponse

=over

=item KnowledgeBaseId => Str

=item QuickResponseId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::DeleteQuickResponse>

Returns: a L<Paws::QConnect::DeleteQuickResponseResponse> instance

Deletes a quick response.


=head2 GetAIAgent

=over

=item AiAgentId => Str

=item AssistantId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::GetAIAgent>

Returns: a L<Paws::QConnect::GetAIAgentResponse> instance

Gets an Amazon Q in Connect AI Agent.


=head2 GetAIGuardrail

=over

=item AiGuardrailId => Str

=item AssistantId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::GetAIGuardrail>

Returns: a L<Paws::QConnect::GetAIGuardrailResponse> instance

Gets the Amazon Q in Connect AI Guardrail.


=head2 GetAIPrompt

=over

=item AiPromptId => Str

=item AssistantId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::GetAIPrompt>

Returns: a L<Paws::QConnect::GetAIPromptResponse> instance

Gets and Amazon Q in Connect AI Prompt.


=head2 GetAssistant

=over

=item AssistantId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::GetAssistant>

Returns: a L<Paws::QConnect::GetAssistantResponse> instance

Retrieves information about an assistant.


=head2 GetAssistantAssociation

=over

=item AssistantAssociationId => Str

=item AssistantId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::GetAssistantAssociation>

Returns: a L<Paws::QConnect::GetAssistantAssociationResponse> instance

Retrieves information about an assistant association.


=head2 GetContent

=over

=item ContentId => Str

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::GetContent>

Returns: a L<Paws::QConnect::GetContentResponse> instance

Retrieves content, including a pre-signed URL to download the content.


=head2 GetContentAssociation

=over

=item ContentAssociationId => Str

=item ContentId => Str

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::GetContentAssociation>

Returns: a L<Paws::QConnect::GetContentAssociationResponse> instance

Returns the content association.

For more information about content associations--what they are and when
they are used--see Integrate Amazon Q in Connect with step-by-step
guides
(https://docs.aws.amazon.com/connect/latest/adminguide/integrate-q-with-guides.html)
in the I<Amazon Connect Administrator Guide>.


=head2 GetContentSummary

=over

=item ContentId => Str

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::GetContentSummary>

Returns: a L<Paws::QConnect::GetContentSummaryResponse> instance

Retrieves summary information about the content.


=head2 GetImportJob

=over

=item ImportJobId => Str

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::GetImportJob>

Returns: a L<Paws::QConnect::GetImportJobResponse> instance

Retrieves the started import job.


=head2 GetKnowledgeBase

=over

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::GetKnowledgeBase>

Returns: a L<Paws::QConnect::GetKnowledgeBaseResponse> instance

Retrieves information about the knowledge base.


=head2 GetMessageTemplate

=over

=item KnowledgeBaseId => Str

=item MessageTemplateId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::GetMessageTemplate>

Returns: a L<Paws::QConnect::GetMessageTemplateResponse> instance

Retrieves the Amazon Q in Connect message template. The message
template identifier can contain an optional qualifier, for example,
C<E<lt>message-template-idE<gt>:E<lt>qualifierE<gt>>, which is either
an actual version number or an Amazon Q Connect managed qualifier
C<$ACTIVE_VERSION> | C<$LATEST>. If it is not supplied, then C<$LATEST>
is assumed implicitly.


=head2 GetNextMessage

=over

=item AssistantId => Str

=item NextMessageToken => Str

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::GetNextMessage>

Returns: a L<Paws::QConnect::GetNextMessageResponse> instance

Retrieves next message on an Amazon Q in Connect session.


=head2 GetQuickResponse

=over

=item KnowledgeBaseId => Str

=item QuickResponseId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::GetQuickResponse>

Returns: a L<Paws::QConnect::GetQuickResponseResponse> instance

Retrieves the quick response.


=head2 GetRecommendations

=over

=item AssistantId => Str

=item SessionId => Str

=item [MaxResults => Int]

=item [NextChunkToken => Str]

=item [WaitTimeSeconds => Int]


=back

Each argument is described in detail in: L<Paws::QConnect::GetRecommendations>

Returns: a L<Paws::QConnect::GetRecommendationsResponse> instance

This API will be discontinued starting June 1, 2024. To receive
generative responses after March 1, 2024, you will need to create a new
Assistant in the Amazon Connect console and integrate the Amazon Q in
Connect JavaScript library (amazon-q-connectjs) into your applications.

Retrieves recommendations for the specified session. To avoid
retrieving the same recommendations in subsequent calls, use
NotifyRecommendationsReceived
(https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_NotifyRecommendationsReceived.html).
This API supports long-polling behavior with the C<waitTimeSeconds>
parameter. Short poll is the default behavior and only returns
recommendations already available. To perform a manual query against an
assistant, use QueryAssistant
(https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_QueryAssistant.html).


=head2 GetSession

=over

=item AssistantId => Str

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::GetSession>

Returns: a L<Paws::QConnect::GetSessionResponse> instance

Retrieves information for a specified session.


=head2 ListAIAgents

=over

=item AssistantId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Origin => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::ListAIAgents>

Returns: a L<Paws::QConnect::ListAIAgentsResponse> instance

Lists AI Agents.


=head2 ListAIAgentVersions

=over

=item AiAgentId => Str

=item AssistantId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Origin => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::ListAIAgentVersions>

Returns: a L<Paws::QConnect::ListAIAgentVersionsResponse> instance

List AI Agent versions.


=head2 ListAIGuardrails

=over

=item AssistantId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::ListAIGuardrails>

Returns: a L<Paws::QConnect::ListAIGuardrailsResponse> instance

Lists the AI Guardrails available on the Amazon Q in Connect assistant.


=head2 ListAIGuardrailVersions

=over

=item AiGuardrailId => Str

=item AssistantId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::ListAIGuardrailVersions>

Returns: a L<Paws::QConnect::ListAIGuardrailVersionsResponse> instance

Lists AI Guardrail versions.


=head2 ListAIPrompts

=over

=item AssistantId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Origin => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::ListAIPrompts>

Returns: a L<Paws::QConnect::ListAIPromptsResponse> instance

Lists the AI Prompts available on the Amazon Q in Connect assistant.


=head2 ListAIPromptVersions

=over

=item AiPromptId => Str

=item AssistantId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Origin => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::ListAIPromptVersions>

Returns: a L<Paws::QConnect::ListAIPromptVersionsResponse> instance

Lists AI Prompt versions.


=head2 ListAssistantAssociations

=over

=item AssistantId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::ListAssistantAssociations>

Returns: a L<Paws::QConnect::ListAssistantAssociationsResponse> instance

Lists information about assistant associations.


=head2 ListAssistants

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::ListAssistants>

Returns: a L<Paws::QConnect::ListAssistantsResponse> instance

Lists information about assistants.


=head2 ListContentAssociations

=over

=item ContentId => Str

=item KnowledgeBaseId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::ListContentAssociations>

Returns: a L<Paws::QConnect::ListContentAssociationsResponse> instance

Lists the content associations.

For more information about content associations--what they are and when
they are used--see Integrate Amazon Q in Connect with step-by-step
guides
(https://docs.aws.amazon.com/connect/latest/adminguide/integrate-q-with-guides.html)
in the I<Amazon Connect Administrator Guide>.


=head2 ListContents

=over

=item KnowledgeBaseId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::ListContents>

Returns: a L<Paws::QConnect::ListContentsResponse> instance

Lists the content.


=head2 ListImportJobs

=over

=item KnowledgeBaseId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::ListImportJobs>

Returns: a L<Paws::QConnect::ListImportJobsResponse> instance

Lists information about import jobs.


=head2 ListKnowledgeBases

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::ListKnowledgeBases>

Returns: a L<Paws::QConnect::ListKnowledgeBasesResponse> instance

Lists the knowledge bases.


=head2 ListMessages

=over

=item AssistantId => Str

=item SessionId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::ListMessages>

Returns: a L<Paws::QConnect::ListMessagesResponse> instance

Lists messages on an Amazon Q in Connect session.


=head2 ListMessageTemplates

=over

=item KnowledgeBaseId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::ListMessageTemplates>

Returns: a L<Paws::QConnect::ListMessageTemplatesResponse> instance

Lists all the available Amazon Q in Connect message templates for the
specified knowledge base.


=head2 ListMessageTemplateVersions

=over

=item KnowledgeBaseId => Str

=item MessageTemplateId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::ListMessageTemplateVersions>

Returns: a L<Paws::QConnect::ListMessageTemplateVersionsResponse> instance

Lists all the available versions for the specified Amazon Q in Connect
message template.


=head2 ListQuickResponses

=over

=item KnowledgeBaseId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::ListQuickResponses>

Returns: a L<Paws::QConnect::ListQuickResponsesResponse> instance

Lists information about quick response.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::QConnect::ListTagsForResource>

Returns: a L<Paws::QConnect::ListTagsForResourceResponse> instance

Lists the tags for the specified resource.


=head2 NotifyRecommendationsReceived

=over

=item AssistantId => Str

=item RecommendationIds => ArrayRef[Str|Undef]

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::NotifyRecommendationsReceived>

Returns: a L<Paws::QConnect::NotifyRecommendationsReceivedResponse> instance

Removes the specified recommendations from the specified assistant's
queue of newly available recommendations. You can use this API in
conjunction with GetRecommendations
(https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_GetRecommendations.html)
and a C<waitTimeSeconds> input for long-polling behavior and avoiding
duplicate recommendations.


=head2 PutFeedback

=over

=item AssistantId => Str

=item ContentFeedback => L<Paws::QConnect::ContentFeedbackData>

=item TargetId => Str

=item TargetType => Str


=back

Each argument is described in detail in: L<Paws::QConnect::PutFeedback>

Returns: a L<Paws::QConnect::PutFeedbackResponse> instance

Provides feedback against the specified assistant for the specified
target. This API only supports generative targets.


=head2 QueryAssistant

=over

=item AssistantId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OverrideKnowledgeBaseSearchType => Str]

=item [QueryCondition => ArrayRef[L<Paws::QConnect::QueryCondition>]]

=item [QueryInputData => L<Paws::QConnect::QueryInputData>]

=item [QueryText => Str]

=item [SessionId => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::QueryAssistant>

Returns: a L<Paws::QConnect::QueryAssistantResponse> instance

This API will be discontinued starting June 1, 2024. To receive
generative responses after March 1, 2024, you will need to create a new
Assistant in the Amazon Connect console and integrate the Amazon Q in
Connect JavaScript library (amazon-q-connectjs) into your applications.

Performs a manual search against the specified assistant. To retrieve
recommendations for an assistant, use GetRecommendations
(https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_GetRecommendations.html).


=head2 RemoveAssistantAIAgent

=over

=item AiAgentType => Str

=item AssistantId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::RemoveAssistantAIAgent>

Returns: a L<Paws::QConnect::RemoveAssistantAIAgentResponse> instance

Removes the AI Agent that is set for use by default on an Amazon Q in
Connect Assistant.


=head2 RemoveKnowledgeBaseTemplateUri

=over

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::RemoveKnowledgeBaseTemplateUri>

Returns: a L<Paws::QConnect::RemoveKnowledgeBaseTemplateUriResponse> instance

Removes a URI template from a knowledge base.


=head2 RenderMessageTemplate

=over

=item Attributes => L<Paws::QConnect::MessageTemplateAttributes>

=item KnowledgeBaseId => Str

=item MessageTemplateId => Str


=back

Each argument is described in detail in: L<Paws::QConnect::RenderMessageTemplate>

Returns: a L<Paws::QConnect::RenderMessageTemplateResponse> instance

Renders the Amazon Q in Connect message template based on the attribute
values provided and generates the message content. For any variable
present in the message template, if the attribute value is neither
provided in the attribute request parameter nor the default attribute
of the message template, the rendered message content will keep the
variable placeholder as it is and return the attribute keys that are
missing.


=head2 SearchContent

=over

=item KnowledgeBaseId => Str

=item SearchExpression => L<Paws::QConnect::SearchExpression>

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::SearchContent>

Returns: a L<Paws::QConnect::SearchContentResponse> instance

Searches for content in a specified knowledge base. Can be used to get
a specific content resource by its name.


=head2 SearchMessageTemplates

=over

=item KnowledgeBaseId => Str

=item SearchExpression => L<Paws::QConnect::MessageTemplateSearchExpression>

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::SearchMessageTemplates>

Returns: a L<Paws::QConnect::SearchMessageTemplatesResponse> instance

Searches for Amazon Q in Connect message templates in the specified
knowledge base.


=head2 SearchQuickResponses

=over

=item KnowledgeBaseId => Str

=item SearchExpression => L<Paws::QConnect::QuickResponseSearchExpression>

=item [Attributes => L<Paws::QConnect::ContactAttributes>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::SearchQuickResponses>

Returns: a L<Paws::QConnect::SearchQuickResponsesResponse> instance

Searches existing Amazon Q in Connect quick responses in an Amazon Q in
Connect knowledge base.


=head2 SearchSessions

=over

=item AssistantId => Str

=item SearchExpression => L<Paws::QConnect::SearchExpression>

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::SearchSessions>

Returns: a L<Paws::QConnect::SearchSessionsResponse> instance

Searches for sessions.


=head2 SendMessage

=over

=item AssistantId => Str

=item Message => L<Paws::QConnect::MessageInput>

=item SessionId => Str

=item Type => Str

=item [ClientToken => Str]

=item [Configuration => L<Paws::QConnect::MessageConfiguration>]

=item [ConversationContext => L<Paws::QConnect::ConversationContext>]


=back

Each argument is described in detail in: L<Paws::QConnect::SendMessage>

Returns: a L<Paws::QConnect::SendMessageResponse> instance

Submits a message to the Amazon Q in Connect session.


=head2 StartContentUpload

=over

=item ContentType => Str

=item KnowledgeBaseId => Str

=item [PresignedUrlTimeToLive => Int]


=back

Each argument is described in detail in: L<Paws::QConnect::StartContentUpload>

Returns: a L<Paws::QConnect::StartContentUploadResponse> instance

Get a URL to upload content to a knowledge base. To upload content,
first make a PUT request to the returned URL with your file, making
sure to include the required headers. Then use CreateContent
(https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_CreateContent.html)
to finalize the content creation process or UpdateContent
(https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_UpdateContent.html)
to modify an existing resource. You can only upload content to a
knowledge base of type CUSTOM.


=head2 StartImportJob

=over

=item ImportJobType => Str

=item KnowledgeBaseId => Str

=item UploadId => Str

=item [ClientToken => Str]

=item [ExternalSourceConfiguration => L<Paws::QConnect::ExternalSourceConfiguration>]

=item [Metadata => L<Paws::QConnect::ContentMetadata>]


=back

Each argument is described in detail in: L<Paws::QConnect::StartImportJob>

Returns: a L<Paws::QConnect::StartImportJobResponse> instance

Start an asynchronous job to import Amazon Q in Connect resources from
an uploaded source file. Before calling this API, use
StartContentUpload
(https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html)
to upload an asset that contains the resource data.

=over

=item *

For importing Amazon Q in Connect quick responses, you need to upload a
csv file including the quick responses. For information about how to
format the csv file for importing quick responses, see Import quick
responses
(https://docs.aws.amazon.com/console/connect/quick-responses/add-data).

=back



=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::QConnect::Tags>


=back

Each argument is described in detail in: L<Paws::QConnect::TagResource>

Returns: a L<Paws::QConnect::TagResourceResponse> instance

Adds the specified tags to the specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::QConnect::UntagResource>

Returns: a L<Paws::QConnect::UntagResourceResponse> instance

Removes the specified tags from the specified resource.


=head2 UpdateAIAgent

=over

=item AiAgentId => Str

=item AssistantId => Str

=item VisibilityStatus => Str

=item [ClientToken => Str]

=item [Configuration => L<Paws::QConnect::AIAgentConfiguration>]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::UpdateAIAgent>

Returns: a L<Paws::QConnect::UpdateAIAgentResponse> instance

Updates an AI Agent.


=head2 UpdateAIGuardrail

=over

=item AiGuardrailId => Str

=item AssistantId => Str

=item BlockedInputMessaging => Str

=item BlockedOutputsMessaging => Str

=item VisibilityStatus => Str

=item [ClientToken => Str]

=item [ContentPolicyConfig => L<Paws::QConnect::AIGuardrailContentPolicyConfig>]

=item [ContextualGroundingPolicyConfig => L<Paws::QConnect::AIGuardrailContextualGroundingPolicyConfig>]

=item [Description => Str]

=item [SensitiveInformationPolicyConfig => L<Paws::QConnect::AIGuardrailSensitiveInformationPolicyConfig>]

=item [TopicPolicyConfig => L<Paws::QConnect::AIGuardrailTopicPolicyConfig>]

=item [WordPolicyConfig => L<Paws::QConnect::AIGuardrailWordPolicyConfig>]


=back

Each argument is described in detail in: L<Paws::QConnect::UpdateAIGuardrail>

Returns: a L<Paws::QConnect::UpdateAIGuardrailResponse> instance

Updates an AI Guardrail.


=head2 UpdateAIPrompt

=over

=item AiPromptId => Str

=item AssistantId => Str

=item VisibilityStatus => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [TemplateConfiguration => L<Paws::QConnect::AIPromptTemplateConfiguration>]


=back

Each argument is described in detail in: L<Paws::QConnect::UpdateAIPrompt>

Returns: a L<Paws::QConnect::UpdateAIPromptResponse> instance

Updates an AI Prompt.


=head2 UpdateAssistantAIAgent

=over

=item AiAgentType => Str

=item AssistantId => Str

=item Configuration => L<Paws::QConnect::AIAgentConfigurationData>


=back

Each argument is described in detail in: L<Paws::QConnect::UpdateAssistantAIAgent>

Returns: a L<Paws::QConnect::UpdateAssistantAIAgentResponse> instance

Updates the AI Agent that is set for use by default on an Amazon Q in
Connect Assistant.


=head2 UpdateContent

=over

=item ContentId => Str

=item KnowledgeBaseId => Str

=item [Metadata => L<Paws::QConnect::ContentMetadata>]

=item [OverrideLinkOutUri => Str]

=item [RemoveOverrideLinkOutUri => Bool]

=item [RevisionId => Str]

=item [Title => Str]

=item [UploadId => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::UpdateContent>

Returns: a L<Paws::QConnect::UpdateContentResponse> instance

Updates information about the content.


=head2 UpdateKnowledgeBaseTemplateUri

=over

=item KnowledgeBaseId => Str

=item TemplateUri => Str


=back

Each argument is described in detail in: L<Paws::QConnect::UpdateKnowledgeBaseTemplateUri>

Returns: a L<Paws::QConnect::UpdateKnowledgeBaseTemplateUriResponse> instance

Updates the template URI of a knowledge base. This is only supported
for knowledge bases of type EXTERNAL. Include a single variable in
C<${variable}> format; this interpolated by Amazon Q in Connect using
ingested content. For example, if you ingest a Salesforce article, it
has an C<Id> value, and you can set the template URI to
C<https://myInstanceName.lightning.force.com/lightning/r/Knowledge__kav/*${Id}*/view>.


=head2 UpdateMessageTemplate

=over

=item KnowledgeBaseId => Str

=item MessageTemplateId => Str

=item [Content => L<Paws::QConnect::MessageTemplateContentProvider>]

=item [DefaultAttributes => L<Paws::QConnect::MessageTemplateAttributes>]

=item [Language => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::UpdateMessageTemplate>

Returns: a L<Paws::QConnect::UpdateMessageTemplateResponse> instance

Updates the Amazon Q in Connect message template. Partial update is
supported. If any field is not supplied, it will remain unchanged for
the message template that is referenced by the C<$LATEST> qualifier.
Any modification will only apply to the message template that is
referenced by the C<$LATEST> qualifier. The fields for all available
versions will remain unchanged.


=head2 UpdateMessageTemplateMetadata

=over

=item KnowledgeBaseId => Str

=item MessageTemplateId => Str

=item [Description => Str]

=item [GroupingConfiguration => L<Paws::QConnect::GroupingConfiguration>]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::UpdateMessageTemplateMetadata>

Returns: a L<Paws::QConnect::UpdateMessageTemplateMetadataResponse> instance

Updates the Amazon Q in Connect message template metadata. Note that
any modification to the message templateE<rsquo>s name, description and
grouping configuration will applied to the message template pointed by
the C<$LATEST> qualifier and all available versions. Partial update is
supported. If any field is not supplied, it will remain unchanged for
the message template.


=head2 UpdateQuickResponse

=over

=item KnowledgeBaseId => Str

=item QuickResponseId => Str

=item [Channels => ArrayRef[Str|Undef]]

=item [Content => L<Paws::QConnect::QuickResponseDataProvider>]

=item [ContentType => Str]

=item [Description => Str]

=item [GroupingConfiguration => L<Paws::QConnect::GroupingConfiguration>]

=item [IsActive => Bool]

=item [Language => Str]

=item [Name => Str]

=item [RemoveDescription => Bool]

=item [RemoveGroupingConfiguration => Bool]

=item [RemoveShortcutKey => Bool]

=item [ShortcutKey => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::UpdateQuickResponse>

Returns: a L<Paws::QConnect::UpdateQuickResponseResponse> instance

Updates an existing Amazon Q in Connect quick response.


=head2 UpdateSession

=over

=item AssistantId => Str

=item SessionId => Str

=item [AiAgentConfiguration => L<Paws::QConnect::AIAgentConfigurationMap>]

=item [Description => Str]

=item [TagFilter => L<Paws::QConnect::TagFilter>]


=back

Each argument is described in detail in: L<Paws::QConnect::UpdateSession>

Returns: a L<Paws::QConnect::UpdateSessionResponse> instance

Updates a session. A session is a contextual container used for
generating recommendations. Amazon Connect updates the existing Amazon
Q in Connect session for each contact on which Amazon Q in Connect is
enabled.


=head2 UpdateSessionData

=over

=item AssistantId => Str

=item Data => ArrayRef[L<Paws::QConnect::RuntimeSessionData>]

=item SessionId => Str

=item [Namespace => Str]


=back

Each argument is described in detail in: L<Paws::QConnect::UpdateSessionData>

Returns: a L<Paws::QConnect::UpdateSessionDataResponse> instance

Updates the data stored on an Amazon Q in Connect Session.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAIAgents(sub { },AssistantId => Str, [MaxResults => Int, NextToken => Str, Origin => Str])

=head2 ListAllAIAgents(AssistantId => Str, [MaxResults => Int, NextToken => Str, Origin => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - aiAgentSummaries, passing the object as the first parameter, and the string 'aiAgentSummaries' as the second parameter 

If not, it will return a a L<Paws::QConnect::ListAIAgentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAIAgentVersions(sub { },AiAgentId => Str, AssistantId => Str, [MaxResults => Int, NextToken => Str, Origin => Str])

=head2 ListAllAIAgentVersions(AiAgentId => Str, AssistantId => Str, [MaxResults => Int, NextToken => Str, Origin => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - aiAgentVersionSummaries, passing the object as the first parameter, and the string 'aiAgentVersionSummaries' as the second parameter 

If not, it will return a a L<Paws::QConnect::ListAIAgentVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAIGuardrails(sub { },AssistantId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAIGuardrails(AssistantId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - aiGuardrailSummaries, passing the object as the first parameter, and the string 'aiGuardrailSummaries' as the second parameter 

If not, it will return a a L<Paws::QConnect::ListAIGuardrailsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAIGuardrailVersions(sub { },AiGuardrailId => Str, AssistantId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAIGuardrailVersions(AiGuardrailId => Str, AssistantId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - aiGuardrailVersionSummaries, passing the object as the first parameter, and the string 'aiGuardrailVersionSummaries' as the second parameter 

If not, it will return a a L<Paws::QConnect::ListAIGuardrailVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAIPrompts(sub { },AssistantId => Str, [MaxResults => Int, NextToken => Str, Origin => Str])

=head2 ListAllAIPrompts(AssistantId => Str, [MaxResults => Int, NextToken => Str, Origin => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - aiPromptSummaries, passing the object as the first parameter, and the string 'aiPromptSummaries' as the second parameter 

If not, it will return a a L<Paws::QConnect::ListAIPromptsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAIPromptVersions(sub { },AiPromptId => Str, AssistantId => Str, [MaxResults => Int, NextToken => Str, Origin => Str])

=head2 ListAllAIPromptVersions(AiPromptId => Str, AssistantId => Str, [MaxResults => Int, NextToken => Str, Origin => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - aiPromptVersionSummaries, passing the object as the first parameter, and the string 'aiPromptVersionSummaries' as the second parameter 

If not, it will return a a L<Paws::QConnect::ListAIPromptVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssistantAssociations(sub { },AssistantId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAssistantAssociations(AssistantId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assistantAssociationSummaries, passing the object as the first parameter, and the string 'assistantAssociationSummaries' as the second parameter 

If not, it will return a a L<Paws::QConnect::ListAssistantAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssistants(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllAssistants([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assistantSummaries, passing the object as the first parameter, and the string 'assistantSummaries' as the second parameter 

If not, it will return a a L<Paws::QConnect::ListAssistantsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllContentAssociations(sub { },ContentId => Str, KnowledgeBaseId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllContentAssociations(ContentId => Str, KnowledgeBaseId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - contentAssociationSummaries, passing the object as the first parameter, and the string 'contentAssociationSummaries' as the second parameter 

If not, it will return a a L<Paws::QConnect::ListContentAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllContents(sub { },KnowledgeBaseId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllContents(KnowledgeBaseId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - contentSummaries, passing the object as the first parameter, and the string 'contentSummaries' as the second parameter 

If not, it will return a a L<Paws::QConnect::ListContentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllImportJobs(sub { },KnowledgeBaseId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllImportJobs(KnowledgeBaseId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - importJobSummaries, passing the object as the first parameter, and the string 'importJobSummaries' as the second parameter 

If not, it will return a a L<Paws::QConnect::ListImportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllKnowledgeBases(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllKnowledgeBases([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - knowledgeBaseSummaries, passing the object as the first parameter, and the string 'knowledgeBaseSummaries' as the second parameter 

If not, it will return a a L<Paws::QConnect::ListKnowledgeBasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMessages(sub { },AssistantId => Str, SessionId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllMessages(AssistantId => Str, SessionId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - messages, passing the object as the first parameter, and the string 'messages' as the second parameter 

If not, it will return a a L<Paws::QConnect::ListMessagesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMessageTemplates(sub { },KnowledgeBaseId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllMessageTemplates(KnowledgeBaseId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - messageTemplateSummaries, passing the object as the first parameter, and the string 'messageTemplateSummaries' as the second parameter 

If not, it will return a a L<Paws::QConnect::ListMessageTemplatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMessageTemplateVersions(sub { },KnowledgeBaseId => Str, MessageTemplateId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllMessageTemplateVersions(KnowledgeBaseId => Str, MessageTemplateId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - messageTemplateVersionSummaries, passing the object as the first parameter, and the string 'messageTemplateVersionSummaries' as the second parameter 

If not, it will return a a L<Paws::QConnect::ListMessageTemplateVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllQuickResponses(sub { },KnowledgeBaseId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllQuickResponses(KnowledgeBaseId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - quickResponseSummaries, passing the object as the first parameter, and the string 'quickResponseSummaries' as the second parameter 

If not, it will return a a L<Paws::QConnect::ListQuickResponsesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 QueryAllAssistant(sub { },AssistantId => Str, [MaxResults => Int, NextToken => Str, OverrideKnowledgeBaseSearchType => Str, QueryCondition => ArrayRef[L<Paws::QConnect::QueryCondition>], QueryInputData => L<Paws::QConnect::QueryInputData>, QueryText => Str, SessionId => Str])

=head2 QueryAllAssistant(AssistantId => Str, [MaxResults => Int, NextToken => Str, OverrideKnowledgeBaseSearchType => Str, QueryCondition => ArrayRef[L<Paws::QConnect::QueryCondition>], QueryInputData => L<Paws::QConnect::QueryInputData>, QueryText => Str, SessionId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - results, passing the object as the first parameter, and the string 'results' as the second parameter 

If not, it will return a a L<Paws::QConnect::QueryAssistantResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllContent(sub { },KnowledgeBaseId => Str, SearchExpression => L<Paws::QConnect::SearchExpression>, [MaxResults => Int, NextToken => Str])

=head2 SearchAllContent(KnowledgeBaseId => Str, SearchExpression => L<Paws::QConnect::SearchExpression>, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - contentSummaries, passing the object as the first parameter, and the string 'contentSummaries' as the second parameter 

If not, it will return a a L<Paws::QConnect::SearchContentResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllMessageTemplates(sub { },KnowledgeBaseId => Str, SearchExpression => L<Paws::QConnect::MessageTemplateSearchExpression>, [MaxResults => Int, NextToken => Str])

=head2 SearchAllMessageTemplates(KnowledgeBaseId => Str, SearchExpression => L<Paws::QConnect::MessageTemplateSearchExpression>, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - results, passing the object as the first parameter, and the string 'results' as the second parameter 

If not, it will return a a L<Paws::QConnect::SearchMessageTemplatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllQuickResponses(sub { },KnowledgeBaseId => Str, SearchExpression => L<Paws::QConnect::QuickResponseSearchExpression>, [Attributes => L<Paws::QConnect::ContactAttributes>, MaxResults => Int, NextToken => Str])

=head2 SearchAllQuickResponses(KnowledgeBaseId => Str, SearchExpression => L<Paws::QConnect::QuickResponseSearchExpression>, [Attributes => L<Paws::QConnect::ContactAttributes>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - results, passing the object as the first parameter, and the string 'results' as the second parameter 

If not, it will return a a L<Paws::QConnect::SearchQuickResponsesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllSessions(sub { },AssistantId => Str, SearchExpression => L<Paws::QConnect::SearchExpression>, [MaxResults => Int, NextToken => Str])

=head2 SearchAllSessions(AssistantId => Str, SearchExpression => L<Paws::QConnect::SearchExpression>, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - sessionSummaries, passing the object as the first parameter, and the string 'sessionSummaries' as the second parameter 

If not, it will return a a L<Paws::QConnect::SearchSessionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

