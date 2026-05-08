package Paws::CleanRooms;
  use Moose;
  sub service { 'cleanrooms' }
  sub signing_name { 'cleanrooms' }
  sub version { '2022-02-17' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchGetCollaborationAnalysisTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::BatchGetCollaborationAnalysisTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::BatchGetSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetSchemaAnalysisRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::BatchGetSchemaAnalysisRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAnalysisTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::CreateAnalysisTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCollaboration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::CreateCollaboration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfiguredAudienceModelAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::CreateConfiguredAudienceModelAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfiguredTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::CreateConfiguredTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfiguredTableAnalysisRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::CreateConfiguredTableAnalysisRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfiguredTableAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::CreateConfiguredTableAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfiguredTableAssociationAnalysisRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::CreateConfiguredTableAssociationAnalysisRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIdMappingTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::CreateIdMappingTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIdNamespaceAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::CreateIdNamespaceAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::CreateMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePrivacyBudgetTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::CreatePrivacyBudgetTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAnalysisTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::DeleteAnalysisTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCollaboration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::DeleteCollaboration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfiguredAudienceModelAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::DeleteConfiguredAudienceModelAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfiguredTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::DeleteConfiguredTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfiguredTableAnalysisRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::DeleteConfiguredTableAnalysisRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfiguredTableAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::DeleteConfiguredTableAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfiguredTableAssociationAnalysisRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::DeleteConfiguredTableAssociationAnalysisRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIdMappingTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::DeleteIdMappingTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIdNamespaceAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::DeleteIdNamespaceAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::DeleteMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::DeleteMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePrivacyBudgetTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::DeletePrivacyBudgetTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAnalysisTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::GetAnalysisTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCollaboration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::GetCollaboration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCollaborationAnalysisTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::GetCollaborationAnalysisTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCollaborationConfiguredAudienceModelAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::GetCollaborationConfiguredAudienceModelAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCollaborationIdNamespaceAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::GetCollaborationIdNamespaceAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCollaborationPrivacyBudgetTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::GetCollaborationPrivacyBudgetTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfiguredAudienceModelAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::GetConfiguredAudienceModelAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfiguredTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::GetConfiguredTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfiguredTableAnalysisRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::GetConfiguredTableAnalysisRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfiguredTableAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::GetConfiguredTableAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfiguredTableAssociationAnalysisRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::GetConfiguredTableAssociationAnalysisRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIdMappingTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::GetIdMappingTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIdNamespaceAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::GetIdNamespaceAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::GetMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPrivacyBudgetTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::GetPrivacyBudgetTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProtectedJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::GetProtectedJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProtectedQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::GetProtectedQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::GetSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSchemaAnalysisRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::GetSchemaAnalysisRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAnalysisTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::ListAnalysisTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCollaborationAnalysisTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::ListCollaborationAnalysisTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCollaborationConfiguredAudienceModelAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::ListCollaborationConfiguredAudienceModelAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCollaborationIdNamespaceAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::ListCollaborationIdNamespaceAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCollaborationPrivacyBudgets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::ListCollaborationPrivacyBudgets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCollaborationPrivacyBudgetTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::ListCollaborationPrivacyBudgetTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCollaborations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::ListCollaborations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfiguredAudienceModelAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::ListConfiguredAudienceModelAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfiguredTableAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::ListConfiguredTableAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfiguredTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::ListConfiguredTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIdMappingTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::ListIdMappingTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIdNamespaceAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::ListIdNamespaceAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::ListMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMemberships {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::ListMemberships', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPrivacyBudgets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::ListPrivacyBudgets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPrivacyBudgetTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::ListPrivacyBudgetTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProtectedJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::ListProtectedJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProtectedQueries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::ListProtectedQueries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSchemas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::ListSchemas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PopulateIdMappingTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::PopulateIdMappingTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PreviewPrivacyImpact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::PreviewPrivacyImpact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartProtectedJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::StartProtectedJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartProtectedQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::StartProtectedQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAnalysisTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::UpdateAnalysisTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCollaboration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::UpdateCollaboration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfiguredAudienceModelAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::UpdateConfiguredAudienceModelAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfiguredTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::UpdateConfiguredTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfiguredTableAnalysisRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::UpdateConfiguredTableAnalysisRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfiguredTableAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::UpdateConfiguredTableAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfiguredTableAssociationAnalysisRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::UpdateConfiguredTableAssociationAnalysisRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIdMappingTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::UpdateIdMappingTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIdNamespaceAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::UpdateIdNamespaceAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::UpdateMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePrivacyBudgetTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::UpdatePrivacyBudgetTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProtectedJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::UpdateProtectedJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProtectedQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRooms::UpdateProtectedQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAnalysisTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAnalysisTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAnalysisTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->analysisTemplateSummaries }, @{ $next_result->analysisTemplateSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'analysisTemplateSummaries') foreach (@{ $result->analysisTemplateSummaries });
        $result = $self->ListAnalysisTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'analysisTemplateSummaries') foreach (@{ $result->analysisTemplateSummaries });
    }

    return undef
  }
  sub ListAllCollaborationAnalysisTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCollaborationAnalysisTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCollaborationAnalysisTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->collaborationAnalysisTemplateSummaries }, @{ $next_result->collaborationAnalysisTemplateSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'collaborationAnalysisTemplateSummaries') foreach (@{ $result->collaborationAnalysisTemplateSummaries });
        $result = $self->ListCollaborationAnalysisTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'collaborationAnalysisTemplateSummaries') foreach (@{ $result->collaborationAnalysisTemplateSummaries });
    }

    return undef
  }
  sub ListAllCollaborationConfiguredAudienceModelAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCollaborationConfiguredAudienceModelAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCollaborationConfiguredAudienceModelAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->collaborationConfiguredAudienceModelAssociationSummaries }, @{ $next_result->collaborationConfiguredAudienceModelAssociationSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'collaborationConfiguredAudienceModelAssociationSummaries') foreach (@{ $result->collaborationConfiguredAudienceModelAssociationSummaries });
        $result = $self->ListCollaborationConfiguredAudienceModelAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'collaborationConfiguredAudienceModelAssociationSummaries') foreach (@{ $result->collaborationConfiguredAudienceModelAssociationSummaries });
    }

    return undef
  }
  sub ListAllCollaborationIdNamespaceAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCollaborationIdNamespaceAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCollaborationIdNamespaceAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->collaborationIdNamespaceAssociationSummaries }, @{ $next_result->collaborationIdNamespaceAssociationSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'collaborationIdNamespaceAssociationSummaries') foreach (@{ $result->collaborationIdNamespaceAssociationSummaries });
        $result = $self->ListCollaborationIdNamespaceAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'collaborationIdNamespaceAssociationSummaries') foreach (@{ $result->collaborationIdNamespaceAssociationSummaries });
    }

    return undef
  }
  sub ListAllCollaborationPrivacyBudgets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCollaborationPrivacyBudgets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCollaborationPrivacyBudgets(@_, nextToken => $next_result->nextToken);
        push @{ $result->collaborationPrivacyBudgetSummaries }, @{ $next_result->collaborationPrivacyBudgetSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'collaborationPrivacyBudgetSummaries') foreach (@{ $result->collaborationPrivacyBudgetSummaries });
        $result = $self->ListCollaborationPrivacyBudgets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'collaborationPrivacyBudgetSummaries') foreach (@{ $result->collaborationPrivacyBudgetSummaries });
    }

    return undef
  }
  sub ListAllCollaborationPrivacyBudgetTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCollaborationPrivacyBudgetTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCollaborationPrivacyBudgetTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->collaborationPrivacyBudgetTemplateSummaries }, @{ $next_result->collaborationPrivacyBudgetTemplateSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'collaborationPrivacyBudgetTemplateSummaries') foreach (@{ $result->collaborationPrivacyBudgetTemplateSummaries });
        $result = $self->ListCollaborationPrivacyBudgetTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'collaborationPrivacyBudgetTemplateSummaries') foreach (@{ $result->collaborationPrivacyBudgetTemplateSummaries });
    }

    return undef
  }
  sub ListAllCollaborations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCollaborations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCollaborations(@_, nextToken => $next_result->nextToken);
        push @{ $result->collaborationList }, @{ $next_result->collaborationList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'collaborationList') foreach (@{ $result->collaborationList });
        $result = $self->ListCollaborations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'collaborationList') foreach (@{ $result->collaborationList });
    }

    return undef
  }
  sub ListAllConfiguredAudienceModelAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConfiguredAudienceModelAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListConfiguredAudienceModelAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->configuredAudienceModelAssociationSummaries }, @{ $next_result->configuredAudienceModelAssociationSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'configuredAudienceModelAssociationSummaries') foreach (@{ $result->configuredAudienceModelAssociationSummaries });
        $result = $self->ListConfiguredAudienceModelAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'configuredAudienceModelAssociationSummaries') foreach (@{ $result->configuredAudienceModelAssociationSummaries });
    }

    return undef
  }
  sub ListAllConfiguredTableAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConfiguredTableAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListConfiguredTableAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->configuredTableAssociationSummaries }, @{ $next_result->configuredTableAssociationSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'configuredTableAssociationSummaries') foreach (@{ $result->configuredTableAssociationSummaries });
        $result = $self->ListConfiguredTableAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'configuredTableAssociationSummaries') foreach (@{ $result->configuredTableAssociationSummaries });
    }

    return undef
  }
  sub ListAllConfiguredTables {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConfiguredTables(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListConfiguredTables(@_, nextToken => $next_result->nextToken);
        push @{ $result->configuredTableSummaries }, @{ $next_result->configuredTableSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'configuredTableSummaries') foreach (@{ $result->configuredTableSummaries });
        $result = $self->ListConfiguredTables(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'configuredTableSummaries') foreach (@{ $result->configuredTableSummaries });
    }

    return undef
  }
  sub ListAllIdMappingTables {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIdMappingTables(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListIdMappingTables(@_, nextToken => $next_result->nextToken);
        push @{ $result->idMappingTableSummaries }, @{ $next_result->idMappingTableSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'idMappingTableSummaries') foreach (@{ $result->idMappingTableSummaries });
        $result = $self->ListIdMappingTables(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'idMappingTableSummaries') foreach (@{ $result->idMappingTableSummaries });
    }

    return undef
  }
  sub ListAllIdNamespaceAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIdNamespaceAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListIdNamespaceAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->idNamespaceAssociationSummaries }, @{ $next_result->idNamespaceAssociationSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'idNamespaceAssociationSummaries') foreach (@{ $result->idNamespaceAssociationSummaries });
        $result = $self->ListIdNamespaceAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'idNamespaceAssociationSummaries') foreach (@{ $result->idNamespaceAssociationSummaries });
    }

    return undef
  }
  sub ListAllMembers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMembers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMembers(@_, nextToken => $next_result->nextToken);
        push @{ $result->memberSummaries }, @{ $next_result->memberSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'memberSummaries') foreach (@{ $result->memberSummaries });
        $result = $self->ListMembers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'memberSummaries') foreach (@{ $result->memberSummaries });
    }

    return undef
  }
  sub ListAllMemberships {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMemberships(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMemberships(@_, nextToken => $next_result->nextToken);
        push @{ $result->membershipSummaries }, @{ $next_result->membershipSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'membershipSummaries') foreach (@{ $result->membershipSummaries });
        $result = $self->ListMemberships(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'membershipSummaries') foreach (@{ $result->membershipSummaries });
    }

    return undef
  }
  sub ListAllPrivacyBudgets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPrivacyBudgets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPrivacyBudgets(@_, nextToken => $next_result->nextToken);
        push @{ $result->privacyBudgetSummaries }, @{ $next_result->privacyBudgetSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'privacyBudgetSummaries') foreach (@{ $result->privacyBudgetSummaries });
        $result = $self->ListPrivacyBudgets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'privacyBudgetSummaries') foreach (@{ $result->privacyBudgetSummaries });
    }

    return undef
  }
  sub ListAllPrivacyBudgetTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPrivacyBudgetTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPrivacyBudgetTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->privacyBudgetTemplateSummaries }, @{ $next_result->privacyBudgetTemplateSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'privacyBudgetTemplateSummaries') foreach (@{ $result->privacyBudgetTemplateSummaries });
        $result = $self->ListPrivacyBudgetTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'privacyBudgetTemplateSummaries') foreach (@{ $result->privacyBudgetTemplateSummaries });
    }

    return undef
  }
  sub ListAllProtectedJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProtectedJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListProtectedJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->protectedJobs }, @{ $next_result->protectedJobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'protectedJobs') foreach (@{ $result->protectedJobs });
        $result = $self->ListProtectedJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'protectedJobs') foreach (@{ $result->protectedJobs });
    }

    return undef
  }
  sub ListAllProtectedQueries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProtectedQueries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListProtectedQueries(@_, nextToken => $next_result->nextToken);
        push @{ $result->protectedQueries }, @{ $next_result->protectedQueries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'protectedQueries') foreach (@{ $result->protectedQueries });
        $result = $self->ListProtectedQueries(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'protectedQueries') foreach (@{ $result->protectedQueries });
    }

    return undef
  }
  sub ListAllSchemas {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSchemas(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSchemas(@_, nextToken => $next_result->nextToken);
        push @{ $result->schemaSummaries }, @{ $next_result->schemaSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'schemaSummaries') foreach (@{ $result->schemaSummaries });
        $result = $self->ListSchemas(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'schemaSummaries') foreach (@{ $result->schemaSummaries });
    }

    return undef
  }


  sub operations { qw/BatchGetCollaborationAnalysisTemplate BatchGetSchema BatchGetSchemaAnalysisRule CreateAnalysisTemplate CreateCollaboration CreateConfiguredAudienceModelAssociation CreateConfiguredTable CreateConfiguredTableAnalysisRule CreateConfiguredTableAssociation CreateConfiguredTableAssociationAnalysisRule CreateIdMappingTable CreateIdNamespaceAssociation CreateMembership CreatePrivacyBudgetTemplate DeleteAnalysisTemplate DeleteCollaboration DeleteConfiguredAudienceModelAssociation DeleteConfiguredTable DeleteConfiguredTableAnalysisRule DeleteConfiguredTableAssociation DeleteConfiguredTableAssociationAnalysisRule DeleteIdMappingTable DeleteIdNamespaceAssociation DeleteMember DeleteMembership DeletePrivacyBudgetTemplate GetAnalysisTemplate GetCollaboration GetCollaborationAnalysisTemplate GetCollaborationConfiguredAudienceModelAssociation GetCollaborationIdNamespaceAssociation GetCollaborationPrivacyBudgetTemplate GetConfiguredAudienceModelAssociation GetConfiguredTable GetConfiguredTableAnalysisRule GetConfiguredTableAssociation GetConfiguredTableAssociationAnalysisRule GetIdMappingTable GetIdNamespaceAssociation GetMembership GetPrivacyBudgetTemplate GetProtectedJob GetProtectedQuery GetSchema GetSchemaAnalysisRule ListAnalysisTemplates ListCollaborationAnalysisTemplates ListCollaborationConfiguredAudienceModelAssociations ListCollaborationIdNamespaceAssociations ListCollaborationPrivacyBudgets ListCollaborationPrivacyBudgetTemplates ListCollaborations ListConfiguredAudienceModelAssociations ListConfiguredTableAssociations ListConfiguredTables ListIdMappingTables ListIdNamespaceAssociations ListMembers ListMemberships ListPrivacyBudgets ListPrivacyBudgetTemplates ListProtectedJobs ListProtectedQueries ListSchemas ListTagsForResource PopulateIdMappingTable PreviewPrivacyImpact StartProtectedJob StartProtectedQuery TagResource UntagResource UpdateAnalysisTemplate UpdateCollaboration UpdateConfiguredAudienceModelAssociation UpdateConfiguredTable UpdateConfiguredTableAnalysisRule UpdateConfiguredTableAssociation UpdateConfiguredTableAssociationAnalysisRule UpdateIdMappingTable UpdateIdNamespaceAssociation UpdateMembership UpdatePrivacyBudgetTemplate UpdateProtectedJob UpdateProtectedQuery / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms - Perl Interface to AWS AWS Clean Rooms Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CleanRooms');
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

Welcome to the I<Clean Rooms API Reference>.

Clean Rooms is an Amazon Web Services service that helps multiple
parties to join their data together in a secure collaboration
workspace. In the collaboration, members who can run queries and jobs
and receive results can get insights into the collective datasets
without either party getting access to the other party's raw data.

To learn more about Clean Rooms concepts, procedures, and best
practices, see the Clean Rooms User Guide
(https://docs.aws.amazon.com/clean-rooms/latest/userguide/what-is.html).

To learn more about SQL commands, functions, and conditions supported
in Clean Rooms, see the Clean Rooms SQL Reference
(https://docs.aws.amazon.com/clean-rooms/latest/sql-reference/sql-reference.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17>


=head1 METHODS

=head2 BatchGetCollaborationAnalysisTemplate

=over

=item AnalysisTemplateArns => ArrayRef[Str|Undef]

=item CollaborationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::BatchGetCollaborationAnalysisTemplate>

Returns: a L<Paws::CleanRooms::BatchGetCollaborationAnalysisTemplateOutput> instance

Retrieves multiple analysis templates within a collaboration by their
Amazon Resource Names (ARNs).


=head2 BatchGetSchema

=over

=item CollaborationIdentifier => Str

=item Names => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CleanRooms::BatchGetSchema>

Returns: a L<Paws::CleanRooms::BatchGetSchemaOutput> instance

Retrieves multiple schemas by their identifiers.


=head2 BatchGetSchemaAnalysisRule

=over

=item CollaborationIdentifier => Str

=item SchemaAnalysisRuleRequests => ArrayRef[L<Paws::CleanRooms::SchemaAnalysisRuleRequest>]


=back

Each argument is described in detail in: L<Paws::CleanRooms::BatchGetSchemaAnalysisRule>

Returns: a L<Paws::CleanRooms::BatchGetSchemaAnalysisRuleOutput> instance

Retrieves multiple analysis rule schemas.


=head2 CreateAnalysisTemplate

=over

=item Format => Str

=item MembershipIdentifier => Str

=item Name => Str

=item Source => L<Paws::CleanRooms::AnalysisSource>

=item [AnalysisParameters => ArrayRef[L<Paws::CleanRooms::AnalysisParameter>]]

=item [Description => Str]

=item [Schema => L<Paws::CleanRooms::AnalysisSchema>]

=item [Tags => L<Paws::CleanRooms::TagMap>]


=back

Each argument is described in detail in: L<Paws::CleanRooms::CreateAnalysisTemplate>

Returns: a L<Paws::CleanRooms::CreateAnalysisTemplateOutput> instance

Creates a new analysis template.


=head2 CreateCollaboration

=over

=item CreatorDisplayName => Str

=item CreatorMemberAbilities => ArrayRef[Str|Undef]

=item Description => Str

=item Members => ArrayRef[L<Paws::CleanRooms::MemberSpecification>]

=item Name => Str

=item QueryLogStatus => Str

=item [AnalyticsEngine => Str]

=item [CreatorMLMemberAbilities => L<Paws::CleanRooms::MLMemberAbilities>]

=item [CreatorPaymentConfiguration => L<Paws::CleanRooms::PaymentConfiguration>]

=item [DataEncryptionMetadata => L<Paws::CleanRooms::DataEncryptionMetadata>]

=item [JobLogStatus => Str]

=item [Tags => L<Paws::CleanRooms::TagMap>]


=back

Each argument is described in detail in: L<Paws::CleanRooms::CreateCollaboration>

Returns: a L<Paws::CleanRooms::CreateCollaborationOutput> instance

Creates a new collaboration.


=head2 CreateConfiguredAudienceModelAssociation

=over

=item ConfiguredAudienceModelArn => Str

=item ConfiguredAudienceModelAssociationName => Str

=item ManageResourcePolicies => Bool

=item MembershipIdentifier => Str

=item [Description => Str]

=item [Tags => L<Paws::CleanRooms::TagMap>]


=back

Each argument is described in detail in: L<Paws::CleanRooms::CreateConfiguredAudienceModelAssociation>

Returns: a L<Paws::CleanRooms::CreateConfiguredAudienceModelAssociationOutput> instance

Provides the details necessary to create a configured audience model
association.


=head2 CreateConfiguredTable

=over

=item AllowedColumns => ArrayRef[Str|Undef]

=item AnalysisMethod => Str

=item Name => Str

=item TableReference => L<Paws::CleanRooms::TableReference>

=item [Description => Str]

=item [SelectedAnalysisMethods => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::CleanRooms::TagMap>]


=back

Each argument is described in detail in: L<Paws::CleanRooms::CreateConfiguredTable>

Returns: a L<Paws::CleanRooms::CreateConfiguredTableOutput> instance

Creates a new configured table resource.


=head2 CreateConfiguredTableAnalysisRule

=over

=item AnalysisRulePolicy => L<Paws::CleanRooms::ConfiguredTableAnalysisRulePolicy>

=item AnalysisRuleType => Str

=item ConfiguredTableIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::CreateConfiguredTableAnalysisRule>

Returns: a L<Paws::CleanRooms::CreateConfiguredTableAnalysisRuleOutput> instance

Creates a new analysis rule for a configured table. Currently, only one
analysis rule can be created for a given configured table.


=head2 CreateConfiguredTableAssociation

=over

=item ConfiguredTableIdentifier => Str

=item MembershipIdentifier => Str

=item Name => Str

=item RoleArn => Str

=item [Description => Str]

=item [Tags => L<Paws::CleanRooms::TagMap>]


=back

Each argument is described in detail in: L<Paws::CleanRooms::CreateConfiguredTableAssociation>

Returns: a L<Paws::CleanRooms::CreateConfiguredTableAssociationOutput> instance

Creates a configured table association. A configured table association
links a configured table with a collaboration.


=head2 CreateConfiguredTableAssociationAnalysisRule

=over

=item AnalysisRulePolicy => L<Paws::CleanRooms::ConfiguredTableAssociationAnalysisRulePolicy>

=item AnalysisRuleType => Str

=item ConfiguredTableAssociationIdentifier => Str

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::CreateConfiguredTableAssociationAnalysisRule>

Returns: a L<Paws::CleanRooms::CreateConfiguredTableAssociationAnalysisRuleOutput> instance

Creates a new analysis rule for an associated configured table.


=head2 CreateIdMappingTable

=over

=item InputReferenceConfig => L<Paws::CleanRooms::IdMappingTableInputReferenceConfig>

=item MembershipIdentifier => Str

=item Name => Str

=item [Description => Str]

=item [KmsKeyArn => Str]

=item [Tags => L<Paws::CleanRooms::TagMap>]


=back

Each argument is described in detail in: L<Paws::CleanRooms::CreateIdMappingTable>

Returns: a L<Paws::CleanRooms::CreateIdMappingTableOutput> instance

Creates an ID mapping table.


=head2 CreateIdNamespaceAssociation

=over

=item InputReferenceConfig => L<Paws::CleanRooms::IdNamespaceAssociationInputReferenceConfig>

=item MembershipIdentifier => Str

=item Name => Str

=item [Description => Str]

=item [IdMappingConfig => L<Paws::CleanRooms::IdMappingConfig>]

=item [Tags => L<Paws::CleanRooms::TagMap>]


=back

Each argument is described in detail in: L<Paws::CleanRooms::CreateIdNamespaceAssociation>

Returns: a L<Paws::CleanRooms::CreateIdNamespaceAssociationOutput> instance

Creates an ID namespace association.


=head2 CreateMembership

=over

=item CollaborationIdentifier => Str

=item QueryLogStatus => Str

=item [DefaultJobResultConfiguration => L<Paws::CleanRooms::MembershipProtectedJobResultConfiguration>]

=item [DefaultResultConfiguration => L<Paws::CleanRooms::MembershipProtectedQueryResultConfiguration>]

=item [JobLogStatus => Str]

=item [PaymentConfiguration => L<Paws::CleanRooms::MembershipPaymentConfiguration>]

=item [Tags => L<Paws::CleanRooms::TagMap>]


=back

Each argument is described in detail in: L<Paws::CleanRooms::CreateMembership>

Returns: a L<Paws::CleanRooms::CreateMembershipOutput> instance

Creates a membership for a specific collaboration identifier and joins
the collaboration.


=head2 CreatePrivacyBudgetTemplate

=over

=item AutoRefresh => Str

=item MembershipIdentifier => Str

=item Parameters => L<Paws::CleanRooms::PrivacyBudgetTemplateParametersInput>

=item PrivacyBudgetType => Str

=item [Tags => L<Paws::CleanRooms::TagMap>]


=back

Each argument is described in detail in: L<Paws::CleanRooms::CreatePrivacyBudgetTemplate>

Returns: a L<Paws::CleanRooms::CreatePrivacyBudgetTemplateOutput> instance

Creates a privacy budget template for a specified membership. Each
membership can have only one privacy budget template, but it can be
deleted and recreated. If you need to change the privacy budget
template for a membership, use the UpdatePrivacyBudgetTemplate
operation.


=head2 DeleteAnalysisTemplate

=over

=item AnalysisTemplateIdentifier => Str

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::DeleteAnalysisTemplate>

Returns: a L<Paws::CleanRooms::DeleteAnalysisTemplateOutput> instance

Deletes an analysis template.


=head2 DeleteCollaboration

=over

=item CollaborationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::DeleteCollaboration>

Returns: a L<Paws::CleanRooms::DeleteCollaborationOutput> instance

Deletes a collaboration. It can only be called by the collaboration
owner.


=head2 DeleteConfiguredAudienceModelAssociation

=over

=item ConfiguredAudienceModelAssociationIdentifier => Str

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::DeleteConfiguredAudienceModelAssociation>

Returns: a L<Paws::CleanRooms::DeleteConfiguredAudienceModelAssociationOutput> instance

Provides the information necessary to delete a configured audience
model association.


=head2 DeleteConfiguredTable

=over

=item ConfiguredTableIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::DeleteConfiguredTable>

Returns: a L<Paws::CleanRooms::DeleteConfiguredTableOutput> instance

Deletes a configured table.


=head2 DeleteConfiguredTableAnalysisRule

=over

=item AnalysisRuleType => Str

=item ConfiguredTableIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::DeleteConfiguredTableAnalysisRule>

Returns: a L<Paws::CleanRooms::DeleteConfiguredTableAnalysisRuleOutput> instance

Deletes a configured table analysis rule.


=head2 DeleteConfiguredTableAssociation

=over

=item ConfiguredTableAssociationIdentifier => Str

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::DeleteConfiguredTableAssociation>

Returns: a L<Paws::CleanRooms::DeleteConfiguredTableAssociationOutput> instance

Deletes a configured table association.


=head2 DeleteConfiguredTableAssociationAnalysisRule

=over

=item AnalysisRuleType => Str

=item ConfiguredTableAssociationIdentifier => Str

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::DeleteConfiguredTableAssociationAnalysisRule>

Returns: a L<Paws::CleanRooms::DeleteConfiguredTableAssociationAnalysisRuleOutput> instance

Deletes an analysis rule for a configured table association.


=head2 DeleteIdMappingTable

=over

=item IdMappingTableIdentifier => Str

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::DeleteIdMappingTable>

Returns: a L<Paws::CleanRooms::DeleteIdMappingTableOutput> instance

Deletes an ID mapping table.


=head2 DeleteIdNamespaceAssociation

=over

=item IdNamespaceAssociationIdentifier => Str

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::DeleteIdNamespaceAssociation>

Returns: a L<Paws::CleanRooms::DeleteIdNamespaceAssociationOutput> instance

Deletes an ID namespace association.


=head2 DeleteMember

=over

=item AccountId => Str

=item CollaborationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::DeleteMember>

Returns: a L<Paws::CleanRooms::DeleteMemberOutput> instance

Removes the specified member from a collaboration. The removed member
is placed in the Removed status and can't interact with the
collaboration. The removed member's data is inaccessible to active
members of the collaboration.


=head2 DeleteMembership

=over

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::DeleteMembership>

Returns: a L<Paws::CleanRooms::DeleteMembershipOutput> instance

Deletes a specified membership. All resources under a membership must
be deleted.


=head2 DeletePrivacyBudgetTemplate

=over

=item MembershipIdentifier => Str

=item PrivacyBudgetTemplateIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::DeletePrivacyBudgetTemplate>

Returns: a L<Paws::CleanRooms::DeletePrivacyBudgetTemplateOutput> instance

Deletes a privacy budget template for a specified membership.


=head2 GetAnalysisTemplate

=over

=item AnalysisTemplateIdentifier => Str

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::GetAnalysisTemplate>

Returns: a L<Paws::CleanRooms::GetAnalysisTemplateOutput> instance

Retrieves an analysis template.


=head2 GetCollaboration

=over

=item CollaborationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::GetCollaboration>

Returns: a L<Paws::CleanRooms::GetCollaborationOutput> instance

Returns metadata about a collaboration.


=head2 GetCollaborationAnalysisTemplate

=over

=item AnalysisTemplateArn => Str

=item CollaborationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::GetCollaborationAnalysisTemplate>

Returns: a L<Paws::CleanRooms::GetCollaborationAnalysisTemplateOutput> instance

Retrieves an analysis template within a collaboration.


=head2 GetCollaborationConfiguredAudienceModelAssociation

=over

=item CollaborationIdentifier => Str

=item ConfiguredAudienceModelAssociationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::GetCollaborationConfiguredAudienceModelAssociation>

Returns: a L<Paws::CleanRooms::GetCollaborationConfiguredAudienceModelAssociationOutput> instance

Retrieves a configured audience model association within a
collaboration.


=head2 GetCollaborationIdNamespaceAssociation

=over

=item CollaborationIdentifier => Str

=item IdNamespaceAssociationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::GetCollaborationIdNamespaceAssociation>

Returns: a L<Paws::CleanRooms::GetCollaborationIdNamespaceAssociationOutput> instance

Retrieves an ID namespace association from a specific collaboration.


=head2 GetCollaborationPrivacyBudgetTemplate

=over

=item CollaborationIdentifier => Str

=item PrivacyBudgetTemplateIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::GetCollaborationPrivacyBudgetTemplate>

Returns: a L<Paws::CleanRooms::GetCollaborationPrivacyBudgetTemplateOutput> instance

Returns details about a specified privacy budget template.


=head2 GetConfiguredAudienceModelAssociation

=over

=item ConfiguredAudienceModelAssociationIdentifier => Str

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::GetConfiguredAudienceModelAssociation>

Returns: a L<Paws::CleanRooms::GetConfiguredAudienceModelAssociationOutput> instance

Returns information about a configured audience model association.


=head2 GetConfiguredTable

=over

=item ConfiguredTableIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::GetConfiguredTable>

Returns: a L<Paws::CleanRooms::GetConfiguredTableOutput> instance

Retrieves a configured table.


=head2 GetConfiguredTableAnalysisRule

=over

=item AnalysisRuleType => Str

=item ConfiguredTableIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::GetConfiguredTableAnalysisRule>

Returns: a L<Paws::CleanRooms::GetConfiguredTableAnalysisRuleOutput> instance

Retrieves a configured table analysis rule.


=head2 GetConfiguredTableAssociation

=over

=item ConfiguredTableAssociationIdentifier => Str

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::GetConfiguredTableAssociation>

Returns: a L<Paws::CleanRooms::GetConfiguredTableAssociationOutput> instance

Retrieves a configured table association.


=head2 GetConfiguredTableAssociationAnalysisRule

=over

=item AnalysisRuleType => Str

=item ConfiguredTableAssociationIdentifier => Str

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::GetConfiguredTableAssociationAnalysisRule>

Returns: a L<Paws::CleanRooms::GetConfiguredTableAssociationAnalysisRuleOutput> instance

Retrieves the analysis rule for a configured table association.


=head2 GetIdMappingTable

=over

=item IdMappingTableIdentifier => Str

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::GetIdMappingTable>

Returns: a L<Paws::CleanRooms::GetIdMappingTableOutput> instance

Retrieves an ID mapping table.


=head2 GetIdNamespaceAssociation

=over

=item IdNamespaceAssociationIdentifier => Str

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::GetIdNamespaceAssociation>

Returns: a L<Paws::CleanRooms::GetIdNamespaceAssociationOutput> instance

Retrieves an ID namespace association.


=head2 GetMembership

=over

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::GetMembership>

Returns: a L<Paws::CleanRooms::GetMembershipOutput> instance

Retrieves a specified membership for an identifier.


=head2 GetPrivacyBudgetTemplate

=over

=item MembershipIdentifier => Str

=item PrivacyBudgetTemplateIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::GetPrivacyBudgetTemplate>

Returns: a L<Paws::CleanRooms::GetPrivacyBudgetTemplateOutput> instance

Returns details for a specified privacy budget template.


=head2 GetProtectedJob

=over

=item MembershipIdentifier => Str

=item ProtectedJobIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::GetProtectedJob>

Returns: a L<Paws::CleanRooms::GetProtectedJobOutput> instance

Returns job processing metadata.


=head2 GetProtectedQuery

=over

=item MembershipIdentifier => Str

=item ProtectedQueryIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::GetProtectedQuery>

Returns: a L<Paws::CleanRooms::GetProtectedQueryOutput> instance

Returns query processing metadata.


=head2 GetSchema

=over

=item CollaborationIdentifier => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::GetSchema>

Returns: a L<Paws::CleanRooms::GetSchemaOutput> instance

Retrieves the schema for a relation within a collaboration.


=head2 GetSchemaAnalysisRule

=over

=item CollaborationIdentifier => Str

=item Name => Str

=item Type => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::GetSchemaAnalysisRule>

Returns: a L<Paws::CleanRooms::GetSchemaAnalysisRuleOutput> instance

Retrieves a schema analysis rule.


=head2 ListAnalysisTemplates

=over

=item MembershipIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::ListAnalysisTemplates>

Returns: a L<Paws::CleanRooms::ListAnalysisTemplatesOutput> instance

Lists analysis templates that the caller owns.


=head2 ListCollaborationAnalysisTemplates

=over

=item CollaborationIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::ListCollaborationAnalysisTemplates>

Returns: a L<Paws::CleanRooms::ListCollaborationAnalysisTemplatesOutput> instance

Lists analysis templates within a collaboration.


=head2 ListCollaborationConfiguredAudienceModelAssociations

=over

=item CollaborationIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::ListCollaborationConfiguredAudienceModelAssociations>

Returns: a L<Paws::CleanRooms::ListCollaborationConfiguredAudienceModelAssociationsOutput> instance

Lists configured audience model associations within a collaboration.


=head2 ListCollaborationIdNamespaceAssociations

=over

=item CollaborationIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::ListCollaborationIdNamespaceAssociations>

Returns: a L<Paws::CleanRooms::ListCollaborationIdNamespaceAssociationsOutput> instance

Returns a list of the ID namespace associations in a collaboration.


=head2 ListCollaborationPrivacyBudgets

=over

=item CollaborationIdentifier => Str

=item PrivacyBudgetType => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::ListCollaborationPrivacyBudgets>

Returns: a L<Paws::CleanRooms::ListCollaborationPrivacyBudgetsOutput> instance

Returns an array that summarizes each privacy budget in a specified
collaboration. The summary includes the collaboration ARN, creation
time, creating account, and privacy budget details.


=head2 ListCollaborationPrivacyBudgetTemplates

=over

=item CollaborationIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::ListCollaborationPrivacyBudgetTemplates>

Returns: a L<Paws::CleanRooms::ListCollaborationPrivacyBudgetTemplatesOutput> instance

Returns an array that summarizes each privacy budget template in a
specified collaboration.


=head2 ListCollaborations

=over

=item [MaxResults => Int]

=item [MemberStatus => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::ListCollaborations>

Returns: a L<Paws::CleanRooms::ListCollaborationsOutput> instance

Lists collaborations the caller owns, is active in, or has been invited
to.


=head2 ListConfiguredAudienceModelAssociations

=over

=item MembershipIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::ListConfiguredAudienceModelAssociations>

Returns: a L<Paws::CleanRooms::ListConfiguredAudienceModelAssociationsOutput> instance

Lists information about requested configured audience model
associations.


=head2 ListConfiguredTableAssociations

=over

=item MembershipIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::ListConfiguredTableAssociations>

Returns: a L<Paws::CleanRooms::ListConfiguredTableAssociationsOutput> instance

Lists configured table associations for a membership.


=head2 ListConfiguredTables

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::ListConfiguredTables>

Returns: a L<Paws::CleanRooms::ListConfiguredTablesOutput> instance

Lists configured tables.


=head2 ListIdMappingTables

=over

=item MembershipIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::ListIdMappingTables>

Returns: a L<Paws::CleanRooms::ListIdMappingTablesOutput> instance

Returns a list of ID mapping tables.


=head2 ListIdNamespaceAssociations

=over

=item MembershipIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::ListIdNamespaceAssociations>

Returns: a L<Paws::CleanRooms::ListIdNamespaceAssociationsOutput> instance

Returns a list of ID namespace associations.


=head2 ListMembers

=over

=item CollaborationIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::ListMembers>

Returns: a L<Paws::CleanRooms::ListMembersOutput> instance

Lists all members within a collaboration.


=head2 ListMemberships

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::ListMemberships>

Returns: a L<Paws::CleanRooms::ListMembershipsOutput> instance

Lists all memberships resources within the caller's account.


=head2 ListPrivacyBudgets

=over

=item MembershipIdentifier => Str

=item PrivacyBudgetType => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::ListPrivacyBudgets>

Returns: a L<Paws::CleanRooms::ListPrivacyBudgetsOutput> instance

Returns detailed information about the privacy budgets in a specified
membership.


=head2 ListPrivacyBudgetTemplates

=over

=item MembershipIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::ListPrivacyBudgetTemplates>

Returns: a L<Paws::CleanRooms::ListPrivacyBudgetTemplatesOutput> instance

Returns detailed information about the privacy budget templates in a
specified membership.


=head2 ListProtectedJobs

=over

=item MembershipIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::ListProtectedJobs>

Returns: a L<Paws::CleanRooms::ListProtectedJobsOutput> instance

Lists protected jobs, sorted by most recent job.


=head2 ListProtectedQueries

=over

=item MembershipIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::ListProtectedQueries>

Returns: a L<Paws::CleanRooms::ListProtectedQueriesOutput> instance

Lists protected queries, sorted by the most recent query.


=head2 ListSchemas

=over

=item CollaborationIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SchemaType => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::ListSchemas>

Returns: a L<Paws::CleanRooms::ListSchemasOutput> instance

Lists the schemas for relations within a collaboration.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::ListTagsForResource>

Returns: a L<Paws::CleanRooms::ListTagsForResourceOutput> instance

Lists all of the tags that have been added to a resource.


=head2 PopulateIdMappingTable

=over

=item IdMappingTableIdentifier => Str

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::PopulateIdMappingTable>

Returns: a L<Paws::CleanRooms::PopulateIdMappingTableOutput> instance

Defines the information that's necessary to populate an ID mapping
table.


=head2 PreviewPrivacyImpact

=over

=item MembershipIdentifier => Str

=item Parameters => L<Paws::CleanRooms::PreviewPrivacyImpactParametersInput>


=back

Each argument is described in detail in: L<Paws::CleanRooms::PreviewPrivacyImpact>

Returns: a L<Paws::CleanRooms::PreviewPrivacyImpactOutput> instance

An estimate of the number of aggregation functions that the member who
can query can run given epsilon and noise parameters.


=head2 StartProtectedJob

=over

=item JobParameters => L<Paws::CleanRooms::ProtectedJobParameters>

=item MembershipIdentifier => Str

=item Type => Str

=item [ResultConfiguration => L<Paws::CleanRooms::ProtectedJobResultConfigurationInput>]


=back

Each argument is described in detail in: L<Paws::CleanRooms::StartProtectedJob>

Returns: a L<Paws::CleanRooms::StartProtectedJobOutput> instance

Creates a protected job that is started by Clean Rooms.


=head2 StartProtectedQuery

=over

=item MembershipIdentifier => Str

=item SqlParameters => L<Paws::CleanRooms::ProtectedQuerySQLParameters>

=item Type => Str

=item [ComputeConfiguration => L<Paws::CleanRooms::ComputeConfiguration>]

=item [ResultConfiguration => L<Paws::CleanRooms::ProtectedQueryResultConfiguration>]


=back

Each argument is described in detail in: L<Paws::CleanRooms::StartProtectedQuery>

Returns: a L<Paws::CleanRooms::StartProtectedQueryOutput> instance

Creates a protected query that is started by Clean Rooms.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::CleanRooms::TagMap>


=back

Each argument is described in detail in: L<Paws::CleanRooms::TagResource>

Returns: a L<Paws::CleanRooms::TagResourceOutput> instance

Tags a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CleanRooms::UntagResource>

Returns: a L<Paws::CleanRooms::UntagResourceOutput> instance

Removes a tag or list of tags from a resource.


=head2 UpdateAnalysisTemplate

=over

=item AnalysisTemplateIdentifier => Str

=item MembershipIdentifier => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::UpdateAnalysisTemplate>

Returns: a L<Paws::CleanRooms::UpdateAnalysisTemplateOutput> instance

Updates the analysis template metadata.


=head2 UpdateCollaboration

=over

=item CollaborationIdentifier => Str

=item [AnalyticsEngine => Str]

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::UpdateCollaboration>

Returns: a L<Paws::CleanRooms::UpdateCollaborationOutput> instance

Updates collaboration metadata and can only be called by the
collaboration owner.


=head2 UpdateConfiguredAudienceModelAssociation

=over

=item ConfiguredAudienceModelAssociationIdentifier => Str

=item MembershipIdentifier => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::UpdateConfiguredAudienceModelAssociation>

Returns: a L<Paws::CleanRooms::UpdateConfiguredAudienceModelAssociationOutput> instance

Provides the details necessary to update a configured audience model
association.


=head2 UpdateConfiguredTable

=over

=item ConfiguredTableIdentifier => Str

=item [AnalysisMethod => Str]

=item [Description => Str]

=item [Name => Str]

=item [SelectedAnalysisMethods => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CleanRooms::UpdateConfiguredTable>

Returns: a L<Paws::CleanRooms::UpdateConfiguredTableOutput> instance

Updates a configured table.


=head2 UpdateConfiguredTableAnalysisRule

=over

=item AnalysisRulePolicy => L<Paws::CleanRooms::ConfiguredTableAnalysisRulePolicy>

=item AnalysisRuleType => Str

=item ConfiguredTableIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::UpdateConfiguredTableAnalysisRule>

Returns: a L<Paws::CleanRooms::UpdateConfiguredTableAnalysisRuleOutput> instance

Updates a configured table analysis rule.


=head2 UpdateConfiguredTableAssociation

=over

=item ConfiguredTableAssociationIdentifier => Str

=item MembershipIdentifier => Str

=item [Description => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::UpdateConfiguredTableAssociation>

Returns: a L<Paws::CleanRooms::UpdateConfiguredTableAssociationOutput> instance

Updates a configured table association.


=head2 UpdateConfiguredTableAssociationAnalysisRule

=over

=item AnalysisRulePolicy => L<Paws::CleanRooms::ConfiguredTableAssociationAnalysisRulePolicy>

=item AnalysisRuleType => Str

=item ConfiguredTableAssociationIdentifier => Str

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::UpdateConfiguredTableAssociationAnalysisRule>

Returns: a L<Paws::CleanRooms::UpdateConfiguredTableAssociationAnalysisRuleOutput> instance

Updates the analysis rule for a configured table association.


=head2 UpdateIdMappingTable

=over

=item IdMappingTableIdentifier => Str

=item MembershipIdentifier => Str

=item [Description => Str]

=item [KmsKeyArn => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::UpdateIdMappingTable>

Returns: a L<Paws::CleanRooms::UpdateIdMappingTableOutput> instance

Provides the details that are necessary to update an ID mapping table.


=head2 UpdateIdNamespaceAssociation

=over

=item IdNamespaceAssociationIdentifier => Str

=item MembershipIdentifier => Str

=item [Description => Str]

=item [IdMappingConfig => L<Paws::CleanRooms::IdMappingConfig>]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::UpdateIdNamespaceAssociation>

Returns: a L<Paws::CleanRooms::UpdateIdNamespaceAssociationOutput> instance

Provides the details that are necessary to update an ID namespace
association.


=head2 UpdateMembership

=over

=item MembershipIdentifier => Str

=item [DefaultJobResultConfiguration => L<Paws::CleanRooms::MembershipProtectedJobResultConfiguration>]

=item [DefaultResultConfiguration => L<Paws::CleanRooms::MembershipProtectedQueryResultConfiguration>]

=item [JobLogStatus => Str]

=item [QueryLogStatus => Str]


=back

Each argument is described in detail in: L<Paws::CleanRooms::UpdateMembership>

Returns: a L<Paws::CleanRooms::UpdateMembershipOutput> instance

Updates a membership.


=head2 UpdatePrivacyBudgetTemplate

=over

=item MembershipIdentifier => Str

=item PrivacyBudgetTemplateIdentifier => Str

=item PrivacyBudgetType => Str

=item [Parameters => L<Paws::CleanRooms::PrivacyBudgetTemplateUpdateParameters>]


=back

Each argument is described in detail in: L<Paws::CleanRooms::UpdatePrivacyBudgetTemplate>

Returns: a L<Paws::CleanRooms::UpdatePrivacyBudgetTemplateOutput> instance

Updates the privacy budget template for the specified membership.


=head2 UpdateProtectedJob

=over

=item MembershipIdentifier => Str

=item ProtectedJobIdentifier => Str

=item TargetStatus => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::UpdateProtectedJob>

Returns: a L<Paws::CleanRooms::UpdateProtectedJobOutput> instance

Updates the processing of a currently running job.


=head2 UpdateProtectedQuery

=over

=item MembershipIdentifier => Str

=item ProtectedQueryIdentifier => Str

=item TargetStatus => Str


=back

Each argument is described in detail in: L<Paws::CleanRooms::UpdateProtectedQuery>

Returns: a L<Paws::CleanRooms::UpdateProtectedQueryOutput> instance

Updates the processing of a currently running query.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAnalysisTemplates(sub { },MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAnalysisTemplates(MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - analysisTemplateSummaries, passing the object as the first parameter, and the string 'analysisTemplateSummaries' as the second parameter 

If not, it will return a a L<Paws::CleanRooms::ListAnalysisTemplatesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCollaborationAnalysisTemplates(sub { },CollaborationIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllCollaborationAnalysisTemplates(CollaborationIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - collaborationAnalysisTemplateSummaries, passing the object as the first parameter, and the string 'collaborationAnalysisTemplateSummaries' as the second parameter 

If not, it will return a a L<Paws::CleanRooms::ListCollaborationAnalysisTemplatesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCollaborationConfiguredAudienceModelAssociations(sub { },CollaborationIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllCollaborationConfiguredAudienceModelAssociations(CollaborationIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - collaborationConfiguredAudienceModelAssociationSummaries, passing the object as the first parameter, and the string 'collaborationConfiguredAudienceModelAssociationSummaries' as the second parameter 

If not, it will return a a L<Paws::CleanRooms::ListCollaborationConfiguredAudienceModelAssociationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCollaborationIdNamespaceAssociations(sub { },CollaborationIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllCollaborationIdNamespaceAssociations(CollaborationIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - collaborationIdNamespaceAssociationSummaries, passing the object as the first parameter, and the string 'collaborationIdNamespaceAssociationSummaries' as the second parameter 

If not, it will return a a L<Paws::CleanRooms::ListCollaborationIdNamespaceAssociationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCollaborationPrivacyBudgets(sub { },CollaborationIdentifier => Str, PrivacyBudgetType => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllCollaborationPrivacyBudgets(CollaborationIdentifier => Str, PrivacyBudgetType => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - collaborationPrivacyBudgetSummaries, passing the object as the first parameter, and the string 'collaborationPrivacyBudgetSummaries' as the second parameter 

If not, it will return a a L<Paws::CleanRooms::ListCollaborationPrivacyBudgetsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCollaborationPrivacyBudgetTemplates(sub { },CollaborationIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllCollaborationPrivacyBudgetTemplates(CollaborationIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - collaborationPrivacyBudgetTemplateSummaries, passing the object as the first parameter, and the string 'collaborationPrivacyBudgetTemplateSummaries' as the second parameter 

If not, it will return a a L<Paws::CleanRooms::ListCollaborationPrivacyBudgetTemplatesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCollaborations(sub { },[MaxResults => Int, MemberStatus => Str, NextToken => Str])

=head2 ListAllCollaborations([MaxResults => Int, MemberStatus => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - collaborationList, passing the object as the first parameter, and the string 'collaborationList' as the second parameter 

If not, it will return a a L<Paws::CleanRooms::ListCollaborationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConfiguredAudienceModelAssociations(sub { },MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllConfiguredAudienceModelAssociations(MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - configuredAudienceModelAssociationSummaries, passing the object as the first parameter, and the string 'configuredAudienceModelAssociationSummaries' as the second parameter 

If not, it will return a a L<Paws::CleanRooms::ListConfiguredAudienceModelAssociationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConfiguredTableAssociations(sub { },MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllConfiguredTableAssociations(MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - configuredTableAssociationSummaries, passing the object as the first parameter, and the string 'configuredTableAssociationSummaries' as the second parameter 

If not, it will return a a L<Paws::CleanRooms::ListConfiguredTableAssociationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConfiguredTables(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllConfiguredTables([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - configuredTableSummaries, passing the object as the first parameter, and the string 'configuredTableSummaries' as the second parameter 

If not, it will return a a L<Paws::CleanRooms::ListConfiguredTablesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIdMappingTables(sub { },MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllIdMappingTables(MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - idMappingTableSummaries, passing the object as the first parameter, and the string 'idMappingTableSummaries' as the second parameter 

If not, it will return a a L<Paws::CleanRooms::ListIdMappingTablesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIdNamespaceAssociations(sub { },MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllIdNamespaceAssociations(MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - idNamespaceAssociationSummaries, passing the object as the first parameter, and the string 'idNamespaceAssociationSummaries' as the second parameter 

If not, it will return a a L<Paws::CleanRooms::ListIdNamespaceAssociationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMembers(sub { },CollaborationIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllMembers(CollaborationIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - memberSummaries, passing the object as the first parameter, and the string 'memberSummaries' as the second parameter 

If not, it will return a a L<Paws::CleanRooms::ListMembersOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMemberships(sub { },[MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllMemberships([MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - membershipSummaries, passing the object as the first parameter, and the string 'membershipSummaries' as the second parameter 

If not, it will return a a L<Paws::CleanRooms::ListMembershipsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPrivacyBudgets(sub { },MembershipIdentifier => Str, PrivacyBudgetType => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPrivacyBudgets(MembershipIdentifier => Str, PrivacyBudgetType => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - privacyBudgetSummaries, passing the object as the first parameter, and the string 'privacyBudgetSummaries' as the second parameter 

If not, it will return a a L<Paws::CleanRooms::ListPrivacyBudgetsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPrivacyBudgetTemplates(sub { },MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPrivacyBudgetTemplates(MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - privacyBudgetTemplateSummaries, passing the object as the first parameter, and the string 'privacyBudgetTemplateSummaries' as the second parameter 

If not, it will return a a L<Paws::CleanRooms::ListPrivacyBudgetTemplatesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProtectedJobs(sub { },MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllProtectedJobs(MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - protectedJobs, passing the object as the first parameter, and the string 'protectedJobs' as the second parameter 

If not, it will return a a L<Paws::CleanRooms::ListProtectedJobsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProtectedQueries(sub { },MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllProtectedQueries(MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - protectedQueries, passing the object as the first parameter, and the string 'protectedQueries' as the second parameter 

If not, it will return a a L<Paws::CleanRooms::ListProtectedQueriesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSchemas(sub { },CollaborationIdentifier => Str, [MaxResults => Int, NextToken => Str, SchemaType => Str])

=head2 ListAllSchemas(CollaborationIdentifier => Str, [MaxResults => Int, NextToken => Str, SchemaType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - schemaSummaries, passing the object as the first parameter, and the string 'schemaSummaries' as the second parameter 

If not, it will return a a L<Paws::CleanRooms::ListSchemasOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

