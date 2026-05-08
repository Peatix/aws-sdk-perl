package Paws::QBusiness;
  use Moose;
  sub service { 'qbusiness' }
  sub signing_name { 'qbusiness' }
  sub version { '2023-11-27' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociatePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::AssociatePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::BatchDeleteDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchPutDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::BatchPutDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::CancelSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Chat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::Chat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ChatSync {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::ChatSync', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CheckDocumentAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::CheckDocumentAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAnonymousWebExperienceUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::CreateAnonymousWebExperienceUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::CreateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataAccessor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::CreateDataAccessor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::CreateDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::CreateIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePlugin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::CreatePlugin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRetriever {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::CreateRetriever', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::CreateSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWebExperience {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::CreateWebExperience', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::DeleteApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::DeleteAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChatControlsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::DeleteChatControlsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConversation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::DeleteConversation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataAccessor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::DeleteDataAccessor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::DeleteDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::DeleteGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::DeleteIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePlugin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::DeletePlugin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRetriever {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::DeleteRetriever', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWebExperience {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::DeleteWebExperience', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociatePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::DisassociatePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::GetApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChatControlsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::GetChatControlsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataAccessor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::GetDataAccessor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::GetDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::GetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::GetIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMedia {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::GetMedia', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPlugin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::GetPlugin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::GetPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRetriever {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::GetRetriever', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::GetUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWebExperience {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::GetWebExperience', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::ListApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAttachments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::ListAttachments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConversations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::ListConversations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataAccessors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::ListDataAccessors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::ListDataSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataSourceSyncJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::ListDataSourceSyncJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDocuments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::ListDocuments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::ListGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIndices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::ListIndices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMessages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::ListMessages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPluginActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::ListPluginActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPlugins {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::ListPlugins', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPluginTypeActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::ListPluginTypeActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPluginTypeMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::ListPluginTypeMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRetrievers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::ListRetrievers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSubscriptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::ListSubscriptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWebExperiences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::ListWebExperiences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutFeedback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::PutFeedback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::PutGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchRelevantContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::SearchRelevantContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDataSourceSyncJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::StartDataSourceSyncJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopDataSourceSyncJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::StopDataSourceSyncJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::UpdateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateChatControlsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::UpdateChatControlsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataAccessor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::UpdateDataAccessor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::UpdateDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::UpdateIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePlugin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::UpdatePlugin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRetriever {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::UpdateRetriever', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::UpdateSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::UpdateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWebExperience {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QBusiness::UpdateWebExperience', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllChatControlsConfiguration {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetChatControlsConfiguration(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetChatControlsConfiguration(@_, nextToken => $next_result->nextToken);
        push @{ $result->topicConfigurations }, @{ $next_result->topicConfigurations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'topicConfigurations') foreach (@{ $result->topicConfigurations });
        $result = $self->GetChatControlsConfiguration(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'topicConfigurations') foreach (@{ $result->topicConfigurations });
    }

    return undef
  }
  sub ListAllApplications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListApplications(@_, nextToken => $next_result->nextToken);
        push @{ $result->applications }, @{ $next_result->applications };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'applications') foreach (@{ $result->applications });
        $result = $self->ListApplications(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'applications') foreach (@{ $result->applications });
    }

    return undef
  }
  sub ListAllAttachments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAttachments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAttachments(@_, nextToken => $next_result->nextToken);
        push @{ $result->attachments }, @{ $next_result->attachments };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'attachments') foreach (@{ $result->attachments });
        $result = $self->ListAttachments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'attachments') foreach (@{ $result->attachments });
    }

    return undef
  }
  sub ListAllConversations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConversations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListConversations(@_, nextToken => $next_result->nextToken);
        push @{ $result->conversations }, @{ $next_result->conversations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'conversations') foreach (@{ $result->conversations });
        $result = $self->ListConversations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'conversations') foreach (@{ $result->conversations });
    }

    return undef
  }
  sub ListAllDataAccessors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataAccessors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDataAccessors(@_, nextToken => $next_result->nextToken);
        push @{ $result->dataAccessors }, @{ $next_result->dataAccessors };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'dataAccessors') foreach (@{ $result->dataAccessors });
        $result = $self->ListDataAccessors(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'dataAccessors') foreach (@{ $result->dataAccessors });
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
        push @{ $result->dataSources }, @{ $next_result->dataSources };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'dataSources') foreach (@{ $result->dataSources });
        $result = $self->ListDataSources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'dataSources') foreach (@{ $result->dataSources });
    }

    return undef
  }
  sub ListAllDataSourceSyncJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataSourceSyncJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDataSourceSyncJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->history }, @{ $next_result->history };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'history') foreach (@{ $result->history });
        $result = $self->ListDataSourceSyncJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'history') foreach (@{ $result->history });
    }

    return undef
  }
  sub ListAllDocuments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDocuments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDocuments(@_, nextToken => $next_result->nextToken);
        push @{ $result->documentDetailList }, @{ $next_result->documentDetailList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'documentDetailList') foreach (@{ $result->documentDetailList });
        $result = $self->ListDocuments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'documentDetailList') foreach (@{ $result->documentDetailList });
    }

    return undef
  }
  sub ListAllGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListGroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListGroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllIndices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIndices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListIndices(@_, nextToken => $next_result->nextToken);
        push @{ $result->indices }, @{ $next_result->indices };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'indices') foreach (@{ $result->indices });
        $result = $self->ListIndices(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'indices') foreach (@{ $result->indices });
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
  sub ListAllPluginActions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPluginActions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPluginActions(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListPluginActions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllPlugins {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPlugins(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPlugins(@_, nextToken => $next_result->nextToken);
        push @{ $result->plugins }, @{ $next_result->plugins };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'plugins') foreach (@{ $result->plugins });
        $result = $self->ListPlugins(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'plugins') foreach (@{ $result->plugins });
    }

    return undef
  }
  sub ListAllPluginTypeActions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPluginTypeActions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPluginTypeActions(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListPluginTypeActions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllPluginTypeMetadata {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPluginTypeMetadata(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPluginTypeMetadata(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListPluginTypeMetadata(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllRetrievers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRetrievers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRetrievers(@_, nextToken => $next_result->nextToken);
        push @{ $result->retrievers }, @{ $next_result->retrievers };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'retrievers') foreach (@{ $result->retrievers });
        $result = $self->ListRetrievers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'retrievers') foreach (@{ $result->retrievers });
    }

    return undef
  }
  sub ListAllSubscriptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSubscriptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSubscriptions(@_, nextToken => $next_result->nextToken);
        push @{ $result->subscriptions }, @{ $next_result->subscriptions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'subscriptions') foreach (@{ $result->subscriptions });
        $result = $self->ListSubscriptions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'subscriptions') foreach (@{ $result->subscriptions });
    }

    return undef
  }
  sub ListAllWebExperiences {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWebExperiences(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWebExperiences(@_, nextToken => $next_result->nextToken);
        push @{ $result->webExperiences }, @{ $next_result->webExperiences };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'webExperiences') foreach (@{ $result->webExperiences });
        $result = $self->ListWebExperiences(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'webExperiences') foreach (@{ $result->webExperiences });
    }

    return undef
  }
  sub SearchAllRelevantContent {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchRelevantContent(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchRelevantContent(@_, nextToken => $next_result->nextToken);
        push @{ $result->relevantContent }, @{ $next_result->relevantContent };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'relevantContent') foreach (@{ $result->relevantContent });
        $result = $self->SearchRelevantContent(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'relevantContent') foreach (@{ $result->relevantContent });
    }

    return undef
  }


  sub operations { qw/AssociatePermission BatchDeleteDocument BatchPutDocument CancelSubscription Chat ChatSync CheckDocumentAccess CreateAnonymousWebExperienceUrl CreateApplication CreateDataAccessor CreateDataSource CreateIndex CreatePlugin CreateRetriever CreateSubscription CreateUser CreateWebExperience DeleteApplication DeleteAttachment DeleteChatControlsConfiguration DeleteConversation DeleteDataAccessor DeleteDataSource DeleteGroup DeleteIndex DeletePlugin DeleteRetriever DeleteUser DeleteWebExperience DisassociatePermission GetApplication GetChatControlsConfiguration GetDataAccessor GetDataSource GetGroup GetIndex GetMedia GetPlugin GetPolicy GetRetriever GetUser GetWebExperience ListApplications ListAttachments ListConversations ListDataAccessors ListDataSources ListDataSourceSyncJobs ListDocuments ListGroups ListIndices ListMessages ListPluginActions ListPlugins ListPluginTypeActions ListPluginTypeMetadata ListRetrievers ListSubscriptions ListTagsForResource ListWebExperiences PutFeedback PutGroup SearchRelevantContent StartDataSourceSyncJob StopDataSourceSyncJob TagResource UntagResource UpdateApplication UpdateChatControlsConfiguration UpdateDataAccessor UpdateDataSource UpdateIndex UpdatePlugin UpdateRetriever UpdateSubscription UpdateUser UpdateWebExperience / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness - Perl Interface to AWS QBusiness

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('QBusiness');
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

This is the I<Amazon Q Business> API Reference. Amazon Q Business is a
fully managed, generative-AI powered enterprise chat assistant that you
can deploy within your organization. Amazon Q Business enhances
employee productivity by supporting key tasks such as
question-answering, knowledge discovery, writing email messages,
summarizing text, drafting document outlines, and brainstorming ideas.
Users ask questions of Amazon Q Business and get answers that are
presented in a conversational manner. For an introduction to the
service, see the I<Amazon Q Business User Guide>
(https://docs.aws.amazon.com/amazonq/latest/business-use-dg/what-is.html).

For an overview of the Amazon Q Business APIs, see Overview of Amazon Q
Business API operations
(https://docs.aws.amazon.com/amazonq/latest/business-use-dg/api-ref.html#api-overview).

For information about the IAM access control permissions you need to
use this API, see IAM roles for Amazon Q Business
(https://docs.aws.amazon.com/amazonq/latest/business-use-dg/iam-roles.html)
in the I<Amazon Q Business User Guide>.

The following resources provide additional information about using the
Amazon Q Business API:

=over

=item *

I<Setting up for Amazon Q Business
(https://docs.aws.amazon.com/amazonq/latest/business-use-dg/setting-up.html)>

=item *

I<Amazon Q Business CLI Reference
(https://awscli.amazonaws.com/v2/documentation/api/latest/reference/qbusiness/index.html)>

=item *

I<Amazon Web Services General Reference
(https://docs.aws.amazon.com/general/latest/gr/amazonq.html)>

=back


For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociatePermission

=over

=item Actions => ArrayRef[Str|Undef]

=item ApplicationId => Str

=item Principal => Str

=item StatementId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::AssociatePermission>

Returns: a L<Paws::QBusiness::AssociatePermissionResponse> instance

Adds or updates a permission policy for a Amazon Q Business
application, allowing cross-account access for an ISV. This operation
creates a new policy statement for the specified Amazon Q Business
application. The policy statement defines the IAM actions that the ISV
is allowed to perform on the Amazon Q Business application's resources.


=head2 BatchDeleteDocument

=over

=item ApplicationId => Str

=item Documents => ArrayRef[L<Paws::QBusiness::DeleteDocument>]

=item IndexId => Str

=item [DataSourceSyncId => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::BatchDeleteDocument>

Returns: a L<Paws::QBusiness::BatchDeleteDocumentResponse> instance

Asynchronously deletes one or more documents added using the
C<BatchPutDocument> API from an Amazon Q Business index.

You can see the progress of the deletion, and any error messages
related to the process, by using CloudWatch.


=head2 BatchPutDocument

=over

=item ApplicationId => Str

=item Documents => ArrayRef[L<Paws::QBusiness::Document>]

=item IndexId => Str

=item [DataSourceSyncId => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::BatchPutDocument>

Returns: a L<Paws::QBusiness::BatchPutDocumentResponse> instance

Adds one or more documents to an Amazon Q Business index.

You use this API to:

=over

=item *

ingest your structured and unstructured documents and documents stored
in an Amazon S3 bucket into an Amazon Q Business index.

=item *

add custom attributes to documents in an Amazon Q Business index.

=item *

attach an access control list to the documents added to an Amazon Q
Business index.

=back

You can see the progress of the deletion, and any error messages
related to the process, by using CloudWatch.


=head2 CancelSubscription

=over

=item ApplicationId => Str

=item SubscriptionId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::CancelSubscription>

Returns: a L<Paws::QBusiness::CancelSubscriptionResponse> instance

Unsubscribes a user or a group from their pricing tier in an Amazon Q
Business application. An unsubscribed user or group loses all Amazon Q
Business feature access at the start of next month.


=head2 Chat

=over

=item ApplicationId => Str

=item [ClientToken => Str]

=item [ConversationId => Str]

=item [InputStream => L<Paws::QBusiness::ChatInputStream>]

=item [ParentMessageId => Str]

=item [UserGroups => ArrayRef[Str|Undef]]

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::Chat>

Returns: a L<Paws::QBusiness::ChatOutput> instance

Starts or continues a streaming Amazon Q Business conversation.


=head2 ChatSync

=over

=item ApplicationId => Str

=item [ActionExecution => L<Paws::QBusiness::ActionExecution>]

=item [Attachments => ArrayRef[L<Paws::QBusiness::AttachmentInput>]]

=item [AttributeFilter => L<Paws::QBusiness::AttributeFilter>]

=item [AuthChallengeResponse => L<Paws::QBusiness::AuthChallengeResponse>]

=item [ChatMode => Str]

=item [ChatModeConfiguration => L<Paws::QBusiness::ChatModeConfiguration>]

=item [ClientToken => Str]

=item [ConversationId => Str]

=item [ParentMessageId => Str]

=item [UserGroups => ArrayRef[Str|Undef]]

=item [UserId => Str]

=item [UserMessage => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::ChatSync>

Returns: a L<Paws::QBusiness::ChatSyncOutput> instance

Starts or continues a non-streaming Amazon Q Business conversation.


=head2 CheckDocumentAccess

=over

=item ApplicationId => Str

=item DocumentId => Str

=item IndexId => Str

=item UserId => Str

=item [DataSourceId => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::CheckDocumentAccess>

Returns: a L<Paws::QBusiness::CheckDocumentAccessResponse> instance

Verifies if a user has access permissions for a specified document and
returns the actual ACL attached to the document. Resolves user access
on the document via user aliases and groups when verifying user access.


=head2 CreateAnonymousWebExperienceUrl

=over

=item ApplicationId => Str

=item WebExperienceId => Str

=item [SessionDurationInMinutes => Int]


=back

Each argument is described in detail in: L<Paws::QBusiness::CreateAnonymousWebExperienceUrl>

Returns: a L<Paws::QBusiness::CreateAnonymousWebExperienceUrlResponse> instance

Creates a unique URL for anonymous Amazon Q Business web experience.
This URL can only be used once and must be used within 5 minutes after
it's generated.


=head2 CreateApplication

=over

=item DisplayName => Str

=item [AttachmentsConfiguration => L<Paws::QBusiness::AttachmentsConfiguration>]

=item [ClientIdsForOIDC => ArrayRef[Str|Undef]]

=item [ClientToken => Str]

=item [Description => Str]

=item [EncryptionConfiguration => L<Paws::QBusiness::EncryptionConfiguration>]

=item [IamIdentityProviderArn => Str]

=item [IdentityCenterInstanceArn => Str]

=item [IdentityType => Str]

=item [PersonalizationConfiguration => L<Paws::QBusiness::PersonalizationConfiguration>]

=item [QAppsConfiguration => L<Paws::QBusiness::QAppsConfiguration>]

=item [QuickSightConfiguration => L<Paws::QBusiness::QuickSightConfiguration>]

=item [RoleArn => Str]

=item [Tags => ArrayRef[L<Paws::QBusiness::Tag>]]


=back

Each argument is described in detail in: L<Paws::QBusiness::CreateApplication>

Returns: a L<Paws::QBusiness::CreateApplicationResponse> instance

Creates an Amazon Q Business application.

There are new tiers for Amazon Q Business. Not all features in Amazon Q
Business Pro are also available in Amazon Q Business Lite. For
information on what's included in Amazon Q Business Lite and what's
included in Amazon Q Business Pro, see Amazon Q Business tiers
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/tiers.html#user-sub-tiers).
You must use the Amazon Q Business console to assign subscription tiers
to users.

An Amazon Q Apps service linked role will be created if it's absent in
the Amazon Web Services account when C<QAppsConfiguration> is enabled
in the request. For more information, see Using service-linked roles
for Q Apps
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/using-service-linked-roles-qapps.html).

When you create an application, Amazon Q Business may securely transmit
data for processing from your selected Amazon Web Services region, but
within your geography. For more information, see Cross region inference
in Amazon Q Business
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/cross-region-inference.html).


=head2 CreateDataAccessor

=over

=item ActionConfigurations => ArrayRef[L<Paws::QBusiness::ActionConfiguration>]

=item ApplicationId => Str

=item DisplayName => Str

=item Principal => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::QBusiness::Tag>]]


=back

Each argument is described in detail in: L<Paws::QBusiness::CreateDataAccessor>

Returns: a L<Paws::QBusiness::CreateDataAccessorResponse> instance

Creates a new data accessor for an ISV to access data from a Amazon Q
Business application. The data accessor is an entity that represents
the ISV's access to the Amazon Q Business application's data. It
includes the IAM role ARN for the ISV, a friendly name, and a set of
action configurations that define the specific actions the ISV is
allowed to perform and any associated data filters. When the data
accessor is created, an IAM Identity Center application is also created
to manage the ISV's identity and authentication for accessing the
Amazon Q Business application.


=head2 CreateDataSource

=over

=item ApplicationId => Str

=item Configuration => L<Paws::QBusiness::DataSourceConfiguration>

=item DisplayName => Str

=item IndexId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DocumentEnrichmentConfiguration => L<Paws::QBusiness::DocumentEnrichmentConfiguration>]

=item [MediaExtractionConfiguration => L<Paws::QBusiness::MediaExtractionConfiguration>]

=item [RoleArn => Str]

=item [SyncSchedule => Str]

=item [Tags => ArrayRef[L<Paws::QBusiness::Tag>]]

=item [VpcConfiguration => L<Paws::QBusiness::DataSourceVpcConfiguration>]


=back

Each argument is described in detail in: L<Paws::QBusiness::CreateDataSource>

Returns: a L<Paws::QBusiness::CreateDataSourceResponse> instance

Creates a data source connector for an Amazon Q Business application.

C<CreateDataSource> is a synchronous operation. The operation returns
200 if the data source was successfully created. Otherwise, an
exception is raised.


=head2 CreateIndex

=over

=item ApplicationId => Str

=item DisplayName => Str

=item [CapacityConfiguration => L<Paws::QBusiness::IndexCapacityConfiguration>]

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::QBusiness::Tag>]]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::CreateIndex>

Returns: a L<Paws::QBusiness::CreateIndexResponse> instance

Creates an Amazon Q Business index.

To determine if index creation has completed, check the C<Status> field
returned from a call to C<DescribeIndex>. The C<Status> field is set to
C<ACTIVE> when the index is ready to use.

Once the index is active, you can index your documents using the
C<BatchPutDocument>
(https://docs.aws.amazon.com/amazonq/latest/api-reference/API_BatchPutDocument.html)
API or the C<CreateDataSource>
(https://docs.aws.amazon.com/amazonq/latest/api-reference/API_CreateDataSource.html)
API.


=head2 CreatePlugin

=over

=item ApplicationId => Str

=item AuthConfiguration => L<Paws::QBusiness::PluginAuthConfiguration>

=item DisplayName => Str

=item Type => Str

=item [ClientToken => Str]

=item [CustomPluginConfiguration => L<Paws::QBusiness::CustomPluginConfiguration>]

=item [ServerUrl => Str]

=item [Tags => ArrayRef[L<Paws::QBusiness::Tag>]]


=back

Each argument is described in detail in: L<Paws::QBusiness::CreatePlugin>

Returns: a L<Paws::QBusiness::CreatePluginResponse> instance

Creates an Amazon Q Business plugin.


=head2 CreateRetriever

=over

=item ApplicationId => Str

=item Configuration => L<Paws::QBusiness::RetrieverConfiguration>

=item DisplayName => Str

=item Type => Str

=item [ClientToken => Str]

=item [RoleArn => Str]

=item [Tags => ArrayRef[L<Paws::QBusiness::Tag>]]


=back

Each argument is described in detail in: L<Paws::QBusiness::CreateRetriever>

Returns: a L<Paws::QBusiness::CreateRetrieverResponse> instance

Adds a retriever to your Amazon Q Business application.


=head2 CreateSubscription

=over

=item ApplicationId => Str

=item Principal => L<Paws::QBusiness::SubscriptionPrincipal>

=item Type => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::CreateSubscription>

Returns: a L<Paws::QBusiness::CreateSubscriptionResponse> instance

Subscribes an IAM Identity Center user or a group to a pricing tier for
an Amazon Q Business application.

Amazon Q Business offers two subscription tiers: C<Q_LITE> and
C<Q_BUSINESS>. Subscription tier determines feature access for the
user. For more information on subscriptions and pricing tiers, see
Amazon Q Business pricing (https://aws.amazon.com/q/business/pricing/).


=head2 CreateUser

=over

=item ApplicationId => Str

=item UserId => Str

=item [ClientToken => Str]

=item [UserAliases => ArrayRef[L<Paws::QBusiness::UserAlias>]]


=back

Each argument is described in detail in: L<Paws::QBusiness::CreateUser>

Returns: a L<Paws::QBusiness::CreateUserResponse> instance

Creates a universally unique identifier (UUID) mapped to a list of
local user ids within an application.


=head2 CreateWebExperience

=over

=item ApplicationId => Str

=item [BrowserExtensionConfiguration => L<Paws::QBusiness::BrowserExtensionConfiguration>]

=item [ClientToken => Str]

=item [CustomizationConfiguration => L<Paws::QBusiness::CustomizationConfiguration>]

=item [IdentityProviderConfiguration => L<Paws::QBusiness::IdentityProviderConfiguration>]

=item [Origins => ArrayRef[Str|Undef]]

=item [RoleArn => Str]

=item [SamplePromptsControlMode => Str]

=item [Subtitle => Str]

=item [Tags => ArrayRef[L<Paws::QBusiness::Tag>]]

=item [Title => Str]

=item [WelcomeMessage => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::CreateWebExperience>

Returns: a L<Paws::QBusiness::CreateWebExperienceResponse> instance

Creates an Amazon Q Business web experience.


=head2 DeleteApplication

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::DeleteApplication>

Returns: a L<Paws::QBusiness::DeleteApplicationResponse> instance

Deletes an Amazon Q Business application.


=head2 DeleteAttachment

=over

=item ApplicationId => Str

=item AttachmentId => Str

=item ConversationId => Str

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::DeleteAttachment>

Returns: a L<Paws::QBusiness::DeleteAttachmentResponse> instance

Deletes an attachment associated with a specific Amazon Q Business
conversation.


=head2 DeleteChatControlsConfiguration

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::DeleteChatControlsConfiguration>

Returns: a L<Paws::QBusiness::DeleteChatControlsConfigurationResponse> instance

Deletes chat controls configured for an existing Amazon Q Business
application.


=head2 DeleteConversation

=over

=item ApplicationId => Str

=item ConversationId => Str

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::DeleteConversation>

Returns: a L<Paws::QBusiness::DeleteConversationResponse> instance

Deletes an Amazon Q Business web experience conversation.


=head2 DeleteDataAccessor

=over

=item ApplicationId => Str

=item DataAccessorId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::DeleteDataAccessor>

Returns: a L<Paws::QBusiness::DeleteDataAccessorResponse> instance

Deletes a specified data accessor. This operation permanently removes
the data accessor and its associated IAM Identity Center application.
Any access granted to the ISV through this data accessor will be
revoked.


=head2 DeleteDataSource

=over

=item ApplicationId => Str

=item DataSourceId => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::DeleteDataSource>

Returns: a L<Paws::QBusiness::DeleteDataSourceResponse> instance

Deletes an Amazon Q Business data source connector. While the data
source is being deleted, the C<Status> field returned by a call to the
C<DescribeDataSource> API is set to C<DELETING>.


=head2 DeleteGroup

=over

=item ApplicationId => Str

=item GroupName => Str

=item IndexId => Str

=item [DataSourceId => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::DeleteGroup>

Returns: a L<Paws::QBusiness::DeleteGroupResponse> instance

Deletes a group so that all users and sub groups that belong to the
group can no longer access documents only available to that group. For
example, after deleting the group "Summer Interns", all interns who
belonged to that group no longer see intern-only documents in their
chat results.

If you want to delete, update, or replace users or sub groups of a
group, you need to use the C<PutGroup> operation. For example, if a
user in the group "Engineering" leaves the engineering team and another
user takes their place, you provide an updated list of users or sub
groups that belong to the "Engineering" group when calling C<PutGroup>.


=head2 DeleteIndex

=over

=item ApplicationId => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::DeleteIndex>

Returns: a L<Paws::QBusiness::DeleteIndexResponse> instance

Deletes an Amazon Q Business index.


=head2 DeletePlugin

=over

=item ApplicationId => Str

=item PluginId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::DeletePlugin>

Returns: a L<Paws::QBusiness::DeletePluginResponse> instance

Deletes an Amazon Q Business plugin.


=head2 DeleteRetriever

=over

=item ApplicationId => Str

=item RetrieverId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::DeleteRetriever>

Returns: a L<Paws::QBusiness::DeleteRetrieverResponse> instance

Deletes the retriever used by an Amazon Q Business application.


=head2 DeleteUser

=over

=item ApplicationId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::DeleteUser>

Returns: a L<Paws::QBusiness::DeleteUserResponse> instance

Deletes a user by email id.


=head2 DeleteWebExperience

=over

=item ApplicationId => Str

=item WebExperienceId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::DeleteWebExperience>

Returns: a L<Paws::QBusiness::DeleteWebExperienceResponse> instance

Deletes an Amazon Q Business web experience.


=head2 DisassociatePermission

=over

=item ApplicationId => Str

=item StatementId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::DisassociatePermission>

Returns: a L<Paws::QBusiness::DisassociatePermissionResponse> instance

Removes a permission policy from a Amazon Q Business application,
revoking the cross-account access that was previously granted to an
ISV. This operation deletes the specified policy statement from the
application's permission policy.


=head2 GetApplication

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::GetApplication>

Returns: a L<Paws::QBusiness::GetApplicationResponse> instance

Gets information about an existing Amazon Q Business application.


=head2 GetChatControlsConfiguration

=over

=item ApplicationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::GetChatControlsConfiguration>

Returns: a L<Paws::QBusiness::GetChatControlsConfigurationResponse> instance

Gets information about chat controls configured for an existing Amazon
Q Business application.


=head2 GetDataAccessor

=over

=item ApplicationId => Str

=item DataAccessorId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::GetDataAccessor>

Returns: a L<Paws::QBusiness::GetDataAccessorResponse> instance

Retrieves information about a specified data accessor. This operation
returns details about the data accessor, including its display name,
unique identifier, Amazon Resource Name (ARN), the associated Amazon Q
Business application and IAM Identity Center application, the IAM role
for the ISV, the action configurations, and the timestamps for when the
data accessor was created and last updated.


=head2 GetDataSource

=over

=item ApplicationId => Str

=item DataSourceId => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::GetDataSource>

Returns: a L<Paws::QBusiness::GetDataSourceResponse> instance

Gets information about an existing Amazon Q Business data source
connector.


=head2 GetGroup

=over

=item ApplicationId => Str

=item GroupName => Str

=item IndexId => Str

=item [DataSourceId => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::GetGroup>

Returns: a L<Paws::QBusiness::GetGroupResponse> instance

Describes a group by group name.


=head2 GetIndex

=over

=item ApplicationId => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::GetIndex>

Returns: a L<Paws::QBusiness::GetIndexResponse> instance

Gets information about an existing Amazon Q Business index.


=head2 GetMedia

=over

=item ApplicationId => Str

=item ConversationId => Str

=item MediaId => Str

=item MessageId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::GetMedia>

Returns: a L<Paws::QBusiness::GetMediaResponse> instance

Returns the image bytes corresponding to a media object. If you have
implemented your own application with the Chat and ChatSync APIs, and
have enabled content extraction from visual data in Amazon Q Business,
you use the GetMedia API operation to download the images so you can
show them in your UI with responses.

For more information, see Extracting semantic meaning from images and
visuals
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/extracting-meaning-from-images.html).


=head2 GetPlugin

=over

=item ApplicationId => Str

=item PluginId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::GetPlugin>

Returns: a L<Paws::QBusiness::GetPluginResponse> instance

Gets information about an existing Amazon Q Business plugin.


=head2 GetPolicy

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::GetPolicy>

Returns: a L<Paws::QBusiness::GetPolicyResponse> instance

Retrieves the current permission policy for a Amazon Q Business
application. The policy is returned as a JSON-formatted string and
defines the IAM actions that are allowed or denied for the
application's resources.


=head2 GetRetriever

=over

=item ApplicationId => Str

=item RetrieverId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::GetRetriever>

Returns: a L<Paws::QBusiness::GetRetrieverResponse> instance

Gets information about an existing retriever used by an Amazon Q
Business application.


=head2 GetUser

=over

=item ApplicationId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::GetUser>

Returns: a L<Paws::QBusiness::GetUserResponse> instance

Describes the universally unique identifier (UUID) associated with a
local user in a data source.


=head2 GetWebExperience

=over

=item ApplicationId => Str

=item WebExperienceId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::GetWebExperience>

Returns: a L<Paws::QBusiness::GetWebExperienceResponse> instance

Gets information about an existing Amazon Q Business web experience.


=head2 ListApplications

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::ListApplications>

Returns: a L<Paws::QBusiness::ListApplicationsResponse> instance

Lists Amazon Q Business applications.

Amazon Q Business applications may securely transmit data for
processing across Amazon Web Services Regions within your geography.
For more information, see Cross region inference in Amazon Q Business
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/cross-region-inference.html).


=head2 ListAttachments

=over

=item ApplicationId => Str

=item [ConversationId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::ListAttachments>

Returns: a L<Paws::QBusiness::ListAttachmentsResponse> instance

Gets a list of attachments associated with an Amazon Q Business web
experience or a list of attachements associated with a specific Amazon
Q Business conversation.


=head2 ListConversations

=over

=item ApplicationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::ListConversations>

Returns: a L<Paws::QBusiness::ListConversationsResponse> instance

Lists one or more Amazon Q Business conversations.


=head2 ListDataAccessors

=over

=item ApplicationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::ListDataAccessors>

Returns: a L<Paws::QBusiness::ListDataAccessorsResponse> instance

Lists the data accessors for a Amazon Q Business application. This
operation returns a paginated list of data accessor summaries,
including the friendly name, unique identifier, ARN, associated IAM
role, and creation/update timestamps for each data accessor.


=head2 ListDataSources

=over

=item ApplicationId => Str

=item IndexId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::ListDataSources>

Returns: a L<Paws::QBusiness::ListDataSourcesResponse> instance

Lists the Amazon Q Business data source connectors that you have
created.


=head2 ListDataSourceSyncJobs

=over

=item ApplicationId => Str

=item DataSourceId => Str

=item IndexId => Str

=item [EndTime => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartTime => Str]

=item [StatusFilter => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::ListDataSourceSyncJobs>

Returns: a L<Paws::QBusiness::ListDataSourceSyncJobsResponse> instance

Get information about an Amazon Q Business data source connector
synchronization.


=head2 ListDocuments

=over

=item ApplicationId => Str

=item IndexId => Str

=item [DataSourceIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::ListDocuments>

Returns: a L<Paws::QBusiness::ListDocumentsResponse> instance

A list of documents attached to an index.


=head2 ListGroups

=over

=item ApplicationId => Str

=item IndexId => Str

=item UpdatedEarlierThan => Str

=item [DataSourceId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::ListGroups>

Returns: a L<Paws::QBusiness::ListGroupsResponse> instance

Provides a list of groups that are mapped to users.


=head2 ListIndices

=over

=item ApplicationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::ListIndices>

Returns: a L<Paws::QBusiness::ListIndicesResponse> instance

Lists the Amazon Q Business indices you have created.


=head2 ListMessages

=over

=item ApplicationId => Str

=item ConversationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::ListMessages>

Returns: a L<Paws::QBusiness::ListMessagesResponse> instance

Gets a list of messages associated with an Amazon Q Business web
experience.


=head2 ListPluginActions

=over

=item ApplicationId => Str

=item PluginId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::ListPluginActions>

Returns: a L<Paws::QBusiness::ListPluginActionsResponse> instance

Lists configured Amazon Q Business actions for a specific plugin in an
Amazon Q Business application.


=head2 ListPlugins

=over

=item ApplicationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::ListPlugins>

Returns: a L<Paws::QBusiness::ListPluginsResponse> instance

Lists configured Amazon Q Business plugins.


=head2 ListPluginTypeActions

=over

=item PluginType => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::ListPluginTypeActions>

Returns: a L<Paws::QBusiness::ListPluginTypeActionsResponse> instance

Lists configured Amazon Q Business actions for any plugin
typeE<mdash>both built-in and custom.


=head2 ListPluginTypeMetadata

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::ListPluginTypeMetadata>

Returns: a L<Paws::QBusiness::ListPluginTypeMetadataResponse> instance

Lists metadata for all Amazon Q Business plugin types.


=head2 ListRetrievers

=over

=item ApplicationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::ListRetrievers>

Returns: a L<Paws::QBusiness::ListRetrieversResponse> instance

Lists the retriever used by an Amazon Q Business application.


=head2 ListSubscriptions

=over

=item ApplicationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::ListSubscriptions>

Returns: a L<Paws::QBusiness::ListSubscriptionsResponse> instance

Lists all subscriptions created in an Amazon Q Business application.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::ListTagsForResource>

Returns: a L<Paws::QBusiness::ListTagsForResourceResponse> instance

Gets a list of tags associated with a specified resource. Amazon Q
Business applications and data sources can have tags associated with
them.


=head2 ListWebExperiences

=over

=item ApplicationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::ListWebExperiences>

Returns: a L<Paws::QBusiness::ListWebExperiencesResponse> instance

Lists one or more Amazon Q Business Web Experiences.


=head2 PutFeedback

=over

=item ApplicationId => Str

=item ConversationId => Str

=item MessageId => Str

=item [MessageCopiedAt => Str]

=item [MessageUsefulness => L<Paws::QBusiness::MessageUsefulnessFeedback>]

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::PutFeedback>

Returns: nothing

Enables your end user to provide feedback on their Amazon Q Business
generated chat responses.


=head2 PutGroup

=over

=item ApplicationId => Str

=item GroupMembers => L<Paws::QBusiness::GroupMembers>

=item GroupName => Str

=item IndexId => Str

=item Type => Str

=item [DataSourceId => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::PutGroup>

Returns: a L<Paws::QBusiness::PutGroupResponse> instance

Create, or updates, a mapping of usersE<mdash>who have access to a
documentE<mdash>to groups.

You can also map sub groups to groups. For example, the group "Company
Intellectual Property Teams" includes sub groups "Research" and
"Engineering". These sub groups include their own list of users or
people who work in these teams. Only users who work in research and
engineering, and therefore belong in the intellectual property group,
can see top-secret company documents in their Amazon Q Business chat
results.

There are two options for creating groups, either passing group members
inline or using an S3 file via the S3PathForGroupMembers field. For
inline groups, there is a limit of 1000 members per group and for
provided S3 files there is a limit of 100 thousand members. When
creating a group using an S3 file, you provide both an S3 file and a
C<RoleArn> for Amazon Q Buisness to access the file.


=head2 SearchRelevantContent

=over

=item ApplicationId => Str

=item ContentSource => L<Paws::QBusiness::ContentSource>

=item QueryText => Str

=item [AttributeFilter => L<Paws::QBusiness::AttributeFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::SearchRelevantContent>

Returns: a L<Paws::QBusiness::SearchRelevantContentResponse> instance

Searches for relevant content in a Amazon Q Business application based
on a query. This operation takes a search query text, the Amazon Q
Business application identifier, and optional filters (such as content
source and maximum results) as input. It returns a list of relevant
content items, where each item includes the content text, the unique
document identifier, the document title, the document URI, any relevant
document attributes, and score attributes indicating the confidence
level of the relevance.


=head2 StartDataSourceSyncJob

=over

=item ApplicationId => Str

=item DataSourceId => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::StartDataSourceSyncJob>

Returns: a L<Paws::QBusiness::StartDataSourceSyncJobResponse> instance

Starts a data source connector synchronization job. If a
synchronization job is already in progress, Amazon Q Business returns a
C<ConflictException>.


=head2 StopDataSourceSyncJob

=over

=item ApplicationId => Str

=item DataSourceId => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::StopDataSourceSyncJob>

Returns: a L<Paws::QBusiness::StopDataSourceSyncJobResponse> instance

Stops an Amazon Q Business data source connector synchronization job
already in progress.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::QBusiness::Tag>]


=back

Each argument is described in detail in: L<Paws::QBusiness::TagResource>

Returns: a L<Paws::QBusiness::TagResourceResponse> instance

Adds the specified tag to the specified Amazon Q Business application
or data source resource. If the tag already exists, the existing value
is replaced with the new value.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::QBusiness::UntagResource>

Returns: a L<Paws::QBusiness::UntagResourceResponse> instance

Removes a tag from an Amazon Q Business application or a data source.


=head2 UpdateApplication

=over

=item ApplicationId => Str

=item [AttachmentsConfiguration => L<Paws::QBusiness::AttachmentsConfiguration>]

=item [AutoSubscriptionConfiguration => L<Paws::QBusiness::AutoSubscriptionConfiguration>]

=item [Description => Str]

=item [DisplayName => Str]

=item [IdentityCenterInstanceArn => Str]

=item [PersonalizationConfiguration => L<Paws::QBusiness::PersonalizationConfiguration>]

=item [QAppsConfiguration => L<Paws::QBusiness::QAppsConfiguration>]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::UpdateApplication>

Returns: a L<Paws::QBusiness::UpdateApplicationResponse> instance

Updates an existing Amazon Q Business application.

Amazon Q Business applications may securely transmit data for
processing across Amazon Web Services Regions within your geography.
For more information, see Cross region inference in Amazon Q Business
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/cross-region-inference.html).

An Amazon Q Apps service-linked role will be created if it's absent in
the Amazon Web Services account when C<QAppsConfiguration> is enabled
in the request. For more information, see Using service-linked roles
for Q Apps
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/using-service-linked-roles-qapps.html).


=head2 UpdateChatControlsConfiguration

=over

=item ApplicationId => Str

=item [BlockedPhrasesConfigurationUpdate => L<Paws::QBusiness::BlockedPhrasesConfigurationUpdate>]

=item [ClientToken => Str]

=item [CreatorModeConfiguration => L<Paws::QBusiness::CreatorModeConfiguration>]

=item [HallucinationReductionConfiguration => L<Paws::QBusiness::HallucinationReductionConfiguration>]

=item [OrchestrationConfiguration => L<Paws::QBusiness::OrchestrationConfiguration>]

=item [ResponseScope => Str]

=item [TopicConfigurationsToCreateOrUpdate => ArrayRef[L<Paws::QBusiness::TopicConfiguration>]]

=item [TopicConfigurationsToDelete => ArrayRef[L<Paws::QBusiness::TopicConfiguration>]]


=back

Each argument is described in detail in: L<Paws::QBusiness::UpdateChatControlsConfiguration>

Returns: a L<Paws::QBusiness::UpdateChatControlsConfigurationResponse> instance

Updates a set of chat controls configured for an existing Amazon Q
Business application.


=head2 UpdateDataAccessor

=over

=item ActionConfigurations => ArrayRef[L<Paws::QBusiness::ActionConfiguration>]

=item ApplicationId => Str

=item DataAccessorId => Str

=item [DisplayName => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::UpdateDataAccessor>

Returns: a L<Paws::QBusiness::UpdateDataAccessorResponse> instance

Updates an existing data accessor. This operation allows modifying the
action configurations (the allowed actions and associated filters) and
the display name of the data accessor. It does not allow changing the
IAM role associated with the data accessor or other core properties of
the data accessor.


=head2 UpdateDataSource

=over

=item ApplicationId => Str

=item DataSourceId => Str

=item IndexId => Str

=item [Configuration => L<Paws::QBusiness::DataSourceConfiguration>]

=item [Description => Str]

=item [DisplayName => Str]

=item [DocumentEnrichmentConfiguration => L<Paws::QBusiness::DocumentEnrichmentConfiguration>]

=item [MediaExtractionConfiguration => L<Paws::QBusiness::MediaExtractionConfiguration>]

=item [RoleArn => Str]

=item [SyncSchedule => Str]

=item [VpcConfiguration => L<Paws::QBusiness::DataSourceVpcConfiguration>]


=back

Each argument is described in detail in: L<Paws::QBusiness::UpdateDataSource>

Returns: a L<Paws::QBusiness::UpdateDataSourceResponse> instance

Updates an existing Amazon Q Business data source connector.


=head2 UpdateIndex

=over

=item ApplicationId => Str

=item IndexId => Str

=item [CapacityConfiguration => L<Paws::QBusiness::IndexCapacityConfiguration>]

=item [Description => Str]

=item [DisplayName => Str]

=item [DocumentAttributeConfigurations => ArrayRef[L<Paws::QBusiness::DocumentAttributeConfiguration>]]


=back

Each argument is described in detail in: L<Paws::QBusiness::UpdateIndex>

Returns: a L<Paws::QBusiness::UpdateIndexResponse> instance

Updates an Amazon Q Business index.


=head2 UpdatePlugin

=over

=item ApplicationId => Str

=item PluginId => Str

=item [AuthConfiguration => L<Paws::QBusiness::PluginAuthConfiguration>]

=item [CustomPluginConfiguration => L<Paws::QBusiness::CustomPluginConfiguration>]

=item [DisplayName => Str]

=item [ServerUrl => Str]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::UpdatePlugin>

Returns: a L<Paws::QBusiness::UpdatePluginResponse> instance

Updates an Amazon Q Business plugin.


=head2 UpdateRetriever

=over

=item ApplicationId => Str

=item RetrieverId => Str

=item [Configuration => L<Paws::QBusiness::RetrieverConfiguration>]

=item [DisplayName => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::UpdateRetriever>

Returns: a L<Paws::QBusiness::UpdateRetrieverResponse> instance

Updates the retriever used for your Amazon Q Business application.


=head2 UpdateSubscription

=over

=item ApplicationId => Str

=item SubscriptionId => Str

=item Type => Str


=back

Each argument is described in detail in: L<Paws::QBusiness::UpdateSubscription>

Returns: a L<Paws::QBusiness::UpdateSubscriptionResponse> instance

Updates the pricing tier for an Amazon Q Business subscription.
Upgrades are instant. Downgrades apply at the start of the next month.
Subscription tier determines feature access for the user. For more
information on subscriptions and pricing tiers, see Amazon Q Business
pricing (https://aws.amazon.com/q/business/pricing/).


=head2 UpdateUser

=over

=item ApplicationId => Str

=item UserId => Str

=item [UserAliasesToDelete => ArrayRef[L<Paws::QBusiness::UserAlias>]]

=item [UserAliasesToUpdate => ArrayRef[L<Paws::QBusiness::UserAlias>]]


=back

Each argument is described in detail in: L<Paws::QBusiness::UpdateUser>

Returns: a L<Paws::QBusiness::UpdateUserResponse> instance

Updates a information associated with a user id.


=head2 UpdateWebExperience

=over

=item ApplicationId => Str

=item WebExperienceId => Str

=item [AuthenticationConfiguration => L<Paws::QBusiness::WebExperienceAuthConfiguration>]

=item [BrowserExtensionConfiguration => L<Paws::QBusiness::BrowserExtensionConfiguration>]

=item [CustomizationConfiguration => L<Paws::QBusiness::CustomizationConfiguration>]

=item [IdentityProviderConfiguration => L<Paws::QBusiness::IdentityProviderConfiguration>]

=item [Origins => ArrayRef[Str|Undef]]

=item [RoleArn => Str]

=item [SamplePromptsControlMode => Str]

=item [Subtitle => Str]

=item [Title => Str]

=item [WelcomeMessage => Str]


=back

Each argument is described in detail in: L<Paws::QBusiness::UpdateWebExperience>

Returns: a L<Paws::QBusiness::UpdateWebExperienceResponse> instance

Updates an Amazon Q Business web experience.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllChatControlsConfiguration(sub { },ApplicationId => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllChatControlsConfiguration(ApplicationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - topicConfigurations, passing the object as the first parameter, and the string 'topicConfigurations' as the second parameter 

If not, it will return a a L<Paws::QBusiness::GetChatControlsConfigurationResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApplications(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllApplications([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - applications, passing the object as the first parameter, and the string 'applications' as the second parameter 

If not, it will return a a L<Paws::QBusiness::ListApplicationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAttachments(sub { },ApplicationId => Str, [ConversationId => Str, MaxResults => Int, NextToken => Str, UserId => Str])

=head2 ListAllAttachments(ApplicationId => Str, [ConversationId => Str, MaxResults => Int, NextToken => Str, UserId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - attachments, passing the object as the first parameter, and the string 'attachments' as the second parameter 

If not, it will return a a L<Paws::QBusiness::ListAttachmentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConversations(sub { },ApplicationId => Str, [MaxResults => Int, NextToken => Str, UserId => Str])

=head2 ListAllConversations(ApplicationId => Str, [MaxResults => Int, NextToken => Str, UserId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - conversations, passing the object as the first parameter, and the string 'conversations' as the second parameter 

If not, it will return a a L<Paws::QBusiness::ListConversationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataAccessors(sub { },ApplicationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDataAccessors(ApplicationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - dataAccessors, passing the object as the first parameter, and the string 'dataAccessors' as the second parameter 

If not, it will return a a L<Paws::QBusiness::ListDataAccessorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataSources(sub { },ApplicationId => Str, IndexId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDataSources(ApplicationId => Str, IndexId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - dataSources, passing the object as the first parameter, and the string 'dataSources' as the second parameter 

If not, it will return a a L<Paws::QBusiness::ListDataSourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataSourceSyncJobs(sub { },ApplicationId => Str, DataSourceId => Str, IndexId => Str, [EndTime => Str, MaxResults => Int, NextToken => Str, StartTime => Str, StatusFilter => Str])

=head2 ListAllDataSourceSyncJobs(ApplicationId => Str, DataSourceId => Str, IndexId => Str, [EndTime => Str, MaxResults => Int, NextToken => Str, StartTime => Str, StatusFilter => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - history, passing the object as the first parameter, and the string 'history' as the second parameter 

If not, it will return a a L<Paws::QBusiness::ListDataSourceSyncJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDocuments(sub { },ApplicationId => Str, IndexId => Str, [DataSourceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllDocuments(ApplicationId => Str, IndexId => Str, [DataSourceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - documentDetailList, passing the object as the first parameter, and the string 'documentDetailList' as the second parameter 

If not, it will return a a L<Paws::QBusiness::ListDocumentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGroups(sub { },ApplicationId => Str, IndexId => Str, UpdatedEarlierThan => Str, [DataSourceId => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllGroups(ApplicationId => Str, IndexId => Str, UpdatedEarlierThan => Str, [DataSourceId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::QBusiness::ListGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIndices(sub { },ApplicationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllIndices(ApplicationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - indices, passing the object as the first parameter, and the string 'indices' as the second parameter 

If not, it will return a a L<Paws::QBusiness::ListIndicesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMessages(sub { },ApplicationId => Str, ConversationId => Str, [MaxResults => Int, NextToken => Str, UserId => Str])

=head2 ListAllMessages(ApplicationId => Str, ConversationId => Str, [MaxResults => Int, NextToken => Str, UserId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - messages, passing the object as the first parameter, and the string 'messages' as the second parameter 

If not, it will return a a L<Paws::QBusiness::ListMessagesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPluginActions(sub { },ApplicationId => Str, PluginId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPluginActions(ApplicationId => Str, PluginId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::QBusiness::ListPluginActionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPlugins(sub { },ApplicationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPlugins(ApplicationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - plugins, passing the object as the first parameter, and the string 'plugins' as the second parameter 

If not, it will return a a L<Paws::QBusiness::ListPluginsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPluginTypeActions(sub { },PluginType => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPluginTypeActions(PluginType => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::QBusiness::ListPluginTypeActionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPluginTypeMetadata(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllPluginTypeMetadata([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::QBusiness::ListPluginTypeMetadataResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRetrievers(sub { },ApplicationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllRetrievers(ApplicationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - retrievers, passing the object as the first parameter, and the string 'retrievers' as the second parameter 

If not, it will return a a L<Paws::QBusiness::ListRetrieversResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSubscriptions(sub { },ApplicationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllSubscriptions(ApplicationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - subscriptions, passing the object as the first parameter, and the string 'subscriptions' as the second parameter 

If not, it will return a a L<Paws::QBusiness::ListSubscriptionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWebExperiences(sub { },ApplicationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllWebExperiences(ApplicationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - webExperiences, passing the object as the first parameter, and the string 'webExperiences' as the second parameter 

If not, it will return a a L<Paws::QBusiness::ListWebExperiencesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllRelevantContent(sub { },ApplicationId => Str, ContentSource => L<Paws::QBusiness::ContentSource>, QueryText => Str, [AttributeFilter => L<Paws::QBusiness::AttributeFilter>, MaxResults => Int, NextToken => Str])

=head2 SearchAllRelevantContent(ApplicationId => Str, ContentSource => L<Paws::QBusiness::ContentSource>, QueryText => Str, [AttributeFilter => L<Paws::QBusiness::AttributeFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - relevantContent, passing the object as the first parameter, and the string 'relevantContent' as the second parameter 

If not, it will return a a L<Paws::QBusiness::SearchRelevantContentResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

