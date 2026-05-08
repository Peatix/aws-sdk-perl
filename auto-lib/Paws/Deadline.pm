package Paws::Deadline;
  use Moose;
  sub service { 'deadline' }
  sub signing_name { 'deadline' }
  sub version { '2023-10-12' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateMemberToFarm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::AssociateMemberToFarm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateMemberToFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::AssociateMemberToFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateMemberToJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::AssociateMemberToJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateMemberToQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::AssociateMemberToQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssumeFleetRoleForRead {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::AssumeFleetRoleForRead', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssumeFleetRoleForWorker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::AssumeFleetRoleForWorker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssumeQueueRoleForRead {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::AssumeQueueRoleForRead', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssumeQueueRoleForUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::AssumeQueueRoleForUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssumeQueueRoleForWorker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::AssumeQueueRoleForWorker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetJobEntity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::BatchGetJobEntity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyJobTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::CopyJobTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBudget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::CreateBudget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFarm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::CreateFarm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::CreateFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::CreateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLicenseEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::CreateLicenseEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLimit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::CreateLimit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::CreateMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::CreateQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateQueueEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::CreateQueueEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateQueueFleetAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::CreateQueueFleetAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateQueueLimitAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::CreateQueueLimitAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStorageProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::CreateStorageProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::CreateWorker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBudget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::DeleteBudget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFarm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::DeleteFarm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::DeleteFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLicenseEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::DeleteLicenseEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLimit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::DeleteLimit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMeteredProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::DeleteMeteredProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::DeleteMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::DeleteQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteQueueEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::DeleteQueueEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteQueueFleetAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::DeleteQueueFleetAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteQueueLimitAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::DeleteQueueLimitAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStorageProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::DeleteStorageProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::DeleteWorker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateMemberFromFarm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::DisassociateMemberFromFarm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateMemberFromFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::DisassociateMemberFromFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateMemberFromJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::DisassociateMemberFromJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateMemberFromQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::DisassociateMemberFromQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBudget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::GetBudget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFarm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::GetFarm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::GetFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::GetJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLicenseEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::GetLicenseEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLimit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::GetLimit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::GetMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::GetQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueueEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::GetQueueEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueueFleetAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::GetQueueFleetAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueueLimitAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::GetQueueLimitAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::GetSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSessionAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::GetSessionAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSessionsStatisticsAggregation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::GetSessionsStatisticsAggregation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStep {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::GetStep', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStorageProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::GetStorageProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStorageProfileForQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::GetStorageProfileForQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::GetTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::GetWorker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAvailableMeteredProducts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListAvailableMeteredProducts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBudgets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListBudgets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFarmMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListFarmMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFarms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListFarms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFleetMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListFleetMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFleets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListFleets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListJobMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobParameterDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListJobParameterDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLicenseEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListLicenseEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLimits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListLimits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMeteredProducts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListMeteredProducts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMonitors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListMonitors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQueueEnvironments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListQueueEnvironments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQueueFleetAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListQueueFleetAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQueueLimitAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListQueueLimitAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQueueMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListQueueMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQueues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListQueues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSessionActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListSessionActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSessionsForWorker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListSessionsForWorker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStepConsumers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListStepConsumers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStepDependencies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListStepDependencies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSteps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListSteps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStorageProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListStorageProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStorageProfilesForQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListStorageProfilesForQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::ListWorkers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutMeteredProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::PutMeteredProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::SearchJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchSteps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::SearchSteps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::SearchTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchWorkers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::SearchWorkers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSessionsStatisticsAggregation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::StartSessionsStatisticsAggregation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBudget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::UpdateBudget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFarm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::UpdateFarm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::UpdateFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::UpdateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLimit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::UpdateLimit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::UpdateMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::UpdateQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQueueEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::UpdateQueueEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQueueFleetAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::UpdateQueueFleetAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQueueLimitAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::UpdateQueueLimitAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::UpdateSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStep {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::UpdateStep', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStorageProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::UpdateStorageProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::UpdateTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::UpdateWorker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkerSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Deadline::UpdateWorkerSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllSessionsStatisticsAggregation {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetSessionsStatisticsAggregation(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetSessionsStatisticsAggregation(@_, nextToken => $next_result->nextToken);
        push @{ $result->statistics }, @{ $next_result->statistics };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'statistics') foreach (@{ $result->statistics });
        $result = $self->GetSessionsStatisticsAggregation(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'statistics') foreach (@{ $result->statistics });
    }

    return undef
  }
  sub ListAllAvailableMeteredProducts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAvailableMeteredProducts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAvailableMeteredProducts(@_, nextToken => $next_result->nextToken);
        push @{ $result->meteredProducts }, @{ $next_result->meteredProducts };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'meteredProducts') foreach (@{ $result->meteredProducts });
        $result = $self->ListAvailableMeteredProducts(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'meteredProducts') foreach (@{ $result->meteredProducts });
    }

    return undef
  }
  sub ListAllBudgets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBudgets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBudgets(@_, nextToken => $next_result->nextToken);
        push @{ $result->budgets }, @{ $next_result->budgets };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'budgets') foreach (@{ $result->budgets });
        $result = $self->ListBudgets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'budgets') foreach (@{ $result->budgets });
    }

    return undef
  }
  sub ListAllFarmMembers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFarmMembers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFarmMembers(@_, nextToken => $next_result->nextToken);
        push @{ $result->members }, @{ $next_result->members };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'members') foreach (@{ $result->members });
        $result = $self->ListFarmMembers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'members') foreach (@{ $result->members });
    }

    return undef
  }
  sub ListAllFarms {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFarms(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFarms(@_, nextToken => $next_result->nextToken);
        push @{ $result->farms }, @{ $next_result->farms };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'farms') foreach (@{ $result->farms });
        $result = $self->ListFarms(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'farms') foreach (@{ $result->farms });
    }

    return undef
  }
  sub ListAllFleetMembers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFleetMembers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFleetMembers(@_, nextToken => $next_result->nextToken);
        push @{ $result->members }, @{ $next_result->members };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'members') foreach (@{ $result->members });
        $result = $self->ListFleetMembers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'members') foreach (@{ $result->members });
    }

    return undef
  }
  sub ListAllFleets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFleets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFleets(@_, nextToken => $next_result->nextToken);
        push @{ $result->fleets }, @{ $next_result->fleets };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'fleets') foreach (@{ $result->fleets });
        $result = $self->ListFleets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'fleets') foreach (@{ $result->fleets });
    }

    return undef
  }
  sub ListAllJobMembers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobMembers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListJobMembers(@_, nextToken => $next_result->nextToken);
        push @{ $result->members }, @{ $next_result->members };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'members') foreach (@{ $result->members });
        $result = $self->ListJobMembers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'members') foreach (@{ $result->members });
    }

    return undef
  }
  sub ListAllJobParameterDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobParameterDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListJobParameterDefinitions(@_, nextToken => $next_result->nextToken);
        push @{ $result->jobParameterDefinitions }, @{ $next_result->jobParameterDefinitions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'jobParameterDefinitions') foreach (@{ $result->jobParameterDefinitions });
        $result = $self->ListJobParameterDefinitions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'jobParameterDefinitions') foreach (@{ $result->jobParameterDefinitions });
    }

    return undef
  }
  sub ListAllJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->jobs }, @{ $next_result->jobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'jobs') foreach (@{ $result->jobs });
        $result = $self->ListJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'jobs') foreach (@{ $result->jobs });
    }

    return undef
  }
  sub ListAllLicenseEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLicenseEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListLicenseEndpoints(@_, nextToken => $next_result->nextToken);
        push @{ $result->licenseEndpoints }, @{ $next_result->licenseEndpoints };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'licenseEndpoints') foreach (@{ $result->licenseEndpoints });
        $result = $self->ListLicenseEndpoints(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'licenseEndpoints') foreach (@{ $result->licenseEndpoints });
    }

    return undef
  }
  sub ListAllLimits {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLimits(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListLimits(@_, nextToken => $next_result->nextToken);
        push @{ $result->limits }, @{ $next_result->limits };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'limits') foreach (@{ $result->limits });
        $result = $self->ListLimits(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'limits') foreach (@{ $result->limits });
    }

    return undef
  }
  sub ListAllMeteredProducts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMeteredProducts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMeteredProducts(@_, nextToken => $next_result->nextToken);
        push @{ $result->meteredProducts }, @{ $next_result->meteredProducts };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'meteredProducts') foreach (@{ $result->meteredProducts });
        $result = $self->ListMeteredProducts(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'meteredProducts') foreach (@{ $result->meteredProducts });
    }

    return undef
  }
  sub ListAllMonitors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMonitors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMonitors(@_, nextToken => $next_result->nextToken);
        push @{ $result->monitors }, @{ $next_result->monitors };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'monitors') foreach (@{ $result->monitors });
        $result = $self->ListMonitors(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'monitors') foreach (@{ $result->monitors });
    }

    return undef
  }
  sub ListAllQueueEnvironments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListQueueEnvironments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListQueueEnvironments(@_, nextToken => $next_result->nextToken);
        push @{ $result->environments }, @{ $next_result->environments };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'environments') foreach (@{ $result->environments });
        $result = $self->ListQueueEnvironments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'environments') foreach (@{ $result->environments });
    }

    return undef
  }
  sub ListAllQueueFleetAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListQueueFleetAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListQueueFleetAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->queueFleetAssociations }, @{ $next_result->queueFleetAssociations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'queueFleetAssociations') foreach (@{ $result->queueFleetAssociations });
        $result = $self->ListQueueFleetAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'queueFleetAssociations') foreach (@{ $result->queueFleetAssociations });
    }

    return undef
  }
  sub ListAllQueueLimitAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListQueueLimitAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListQueueLimitAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->queueLimitAssociations }, @{ $next_result->queueLimitAssociations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'queueLimitAssociations') foreach (@{ $result->queueLimitAssociations });
        $result = $self->ListQueueLimitAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'queueLimitAssociations') foreach (@{ $result->queueLimitAssociations });
    }

    return undef
  }
  sub ListAllQueueMembers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListQueueMembers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListQueueMembers(@_, nextToken => $next_result->nextToken);
        push @{ $result->members }, @{ $next_result->members };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'members') foreach (@{ $result->members });
        $result = $self->ListQueueMembers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'members') foreach (@{ $result->members });
    }

    return undef
  }
  sub ListAllQueues {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListQueues(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListQueues(@_, nextToken => $next_result->nextToken);
        push @{ $result->queues }, @{ $next_result->queues };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'queues') foreach (@{ $result->queues });
        $result = $self->ListQueues(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'queues') foreach (@{ $result->queues });
    }

    return undef
  }
  sub ListAllSessionActions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSessionActions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSessionActions(@_, nextToken => $next_result->nextToken);
        push @{ $result->sessionActions }, @{ $next_result->sessionActions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'sessionActions') foreach (@{ $result->sessionActions });
        $result = $self->ListSessionActions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'sessionActions') foreach (@{ $result->sessionActions });
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
        push @{ $result->sessions }, @{ $next_result->sessions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'sessions') foreach (@{ $result->sessions });
        $result = $self->ListSessions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'sessions') foreach (@{ $result->sessions });
    }

    return undef
  }
  sub ListAllSessionsForWorker {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSessionsForWorker(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSessionsForWorker(@_, nextToken => $next_result->nextToken);
        push @{ $result->sessions }, @{ $next_result->sessions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'sessions') foreach (@{ $result->sessions });
        $result = $self->ListSessionsForWorker(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'sessions') foreach (@{ $result->sessions });
    }

    return undef
  }
  sub ListAllStepConsumers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStepConsumers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListStepConsumers(@_, nextToken => $next_result->nextToken);
        push @{ $result->consumers }, @{ $next_result->consumers };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'consumers') foreach (@{ $result->consumers });
        $result = $self->ListStepConsumers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'consumers') foreach (@{ $result->consumers });
    }

    return undef
  }
  sub ListAllStepDependencies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStepDependencies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListStepDependencies(@_, nextToken => $next_result->nextToken);
        push @{ $result->dependencies }, @{ $next_result->dependencies };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'dependencies') foreach (@{ $result->dependencies });
        $result = $self->ListStepDependencies(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'dependencies') foreach (@{ $result->dependencies });
    }

    return undef
  }
  sub ListAllSteps {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSteps(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSteps(@_, nextToken => $next_result->nextToken);
        push @{ $result->steps }, @{ $next_result->steps };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'steps') foreach (@{ $result->steps });
        $result = $self->ListSteps(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'steps') foreach (@{ $result->steps });
    }

    return undef
  }
  sub ListAllStorageProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStorageProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListStorageProfiles(@_, nextToken => $next_result->nextToken);
        push @{ $result->storageProfiles }, @{ $next_result->storageProfiles };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'storageProfiles') foreach (@{ $result->storageProfiles });
        $result = $self->ListStorageProfiles(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'storageProfiles') foreach (@{ $result->storageProfiles });
    }

    return undef
  }
  sub ListAllStorageProfilesForQueue {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStorageProfilesForQueue(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListStorageProfilesForQueue(@_, nextToken => $next_result->nextToken);
        push @{ $result->storageProfiles }, @{ $next_result->storageProfiles };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'storageProfiles') foreach (@{ $result->storageProfiles });
        $result = $self->ListStorageProfilesForQueue(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'storageProfiles') foreach (@{ $result->storageProfiles });
    }

    return undef
  }
  sub ListAllTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTasks(@_, nextToken => $next_result->nextToken);
        push @{ $result->tasks }, @{ $next_result->tasks };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'tasks') foreach (@{ $result->tasks });
        $result = $self->ListTasks(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'tasks') foreach (@{ $result->tasks });
    }

    return undef
  }
  sub ListAllWorkers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorkers(@_, nextToken => $next_result->nextToken);
        push @{ $result->workers }, @{ $next_result->workers };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'workers') foreach (@{ $result->workers });
        $result = $self->ListWorkers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'workers') foreach (@{ $result->workers });
    }

    return undef
  }


  sub operations { qw/AssociateMemberToFarm AssociateMemberToFleet AssociateMemberToJob AssociateMemberToQueue AssumeFleetRoleForRead AssumeFleetRoleForWorker AssumeQueueRoleForRead AssumeQueueRoleForUser AssumeQueueRoleForWorker BatchGetJobEntity CopyJobTemplate CreateBudget CreateFarm CreateFleet CreateJob CreateLicenseEndpoint CreateLimit CreateMonitor CreateQueue CreateQueueEnvironment CreateQueueFleetAssociation CreateQueueLimitAssociation CreateStorageProfile CreateWorker DeleteBudget DeleteFarm DeleteFleet DeleteLicenseEndpoint DeleteLimit DeleteMeteredProduct DeleteMonitor DeleteQueue DeleteQueueEnvironment DeleteQueueFleetAssociation DeleteQueueLimitAssociation DeleteStorageProfile DeleteWorker DisassociateMemberFromFarm DisassociateMemberFromFleet DisassociateMemberFromJob DisassociateMemberFromQueue GetBudget GetFarm GetFleet GetJob GetLicenseEndpoint GetLimit GetMonitor GetQueue GetQueueEnvironment GetQueueFleetAssociation GetQueueLimitAssociation GetSession GetSessionAction GetSessionsStatisticsAggregation GetStep GetStorageProfile GetStorageProfileForQueue GetTask GetWorker ListAvailableMeteredProducts ListBudgets ListFarmMembers ListFarms ListFleetMembers ListFleets ListJobMembers ListJobParameterDefinitions ListJobs ListLicenseEndpoints ListLimits ListMeteredProducts ListMonitors ListQueueEnvironments ListQueueFleetAssociations ListQueueLimitAssociations ListQueueMembers ListQueues ListSessionActions ListSessions ListSessionsForWorker ListStepConsumers ListStepDependencies ListSteps ListStorageProfiles ListStorageProfilesForQueue ListTagsForResource ListTasks ListWorkers PutMeteredProduct SearchJobs SearchSteps SearchTasks SearchWorkers StartSessionsStatisticsAggregation TagResource UntagResource UpdateBudget UpdateFarm UpdateFleet UpdateJob UpdateLimit UpdateMonitor UpdateQueue UpdateQueueEnvironment UpdateQueueFleetAssociation UpdateQueueLimitAssociation UpdateSession UpdateStep UpdateStorageProfile UpdateTask UpdateWorker UpdateWorkerSchedule / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline - Perl Interface to AWS AWSDeadlineCloud

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Deadline');
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

The Amazon Web Services Deadline Cloud API provides infrastructure and
centralized management for your projects. Use the Deadline Cloud API to
onboard users, assign projects, and attach permissions specific to
their job function.

With Deadline Cloud, content production teams can deploy resources for
their workforce securely in the cloud, reducing the costs of added
physical infrastructure. Keep your content production operations
secure, while allowing your contributors to access the tools they need,
such as scalable high-speed storage, licenses, and cost management
services.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12>


=head1 METHODS

=head2 AssociateMemberToFarm

=over

=item FarmId => Str

=item IdentityStoreId => Str

=item MembershipLevel => Str

=item PrincipalId => Str

=item PrincipalType => Str


=back

Each argument is described in detail in: L<Paws::Deadline::AssociateMemberToFarm>

Returns: a L<Paws::Deadline::AssociateMemberToFarmResponse> instance

Assigns a farm membership level to a member.


=head2 AssociateMemberToFleet

=over

=item FarmId => Str

=item FleetId => Str

=item IdentityStoreId => Str

=item MembershipLevel => Str

=item PrincipalId => Str

=item PrincipalType => Str


=back

Each argument is described in detail in: L<Paws::Deadline::AssociateMemberToFleet>

Returns: a L<Paws::Deadline::AssociateMemberToFleetResponse> instance

Assigns a fleet membership level to a member.


=head2 AssociateMemberToJob

=over

=item FarmId => Str

=item IdentityStoreId => Str

=item JobId => Str

=item MembershipLevel => Str

=item PrincipalId => Str

=item PrincipalType => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::AssociateMemberToJob>

Returns: a L<Paws::Deadline::AssociateMemberToJobResponse> instance

Assigns a job membership level to a member


=head2 AssociateMemberToQueue

=over

=item FarmId => Str

=item IdentityStoreId => Str

=item MembershipLevel => Str

=item PrincipalId => Str

=item PrincipalType => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::AssociateMemberToQueue>

Returns: a L<Paws::Deadline::AssociateMemberToQueueResponse> instance

Assigns a queue membership level to a member


=head2 AssumeFleetRoleForRead

=over

=item FarmId => Str

=item FleetId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::AssumeFleetRoleForRead>

Returns: a L<Paws::Deadline::AssumeFleetRoleForReadResponse> instance

Get Amazon Web Services credentials from the fleet role. The IAM
permissions of the credentials are scoped down to have read-only
access.


=head2 AssumeFleetRoleForWorker

=over

=item FarmId => Str

=item FleetId => Str

=item WorkerId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::AssumeFleetRoleForWorker>

Returns: a L<Paws::Deadline::AssumeFleetRoleForWorkerResponse> instance

Get credentials from the fleet role for a worker.


=head2 AssumeQueueRoleForRead

=over

=item FarmId => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::AssumeQueueRoleForRead>

Returns: a L<Paws::Deadline::AssumeQueueRoleForReadResponse> instance

Gets Amazon Web Services credentials from the queue role. The IAM
permissions of the credentials are scoped down to have read-only
access.


=head2 AssumeQueueRoleForUser

=over

=item FarmId => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::AssumeQueueRoleForUser>

Returns: a L<Paws::Deadline::AssumeQueueRoleForUserResponse> instance

Allows a user to assume a role for a queue.


=head2 AssumeQueueRoleForWorker

=over

=item FarmId => Str

=item FleetId => Str

=item QueueId => Str

=item WorkerId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::AssumeQueueRoleForWorker>

Returns: a L<Paws::Deadline::AssumeQueueRoleForWorkerResponse> instance

Allows a worker to assume a queue role.


=head2 BatchGetJobEntity

=over

=item FarmId => Str

=item FleetId => Str

=item Identifiers => ArrayRef[L<Paws::Deadline::JobEntityIdentifiersUnion>]

=item WorkerId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::BatchGetJobEntity>

Returns: a L<Paws::Deadline::BatchGetJobEntityResponse> instance

Get batched job details for a worker.


=head2 CopyJobTemplate

=over

=item FarmId => Str

=item JobId => Str

=item QueueId => Str

=item TargetS3Location => L<Paws::Deadline::S3Location>


=back

Each argument is described in detail in: L<Paws::Deadline::CopyJobTemplate>

Returns: a L<Paws::Deadline::CopyJobTemplateResponse> instance

Copies a job template to an Amazon S3 bucket.


=head2 CreateBudget

=over

=item Actions => ArrayRef[L<Paws::Deadline::BudgetActionToAdd>]

=item ApproximateDollarLimit => Num

=item DisplayName => Str

=item FarmId => Str

=item Schedule => L<Paws::Deadline::BudgetSchedule>

=item UsageTrackingResource => L<Paws::Deadline::UsageTrackingResource>

=item [ClientToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::CreateBudget>

Returns: a L<Paws::Deadline::CreateBudgetResponse> instance

Creates a budget to set spending thresholds for your rendering
activity.


=head2 CreateFarm

=over

=item DisplayName => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [KmsKeyArn => Str]

=item [Tags => L<Paws::Deadline::Tags>]


=back

Each argument is described in detail in: L<Paws::Deadline::CreateFarm>

Returns: a L<Paws::Deadline::CreateFarmResponse> instance

Creates a farm to allow space for queues and fleets. Farms are the
space where the components of your renders gather and are pieced
together in the cloud. Farms contain budgets and allow you to enforce
permissions. Deadline Cloud farms are a useful container for large
projects.


=head2 CreateFleet

=over

=item Configuration => L<Paws::Deadline::FleetConfiguration>

=item DisplayName => Str

=item FarmId => Str

=item MaxWorkerCount => Int

=item RoleArn => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [HostConfiguration => L<Paws::Deadline::HostConfiguration>]

=item [MinWorkerCount => Int]

=item [Tags => L<Paws::Deadline::Tags>]


=back

Each argument is described in detail in: L<Paws::Deadline::CreateFleet>

Returns: a L<Paws::Deadline::CreateFleetResponse> instance

Creates a fleet. Fleets gather information relating to compute, or
capacity, for renders within your farms. You can choose to manage your
own capacity or opt to have fleets fully managed by Deadline Cloud.


=head2 CreateJob

=over

=item FarmId => Str

=item Priority => Int

=item QueueId => Str

=item [Attachments => L<Paws::Deadline::Attachments>]

=item [ClientToken => Str]

=item [MaxFailedTasksCount => Int]

=item [MaxRetriesPerTask => Int]

=item [MaxWorkerCount => Int]

=item [Parameters => L<Paws::Deadline::JobParameters>]

=item [SourceJobId => Str]

=item [StorageProfileId => Str]

=item [TargetTaskRunStatus => Str]

=item [Template => Str]

=item [TemplateType => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::CreateJob>

Returns: a L<Paws::Deadline::CreateJobResponse> instance

Creates a job. A job is a set of instructions that Deadline Cloud uses
to schedule and run work on available workers. For more information,
see Deadline Cloud jobs
(https://docs.aws.amazon.com/deadline-cloud/latest/userguide/deadline-cloud-jobs.html).


=head2 CreateLicenseEndpoint

=over

=item SecurityGroupIds => ArrayRef[Str|Undef]

=item SubnetIds => ArrayRef[Str|Undef]

=item VpcId => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::Deadline::Tags>]


=back

Each argument is described in detail in: L<Paws::Deadline::CreateLicenseEndpoint>

Returns: a L<Paws::Deadline::CreateLicenseEndpointResponse> instance

Creates a license endpoint to integrate your various licensed software
used for rendering on Deadline Cloud.


=head2 CreateLimit

=over

=item AmountRequirementName => Str

=item DisplayName => Str

=item FarmId => Str

=item MaxCount => Int

=item [ClientToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::CreateLimit>

Returns: a L<Paws::Deadline::CreateLimitResponse> instance

Creates a limit that manages the distribution of shared resources, such
as floating licenses. A limit can throttle work assignments, help
manage workloads, and track current usage. Before you use a limit, you
must associate the limit with one or more queues.

You must add the C<amountRequirementName> to a step in a job template
to declare the limit requirement.


=head2 CreateMonitor

=over

=item DisplayName => Str

=item IdentityCenterInstanceArn => Str

=item RoleArn => Str

=item Subdomain => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::CreateMonitor>

Returns: a L<Paws::Deadline::CreateMonitorResponse> instance

Creates an Amazon Web Services Deadline Cloud monitor that you can use
to view your farms, queues, and fleets. After you submit a job, you can
track the progress of the tasks and steps that make up the job, and
then download the job's results.


=head2 CreateQueue

=over

=item DisplayName => Str

=item FarmId => Str

=item [AllowedStorageProfileIds => ArrayRef[Str|Undef]]

=item [ClientToken => Str]

=item [DefaultBudgetAction => Str]

=item [Description => Str]

=item [JobAttachmentSettings => L<Paws::Deadline::JobAttachmentSettings>]

=item [JobRunAsUser => L<Paws::Deadline::JobRunAsUser>]

=item [RequiredFileSystemLocationNames => ArrayRef[Str|Undef]]

=item [RoleArn => Str]

=item [Tags => L<Paws::Deadline::Tags>]


=back

Each argument is described in detail in: L<Paws::Deadline::CreateQueue>

Returns: a L<Paws::Deadline::CreateQueueResponse> instance

Creates a queue to coordinate the order in which jobs run on a farm. A
queue can also specify where to pull resources and indicate where to
output completed jobs.


=head2 CreateQueueEnvironment

=over

=item FarmId => Str

=item Priority => Int

=item QueueId => Str

=item Template => Str

=item TemplateType => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::CreateQueueEnvironment>

Returns: a L<Paws::Deadline::CreateQueueEnvironmentResponse> instance

Creates an environment for a queue that defines how jobs in the queue
run.


=head2 CreateQueueFleetAssociation

=over

=item FarmId => Str

=item FleetId => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::CreateQueueFleetAssociation>

Returns: a L<Paws::Deadline::CreateQueueFleetAssociationResponse> instance

Creates an association between a queue and a fleet.


=head2 CreateQueueLimitAssociation

=over

=item FarmId => Str

=item LimitId => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::CreateQueueLimitAssociation>

Returns: a L<Paws::Deadline::CreateQueueLimitAssociationResponse> instance

Associates a limit with a particular queue. After the limit is
associated, all workers for jobs that specify the limit associated with
the queue are subject to the limit. You can't associate two limits with
the same C<amountRequirementName> to the same queue.


=head2 CreateStorageProfile

=over

=item DisplayName => Str

=item FarmId => Str

=item OsFamily => Str

=item [ClientToken => Str]

=item [FileSystemLocations => ArrayRef[L<Paws::Deadline::FileSystemLocation>]]


=back

Each argument is described in detail in: L<Paws::Deadline::CreateStorageProfile>

Returns: a L<Paws::Deadline::CreateStorageProfileResponse> instance

Creates a storage profile that specifies the operating system, file
type, and file location of resources used on a farm.


=head2 CreateWorker

=over

=item FarmId => Str

=item FleetId => Str

=item [ClientToken => Str]

=item [HostProperties => L<Paws::Deadline::HostPropertiesRequest>]

=item [Tags => L<Paws::Deadline::Tags>]


=back

Each argument is described in detail in: L<Paws::Deadline::CreateWorker>

Returns: a L<Paws::Deadline::CreateWorkerResponse> instance

Creates a worker. A worker tells your instance how much processing
power (vCPU), and memory (GiB) youE<rsquo>ll need to assemble the
digital assets held within a particular instance. You can specify
certain instance types to use, or let the worker know which instances
types to exclude.

Deadline Cloud limits the number of workers to less than or equal to
the fleet's maximum worker count. The service maintains eventual
consistency for the worker count. If you make multiple rapid calls to
C<CreateWorker> before the field updates, you might exceed your fleet's
maximum worker count. For example, if your C<maxWorkerCount> is 10 and
you currently have 9 workers, making two quick C<CreateWorker> calls
might successfully create 2 workers instead of 1, resulting in 11 total
workers.


=head2 DeleteBudget

=over

=item BudgetId => Str

=item FarmId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::DeleteBudget>

Returns: a L<Paws::Deadline::DeleteBudgetResponse> instance

Deletes a budget.


=head2 DeleteFarm

=over

=item FarmId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::DeleteFarm>

Returns: a L<Paws::Deadline::DeleteFarmResponse> instance

Deletes a farm.


=head2 DeleteFleet

=over

=item FarmId => Str

=item FleetId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::DeleteFleet>

Returns: a L<Paws::Deadline::DeleteFleetResponse> instance

Deletes a fleet.


=head2 DeleteLicenseEndpoint

=over

=item LicenseEndpointId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::DeleteLicenseEndpoint>

Returns: a L<Paws::Deadline::DeleteLicenseEndpointResponse> instance

Deletes a license endpoint.


=head2 DeleteLimit

=over

=item FarmId => Str

=item LimitId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::DeleteLimit>

Returns: a L<Paws::Deadline::DeleteLimitResponse> instance

Removes a limit from the specified farm. Before you delete a limit you
must use the C<DeleteQueueLimitAssociation> operation to remove the
association with any queues.


=head2 DeleteMeteredProduct

=over

=item LicenseEndpointId => Str

=item ProductId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::DeleteMeteredProduct>

Returns: a L<Paws::Deadline::DeleteMeteredProductResponse> instance

Deletes a metered product.


=head2 DeleteMonitor

=over

=item MonitorId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::DeleteMonitor>

Returns: a L<Paws::Deadline::DeleteMonitorResponse> instance

Removes a Deadline Cloud monitor. After you delete a monitor, you can
create a new one and attach farms to the monitor.


=head2 DeleteQueue

=over

=item FarmId => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::DeleteQueue>

Returns: a L<Paws::Deadline::DeleteQueueResponse> instance

Deletes a queue.

You can't recover the jobs in a queue if you delete the queue. Deleting
the queue also deletes the jobs in that queue.


=head2 DeleteQueueEnvironment

=over

=item FarmId => Str

=item QueueEnvironmentId => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::DeleteQueueEnvironment>

Returns: a L<Paws::Deadline::DeleteQueueEnvironmentResponse> instance

Deletes a queue environment.


=head2 DeleteQueueFleetAssociation

=over

=item FarmId => Str

=item FleetId => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::DeleteQueueFleetAssociation>

Returns: a L<Paws::Deadline::DeleteQueueFleetAssociationResponse> instance

Deletes a queue-fleet association.


=head2 DeleteQueueLimitAssociation

=over

=item FarmId => Str

=item LimitId => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::DeleteQueueLimitAssociation>

Returns: a L<Paws::Deadline::DeleteQueueLimitAssociationResponse> instance

Removes the association between a queue and a limit. You must use the
C<UpdateQueueLimitAssociation> operation to set the status to
C<STOP_LIMIT_USAGE_AND_COMPLETE_TASKS> or
C<STOP_LIMIT_USAGE_AND_CANCEL_TASKS>. The status does not change
immediately. Use the C<GetQueueLimitAssociation> operation to see if
the status changed to C<STOPPED> before deleting the association.


=head2 DeleteStorageProfile

=over

=item FarmId => Str

=item StorageProfileId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::DeleteStorageProfile>

Returns: a L<Paws::Deadline::DeleteStorageProfileResponse> instance

Deletes a storage profile.


=head2 DeleteWorker

=over

=item FarmId => Str

=item FleetId => Str

=item WorkerId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::DeleteWorker>

Returns: a L<Paws::Deadline::DeleteWorkerResponse> instance

Deletes a worker.


=head2 DisassociateMemberFromFarm

=over

=item FarmId => Str

=item PrincipalId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::DisassociateMemberFromFarm>

Returns: a L<Paws::Deadline::DisassociateMemberFromFarmResponse> instance

Disassociates a member from a farm.


=head2 DisassociateMemberFromFleet

=over

=item FarmId => Str

=item FleetId => Str

=item PrincipalId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::DisassociateMemberFromFleet>

Returns: a L<Paws::Deadline::DisassociateMemberFromFleetResponse> instance

Disassociates a member from a fleet.


=head2 DisassociateMemberFromJob

=over

=item FarmId => Str

=item JobId => Str

=item PrincipalId => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::DisassociateMemberFromJob>

Returns: a L<Paws::Deadline::DisassociateMemberFromJobResponse> instance

Disassociates a member from a job.


=head2 DisassociateMemberFromQueue

=over

=item FarmId => Str

=item PrincipalId => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::DisassociateMemberFromQueue>

Returns: a L<Paws::Deadline::DisassociateMemberFromQueueResponse> instance

Disassociates a member from a queue.


=head2 GetBudget

=over

=item BudgetId => Str

=item FarmId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::GetBudget>

Returns: a L<Paws::Deadline::GetBudgetResponse> instance

Get a budget.


=head2 GetFarm

=over

=item FarmId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::GetFarm>

Returns: a L<Paws::Deadline::GetFarmResponse> instance

Get a farm.


=head2 GetFleet

=over

=item FarmId => Str

=item FleetId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::GetFleet>

Returns: a L<Paws::Deadline::GetFleetResponse> instance

Get a fleet.


=head2 GetJob

=over

=item FarmId => Str

=item JobId => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::GetJob>

Returns: a L<Paws::Deadline::GetJobResponse> instance

Gets a Deadline Cloud job.


=head2 GetLicenseEndpoint

=over

=item LicenseEndpointId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::GetLicenseEndpoint>

Returns: a L<Paws::Deadline::GetLicenseEndpointResponse> instance

Gets a licence endpoint.


=head2 GetLimit

=over

=item FarmId => Str

=item LimitId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::GetLimit>

Returns: a L<Paws::Deadline::GetLimitResponse> instance

Gets information about a specific limit.


=head2 GetMonitor

=over

=item MonitorId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::GetMonitor>

Returns: a L<Paws::Deadline::GetMonitorResponse> instance

Gets information about the specified monitor.


=head2 GetQueue

=over

=item FarmId => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::GetQueue>

Returns: a L<Paws::Deadline::GetQueueResponse> instance

Gets a queue.


=head2 GetQueueEnvironment

=over

=item FarmId => Str

=item QueueEnvironmentId => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::GetQueueEnvironment>

Returns: a L<Paws::Deadline::GetQueueEnvironmentResponse> instance

Gets a queue environment.


=head2 GetQueueFleetAssociation

=over

=item FarmId => Str

=item FleetId => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::GetQueueFleetAssociation>

Returns: a L<Paws::Deadline::GetQueueFleetAssociationResponse> instance

Gets a queue-fleet association.


=head2 GetQueueLimitAssociation

=over

=item FarmId => Str

=item LimitId => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::GetQueueLimitAssociation>

Returns: a L<Paws::Deadline::GetQueueLimitAssociationResponse> instance

Gets information about a specific association between a queue and a
limit.


=head2 GetSession

=over

=item FarmId => Str

=item JobId => Str

=item QueueId => Str

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::GetSession>

Returns: a L<Paws::Deadline::GetSessionResponse> instance

Gets a session.


=head2 GetSessionAction

=over

=item FarmId => Str

=item JobId => Str

=item QueueId => Str

=item SessionActionId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::GetSessionAction>

Returns: a L<Paws::Deadline::GetSessionActionResponse> instance

Gets a session action for the job.


=head2 GetSessionsStatisticsAggregation

=over

=item AggregationId => Str

=item FarmId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::GetSessionsStatisticsAggregation>

Returns: a L<Paws::Deadline::GetSessionsStatisticsAggregationResponse> instance

Gets a set of statistics for queues or farms. Before you can call the
C<GetSessionStatisticsAggregation> operation, you must first call the
C<StartSessionsStatisticsAggregation> operation. Statistics are
available for 1 hour after you call the
C<StartSessionsStatisticsAggregation> operation.


=head2 GetStep

=over

=item FarmId => Str

=item JobId => Str

=item QueueId => Str

=item StepId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::GetStep>

Returns: a L<Paws::Deadline::GetStepResponse> instance

Gets a step.


=head2 GetStorageProfile

=over

=item FarmId => Str

=item StorageProfileId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::GetStorageProfile>

Returns: a L<Paws::Deadline::GetStorageProfileResponse> instance

Gets a storage profile.


=head2 GetStorageProfileForQueue

=over

=item FarmId => Str

=item QueueId => Str

=item StorageProfileId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::GetStorageProfileForQueue>

Returns: a L<Paws::Deadline::GetStorageProfileForQueueResponse> instance

Gets a storage profile for a queue.


=head2 GetTask

=over

=item FarmId => Str

=item JobId => Str

=item QueueId => Str

=item StepId => Str

=item TaskId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::GetTask>

Returns: a L<Paws::Deadline::GetTaskResponse> instance

Gets a task.


=head2 GetWorker

=over

=item FarmId => Str

=item FleetId => Str

=item WorkerId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::GetWorker>

Returns: a L<Paws::Deadline::GetWorkerResponse> instance

Gets a worker.


=head2 ListAvailableMeteredProducts

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListAvailableMeteredProducts>

Returns: a L<Paws::Deadline::ListAvailableMeteredProductsResponse> instance

A list of the available metered products.


=head2 ListBudgets

=over

=item FarmId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListBudgets>

Returns: a L<Paws::Deadline::ListBudgetsResponse> instance

A list of budgets in a farm.


=head2 ListFarmMembers

=over

=item FarmId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListFarmMembers>

Returns: a L<Paws::Deadline::ListFarmMembersResponse> instance

Lists the members of a farm.


=head2 ListFarms

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PrincipalId => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListFarms>

Returns: a L<Paws::Deadline::ListFarmsResponse> instance

Lists farms.


=head2 ListFleetMembers

=over

=item FarmId => Str

=item FleetId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListFleetMembers>

Returns: a L<Paws::Deadline::ListFleetMembersResponse> instance

Lists fleet members.


=head2 ListFleets

=over

=item FarmId => Str

=item [DisplayName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PrincipalId => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListFleets>

Returns: a L<Paws::Deadline::ListFleetsResponse> instance

Lists fleets.


=head2 ListJobMembers

=over

=item FarmId => Str

=item JobId => Str

=item QueueId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListJobMembers>

Returns: a L<Paws::Deadline::ListJobMembersResponse> instance

Lists members on a job.


=head2 ListJobParameterDefinitions

=over

=item FarmId => Str

=item JobId => Str

=item QueueId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListJobParameterDefinitions>

Returns: a L<Paws::Deadline::ListJobParameterDefinitionsResponse> instance

Lists parameter definitions of a job.


=head2 ListJobs

=over

=item FarmId => Str

=item QueueId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PrincipalId => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListJobs>

Returns: a L<Paws::Deadline::ListJobsResponse> instance

Lists jobs.


=head2 ListLicenseEndpoints

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListLicenseEndpoints>

Returns: a L<Paws::Deadline::ListLicenseEndpointsResponse> instance

Lists license endpoints.


=head2 ListLimits

=over

=item FarmId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListLimits>

Returns: a L<Paws::Deadline::ListLimitsResponse> instance

Gets a list of limits defined in the specified farm.


=head2 ListMeteredProducts

=over

=item LicenseEndpointId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListMeteredProducts>

Returns: a L<Paws::Deadline::ListMeteredProductsResponse> instance

Lists metered products.


=head2 ListMonitors

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListMonitors>

Returns: a L<Paws::Deadline::ListMonitorsResponse> instance

Gets a list of your monitors in Deadline Cloud.


=head2 ListQueueEnvironments

=over

=item FarmId => Str

=item QueueId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListQueueEnvironments>

Returns: a L<Paws::Deadline::ListQueueEnvironmentsResponse> instance

Lists queue environments.


=head2 ListQueueFleetAssociations

=over

=item FarmId => Str

=item [FleetId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [QueueId => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListQueueFleetAssociations>

Returns: a L<Paws::Deadline::ListQueueFleetAssociationsResponse> instance

Lists queue-fleet associations.


=head2 ListQueueLimitAssociations

=over

=item FarmId => Str

=item [LimitId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [QueueId => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListQueueLimitAssociations>

Returns: a L<Paws::Deadline::ListQueueLimitAssociationsResponse> instance

Gets a list of the associations between queues and limits defined in a
farm.


=head2 ListQueueMembers

=over

=item FarmId => Str

=item QueueId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListQueueMembers>

Returns: a L<Paws::Deadline::ListQueueMembersResponse> instance

Lists the members in a queue.


=head2 ListQueues

=over

=item FarmId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PrincipalId => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListQueues>

Returns: a L<Paws::Deadline::ListQueuesResponse> instance

Lists queues.


=head2 ListSessionActions

=over

=item FarmId => Str

=item JobId => Str

=item QueueId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SessionId => Str]

=item [TaskId => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListSessionActions>

Returns: a L<Paws::Deadline::ListSessionActionsResponse> instance

Lists session actions.


=head2 ListSessions

=over

=item FarmId => Str

=item JobId => Str

=item QueueId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListSessions>

Returns: a L<Paws::Deadline::ListSessionsResponse> instance

Lists sessions.


=head2 ListSessionsForWorker

=over

=item FarmId => Str

=item FleetId => Str

=item WorkerId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListSessionsForWorker>

Returns: a L<Paws::Deadline::ListSessionsForWorkerResponse> instance

Lists sessions for a worker.


=head2 ListStepConsumers

=over

=item FarmId => Str

=item JobId => Str

=item QueueId => Str

=item StepId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListStepConsumers>

Returns: a L<Paws::Deadline::ListStepConsumersResponse> instance

Lists step consumers.


=head2 ListStepDependencies

=over

=item FarmId => Str

=item JobId => Str

=item QueueId => Str

=item StepId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListStepDependencies>

Returns: a L<Paws::Deadline::ListStepDependenciesResponse> instance

Lists the dependencies for a step.


=head2 ListSteps

=over

=item FarmId => Str

=item JobId => Str

=item QueueId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListSteps>

Returns: a L<Paws::Deadline::ListStepsResponse> instance

Lists steps for a job.


=head2 ListStorageProfiles

=over

=item FarmId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListStorageProfiles>

Returns: a L<Paws::Deadline::ListStorageProfilesResponse> instance

Lists storage profiles.


=head2 ListStorageProfilesForQueue

=over

=item FarmId => Str

=item QueueId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListStorageProfilesForQueue>

Returns: a L<Paws::Deadline::ListStorageProfilesForQueueResponse> instance

Lists storage profiles for a queue.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Deadline::ListTagsForResource>

Returns: a L<Paws::Deadline::ListTagsForResourceResponse> instance

Lists tags for a resource.


=head2 ListTasks

=over

=item FarmId => Str

=item JobId => Str

=item QueueId => Str

=item StepId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListTasks>

Returns: a L<Paws::Deadline::ListTasksResponse> instance

Lists tasks for a job.


=head2 ListWorkers

=over

=item FarmId => Str

=item FleetId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::ListWorkers>

Returns: a L<Paws::Deadline::ListWorkersResponse> instance

Lists workers.


=head2 PutMeteredProduct

=over

=item LicenseEndpointId => Str

=item ProductId => Str


=back

Each argument is described in detail in: L<Paws::Deadline::PutMeteredProduct>

Returns: a L<Paws::Deadline::PutMeteredProductResponse> instance

Adds a metered product.


=head2 SearchJobs

=over

=item FarmId => Str

=item ItemOffset => Int

=item QueueIds => ArrayRef[Str|Undef]

=item [FilterExpressions => L<Paws::Deadline::SearchGroupedFilterExpressions>]

=item [PageSize => Int]

=item [SortExpressions => ArrayRef[L<Paws::Deadline::SearchSortExpression>]]


=back

Each argument is described in detail in: L<Paws::Deadline::SearchJobs>

Returns: a L<Paws::Deadline::SearchJobsResponse> instance

Searches for jobs.


=head2 SearchSteps

=over

=item FarmId => Str

=item ItemOffset => Int

=item QueueIds => ArrayRef[Str|Undef]

=item [FilterExpressions => L<Paws::Deadline::SearchGroupedFilterExpressions>]

=item [JobId => Str]

=item [PageSize => Int]

=item [SortExpressions => ArrayRef[L<Paws::Deadline::SearchSortExpression>]]


=back

Each argument is described in detail in: L<Paws::Deadline::SearchSteps>

Returns: a L<Paws::Deadline::SearchStepsResponse> instance

Searches for steps.


=head2 SearchTasks

=over

=item FarmId => Str

=item ItemOffset => Int

=item QueueIds => ArrayRef[Str|Undef]

=item [FilterExpressions => L<Paws::Deadline::SearchGroupedFilterExpressions>]

=item [JobId => Str]

=item [PageSize => Int]

=item [SortExpressions => ArrayRef[L<Paws::Deadline::SearchSortExpression>]]


=back

Each argument is described in detail in: L<Paws::Deadline::SearchTasks>

Returns: a L<Paws::Deadline::SearchTasksResponse> instance

Searches for tasks.


=head2 SearchWorkers

=over

=item FarmId => Str

=item FleetIds => ArrayRef[Str|Undef]

=item ItemOffset => Int

=item [FilterExpressions => L<Paws::Deadline::SearchGroupedFilterExpressions>]

=item [PageSize => Int]

=item [SortExpressions => ArrayRef[L<Paws::Deadline::SearchSortExpression>]]


=back

Each argument is described in detail in: L<Paws::Deadline::SearchWorkers>

Returns: a L<Paws::Deadline::SearchWorkersResponse> instance

Searches for workers.


=head2 StartSessionsStatisticsAggregation

=over

=item EndTime => Str

=item FarmId => Str

=item GroupBy => ArrayRef[Str|Undef]

=item ResourceIds => L<Paws::Deadline::SessionsStatisticsResources>

=item StartTime => Str

=item Statistics => ArrayRef[Str|Undef]

=item [Period => Str]

=item [Timezone => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::StartSessionsStatisticsAggregation>

Returns: a L<Paws::Deadline::StartSessionsStatisticsAggregationResponse> instance

Starts an asynchronous request for getting aggregated statistics about
queues and farms. Get the statistics using the
C<GetSessionsStatisticsAggregation> operation. You can only have one
running aggregation for your Deadline Cloud farm. Call the
C<GetSessionsStatisticsAggregation> operation and check the C<status>
field to see if an aggregation is running. Statistics are available for
1 hour after you call the C<StartSessionsStatisticsAggregation>
operation.


=head2 TagResource

=over

=item ResourceArn => Str

=item [Tags => L<Paws::Deadline::Tags>]


=back

Each argument is described in detail in: L<Paws::Deadline::TagResource>

Returns: a L<Paws::Deadline::TagResourceResponse> instance

Tags a resource using the resource's ARN and desired tags.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Deadline::UntagResource>

Returns: a L<Paws::Deadline::UntagResourceResponse> instance

Removes a tag from a resource using the resource's ARN and tag to
remove.


=head2 UpdateBudget

=over

=item BudgetId => Str

=item FarmId => Str

=item [ActionsToAdd => ArrayRef[L<Paws::Deadline::BudgetActionToAdd>]]

=item [ActionsToRemove => ArrayRef[L<Paws::Deadline::BudgetActionToRemove>]]

=item [ApproximateDollarLimit => Num]

=item [ClientToken => Str]

=item [Description => Str]

=item [DisplayName => Str]

=item [Schedule => L<Paws::Deadline::BudgetSchedule>]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::UpdateBudget>

Returns: a L<Paws::Deadline::UpdateBudgetResponse> instance

Updates a budget that sets spending thresholds for rendering activity.


=head2 UpdateFarm

=over

=item FarmId => Str

=item [Description => Str]

=item [DisplayName => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::UpdateFarm>

Returns: a L<Paws::Deadline::UpdateFarmResponse> instance

Updates a farm.


=head2 UpdateFleet

=over

=item FarmId => Str

=item FleetId => Str

=item [ClientToken => Str]

=item [Configuration => L<Paws::Deadline::FleetConfiguration>]

=item [Description => Str]

=item [DisplayName => Str]

=item [HostConfiguration => L<Paws::Deadline::HostConfiguration>]

=item [MaxWorkerCount => Int]

=item [MinWorkerCount => Int]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::UpdateFleet>

Returns: a L<Paws::Deadline::UpdateFleetResponse> instance

Updates a fleet.


=head2 UpdateJob

=over

=item FarmId => Str

=item JobId => Str

=item QueueId => Str

=item [ClientToken => Str]

=item [LifecycleStatus => Str]

=item [MaxFailedTasksCount => Int]

=item [MaxRetriesPerTask => Int]

=item [MaxWorkerCount => Int]

=item [Priority => Int]

=item [TargetTaskRunStatus => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::UpdateJob>

Returns: a L<Paws::Deadline::UpdateJobResponse> instance

Updates a job.

When you change the status of the job to C<ARCHIVED>, the job can't be
scheduled or archived.

An archived jobs and its steps and tasks are deleted after 120 days.
The job can't be recovered.


=head2 UpdateLimit

=over

=item FarmId => Str

=item LimitId => Str

=item [Description => Str]

=item [DisplayName => Str]

=item [MaxCount => Int]


=back

Each argument is described in detail in: L<Paws::Deadline::UpdateLimit>

Returns: a L<Paws::Deadline::UpdateLimitResponse> instance

Updates the properties of the specified limit.


=head2 UpdateMonitor

=over

=item MonitorId => Str

=item [DisplayName => Str]

=item [RoleArn => Str]

=item [Subdomain => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::UpdateMonitor>

Returns: a L<Paws::Deadline::UpdateMonitorResponse> instance

Modifies the settings for a Deadline Cloud monitor. You can modify one
or all of the settings when you call C<UpdateMonitor>.


=head2 UpdateQueue

=over

=item FarmId => Str

=item QueueId => Str

=item [AllowedStorageProfileIdsToAdd => ArrayRef[Str|Undef]]

=item [AllowedStorageProfileIdsToRemove => ArrayRef[Str|Undef]]

=item [ClientToken => Str]

=item [DefaultBudgetAction => Str]

=item [Description => Str]

=item [DisplayName => Str]

=item [JobAttachmentSettings => L<Paws::Deadline::JobAttachmentSettings>]

=item [JobRunAsUser => L<Paws::Deadline::JobRunAsUser>]

=item [RequiredFileSystemLocationNamesToAdd => ArrayRef[Str|Undef]]

=item [RequiredFileSystemLocationNamesToRemove => ArrayRef[Str|Undef]]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::UpdateQueue>

Returns: a L<Paws::Deadline::UpdateQueueResponse> instance

Updates a queue.


=head2 UpdateQueueEnvironment

=over

=item FarmId => Str

=item QueueEnvironmentId => Str

=item QueueId => Str

=item [ClientToken => Str]

=item [Priority => Int]

=item [Template => Str]

=item [TemplateType => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::UpdateQueueEnvironment>

Returns: a L<Paws::Deadline::UpdateQueueEnvironmentResponse> instance

Updates the queue environment.


=head2 UpdateQueueFleetAssociation

=over

=item FarmId => Str

=item FleetId => Str

=item QueueId => Str

=item Status => Str


=back

Each argument is described in detail in: L<Paws::Deadline::UpdateQueueFleetAssociation>

Returns: a L<Paws::Deadline::UpdateQueueFleetAssociationResponse> instance

Updates a queue-fleet association.


=head2 UpdateQueueLimitAssociation

=over

=item FarmId => Str

=item LimitId => Str

=item QueueId => Str

=item Status => Str


=back

Each argument is described in detail in: L<Paws::Deadline::UpdateQueueLimitAssociation>

Returns: a L<Paws::Deadline::UpdateQueueLimitAssociationResponse> instance

Updates the status of the queue. If you set the status to one of the
C<STOP_LIMIT_USAGE*> values, there will be a delay before the status
transitions to the C<STOPPED> state.


=head2 UpdateSession

=over

=item FarmId => Str

=item JobId => Str

=item QueueId => Str

=item SessionId => Str

=item TargetLifecycleStatus => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::UpdateSession>

Returns: a L<Paws::Deadline::UpdateSessionResponse> instance

Updates a session.


=head2 UpdateStep

=over

=item FarmId => Str

=item JobId => Str

=item QueueId => Str

=item StepId => Str

=item TargetTaskRunStatus => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::UpdateStep>

Returns: a L<Paws::Deadline::UpdateStepResponse> instance

Updates a step.


=head2 UpdateStorageProfile

=over

=item FarmId => Str

=item StorageProfileId => Str

=item [ClientToken => Str]

=item [DisplayName => Str]

=item [FileSystemLocationsToAdd => ArrayRef[L<Paws::Deadline::FileSystemLocation>]]

=item [FileSystemLocationsToRemove => ArrayRef[L<Paws::Deadline::FileSystemLocation>]]

=item [OsFamily => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::UpdateStorageProfile>

Returns: a L<Paws::Deadline::UpdateStorageProfileResponse> instance

Updates a storage profile.


=head2 UpdateTask

=over

=item FarmId => Str

=item JobId => Str

=item QueueId => Str

=item StepId => Str

=item TargetRunStatus => Str

=item TaskId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::UpdateTask>

Returns: a L<Paws::Deadline::UpdateTaskResponse> instance

Updates a task.


=head2 UpdateWorker

=over

=item FarmId => Str

=item FleetId => Str

=item WorkerId => Str

=item [Capabilities => L<Paws::Deadline::WorkerCapabilities>]

=item [HostProperties => L<Paws::Deadline::HostPropertiesRequest>]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Deadline::UpdateWorker>

Returns: a L<Paws::Deadline::UpdateWorkerResponse> instance

Updates a worker.


=head2 UpdateWorkerSchedule

=over

=item FarmId => Str

=item FleetId => Str

=item WorkerId => Str

=item [UpdatedSessionActions => L<Paws::Deadline::UpdatedSessionActions>]


=back

Each argument is described in detail in: L<Paws::Deadline::UpdateWorkerSchedule>

Returns: a L<Paws::Deadline::UpdateWorkerScheduleResponse> instance

Updates the schedule for a worker.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllSessionsStatisticsAggregation(sub { },AggregationId => Str, FarmId => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllSessionsStatisticsAggregation(AggregationId => Str, FarmId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - statistics, passing the object as the first parameter, and the string 'statistics' as the second parameter 

If not, it will return a a L<Paws::Deadline::GetSessionsStatisticsAggregationResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAvailableMeteredProducts(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllAvailableMeteredProducts([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - meteredProducts, passing the object as the first parameter, and the string 'meteredProducts' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListAvailableMeteredProductsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBudgets(sub { },FarmId => Str, [MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllBudgets(FarmId => Str, [MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - budgets, passing the object as the first parameter, and the string 'budgets' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListBudgetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFarmMembers(sub { },FarmId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllFarmMembers(FarmId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - members, passing the object as the first parameter, and the string 'members' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListFarmMembersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFarms(sub { },[MaxResults => Int, NextToken => Str, PrincipalId => Str])

=head2 ListAllFarms([MaxResults => Int, NextToken => Str, PrincipalId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - farms, passing the object as the first parameter, and the string 'farms' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListFarmsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFleetMembers(sub { },FarmId => Str, FleetId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllFleetMembers(FarmId => Str, FleetId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - members, passing the object as the first parameter, and the string 'members' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListFleetMembersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFleets(sub { },FarmId => Str, [DisplayName => Str, MaxResults => Int, NextToken => Str, PrincipalId => Str, Status => Str])

=head2 ListAllFleets(FarmId => Str, [DisplayName => Str, MaxResults => Int, NextToken => Str, PrincipalId => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - fleets, passing the object as the first parameter, and the string 'fleets' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListFleetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllJobMembers(sub { },FarmId => Str, JobId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllJobMembers(FarmId => Str, JobId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - members, passing the object as the first parameter, and the string 'members' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListJobMembersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllJobParameterDefinitions(sub { },FarmId => Str, JobId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllJobParameterDefinitions(FarmId => Str, JobId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - jobParameterDefinitions, passing the object as the first parameter, and the string 'jobParameterDefinitions' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListJobParameterDefinitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllJobs(sub { },FarmId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str, PrincipalId => Str])

=head2 ListAllJobs(FarmId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str, PrincipalId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - jobs, passing the object as the first parameter, and the string 'jobs' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLicenseEndpoints(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllLicenseEndpoints([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - licenseEndpoints, passing the object as the first parameter, and the string 'licenseEndpoints' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListLicenseEndpointsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLimits(sub { },FarmId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllLimits(FarmId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - limits, passing the object as the first parameter, and the string 'limits' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListLimitsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMeteredProducts(sub { },LicenseEndpointId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllMeteredProducts(LicenseEndpointId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - meteredProducts, passing the object as the first parameter, and the string 'meteredProducts' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListMeteredProductsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMonitors(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllMonitors([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - monitors, passing the object as the first parameter, and the string 'monitors' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListMonitorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllQueueEnvironments(sub { },FarmId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllQueueEnvironments(FarmId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - environments, passing the object as the first parameter, and the string 'environments' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListQueueEnvironmentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllQueueFleetAssociations(sub { },FarmId => Str, [FleetId => Str, MaxResults => Int, NextToken => Str, QueueId => Str])

=head2 ListAllQueueFleetAssociations(FarmId => Str, [FleetId => Str, MaxResults => Int, NextToken => Str, QueueId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - queueFleetAssociations, passing the object as the first parameter, and the string 'queueFleetAssociations' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListQueueFleetAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllQueueLimitAssociations(sub { },FarmId => Str, [LimitId => Str, MaxResults => Int, NextToken => Str, QueueId => Str])

=head2 ListAllQueueLimitAssociations(FarmId => Str, [LimitId => Str, MaxResults => Int, NextToken => Str, QueueId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - queueLimitAssociations, passing the object as the first parameter, and the string 'queueLimitAssociations' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListQueueLimitAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllQueueMembers(sub { },FarmId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllQueueMembers(FarmId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - members, passing the object as the first parameter, and the string 'members' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListQueueMembersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllQueues(sub { },FarmId => Str, [MaxResults => Int, NextToken => Str, PrincipalId => Str, Status => Str])

=head2 ListAllQueues(FarmId => Str, [MaxResults => Int, NextToken => Str, PrincipalId => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - queues, passing the object as the first parameter, and the string 'queues' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListQueuesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSessionActions(sub { },FarmId => Str, JobId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str, SessionId => Str, TaskId => Str])

=head2 ListAllSessionActions(FarmId => Str, JobId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str, SessionId => Str, TaskId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - sessionActions, passing the object as the first parameter, and the string 'sessionActions' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListSessionActionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSessions(sub { },FarmId => Str, JobId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllSessions(FarmId => Str, JobId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - sessions, passing the object as the first parameter, and the string 'sessions' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListSessionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSessionsForWorker(sub { },FarmId => Str, FleetId => Str, WorkerId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllSessionsForWorker(FarmId => Str, FleetId => Str, WorkerId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - sessions, passing the object as the first parameter, and the string 'sessions' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListSessionsForWorkerResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStepConsumers(sub { },FarmId => Str, JobId => Str, QueueId => Str, StepId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllStepConsumers(FarmId => Str, JobId => Str, QueueId => Str, StepId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - consumers, passing the object as the first parameter, and the string 'consumers' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListStepConsumersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStepDependencies(sub { },FarmId => Str, JobId => Str, QueueId => Str, StepId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllStepDependencies(FarmId => Str, JobId => Str, QueueId => Str, StepId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - dependencies, passing the object as the first parameter, and the string 'dependencies' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListStepDependenciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSteps(sub { },FarmId => Str, JobId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllSteps(FarmId => Str, JobId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - steps, passing the object as the first parameter, and the string 'steps' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListStepsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStorageProfiles(sub { },FarmId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllStorageProfiles(FarmId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - storageProfiles, passing the object as the first parameter, and the string 'storageProfiles' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListStorageProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStorageProfilesForQueue(sub { },FarmId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllStorageProfilesForQueue(FarmId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - storageProfiles, passing the object as the first parameter, and the string 'storageProfiles' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListStorageProfilesForQueueResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTasks(sub { },FarmId => Str, JobId => Str, QueueId => Str, StepId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTasks(FarmId => Str, JobId => Str, QueueId => Str, StepId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tasks, passing the object as the first parameter, and the string 'tasks' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListTasksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkers(sub { },FarmId => Str, FleetId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllWorkers(FarmId => Str, FleetId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - workers, passing the object as the first parameter, and the string 'workers' as the second parameter 

If not, it will return a a L<Paws::Deadline::ListWorkersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

