package Paws::Connect;
  use Moose;
  sub service { 'connect' }
  sub signing_name { 'connect' }
  sub version { '2017-08-08' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub ActivateEvaluationForm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ActivateEvaluationForm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateAnalyticsDataSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::AssociateAnalyticsDataSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateApprovedOrigin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::AssociateApprovedOrigin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::AssociateBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateDefaultVocabulary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::AssociateDefaultVocabulary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::AssociateFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateInstanceStorageConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::AssociateInstanceStorageConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateLambdaFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::AssociateLambdaFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateLexBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::AssociateLexBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociatePhoneNumberContactFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::AssociatePhoneNumberContactFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateQueueQuickConnects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::AssociateQueueQuickConnects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateRoutingProfileQueues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::AssociateRoutingProfileQueues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateSecurityKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::AssociateSecurityKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateTrafficDistributionGroupUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::AssociateTrafficDistributionGroupUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateUserProficiencies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::AssociateUserProficiencies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchAssociateAnalyticsDataSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::BatchAssociateAnalyticsDataSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDisassociateAnalyticsDataSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::BatchDisassociateAnalyticsDataSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetAttachedFileMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::BatchGetAttachedFileMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetFlowAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::BatchGetFlowAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchPutContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::BatchPutContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ClaimPhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ClaimPhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CompleteAttachedFileUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CompleteAttachedFileUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAgentStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateAgentStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateContactFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateContactFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateContactFlowModule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateContactFlowModule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateContactFlowVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateContactFlowVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEmailAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateEmailAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEvaluationForm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateEvaluationForm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHoursOfOperation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateHoursOfOperation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHoursOfOperationOverride {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateHoursOfOperationOverride', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIntegrationAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateIntegrationAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateParticipant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateParticipant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePersistentContactAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreatePersistentContactAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePredefinedAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreatePredefinedAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePrompt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreatePrompt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePushNotificationRegistration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreatePushNotificationRegistration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateQuickConnect {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateQuickConnect', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRoutingProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateRoutingProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSecurityProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateSecurityProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTaskTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateTaskTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrafficDistributionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateTrafficDistributionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUseCase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateUseCase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUserHierarchyGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateUserHierarchyGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateViewVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateViewVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVocabulary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateVocabulary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeactivateEvaluationForm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeactivateEvaluationForm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAttachedFile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteAttachedFile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteContactEvaluation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteContactEvaluation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteContactFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteContactFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteContactFlowModule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteContactFlowModule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteContactFlowVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteContactFlowVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEmailAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteEmailAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEvaluationForm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteEvaluationForm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHoursOfOperation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteHoursOfOperation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHoursOfOperationOverride {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteHoursOfOperationOverride', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIntegrationAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteIntegrationAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePredefinedAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeletePredefinedAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePrompt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeletePrompt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePushNotificationRegistration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeletePushNotificationRegistration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteQuickConnect {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteQuickConnect', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRoutingProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteRoutingProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSecurityProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteSecurityProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTaskTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteTaskTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrafficDistributionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteTrafficDistributionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUseCase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteUseCase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUserHierarchyGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteUserHierarchyGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteViewVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteViewVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVocabulary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteVocabulary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAgentStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeAgentStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAuthenticationProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeAuthenticationProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeContactEvaluation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeContactEvaluation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeContactFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeContactFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeContactFlowModule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeContactFlowModule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEmailAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeEmailAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEvaluationForm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeEvaluationForm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHoursOfOperation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeHoursOfOperation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHoursOfOperationOverride {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeHoursOfOperationOverride', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeInstanceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceStorageConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeInstanceStorageConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribePhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePredefinedAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribePredefinedAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePrompt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribePrompt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeQuickConnect {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeQuickConnect', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRoutingProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeRoutingProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSecurityProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeSecurityProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrafficDistributionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeTrafficDistributionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUserHierarchyGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeUserHierarchyGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUserHierarchyStructure {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeUserHierarchyStructure', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVocabulary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeVocabulary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateAnalyticsDataSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DisassociateAnalyticsDataSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateApprovedOrigin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DisassociateApprovedOrigin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DisassociateBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DisassociateFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateInstanceStorageConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DisassociateInstanceStorageConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateLambdaFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DisassociateLambdaFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateLexBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DisassociateLexBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociatePhoneNumberContactFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DisassociatePhoneNumberContactFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateQueueQuickConnects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DisassociateQueueQuickConnects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateRoutingProfileQueues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DisassociateRoutingProfileQueues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateSecurityKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DisassociateSecurityKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateTrafficDistributionGroupUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DisassociateTrafficDistributionGroupUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateUserProficiencies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DisassociateUserProficiencies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DismissUserContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DismissUserContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAttachedFile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::GetAttachedFile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContactAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::GetContactAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCurrentMetricData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::GetCurrentMetricData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCurrentUserData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::GetCurrentUserData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEffectiveHoursOfOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::GetEffectiveHoursOfOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFederationToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::GetFederationToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFlowAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::GetFlowAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMetricData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::GetMetricData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMetricDataV2 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::GetMetricDataV2', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPromptFile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::GetPromptFile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTaskTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::GetTaskTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTrafficDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::GetTrafficDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportPhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ImportPhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAgentStatuses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListAgentStatuses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAnalyticsDataAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListAnalyticsDataAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAnalyticsDataLakeDataSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListAnalyticsDataLakeDataSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApprovedOrigins {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListApprovedOrigins', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssociatedContacts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListAssociatedContacts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAuthenticationProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListAuthenticationProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListBots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContactEvaluations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListContactEvaluations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContactFlowModules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListContactFlowModules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContactFlows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListContactFlows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContactFlowVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListContactFlowVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContactReferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListContactReferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDefaultVocabularies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListDefaultVocabularies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEvaluationForms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListEvaluationForms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEvaluationFormVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListEvaluationFormVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFlowAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListFlowAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHoursOfOperationOverrides {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListHoursOfOperationOverrides', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHoursOfOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListHoursOfOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInstanceAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListInstanceAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInstanceStorageConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListInstanceStorageConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIntegrationAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListIntegrationAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLambdaFunctions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListLambdaFunctions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLexBots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListLexBots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPhoneNumbers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListPhoneNumbers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPhoneNumbersV2 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListPhoneNumbersV2', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPredefinedAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListPredefinedAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPrompts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListPrompts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQueueQuickConnects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListQueueQuickConnects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQueues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListQueues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQuickConnects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListQuickConnects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRealtimeContactAnalysisSegmentsV2 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListRealtimeContactAnalysisSegmentsV2', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRoutingProfileQueues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListRoutingProfileQueues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRoutingProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListRoutingProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSecurityKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListSecurityKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSecurityProfileApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListSecurityProfileApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSecurityProfilePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListSecurityProfilePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSecurityProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListSecurityProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTaskTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListTaskTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrafficDistributionGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListTrafficDistributionGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrafficDistributionGroupUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListTrafficDistributionGroupUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUseCases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListUseCases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUserHierarchyGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListUserHierarchyGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUserProficiencies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListUserProficiencies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListViews {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListViews', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListViewVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListViewVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MonitorContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::MonitorContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PauseContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::PauseContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutUserStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::PutUserStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReleasePhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ReleasePhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplicateInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ReplicateInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResumeContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ResumeContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResumeContactRecording {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ResumeContactRecording', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchAgentStatuses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SearchAgentStatuses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchAvailablePhoneNumbers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SearchAvailablePhoneNumbers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchContactFlowModules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SearchContactFlowModules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchContactFlows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SearchContactFlows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchContacts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SearchContacts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchEmailAddresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SearchEmailAddresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchHoursOfOperationOverrides {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SearchHoursOfOperationOverrides', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchHoursOfOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SearchHoursOfOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchPredefinedAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SearchPredefinedAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchPrompts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SearchPrompts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchQueues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SearchQueues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchQuickConnects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SearchQuickConnects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchResourceTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SearchResourceTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchRoutingProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SearchRoutingProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchSecurityProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SearchSecurityProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchUserHierarchyGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SearchUserHierarchyGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SearchUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchVocabularies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SearchVocabularies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendChatIntegrationEvent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SendChatIntegrationEvent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendOutboundEmail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SendOutboundEmail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartAttachedFileUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StartAttachedFileUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartChatContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StartChatContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartContactEvaluation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StartContactEvaluation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartContactRecording {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StartContactRecording', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartContactStreaming {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StartContactStreaming', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartEmailContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StartEmailContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartOutboundChatContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StartOutboundChatContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartOutboundEmailContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StartOutboundEmailContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartOutboundVoiceContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StartOutboundVoiceContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartScreenSharing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StartScreenSharing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTaskContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StartTaskContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartWebRTCContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StartWebRTCContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StopContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopContactRecording {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StopContactRecording', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopContactStreaming {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StopContactStreaming', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SubmitContactEvaluation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SubmitContactEvaluation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SuspendContactRecording {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SuspendContactRecording', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::TagContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TransferContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::TransferContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UntagContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAgentStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateAgentStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAuthenticationProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateAuthenticationProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContactAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateContactAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContactEvaluation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateContactEvaluation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContactFlowContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateContactFlowContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContactFlowMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateContactFlowMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContactFlowModuleContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateContactFlowModuleContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContactFlowModuleMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateContactFlowModuleMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContactFlowName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateContactFlowName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContactRoutingData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateContactRoutingData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContactSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateContactSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEmailAddressMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateEmailAddressMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEvaluationForm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateEvaluationForm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateHoursOfOperation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateHoursOfOperation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateHoursOfOperationOverride {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateHoursOfOperationOverride', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInstanceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateInstanceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInstanceStorageConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateInstanceStorageConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateParticipantAuthentication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateParticipantAuthentication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateParticipantRoleConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateParticipantRoleConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdatePhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePhoneNumberMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdatePhoneNumberMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePredefinedAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdatePredefinedAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePrompt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdatePrompt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQueueHoursOfOperation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateQueueHoursOfOperation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQueueMaxContacts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateQueueMaxContacts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQueueName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateQueueName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQueueOutboundCallerConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateQueueOutboundCallerConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQueueOutboundEmailConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateQueueOutboundEmailConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQueueStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateQueueStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQuickConnectConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateQuickConnectConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQuickConnectName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateQuickConnectName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoutingProfileAgentAvailabilityTimer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateRoutingProfileAgentAvailabilityTimer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoutingProfileConcurrency {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateRoutingProfileConcurrency', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoutingProfileDefaultOutboundQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateRoutingProfileDefaultOutboundQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoutingProfileName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateRoutingProfileName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoutingProfileQueues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateRoutingProfileQueues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSecurityProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateSecurityProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTaskTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateTaskTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTrafficDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateTrafficDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserHierarchy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateUserHierarchy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserHierarchyGroupName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateUserHierarchyGroupName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserHierarchyStructure {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateUserHierarchyStructure', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserIdentityInfo {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateUserIdentityInfo', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserPhoneConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateUserPhoneConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserProficiencies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateUserProficiencies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserRoutingProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateUserRoutingProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserSecurityProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateUserSecurityProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateViewContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateViewContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateViewMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateViewMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllMetricData {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetMetricData(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetMetricData(@_, NextToken => $next_result->NextToken);
        push @{ $result->MetricResults }, @{ $next_result->MetricResults };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MetricResults') foreach (@{ $result->MetricResults });
        $result = $self->GetMetricData(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MetricResults') foreach (@{ $result->MetricResults });
    }

    return undef
  }
  sub ListAllAgentStatuses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAgentStatuses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAgentStatuses(@_, NextToken => $next_result->NextToken);
        push @{ $result->AgentStatusSummaryList }, @{ $next_result->AgentStatusSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AgentStatusSummaryList') foreach (@{ $result->AgentStatusSummaryList });
        $result = $self->ListAgentStatuses(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AgentStatusSummaryList') foreach (@{ $result->AgentStatusSummaryList });
    }

    return undef
  }
  sub ListAllApprovedOrigins {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApprovedOrigins(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListApprovedOrigins(@_, NextToken => $next_result->NextToken);
        push @{ $result->Origins }, @{ $next_result->Origins };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Origins') foreach (@{ $result->Origins });
        $result = $self->ListApprovedOrigins(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Origins') foreach (@{ $result->Origins });
    }

    return undef
  }
  sub ListAllAuthenticationProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAuthenticationProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAuthenticationProfiles(@_, NextToken => $next_result->NextToken);
        push @{ $result->AuthenticationProfileSummaryList }, @{ $next_result->AuthenticationProfileSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AuthenticationProfileSummaryList') foreach (@{ $result->AuthenticationProfileSummaryList });
        $result = $self->ListAuthenticationProfiles(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AuthenticationProfileSummaryList') foreach (@{ $result->AuthenticationProfileSummaryList });
    }

    return undef
  }
  sub ListAllBots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListBots(@_, NextToken => $next_result->NextToken);
        push @{ $result->LexBots }, @{ $next_result->LexBots };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LexBots') foreach (@{ $result->LexBots });
        $result = $self->ListBots(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LexBots') foreach (@{ $result->LexBots });
    }

    return undef
  }
  sub ListAllContactEvaluations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContactEvaluations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListContactEvaluations(@_, NextToken => $next_result->NextToken);
        push @{ $result->EvaluationSummaryList }, @{ $next_result->EvaluationSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EvaluationSummaryList') foreach (@{ $result->EvaluationSummaryList });
        $result = $self->ListContactEvaluations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EvaluationSummaryList') foreach (@{ $result->EvaluationSummaryList });
    }

    return undef
  }
  sub ListAllContactFlowModules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContactFlowModules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListContactFlowModules(@_, NextToken => $next_result->NextToken);
        push @{ $result->ContactFlowModulesSummaryList }, @{ $next_result->ContactFlowModulesSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ContactFlowModulesSummaryList') foreach (@{ $result->ContactFlowModulesSummaryList });
        $result = $self->ListContactFlowModules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ContactFlowModulesSummaryList') foreach (@{ $result->ContactFlowModulesSummaryList });
    }

    return undef
  }
  sub ListAllContactFlows {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContactFlows(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListContactFlows(@_, NextToken => $next_result->NextToken);
        push @{ $result->ContactFlowSummaryList }, @{ $next_result->ContactFlowSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ContactFlowSummaryList') foreach (@{ $result->ContactFlowSummaryList });
        $result = $self->ListContactFlows(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ContactFlowSummaryList') foreach (@{ $result->ContactFlowSummaryList });
    }

    return undef
  }
  sub ListAllContactFlowVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContactFlowVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListContactFlowVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->ContactFlowVersionSummaryList }, @{ $next_result->ContactFlowVersionSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ContactFlowVersionSummaryList') foreach (@{ $result->ContactFlowVersionSummaryList });
        $result = $self->ListContactFlowVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ContactFlowVersionSummaryList') foreach (@{ $result->ContactFlowVersionSummaryList });
    }

    return undef
  }
  sub ListAllContactReferences {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContactReferences(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListContactReferences(@_, NextToken => $next_result->NextToken);
        push @{ $result->ReferenceSummaryList }, @{ $next_result->ReferenceSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ReferenceSummaryList') foreach (@{ $result->ReferenceSummaryList });
        $result = $self->ListContactReferences(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ReferenceSummaryList') foreach (@{ $result->ReferenceSummaryList });
    }

    return undef
  }
  sub ListAllDefaultVocabularies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDefaultVocabularies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDefaultVocabularies(@_, NextToken => $next_result->NextToken);
        push @{ $result->DefaultVocabularyList }, @{ $next_result->DefaultVocabularyList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DefaultVocabularyList') foreach (@{ $result->DefaultVocabularyList });
        $result = $self->ListDefaultVocabularies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DefaultVocabularyList') foreach (@{ $result->DefaultVocabularyList });
    }

    return undef
  }
  sub ListAllEvaluationForms {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEvaluationForms(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEvaluationForms(@_, NextToken => $next_result->NextToken);
        push @{ $result->EvaluationFormSummaryList }, @{ $next_result->EvaluationFormSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EvaluationFormSummaryList') foreach (@{ $result->EvaluationFormSummaryList });
        $result = $self->ListEvaluationForms(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EvaluationFormSummaryList') foreach (@{ $result->EvaluationFormSummaryList });
    }

    return undef
  }
  sub ListAllEvaluationFormVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEvaluationFormVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEvaluationFormVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->EvaluationFormVersionSummaryList }, @{ $next_result->EvaluationFormVersionSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EvaluationFormVersionSummaryList') foreach (@{ $result->EvaluationFormVersionSummaryList });
        $result = $self->ListEvaluationFormVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EvaluationFormVersionSummaryList') foreach (@{ $result->EvaluationFormVersionSummaryList });
    }

    return undef
  }
  sub ListAllFlowAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFlowAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFlowAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->FlowAssociationSummaryList }, @{ $next_result->FlowAssociationSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FlowAssociationSummaryList') foreach (@{ $result->FlowAssociationSummaryList });
        $result = $self->ListFlowAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FlowAssociationSummaryList') foreach (@{ $result->FlowAssociationSummaryList });
    }

    return undef
  }
  sub ListAllHoursOfOperationOverrides {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListHoursOfOperationOverrides(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListHoursOfOperationOverrides(@_, NextToken => $next_result->NextToken);
        push @{ $result->HoursOfOperationOverrideList }, @{ $next_result->HoursOfOperationOverrideList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'HoursOfOperationOverrideList') foreach (@{ $result->HoursOfOperationOverrideList });
        $result = $self->ListHoursOfOperationOverrides(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'HoursOfOperationOverrideList') foreach (@{ $result->HoursOfOperationOverrideList });
    }

    return undef
  }
  sub ListAllHoursOfOperations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListHoursOfOperations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListHoursOfOperations(@_, NextToken => $next_result->NextToken);
        push @{ $result->HoursOfOperationSummaryList }, @{ $next_result->HoursOfOperationSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'HoursOfOperationSummaryList') foreach (@{ $result->HoursOfOperationSummaryList });
        $result = $self->ListHoursOfOperations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'HoursOfOperationSummaryList') foreach (@{ $result->HoursOfOperationSummaryList });
    }

    return undef
  }
  sub ListAllInstanceAttributes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInstanceAttributes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListInstanceAttributes(@_, NextToken => $next_result->NextToken);
        push @{ $result->Attributes }, @{ $next_result->Attributes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Attributes') foreach (@{ $result->Attributes });
        $result = $self->ListInstanceAttributes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Attributes') foreach (@{ $result->Attributes });
    }

    return undef
  }
  sub ListAllInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->InstanceSummaryList }, @{ $next_result->InstanceSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InstanceSummaryList') foreach (@{ $result->InstanceSummaryList });
        $result = $self->ListInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InstanceSummaryList') foreach (@{ $result->InstanceSummaryList });
    }

    return undef
  }
  sub ListAllInstanceStorageConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInstanceStorageConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListInstanceStorageConfigs(@_, NextToken => $next_result->NextToken);
        push @{ $result->StorageConfigs }, @{ $next_result->StorageConfigs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'StorageConfigs') foreach (@{ $result->StorageConfigs });
        $result = $self->ListInstanceStorageConfigs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'StorageConfigs') foreach (@{ $result->StorageConfigs });
    }

    return undef
  }
  sub ListAllIntegrationAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIntegrationAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListIntegrationAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->IntegrationAssociationSummaryList }, @{ $next_result->IntegrationAssociationSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IntegrationAssociationSummaryList') foreach (@{ $result->IntegrationAssociationSummaryList });
        $result = $self->ListIntegrationAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IntegrationAssociationSummaryList') foreach (@{ $result->IntegrationAssociationSummaryList });
    }

    return undef
  }
  sub ListAllLambdaFunctions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLambdaFunctions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLambdaFunctions(@_, NextToken => $next_result->NextToken);
        push @{ $result->LambdaFunctions }, @{ $next_result->LambdaFunctions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LambdaFunctions') foreach (@{ $result->LambdaFunctions });
        $result = $self->ListLambdaFunctions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LambdaFunctions') foreach (@{ $result->LambdaFunctions });
    }

    return undef
  }
  sub ListAllLexBots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLexBots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLexBots(@_, NextToken => $next_result->NextToken);
        push @{ $result->LexBots }, @{ $next_result->LexBots };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LexBots') foreach (@{ $result->LexBots });
        $result = $self->ListLexBots(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LexBots') foreach (@{ $result->LexBots });
    }

    return undef
  }
  sub ListAllPhoneNumbers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPhoneNumbers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPhoneNumbers(@_, NextToken => $next_result->NextToken);
        push @{ $result->PhoneNumberSummaryList }, @{ $next_result->PhoneNumberSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PhoneNumberSummaryList') foreach (@{ $result->PhoneNumberSummaryList });
        $result = $self->ListPhoneNumbers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PhoneNumberSummaryList') foreach (@{ $result->PhoneNumberSummaryList });
    }

    return undef
  }
  sub ListAllPhoneNumbersV2 {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPhoneNumbersV2(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPhoneNumbersV2(@_, NextToken => $next_result->NextToken);
        push @{ $result->ListPhoneNumbersSummaryList }, @{ $next_result->ListPhoneNumbersSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ListPhoneNumbersSummaryList') foreach (@{ $result->ListPhoneNumbersSummaryList });
        $result = $self->ListPhoneNumbersV2(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ListPhoneNumbersSummaryList') foreach (@{ $result->ListPhoneNumbersSummaryList });
    }

    return undef
  }
  sub ListAllPredefinedAttributes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPredefinedAttributes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPredefinedAttributes(@_, NextToken => $next_result->NextToken);
        push @{ $result->PredefinedAttributeSummaryList }, @{ $next_result->PredefinedAttributeSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PredefinedAttributeSummaryList') foreach (@{ $result->PredefinedAttributeSummaryList });
        $result = $self->ListPredefinedAttributes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PredefinedAttributeSummaryList') foreach (@{ $result->PredefinedAttributeSummaryList });
    }

    return undef
  }
  sub ListAllPrompts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPrompts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPrompts(@_, NextToken => $next_result->NextToken);
        push @{ $result->PromptSummaryList }, @{ $next_result->PromptSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PromptSummaryList') foreach (@{ $result->PromptSummaryList });
        $result = $self->ListPrompts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PromptSummaryList') foreach (@{ $result->PromptSummaryList });
    }

    return undef
  }
  sub ListAllQueueQuickConnects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListQueueQuickConnects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListQueueQuickConnects(@_, NextToken => $next_result->NextToken);
        push @{ $result->QuickConnectSummaryList }, @{ $next_result->QuickConnectSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'QuickConnectSummaryList') foreach (@{ $result->QuickConnectSummaryList });
        $result = $self->ListQueueQuickConnects(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'QuickConnectSummaryList') foreach (@{ $result->QuickConnectSummaryList });
    }

    return undef
  }
  sub ListAllQueues {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListQueues(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListQueues(@_, NextToken => $next_result->NextToken);
        push @{ $result->QueueSummaryList }, @{ $next_result->QueueSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'QueueSummaryList') foreach (@{ $result->QueueSummaryList });
        $result = $self->ListQueues(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'QueueSummaryList') foreach (@{ $result->QueueSummaryList });
    }

    return undef
  }
  sub ListAllQuickConnects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListQuickConnects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListQuickConnects(@_, NextToken => $next_result->NextToken);
        push @{ $result->QuickConnectSummaryList }, @{ $next_result->QuickConnectSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'QuickConnectSummaryList') foreach (@{ $result->QuickConnectSummaryList });
        $result = $self->ListQuickConnects(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'QuickConnectSummaryList') foreach (@{ $result->QuickConnectSummaryList });
    }

    return undef
  }
  sub ListAllRoutingProfileQueues {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRoutingProfileQueues(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRoutingProfileQueues(@_, NextToken => $next_result->NextToken);
        push @{ $result->RoutingProfileQueueConfigSummaryList }, @{ $next_result->RoutingProfileQueueConfigSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RoutingProfileQueueConfigSummaryList') foreach (@{ $result->RoutingProfileQueueConfigSummaryList });
        $result = $self->ListRoutingProfileQueues(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RoutingProfileQueueConfigSummaryList') foreach (@{ $result->RoutingProfileQueueConfigSummaryList });
    }

    return undef
  }
  sub ListAllRoutingProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRoutingProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRoutingProfiles(@_, NextToken => $next_result->NextToken);
        push @{ $result->RoutingProfileSummaryList }, @{ $next_result->RoutingProfileSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RoutingProfileSummaryList') foreach (@{ $result->RoutingProfileSummaryList });
        $result = $self->ListRoutingProfiles(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RoutingProfileSummaryList') foreach (@{ $result->RoutingProfileSummaryList });
    }

    return undef
  }
  sub ListAllRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRules(@_, NextToken => $next_result->NextToken);
        push @{ $result->RuleSummaryList }, @{ $next_result->RuleSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RuleSummaryList') foreach (@{ $result->RuleSummaryList });
        $result = $self->ListRules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RuleSummaryList') foreach (@{ $result->RuleSummaryList });
    }

    return undef
  }
  sub ListAllSecurityKeys {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSecurityKeys(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSecurityKeys(@_, NextToken => $next_result->NextToken);
        push @{ $result->SecurityKeys }, @{ $next_result->SecurityKeys };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SecurityKeys') foreach (@{ $result->SecurityKeys });
        $result = $self->ListSecurityKeys(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SecurityKeys') foreach (@{ $result->SecurityKeys });
    }

    return undef
  }
  sub ListAllSecurityProfileApplications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSecurityProfileApplications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSecurityProfileApplications(@_, NextToken => $next_result->NextToken);
        push @{ $result->Applications }, @{ $next_result->Applications };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Applications') foreach (@{ $result->Applications });
        $result = $self->ListSecurityProfileApplications(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Applications') foreach (@{ $result->Applications });
    }

    return undef
  }
  sub ListAllSecurityProfilePermissions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSecurityProfilePermissions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSecurityProfilePermissions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Permissions }, @{ $next_result->Permissions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Permissions') foreach (@{ $result->Permissions });
        $result = $self->ListSecurityProfilePermissions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Permissions') foreach (@{ $result->Permissions });
    }

    return undef
  }
  sub ListAllSecurityProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSecurityProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSecurityProfiles(@_, NextToken => $next_result->NextToken);
        push @{ $result->SecurityProfileSummaryList }, @{ $next_result->SecurityProfileSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SecurityProfileSummaryList') foreach (@{ $result->SecurityProfileSummaryList });
        $result = $self->ListSecurityProfiles(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SecurityProfileSummaryList') foreach (@{ $result->SecurityProfileSummaryList });
    }

    return undef
  }
  sub ListAllTaskTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTaskTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTaskTemplates(@_, NextToken => $next_result->NextToken);
        push @{ $result->TaskTemplates }, @{ $next_result->TaskTemplates };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TaskTemplates') foreach (@{ $result->TaskTemplates });
        $result = $self->ListTaskTemplates(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TaskTemplates') foreach (@{ $result->TaskTemplates });
    }

    return undef
  }
  sub ListAllTrafficDistributionGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTrafficDistributionGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTrafficDistributionGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->TrafficDistributionGroupSummaryList }, @{ $next_result->TrafficDistributionGroupSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TrafficDistributionGroupSummaryList') foreach (@{ $result->TrafficDistributionGroupSummaryList });
        $result = $self->ListTrafficDistributionGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TrafficDistributionGroupSummaryList') foreach (@{ $result->TrafficDistributionGroupSummaryList });
    }

    return undef
  }
  sub ListAllTrafficDistributionGroupUsers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTrafficDistributionGroupUsers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTrafficDistributionGroupUsers(@_, NextToken => $next_result->NextToken);
        push @{ $result->TrafficDistributionGroupUserSummaryList }, @{ $next_result->TrafficDistributionGroupUserSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TrafficDistributionGroupUserSummaryList') foreach (@{ $result->TrafficDistributionGroupUserSummaryList });
        $result = $self->ListTrafficDistributionGroupUsers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TrafficDistributionGroupUserSummaryList') foreach (@{ $result->TrafficDistributionGroupUserSummaryList });
    }

    return undef
  }
  sub ListAllUseCases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUseCases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUseCases(@_, NextToken => $next_result->NextToken);
        push @{ $result->UseCaseSummaryList }, @{ $next_result->UseCaseSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'UseCaseSummaryList') foreach (@{ $result->UseCaseSummaryList });
        $result = $self->ListUseCases(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'UseCaseSummaryList') foreach (@{ $result->UseCaseSummaryList });
    }

    return undef
  }
  sub ListAllUserHierarchyGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUserHierarchyGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUserHierarchyGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->UserHierarchyGroupSummaryList }, @{ $next_result->UserHierarchyGroupSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'UserHierarchyGroupSummaryList') foreach (@{ $result->UserHierarchyGroupSummaryList });
        $result = $self->ListUserHierarchyGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'UserHierarchyGroupSummaryList') foreach (@{ $result->UserHierarchyGroupSummaryList });
    }

    return undef
  }
  sub ListAllUserProficiencies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUserProficiencies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUserProficiencies(@_, NextToken => $next_result->NextToken);
        push @{ $result->UserProficiencyList }, @{ $next_result->UserProficiencyList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'UserProficiencyList') foreach (@{ $result->UserProficiencyList });
        $result = $self->ListUserProficiencies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'UserProficiencyList') foreach (@{ $result->UserProficiencyList });
    }

    return undef
  }
  sub ListAllUsers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUsers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUsers(@_, NextToken => $next_result->NextToken);
        push @{ $result->UserSummaryList }, @{ $next_result->UserSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'UserSummaryList') foreach (@{ $result->UserSummaryList });
        $result = $self->ListUsers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'UserSummaryList') foreach (@{ $result->UserSummaryList });
    }

    return undef
  }
  sub ListAllViews {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListViews(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListViews(@_, NextToken => $next_result->NextToken);
        push @{ $result->ViewsSummaryList }, @{ $next_result->ViewsSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ViewsSummaryList') foreach (@{ $result->ViewsSummaryList });
        $result = $self->ListViews(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ViewsSummaryList') foreach (@{ $result->ViewsSummaryList });
    }

    return undef
  }
  sub ListAllViewVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListViewVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListViewVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->ViewVersionSummaryList }, @{ $next_result->ViewVersionSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ViewVersionSummaryList') foreach (@{ $result->ViewVersionSummaryList });
        $result = $self->ListViewVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ViewVersionSummaryList') foreach (@{ $result->ViewVersionSummaryList });
    }

    return undef
  }
  sub SearchAllAgentStatuses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchAgentStatuses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchAgentStatuses(@_, NextToken => $next_result->NextToken);
        push @{ $result->AgentStatuses }, @{ $next_result->AgentStatuses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AgentStatuses') foreach (@{ $result->AgentStatuses });
        $result = $self->SearchAgentStatuses(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AgentStatuses') foreach (@{ $result->AgentStatuses });
    }

    return undef
  }
  sub SearchAllAvailablePhoneNumbers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchAvailablePhoneNumbers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchAvailablePhoneNumbers(@_, NextToken => $next_result->NextToken);
        push @{ $result->AvailableNumbersList }, @{ $next_result->AvailableNumbersList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AvailableNumbersList') foreach (@{ $result->AvailableNumbersList });
        $result = $self->SearchAvailablePhoneNumbers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AvailableNumbersList') foreach (@{ $result->AvailableNumbersList });
    }

    return undef
  }
  sub SearchAllContactFlowModules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchContactFlowModules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchContactFlowModules(@_, NextToken => $next_result->NextToken);
        push @{ $result->ContactFlowModules }, @{ $next_result->ContactFlowModules };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ContactFlowModules') foreach (@{ $result->ContactFlowModules });
        $result = $self->SearchContactFlowModules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ContactFlowModules') foreach (@{ $result->ContactFlowModules });
    }

    return undef
  }
  sub SearchAllContactFlows {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchContactFlows(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchContactFlows(@_, NextToken => $next_result->NextToken);
        push @{ $result->ContactFlows }, @{ $next_result->ContactFlows };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ContactFlows') foreach (@{ $result->ContactFlows });
        $result = $self->SearchContactFlows(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ContactFlows') foreach (@{ $result->ContactFlows });
    }

    return undef
  }
  sub SearchAllContacts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchContacts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchContacts(@_, NextToken => $next_result->NextToken);
        push @{ $result->Contacts }, @{ $next_result->Contacts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Contacts') foreach (@{ $result->Contacts });
        $result = $self->SearchContacts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Contacts') foreach (@{ $result->Contacts });
    }

    return undef
  }
  sub SearchAllHoursOfOperationOverrides {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchHoursOfOperationOverrides(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchHoursOfOperationOverrides(@_, NextToken => $next_result->NextToken);
        push @{ $result->HoursOfOperationOverrides }, @{ $next_result->HoursOfOperationOverrides };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'HoursOfOperationOverrides') foreach (@{ $result->HoursOfOperationOverrides });
        $result = $self->SearchHoursOfOperationOverrides(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'HoursOfOperationOverrides') foreach (@{ $result->HoursOfOperationOverrides });
    }

    return undef
  }
  sub SearchAllHoursOfOperations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchHoursOfOperations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchHoursOfOperations(@_, NextToken => $next_result->NextToken);
        push @{ $result->HoursOfOperations }, @{ $next_result->HoursOfOperations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'HoursOfOperations') foreach (@{ $result->HoursOfOperations });
        $result = $self->SearchHoursOfOperations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'HoursOfOperations') foreach (@{ $result->HoursOfOperations });
    }

    return undef
  }
  sub SearchAllPredefinedAttributes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchPredefinedAttributes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchPredefinedAttributes(@_, NextToken => $next_result->NextToken);
        push @{ $result->PredefinedAttributes }, @{ $next_result->PredefinedAttributes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PredefinedAttributes') foreach (@{ $result->PredefinedAttributes });
        $result = $self->SearchPredefinedAttributes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PredefinedAttributes') foreach (@{ $result->PredefinedAttributes });
    }

    return undef
  }
  sub SearchAllPrompts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchPrompts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchPrompts(@_, NextToken => $next_result->NextToken);
        push @{ $result->Prompts }, @{ $next_result->Prompts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Prompts') foreach (@{ $result->Prompts });
        $result = $self->SearchPrompts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Prompts') foreach (@{ $result->Prompts });
    }

    return undef
  }
  sub SearchAllQueues {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchQueues(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchQueues(@_, NextToken => $next_result->NextToken);
        push @{ $result->Queues }, @{ $next_result->Queues };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Queues') foreach (@{ $result->Queues });
        $result = $self->SearchQueues(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Queues') foreach (@{ $result->Queues });
    }

    return undef
  }
  sub SearchAllQuickConnects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchQuickConnects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchQuickConnects(@_, NextToken => $next_result->NextToken);
        push @{ $result->QuickConnects }, @{ $next_result->QuickConnects };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'QuickConnects') foreach (@{ $result->QuickConnects });
        $result = $self->SearchQuickConnects(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'QuickConnects') foreach (@{ $result->QuickConnects });
    }

    return undef
  }
  sub SearchAllResourceTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchResourceTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchResourceTags(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->SearchResourceTags(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }
  sub SearchAllRoutingProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchRoutingProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchRoutingProfiles(@_, NextToken => $next_result->NextToken);
        push @{ $result->RoutingProfiles }, @{ $next_result->RoutingProfiles };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RoutingProfiles') foreach (@{ $result->RoutingProfiles });
        $result = $self->SearchRoutingProfiles(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RoutingProfiles') foreach (@{ $result->RoutingProfiles });
    }

    return undef
  }
  sub SearchAllSecurityProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchSecurityProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchSecurityProfiles(@_, NextToken => $next_result->NextToken);
        push @{ $result->SecurityProfiles }, @{ $next_result->SecurityProfiles };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SecurityProfiles') foreach (@{ $result->SecurityProfiles });
        $result = $self->SearchSecurityProfiles(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SecurityProfiles') foreach (@{ $result->SecurityProfiles });
    }

    return undef
  }
  sub SearchAllUserHierarchyGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchUserHierarchyGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchUserHierarchyGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->UserHierarchyGroups }, @{ $next_result->UserHierarchyGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'UserHierarchyGroups') foreach (@{ $result->UserHierarchyGroups });
        $result = $self->SearchUserHierarchyGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'UserHierarchyGroups') foreach (@{ $result->UserHierarchyGroups });
    }

    return undef
  }
  sub SearchAllUsers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchUsers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchUsers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Users }, @{ $next_result->Users };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Users') foreach (@{ $result->Users });
        $result = $self->SearchUsers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Users') foreach (@{ $result->Users });
    }

    return undef
  }
  sub SearchAllVocabularies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchVocabularies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchVocabularies(@_, NextToken => $next_result->NextToken);
        push @{ $result->VocabularySummaryList }, @{ $next_result->VocabularySummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'VocabularySummaryList') foreach (@{ $result->VocabularySummaryList });
        $result = $self->SearchVocabularies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'VocabularySummaryList') foreach (@{ $result->VocabularySummaryList });
    }

    return undef
  }


  sub operations { qw/ActivateEvaluationForm AssociateAnalyticsDataSet AssociateApprovedOrigin AssociateBot AssociateDefaultVocabulary AssociateFlow AssociateInstanceStorageConfig AssociateLambdaFunction AssociateLexBot AssociatePhoneNumberContactFlow AssociateQueueQuickConnects AssociateRoutingProfileQueues AssociateSecurityKey AssociateTrafficDistributionGroupUser AssociateUserProficiencies BatchAssociateAnalyticsDataSet BatchDisassociateAnalyticsDataSet BatchGetAttachedFileMetadata BatchGetFlowAssociation BatchPutContact ClaimPhoneNumber CompleteAttachedFileUpload CreateAgentStatus CreateContact CreateContactFlow CreateContactFlowModule CreateContactFlowVersion CreateEmailAddress CreateEvaluationForm CreateHoursOfOperation CreateHoursOfOperationOverride CreateInstance CreateIntegrationAssociation CreateParticipant CreatePersistentContactAssociation CreatePredefinedAttribute CreatePrompt CreatePushNotificationRegistration CreateQueue CreateQuickConnect CreateRoutingProfile CreateRule CreateSecurityProfile CreateTaskTemplate CreateTrafficDistributionGroup CreateUseCase CreateUser CreateUserHierarchyGroup CreateView CreateViewVersion CreateVocabulary DeactivateEvaluationForm DeleteAttachedFile DeleteContactEvaluation DeleteContactFlow DeleteContactFlowModule DeleteContactFlowVersion DeleteEmailAddress DeleteEvaluationForm DeleteHoursOfOperation DeleteHoursOfOperationOverride DeleteInstance DeleteIntegrationAssociation DeletePredefinedAttribute DeletePrompt DeletePushNotificationRegistration DeleteQueue DeleteQuickConnect DeleteRoutingProfile DeleteRule DeleteSecurityProfile DeleteTaskTemplate DeleteTrafficDistributionGroup DeleteUseCase DeleteUser DeleteUserHierarchyGroup DeleteView DeleteViewVersion DeleteVocabulary DescribeAgentStatus DescribeAuthenticationProfile DescribeContact DescribeContactEvaluation DescribeContactFlow DescribeContactFlowModule DescribeEmailAddress DescribeEvaluationForm DescribeHoursOfOperation DescribeHoursOfOperationOverride DescribeInstance DescribeInstanceAttribute DescribeInstanceStorageConfig DescribePhoneNumber DescribePredefinedAttribute DescribePrompt DescribeQueue DescribeQuickConnect DescribeRoutingProfile DescribeRule DescribeSecurityProfile DescribeTrafficDistributionGroup DescribeUser DescribeUserHierarchyGroup DescribeUserHierarchyStructure DescribeView DescribeVocabulary DisassociateAnalyticsDataSet DisassociateApprovedOrigin DisassociateBot DisassociateFlow DisassociateInstanceStorageConfig DisassociateLambdaFunction DisassociateLexBot DisassociatePhoneNumberContactFlow DisassociateQueueQuickConnects DisassociateRoutingProfileQueues DisassociateSecurityKey DisassociateTrafficDistributionGroupUser DisassociateUserProficiencies DismissUserContact GetAttachedFile GetContactAttributes GetCurrentMetricData GetCurrentUserData GetEffectiveHoursOfOperations GetFederationToken GetFlowAssociation GetMetricData GetMetricDataV2 GetPromptFile GetTaskTemplate GetTrafficDistribution ImportPhoneNumber ListAgentStatuses ListAnalyticsDataAssociations ListAnalyticsDataLakeDataSets ListApprovedOrigins ListAssociatedContacts ListAuthenticationProfiles ListBots ListContactEvaluations ListContactFlowModules ListContactFlows ListContactFlowVersions ListContactReferences ListDefaultVocabularies ListEvaluationForms ListEvaluationFormVersions ListFlowAssociations ListHoursOfOperationOverrides ListHoursOfOperations ListInstanceAttributes ListInstances ListInstanceStorageConfigs ListIntegrationAssociations ListLambdaFunctions ListLexBots ListPhoneNumbers ListPhoneNumbersV2 ListPredefinedAttributes ListPrompts ListQueueQuickConnects ListQueues ListQuickConnects ListRealtimeContactAnalysisSegmentsV2 ListRoutingProfileQueues ListRoutingProfiles ListRules ListSecurityKeys ListSecurityProfileApplications ListSecurityProfilePermissions ListSecurityProfiles ListTagsForResource ListTaskTemplates ListTrafficDistributionGroups ListTrafficDistributionGroupUsers ListUseCases ListUserHierarchyGroups ListUserProficiencies ListUsers ListViews ListViewVersions MonitorContact PauseContact PutUserStatus ReleasePhoneNumber ReplicateInstance ResumeContact ResumeContactRecording SearchAgentStatuses SearchAvailablePhoneNumbers SearchContactFlowModules SearchContactFlows SearchContacts SearchEmailAddresses SearchHoursOfOperationOverrides SearchHoursOfOperations SearchPredefinedAttributes SearchPrompts SearchQueues SearchQuickConnects SearchResourceTags SearchRoutingProfiles SearchSecurityProfiles SearchUserHierarchyGroups SearchUsers SearchVocabularies SendChatIntegrationEvent SendOutboundEmail StartAttachedFileUpload StartChatContact StartContactEvaluation StartContactRecording StartContactStreaming StartEmailContact StartOutboundChatContact StartOutboundEmailContact StartOutboundVoiceContact StartScreenSharing StartTaskContact StartWebRTCContact StopContact StopContactRecording StopContactStreaming SubmitContactEvaluation SuspendContactRecording TagContact TagResource TransferContact UntagContact UntagResource UpdateAgentStatus UpdateAuthenticationProfile UpdateContact UpdateContactAttributes UpdateContactEvaluation UpdateContactFlowContent UpdateContactFlowMetadata UpdateContactFlowModuleContent UpdateContactFlowModuleMetadata UpdateContactFlowName UpdateContactRoutingData UpdateContactSchedule UpdateEmailAddressMetadata UpdateEvaluationForm UpdateHoursOfOperation UpdateHoursOfOperationOverride UpdateInstanceAttribute UpdateInstanceStorageConfig UpdateParticipantAuthentication UpdateParticipantRoleConfig UpdatePhoneNumber UpdatePhoneNumberMetadata UpdatePredefinedAttribute UpdatePrompt UpdateQueueHoursOfOperation UpdateQueueMaxContacts UpdateQueueName UpdateQueueOutboundCallerConfig UpdateQueueOutboundEmailConfig UpdateQueueStatus UpdateQuickConnectConfig UpdateQuickConnectName UpdateRoutingProfileAgentAvailabilityTimer UpdateRoutingProfileConcurrency UpdateRoutingProfileDefaultOutboundQueue UpdateRoutingProfileName UpdateRoutingProfileQueues UpdateRule UpdateSecurityProfile UpdateTaskTemplate UpdateTrafficDistribution UpdateUserHierarchy UpdateUserHierarchyGroupName UpdateUserHierarchyStructure UpdateUserIdentityInfo UpdateUserPhoneConfig UpdateUserProficiencies UpdateUserRoutingProfile UpdateUserSecurityProfiles UpdateViewContent UpdateViewMetadata / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect - Perl Interface to AWS Amazon Connect Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Connect');
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

Amazon Connect actions
(https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Service.html)

=item *

Amazon Connect data types
(https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Connect_Service.html)

=back

Amazon Connect is a cloud-based contact center solution that you use to
set up and manage a customer contact center and provide reliable
customer engagement at any scale.

Amazon Connect provides metrics and real-time reporting that enable you
to optimize contact routing. You can also resolve customer issues more
efficiently by getting customers in touch with the appropriate agents.

There are limits to the number of Amazon Connect resources that you can
create. There are also limits to the number of requests that you can
make per second. For more information, see Amazon Connect Service
Quotas
(https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
in the I<Amazon Connect Administrator Guide>.

You can use an endpoint to connect programmatically to an Amazon Web
Services service. For a list of Amazon Connect endpoints, see Amazon
Connect Endpoints
(https://docs.aws.amazon.com/general/latest/gr/connect_region.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08>


=head1 METHODS

=head2 ActivateEvaluationForm

=over

=item EvaluationFormId => Str

=item EvaluationFormVersion => Int

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::ActivateEvaluationForm>

Returns: a L<Paws::Connect::ActivateEvaluationFormResponse> instance

Activates an evaluation form in the specified Amazon Connect instance.
After the evaluation form is activated, it is available to start new
evaluations based on the form.


=head2 AssociateAnalyticsDataSet

=over

=item DataSetId => Str

=item InstanceId => Str

=item [TargetAccountId => Str]


=back

Each argument is described in detail in: L<Paws::Connect::AssociateAnalyticsDataSet>

Returns: a L<Paws::Connect::AssociateAnalyticsDataSetResponse> instance

Associates the specified dataset for a Amazon Connect instance with the
target account. You can associate only one dataset in a single call.


=head2 AssociateApprovedOrigin

=over

=item InstanceId => Str

=item Origin => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::AssociateApprovedOrigin>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Associates an approved origin to an Amazon Connect instance.


=head2 AssociateBot

=over

=item InstanceId => Str

=item [ClientToken => Str]

=item [LexBot => L<Paws::Connect::LexBot>]

=item [LexV2Bot => L<Paws::Connect::LexV2Bot>]


=back

Each argument is described in detail in: L<Paws::Connect::AssociateBot>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Allows the specified Amazon Connect instance to access the specified
Amazon Lex or Amazon Lex V2 bot.


=head2 AssociateDefaultVocabulary

=over

=item InstanceId => Str

=item LanguageCode => Str

=item [VocabularyId => Str]


=back

Each argument is described in detail in: L<Paws::Connect::AssociateDefaultVocabulary>

Returns: a L<Paws::Connect::AssociateDefaultVocabularyResponse> instance

Associates an existing vocabulary as the default. Contact Lens for
Amazon Connect uses the vocabulary in post-call and real-time analysis
sessions for the given language.


=head2 AssociateFlow

=over

=item FlowId => Str

=item InstanceId => Str

=item ResourceId => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::Connect::AssociateFlow>

Returns: a L<Paws::Connect::AssociateFlowResponse> instance

Associates a connect resource to a flow.


=head2 AssociateInstanceStorageConfig

=over

=item InstanceId => Str

=item ResourceType => Str

=item StorageConfig => L<Paws::Connect::InstanceStorageConfig>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::AssociateInstanceStorageConfig>

Returns: a L<Paws::Connect::AssociateInstanceStorageConfigResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Associates a storage resource type for the first time. You can only
associate one type of storage configuration in a single call. This
means, for example, that you can't define an instance with multiple S3
buckets for storing chat transcripts.

This API does not create a resource that doesn't exist. It only
associates it to the instance. Ensure that the resource being specified
in the storage configuration, like an S3 bucket, exists when being used
for association.


=head2 AssociateLambdaFunction

=over

=item FunctionArn => Str

=item InstanceId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::AssociateLambdaFunction>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Allows the specified Amazon Connect instance to access the specified
Lambda function.


=head2 AssociateLexBot

=over

=item InstanceId => Str

=item LexBot => L<Paws::Connect::LexBot>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::AssociateLexBot>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Allows the specified Amazon Connect instance to access the specified
Amazon Lex V1 bot. This API only supports the association of Amazon Lex
V1 bots.


=head2 AssociatePhoneNumberContactFlow

=over

=item ContactFlowId => Str

=item InstanceId => Str

=item PhoneNumberId => Str


=back

Each argument is described in detail in: L<Paws::Connect::AssociatePhoneNumberContactFlow>

Returns: nothing

Associates a flow with a phone number claimed to your Amazon Connect
instance.

If the number is claimed to a traffic distribution group, and you are
calling this API using an instance in the Amazon Web Services Region
where the traffic distribution group was created, you can use either a
full phone number ARN or UUID value for the C<PhoneNumberId> URI
request parameter. However, if the number is claimed to a traffic
distribution group and you are calling this API using an instance in
the alternate Amazon Web Services Region associated with the traffic
distribution group, you must provide a full phone number ARN. If a UUID
is provided in this scenario, you will receive a
C<ResourceNotFoundException>.


=head2 AssociateQueueQuickConnects

=over

=item InstanceId => Str

=item QueueId => Str

=item QuickConnectIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Connect::AssociateQueueQuickConnects>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Associates a set of quick connects with a queue.


=head2 AssociateRoutingProfileQueues

=over

=item InstanceId => Str

=item QueueConfigs => ArrayRef[L<Paws::Connect::RoutingProfileQueueConfig>]

=item RoutingProfileId => Str


=back

Each argument is described in detail in: L<Paws::Connect::AssociateRoutingProfileQueues>

Returns: nothing

Associates a set of queues with a routing profile.


=head2 AssociateSecurityKey

=over

=item InstanceId => Str

=item Key => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::AssociateSecurityKey>

Returns: a L<Paws::Connect::AssociateSecurityKeyResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Associates a security key to the instance.


=head2 AssociateTrafficDistributionGroupUser

=over

=item InstanceId => Str

=item TrafficDistributionGroupId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::AssociateTrafficDistributionGroupUser>

Returns: a L<Paws::Connect::AssociateTrafficDistributionGroupUserResponse> instance

Associates an agent with a traffic distribution group. This API can be
called only in the Region where the traffic distribution group is
created.


=head2 AssociateUserProficiencies

=over

=item InstanceId => Str

=item UserId => Str

=item UserProficiencies => ArrayRef[L<Paws::Connect::UserProficiency>]


=back

Each argument is described in detail in: L<Paws::Connect::AssociateUserProficiencies>

Returns: nothing

Associates a set of proficiencies with a user.


=head2 BatchAssociateAnalyticsDataSet

=over

=item DataSetIds => ArrayRef[Str|Undef]

=item InstanceId => Str

=item [TargetAccountId => Str]


=back

Each argument is described in detail in: L<Paws::Connect::BatchAssociateAnalyticsDataSet>

Returns: a L<Paws::Connect::BatchAssociateAnalyticsDataSetResponse> instance

Associates a list of analytics datasets for a given Amazon Connect
instance to a target account. You can associate multiple datasets in a
single call.


=head2 BatchDisassociateAnalyticsDataSet

=over

=item DataSetIds => ArrayRef[Str|Undef]

=item InstanceId => Str

=item [TargetAccountId => Str]


=back

Each argument is described in detail in: L<Paws::Connect::BatchDisassociateAnalyticsDataSet>

Returns: a L<Paws::Connect::BatchDisassociateAnalyticsDataSetResponse> instance

Removes a list of analytics datasets associated with a given Amazon
Connect instance. You can disassociate multiple datasets in a single
call.


=head2 BatchGetAttachedFileMetadata

=over

=item AssociatedResourceArn => Str

=item FileIds => ArrayRef[Str|Undef]

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::BatchGetAttachedFileMetadata>

Returns: a L<Paws::Connect::BatchGetAttachedFileMetadataResponse> instance

Allows you to retrieve metadata about multiple attached files on an
associated resource. Each attached file provided in the input list must
be associated with the input AssociatedResourceArn.


=head2 BatchGetFlowAssociation

=over

=item InstanceId => Str

=item ResourceIds => ArrayRef[Str|Undef]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::Connect::BatchGetFlowAssociation>

Returns: a L<Paws::Connect::BatchGetFlowAssociationResponse> instance

Retrieve the flow associations for the given resources.


=head2 BatchPutContact

=over

=item ContactDataRequestList => ArrayRef[L<Paws::Connect::ContactDataRequest>]

=item InstanceId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::BatchPutContact>

Returns: a L<Paws::Connect::BatchPutContactResponse> instance

Only the Amazon Connect outbound campaigns service principal is allowed
to assume a role in your account and call this API.

Allows you to create a batch of contacts in Amazon Connect. The
outbound campaigns capability ingests dial requests via the
PutDialRequestBatch
(https://docs.aws.amazon.com/connect-outbound/latest/APIReference/API_PutDialRequestBatch.html)
API. It then uses BatchPutContact to create contacts corresponding to
those dial requests. If agents are available, the dial requests are
dialed out, which results in a voice call. The resulting voice call
uses the same contactId that was created by BatchPutContact.


=head2 ClaimPhoneNumber

=over

=item PhoneNumber => Str

=item [ClientToken => Str]

=item [InstanceId => Str]

=item [PhoneNumberDescription => Str]

=item [Tags => L<Paws::Connect::TagMap>]

=item [TargetArn => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ClaimPhoneNumber>

Returns: a L<Paws::Connect::ClaimPhoneNumberResponse> instance

Claims an available phone number to your Amazon Connect instance or
traffic distribution group. You can call this API only in the same
Amazon Web Services Region where the Amazon Connect instance or traffic
distribution group was created.

For more information about how to use this operation, see Claim a phone
number in your country
(https://docs.aws.amazon.com/connect/latest/adminguide/claim-phone-number.html)
and Claim phone numbers to traffic distribution groups
(https://docs.aws.amazon.com/connect/latest/adminguide/claim-phone-numbers-traffic-distribution-groups.html)
in the I<Amazon Connect Administrator Guide>.

You can call the SearchAvailablePhoneNumbers
(https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchAvailablePhoneNumbers.html)
API for available phone numbers that you can claim. Call the
DescribePhoneNumber
(https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html)
API to verify the status of a previous ClaimPhoneNumber
(https://docs.aws.amazon.com/connect/latest/APIReference/API_ClaimPhoneNumber.html)
operation.

If you plan to claim and release numbers frequently, contact us for a
service quota exception. Otherwise, it is possible you will be blocked
from claiming and releasing any more numbers until up to 180 days past
the oldest number released has expired.

By default you can claim and release up to 200% of your maximum number
of active phone numbers. If you claim and release phone numbers using
the UI or API during a rolling 180 day cycle that exceeds 200% of your
phone number service level quota, you will be blocked from claiming any
more numbers until 180 days past the oldest number released has
expired.

For example, if you already have 99 claimed numbers and a service level
quota of 99 phone numbers, and in any 180 day period you release 99,
claim 99, and then release 99, you will have exceeded the 200% limit.
At that point you are blocked from claiming any more numbers until you
open an Amazon Web Services support ticket.


=head2 CompleteAttachedFileUpload

=over

=item AssociatedResourceArn => Str

=item FileId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::CompleteAttachedFileUpload>

Returns: a L<Paws::Connect::CompleteAttachedFileUploadResponse> instance

Allows you to confirm that the attached file has been uploaded using
the pre-signed URL provided in the StartAttachedFileUpload API.


=head2 CreateAgentStatus

=over

=item InstanceId => Str

=item Name => Str

=item State => Str

=item [Description => Str]

=item [DisplayOrder => Int]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateAgentStatus>

Returns: a L<Paws::Connect::CreateAgentStatusResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Creates an agent status for the specified Amazon Connect instance.


=head2 CreateContact

=over

=item Channel => Str

=item InitiationMethod => Str

=item InstanceId => Str

=item [Attributes => L<Paws::Connect::Attributes>]

=item [ClientToken => Str]

=item [Description => Str]

=item [ExpiryDurationInMinutes => Int]

=item [InitiateAs => Str]

=item [Name => Str]

=item [PreviousContactId => Str]

=item [References => L<Paws::Connect::ContactReferences>]

=item [RelatedContactId => Str]

=item [SegmentAttributes => L<Paws::Connect::SegmentAttributes>]

=item [UserInfo => L<Paws::Connect::UserInfo>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateContact>

Returns: a L<Paws::Connect::CreateContactResponse> instance

Only the EMAIL and VOICE channels are supported. The supported
initiation methods for EMAIL are: OUTBOUND, AGENT_REPLY, and FLOW. For
VOICE the supported initiation methods are TRANSFER and the subtype
connect:ExternalAudio.

Creates a new EMAIL or VOICE contact.


=head2 CreateContactFlow

=over

=item Content => Str

=item InstanceId => Str

=item Name => Str

=item Type => Str

=item [Description => Str]

=item [Status => Str]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateContactFlow>

Returns: a L<Paws::Connect::CreateContactFlowResponse> instance

Creates a flow for the specified Amazon Connect instance.

You can also create and update flows using the Amazon Connect Flow
language
(https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html).


=head2 CreateContactFlowModule

=over

=item Content => Str

=item InstanceId => Str

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateContactFlowModule>

Returns: a L<Paws::Connect::CreateContactFlowModuleResponse> instance

Creates a flow module for the specified Amazon Connect instance.


=head2 CreateContactFlowVersion

=over

=item ContactFlowId => Str

=item InstanceId => Str

=item [ContactFlowVersion => Int]

=item [Description => Str]

=item [FlowContentSha256 => Str]

=item [LastModifiedRegion => Str]

=item [LastModifiedTime => Str]


=back

Each argument is described in detail in: L<Paws::Connect::CreateContactFlowVersion>

Returns: a L<Paws::Connect::CreateContactFlowVersionResponse> instance

Publishes a new version of the flow provided. Versions are immutable
and monotonically increasing. If the C<FlowContentSha256> provided is
different from the C<FlowContentSha256> of the C<$LATEST> published
flow content, then an error is returned. This API only supports
creating versions for flows of type C<Campaign>.


=head2 CreateEmailAddress

=over

=item EmailAddress => Str

=item InstanceId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DisplayName => Str]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateEmailAddress>

Returns: a L<Paws::Connect::CreateEmailAddressResponse> instance

Create new email address in the specified Amazon Connect instance. For
more information about email addresses, see Create email addresses
(https://docs.aws.amazon.com/connect/latest/adminguide/create-email-address1.html)
in the Amazon Connect Administrator Guide.


=head2 CreateEvaluationForm

=over

=item InstanceId => Str

=item Items => ArrayRef[L<Paws::Connect::EvaluationFormItem>]

=item Title => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [ScoringStrategy => L<Paws::Connect::EvaluationFormScoringStrategy>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateEvaluationForm>

Returns: a L<Paws::Connect::CreateEvaluationFormResponse> instance

Creates an evaluation form in the specified Amazon Connect instance.
The form can be used to define questions related to agent performance,
and create sections to organize such questions. Question and section
identifiers cannot be duplicated within the same evaluation form.


=head2 CreateHoursOfOperation

=over

=item Config => ArrayRef[L<Paws::Connect::HoursOfOperationConfig>]

=item InstanceId => Str

=item Name => Str

=item TimeZone => Str

=item [Description => Str]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateHoursOfOperation>

Returns: a L<Paws::Connect::CreateHoursOfOperationResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Creates hours of operation.


=head2 CreateHoursOfOperationOverride

=over

=item Config => ArrayRef[L<Paws::Connect::HoursOfOperationOverrideConfig>]

=item EffectiveFrom => Str

=item EffectiveTill => Str

=item HoursOfOperationId => Str

=item InstanceId => Str

=item Name => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Connect::CreateHoursOfOperationOverride>

Returns: a L<Paws::Connect::CreateHoursOfOperationOverrideResponse> instance

Creates an hours of operation override in an Amazon Connect hours of
operation resource


=head2 CreateInstance

=over

=item IdentityManagementType => Str

=item InboundCallsEnabled => Bool

=item OutboundCallsEnabled => Bool

=item [ClientToken => Str]

=item [DirectoryId => Str]

=item [InstanceAlias => Str]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateInstance>

Returns: a L<Paws::Connect::CreateInstanceResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Initiates an Amazon Connect instance with all the supported channels
enabled. It does not attach any storage, such as Amazon Simple Storage
Service (Amazon S3) or Amazon Kinesis. It also does not allow for any
configurations on features, such as Contact Lens for Amazon Connect.

For more information, see Create an Amazon Connect instance
(https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-instances.html)
in the I<Amazon Connect Administrator Guide>.

Amazon Connect enforces a limit on the total number of instances that
you can create or delete in 30 days. If you exceed this limit, you will
get an error message indicating there has been an excessive number of
attempts at creating or deleting instances. You must wait 30 days
before you can restart creating and deleting instances in your account.


=head2 CreateIntegrationAssociation

=over

=item InstanceId => Str

=item IntegrationArn => Str

=item IntegrationType => Str

=item [SourceApplicationName => Str]

=item [SourceApplicationUrl => Str]

=item [SourceType => Str]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateIntegrationAssociation>

Returns: a L<Paws::Connect::CreateIntegrationAssociationResponse> instance

Creates an Amazon Web Services resource association with an Amazon
Connect instance.


=head2 CreateParticipant

=over

=item ContactId => Str

=item InstanceId => Str

=item ParticipantDetails => L<Paws::Connect::ParticipantDetailsToAdd>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::CreateParticipant>

Returns: a L<Paws::Connect::CreateParticipantResponse> instance

Adds a new participant into an on-going chat contact. For more
information, see Customize chat flow experiences by integrating custom
participants
(https://docs.aws.amazon.com/connect/latest/adminguide/chat-customize-flow.html).


=head2 CreatePersistentContactAssociation

=over

=item InitialContactId => Str

=item InstanceId => Str

=item RehydrationType => Str

=item SourceContactId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::CreatePersistentContactAssociation>

Returns: a L<Paws::Connect::CreatePersistentContactAssociationResponse> instance

Enables rehydration of chats for the lifespan of a contact. For more
information about chat rehydration, see Enable persistent chat
(https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html)
in the I<Amazon Connect Administrator Guide>.


=head2 CreatePredefinedAttribute

=over

=item InstanceId => Str

=item Name => Str

=item Values => L<Paws::Connect::PredefinedAttributeValues>


=back

Each argument is described in detail in: L<Paws::Connect::CreatePredefinedAttribute>

Returns: nothing

Creates a new predefined attribute for the specified Amazon Connect
instance. I<Predefined attributes> are attributes in an Amazon Connect
instance that can be used to route contacts to an agent or pools of
agents within a queue. For more information, see Create predefined
attributes for routing contacts to agents
(https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html).


=head2 CreatePrompt

=over

=item InstanceId => Str

=item Name => Str

=item S3Uri => Str

=item [Description => Str]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreatePrompt>

Returns: a L<Paws::Connect::CreatePromptResponse> instance

Creates a prompt. For more information about prompts, such as supported
file types and maximum length, see Create prompts
(https://docs.aws.amazon.com/connect/latest/adminguide/prompts.html) in
the I<Amazon Connect Administrator Guide>.


=head2 CreatePushNotificationRegistration

=over

=item ContactConfiguration => L<Paws::Connect::ContactConfiguration>

=item DeviceToken => Str

=item DeviceType => Str

=item InstanceId => Str

=item PinpointAppArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::CreatePushNotificationRegistration>

Returns: a L<Paws::Connect::CreatePushNotificationRegistrationResponse> instance

Creates registration for a device token and a chat contact to receive
real-time push notifications. For more information about push
notifications, see Set up push notifications in Amazon Connect for
mobile chat
(https://docs.aws.amazon.com/connect/latest/adminguide/enable-push-notifications-for-mobile-chat.html)
in the I<Amazon Connect Administrator Guide>.


=head2 CreateQueue

=over

=item HoursOfOperationId => Str

=item InstanceId => Str

=item Name => Str

=item [Description => Str]

=item [MaxContacts => Int]

=item [OutboundCallerConfig => L<Paws::Connect::OutboundCallerConfig>]

=item [OutboundEmailConfig => L<Paws::Connect::OutboundEmailConfig>]

=item [QuickConnectIds => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateQueue>

Returns: a L<Paws::Connect::CreateQueueResponse> instance

Creates a new queue for the specified Amazon Connect instance.

=over

=item *

If the phone number is claimed to a traffic distribution group that was
created in the same Region as the Amazon Connect instance where you are
calling this API, then you can use a full phone number ARN or a UUID
for C<OutboundCallerIdNumberId>. However, if the phone number is
claimed to a traffic distribution group that is in one Region, and you
are calling this API from an instance in another Amazon Web Services
Region that is associated with the traffic distribution group, you must
provide a full phone number ARN. If a UUID is provided in this
scenario, you will receive a C<ResourceNotFoundException>.

=item *

Only use the phone number ARN format that doesn't contain C<instance>
in the path, for example,
C<arn:aws:connect:us-east-1:1234567890:phone-number/uuid>. This is the
same ARN format that is returned when you call the ListPhoneNumbersV2
(https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html)
API.

=item *

If you plan to use IAM policies to allow/deny access to this API for
phone number resources claimed to a traffic distribution group, see
Allow or Deny queue API actions for phone numbers in a replica Region
(https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_resource-level-policy-examples.html#allow-deny-queue-actions-replica-region).

=back



=head2 CreateQuickConnect

=over

=item InstanceId => Str

=item Name => Str

=item QuickConnectConfig => L<Paws::Connect::QuickConnectConfig>

=item [Description => Str]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateQuickConnect>

Returns: a L<Paws::Connect::CreateQuickConnectResponse> instance

Creates a quick connect for the specified Amazon Connect instance.


=head2 CreateRoutingProfile

=over

=item DefaultOutboundQueueId => Str

=item Description => Str

=item InstanceId => Str

=item MediaConcurrencies => ArrayRef[L<Paws::Connect::MediaConcurrency>]

=item Name => Str

=item [AgentAvailabilityTimer => Str]

=item [QueueConfigs => ArrayRef[L<Paws::Connect::RoutingProfileQueueConfig>]]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateRoutingProfile>

Returns: a L<Paws::Connect::CreateRoutingProfileResponse> instance

Creates a new routing profile.


=head2 CreateRule

=over

=item Actions => ArrayRef[L<Paws::Connect::RuleAction>]

=item Function => Str

=item InstanceId => Str

=item Name => Str

=item PublishStatus => Str

=item TriggerEventSource => L<Paws::Connect::RuleTriggerEventSource>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::CreateRule>

Returns: a L<Paws::Connect::CreateRuleResponse> instance

Creates a rule for the specified Amazon Connect instance.

Use the Rules Function language
(https://docs.aws.amazon.com/connect/latest/APIReference/connect-rules-language.html)
to code conditions for the rule.


=head2 CreateSecurityProfile

=over

=item InstanceId => Str

=item SecurityProfileName => Str

=item [AllowedAccessControlHierarchyGroupId => Str]

=item [AllowedAccessControlTags => L<Paws::Connect::AllowedAccessControlTags>]

=item [Applications => ArrayRef[L<Paws::Connect::Application>]]

=item [Description => Str]

=item [HierarchyRestrictedResources => ArrayRef[Str|Undef]]

=item [Permissions => ArrayRef[Str|Undef]]

=item [TagRestrictedResources => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateSecurityProfile>

Returns: a L<Paws::Connect::CreateSecurityProfileResponse> instance

Creates a security profile.

For information about security profiles, see Security Profiles
(https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html)
in the I<Amazon Connect Administrator Guide>. For a mapping of the API
name and user interface name of the security profile permissions, see
List of security profile permissions
(https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html).


=head2 CreateTaskTemplate

=over

=item Fields => ArrayRef[L<Paws::Connect::TaskTemplateField>]

=item InstanceId => Str

=item Name => Str

=item [ClientToken => Str]

=item [Constraints => L<Paws::Connect::TaskTemplateConstraints>]

=item [ContactFlowId => Str]

=item [Defaults => L<Paws::Connect::TaskTemplateDefaults>]

=item [Description => Str]

=item [SelfAssignFlowId => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Connect::CreateTaskTemplate>

Returns: a L<Paws::Connect::CreateTaskTemplateResponse> instance

Creates a new task template in the specified Amazon Connect instance.


=head2 CreateTrafficDistributionGroup

=over

=item InstanceId => Str

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateTrafficDistributionGroup>

Returns: a L<Paws::Connect::CreateTrafficDistributionGroupResponse> instance

Creates a traffic distribution group given an Amazon Connect instance
that has been replicated.

The C<SignInConfig> distribution is available only on a default
C<TrafficDistributionGroup> (see the C<IsDefault> parameter in the
TrafficDistributionGroup
(https://docs.aws.amazon.com/connect/latest/APIReference/API_TrafficDistributionGroup.html)
data type). If you call C<UpdateTrafficDistribution> with a modified
C<SignInConfig> and a non-default C<TrafficDistributionGroup>, an
C<InvalidRequestException> is returned.

For more information about creating traffic distribution groups, see
Set up traffic distribution groups
(https://docs.aws.amazon.com/connect/latest/adminguide/setup-traffic-distribution-groups.html)
in the I<Amazon Connect Administrator Guide>.


=head2 CreateUseCase

=over

=item InstanceId => Str

=item IntegrationAssociationId => Str

=item UseCaseType => Str

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateUseCase>

Returns: a L<Paws::Connect::CreateUseCaseResponse> instance

Creates a use case for an integration association.


=head2 CreateUser

=over

=item InstanceId => Str

=item PhoneConfig => L<Paws::Connect::UserPhoneConfig>

=item RoutingProfileId => Str

=item SecurityProfileIds => ArrayRef[Str|Undef]

=item Username => Str

=item [DirectoryUserId => Str]

=item [HierarchyGroupId => Str]

=item [IdentityInfo => L<Paws::Connect::UserIdentityInfo>]

=item [Password => Str]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateUser>

Returns: a L<Paws::Connect::CreateUserResponse> instance

Creates a user account for the specified Amazon Connect instance.

Certain UserIdentityInfo
(https://docs.aws.amazon.com/connect/latest/APIReference/API_UserIdentityInfo.html)
parameters are required in some situations. For example, C<Email> is
required if you are using SAML for identity management. C<FirstName>
and C<LastName> are required if you are using Amazon Connect or SAML
for identity management.

For information about how to create users using the Amazon Connect
admin website, see Add Users
(https://docs.aws.amazon.com/connect/latest/adminguide/user-management.html)
in the I<Amazon Connect Administrator Guide>.


=head2 CreateUserHierarchyGroup

=over

=item InstanceId => Str

=item Name => Str

=item [ParentGroupId => Str]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateUserHierarchyGroup>

Returns: a L<Paws::Connect::CreateUserHierarchyGroupResponse> instance

Creates a new user hierarchy group.


=head2 CreateView

=over

=item Content => L<Paws::Connect::ViewInputContent>

=item InstanceId => Str

=item Name => Str

=item Status => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateView>

Returns: a L<Paws::Connect::CreateViewResponse> instance

Creates a new view with the possible status of C<SAVED> or
C<PUBLISHED>.

The views will have a unique name for each connect instance.

It performs basic content validation if the status is C<SAVED> or full
content validation if the status is set to C<PUBLISHED>. An error is
returned if validation fails. It associates either the C<$SAVED>
qualifier or both of the C<$SAVED> and C<$LATEST> qualifiers with the
provided view content based on the status. The view is idempotent if
ClientToken is provided.


=head2 CreateViewVersion

=over

=item InstanceId => Str

=item ViewId => Str

=item [VersionDescription => Str]

=item [ViewContentSha256 => Str]


=back

Each argument is described in detail in: L<Paws::Connect::CreateViewVersion>

Returns: a L<Paws::Connect::CreateViewVersionResponse> instance

Publishes a new version of the view identifier.

Versions are immutable and monotonically increasing.

It returns the highest version if there is no change in content
compared to that version. An error is displayed if the supplied
ViewContentSha256 is different from the ViewContentSha256 of the
C<$LATEST> alias.


=head2 CreateVocabulary

=over

=item Content => Str

=item InstanceId => Str

=item LanguageCode => Str

=item VocabularyName => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateVocabulary>

Returns: a L<Paws::Connect::CreateVocabularyResponse> instance

Creates a custom vocabulary associated with your Amazon Connect
instance. You can set a custom vocabulary to be your default vocabulary
for a given language. Contact Lens for Amazon Connect uses the default
vocabulary in post-call and real-time contact analysis sessions for
that language.


=head2 DeactivateEvaluationForm

=over

=item EvaluationFormId => Str

=item EvaluationFormVersion => Int

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeactivateEvaluationForm>

Returns: a L<Paws::Connect::DeactivateEvaluationFormResponse> instance

Deactivates an evaluation form in the specified Amazon Connect
instance. After a form is deactivated, it is no longer available for
users to start new evaluations based on the form.


=head2 DeleteAttachedFile

=over

=item AssociatedResourceArn => Str

=item FileId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteAttachedFile>

Returns: a L<Paws::Connect::DeleteAttachedFileResponse> instance

Deletes an attached file along with the underlying S3 Object.

The attached file is B<permanently deleted> if S3 bucket versioning is
not enabled.


=head2 DeleteContactEvaluation

=over

=item EvaluationId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteContactEvaluation>

Returns: nothing

Deletes a contact evaluation in the specified Amazon Connect instance.


=head2 DeleteContactFlow

=over

=item ContactFlowId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteContactFlow>

Returns: a L<Paws::Connect::DeleteContactFlowResponse> instance

Deletes a flow for the specified Amazon Connect instance.


=head2 DeleteContactFlowModule

=over

=item ContactFlowModuleId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteContactFlowModule>

Returns: a L<Paws::Connect::DeleteContactFlowModuleResponse> instance

Deletes the specified flow module.


=head2 DeleteContactFlowVersion

=over

=item ContactFlowId => Str

=item ContactFlowVersion => Int

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteContactFlowVersion>

Returns: a L<Paws::Connect::DeleteContactFlowVersionResponse> instance

Deletes the particular version specified in flow version identifier.


=head2 DeleteEmailAddress

=over

=item EmailAddressId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteEmailAddress>

Returns: a L<Paws::Connect::DeleteEmailAddressResponse> instance

Deletes email address from the specified Amazon Connect instance.


=head2 DeleteEvaluationForm

=over

=item EvaluationFormId => Str

=item InstanceId => Str

=item [EvaluationFormVersion => Int]


=back

Each argument is described in detail in: L<Paws::Connect::DeleteEvaluationForm>

Returns: nothing

Deletes an evaluation form in the specified Amazon Connect instance.

=over

=item *

If the version property is provided, only the specified version of the
evaluation form is deleted.

=item *

If no version is provided, then the full form (all versions) is
deleted.

=back



=head2 DeleteHoursOfOperation

=over

=item HoursOfOperationId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteHoursOfOperation>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Deletes an hours of operation.


=head2 DeleteHoursOfOperationOverride

=over

=item HoursOfOperationId => Str

=item HoursOfOperationOverrideId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteHoursOfOperationOverride>

Returns: nothing

Deletes an hours of operation override in an Amazon Connect hours of
operation resource


=head2 DeleteInstance

=over

=item InstanceId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::DeleteInstance>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Deletes the Amazon Connect instance. For more information, see Delete
your Amazon Connect instance
(https://docs.aws.amazon.com/connect/latest/adminguide/delete-connect-instance.html)
in the I<Amazon Connect Administrator Guide>.

Amazon Connect enforces a limit on the total number of instances that
you can create or delete in 30 days. If you exceed this limit, you will
get an error message indicating there has been an excessive number of
attempts at creating or deleting instances. You must wait 30 days
before you can restart creating and deleting instances in your account.


=head2 DeleteIntegrationAssociation

=over

=item InstanceId => Str

=item IntegrationAssociationId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteIntegrationAssociation>

Returns: nothing

Deletes an Amazon Web Services resource association from an Amazon
Connect instance. The association must not have any use cases
associated with it.


=head2 DeletePredefinedAttribute

=over

=item InstanceId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeletePredefinedAttribute>

Returns: nothing

Deletes a predefined attribute from the specified Amazon Connect
instance.


=head2 DeletePrompt

=over

=item InstanceId => Str

=item PromptId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeletePrompt>

Returns: nothing

Deletes a prompt.


=head2 DeletePushNotificationRegistration

=over

=item ContactId => Str

=item InstanceId => Str

=item RegistrationId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeletePushNotificationRegistration>

Returns: a L<Paws::Connect::DeletePushNotificationRegistrationResponse> instance

Deletes registration for a device token and a chat contact.


=head2 DeleteQueue

=over

=item InstanceId => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteQueue>

Returns: nothing

Deletes a queue.


=head2 DeleteQuickConnect

=over

=item InstanceId => Str

=item QuickConnectId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteQuickConnect>

Returns: nothing

Deletes a quick connect.

After calling DeleteUser
(https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteUser.html),
it's important to call C<DeleteQuickConnect> to delete any records
related to the deleted users. This will help you:

=over

=item *

Avoid dangling resources that impact your service quotas.

=item *

Remove deleted users so they don't appear to agents as transfer
options.

=item *

Avoid the disruption of other Amazon Connect processes, such as
instance replication and syncing if you're using Amazon Connect Global
Resiliency
(https://docs.aws.amazon.com/connect/latest/adminguide/setup-connect-global-resiliency.html).

=back



=head2 DeleteRoutingProfile

=over

=item InstanceId => Str

=item RoutingProfileId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteRoutingProfile>

Returns: nothing

Deletes a routing profile.


=head2 DeleteRule

=over

=item InstanceId => Str

=item RuleId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteRule>

Returns: nothing

Deletes a rule for the specified Amazon Connect instance.


=head2 DeleteSecurityProfile

=over

=item InstanceId => Str

=item SecurityProfileId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteSecurityProfile>

Returns: nothing

Deletes a security profile.


=head2 DeleteTaskTemplate

=over

=item InstanceId => Str

=item TaskTemplateId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteTaskTemplate>

Returns: a L<Paws::Connect::DeleteTaskTemplateResponse> instance

Deletes the task template.


=head2 DeleteTrafficDistributionGroup

=over

=item TrafficDistributionGroupId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteTrafficDistributionGroup>

Returns: a L<Paws::Connect::DeleteTrafficDistributionGroupResponse> instance

Deletes a traffic distribution group. This API can be called only in
the Region where the traffic distribution group is created.

For more information about deleting traffic distribution groups, see
Delete traffic distribution groups
(https://docs.aws.amazon.com/connect/latest/adminguide/delete-traffic-distribution-groups.html)
in the I<Amazon Connect Administrator Guide>.


=head2 DeleteUseCase

=over

=item InstanceId => Str

=item IntegrationAssociationId => Str

=item UseCaseId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteUseCase>

Returns: nothing

Deletes a use case from an integration association.


=head2 DeleteUser

=over

=item InstanceId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteUser>

Returns: nothing

Deletes a user account from the specified Amazon Connect instance.

For information about what happens to a user's data when their account
is deleted, see Delete Users from Your Amazon Connect Instance
(https://docs.aws.amazon.com/connect/latest/adminguide/delete-users.html)
in the I<Amazon Connect Administrator Guide>.

After calling DeleteUser, call DeleteQuickConnect
(https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteQuickConnect.html)
to delete any records related to the deleted users. This will help you:

=over

=item *

Avoid dangling resources that impact your service quotas.

=item *

Remove deleted users so they don't appear to agents as transfer
options.

=item *

Avoid the disruption of other Amazon Connect processes, such as
instance replication and syncing if you're using Amazon Connect Global
Resiliency
(https://docs.aws.amazon.com/connect/latest/adminguide/setup-connect-global-resiliency.html).

=back



=head2 DeleteUserHierarchyGroup

=over

=item HierarchyGroupId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteUserHierarchyGroup>

Returns: nothing

Deletes an existing user hierarchy group. It must not be associated
with any agents or have any active child groups.


=head2 DeleteView

=over

=item InstanceId => Str

=item ViewId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteView>

Returns: a L<Paws::Connect::DeleteViewResponse> instance

Deletes the view entirely. It deletes the view and all associated
qualifiers (versions and aliases).


=head2 DeleteViewVersion

=over

=item InstanceId => Str

=item ViewId => Str

=item ViewVersion => Int


=back

Each argument is described in detail in: L<Paws::Connect::DeleteViewVersion>

Returns: a L<Paws::Connect::DeleteViewVersionResponse> instance

Deletes the particular version specified in C<ViewVersion> identifier.


=head2 DeleteVocabulary

=over

=item InstanceId => Str

=item VocabularyId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteVocabulary>

Returns: a L<Paws::Connect::DeleteVocabularyResponse> instance

Deletes the vocabulary that has the given identifier.


=head2 DescribeAgentStatus

=over

=item AgentStatusId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeAgentStatus>

Returns: a L<Paws::Connect::DescribeAgentStatusResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Describes an agent status.


=head2 DescribeAuthenticationProfile

=over

=item AuthenticationProfileId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeAuthenticationProfile>

Returns: a L<Paws::Connect::DescribeAuthenticationProfileResponse> instance

This API is in preview release for Amazon Connect and is subject to
change. To request access to this API, contact Amazon Web
ServicesSupport.

Describes the target authentication profile.


=head2 DescribeContact

=over

=item ContactId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeContact>

Returns: a L<Paws::Connect::DescribeContactResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Describes the specified contact.

=over

=item *

C<SystemEndpoint> is not populated for contacts with initiation method
of MONITOR, QUEUE_TRANSFER, or CALLBACK

=item *

Contact information remains available in Amazon Connect for 24 months
from the C<InitiationTimestamp>, and then it is deleted. Only contact
information that is available in Amazon Connect is returned by this
API.

=back



=head2 DescribeContactEvaluation

=over

=item EvaluationId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeContactEvaluation>

Returns: a L<Paws::Connect::DescribeContactEvaluationResponse> instance

Describes a contact evaluation in the specified Amazon Connect
instance.


=head2 DescribeContactFlow

=over

=item ContactFlowId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeContactFlow>

Returns: a L<Paws::Connect::DescribeContactFlowResponse> instance

Describes the specified flow.

You can also create and update flows using the Amazon Connect Flow
language
(https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html).

Use the C<$SAVED> alias in the request to describe the C<SAVED> content
of a Flow. For example, C<arn:aws:.../contact-flow/{id}:$SAVED>. After
a flow is published, C<$SAVED> needs to be supplied to view saved
content that has not been published.

Use C<arn:aws:.../contact-flow/{id}:{version}> to retrieve the content
of a specific flow version.

In the response, B<Status> indicates the flow status as either C<SAVED>
or C<PUBLISHED>. The C<PUBLISHED> status will initiate validation on
the content. C<SAVED> does not initiate validation of the content.
C<SAVED> | C<PUBLISHED>


=head2 DescribeContactFlowModule

=over

=item ContactFlowModuleId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeContactFlowModule>

Returns: a L<Paws::Connect::DescribeContactFlowModuleResponse> instance

Describes the specified flow module.

Use the C<$SAVED> alias in the request to describe the C<SAVED> content
of a Flow. For example, C<arn:aws:.../contact-flow/{id}:$SAVED>. After
a flow is published, C<$SAVED> needs to be supplied to view saved
content that has not been published.


=head2 DescribeEmailAddress

=over

=item EmailAddressId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeEmailAddress>

Returns: a L<Paws::Connect::DescribeEmailAddressResponse> instance

Describe email address form the specified Amazon Connect instance.


=head2 DescribeEvaluationForm

=over

=item EvaluationFormId => Str

=item InstanceId => Str

=item [EvaluationFormVersion => Int]


=back

Each argument is described in detail in: L<Paws::Connect::DescribeEvaluationForm>

Returns: a L<Paws::Connect::DescribeEvaluationFormResponse> instance

Describes an evaluation form in the specified Amazon Connect instance.
If the version property is not provided, the latest version of the
evaluation form is described.


=head2 DescribeHoursOfOperation

=over

=item HoursOfOperationId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeHoursOfOperation>

Returns: a L<Paws::Connect::DescribeHoursOfOperationResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Describes the hours of operation.


=head2 DescribeHoursOfOperationOverride

=over

=item HoursOfOperationId => Str

=item HoursOfOperationOverrideId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeHoursOfOperationOverride>

Returns: a L<Paws::Connect::DescribeHoursOfOperationOverrideResponse> instance

Describes the hours of operation override.


=head2 DescribeInstance

=over

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeInstance>

Returns: a L<Paws::Connect::DescribeInstanceResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Returns the current state of the specified instance identifier. It
tracks the instance while it is being created and returns an error
status, if applicable.

If an instance is not created successfully, the instance status reason
field returns details relevant to the reason. The instance in a failed
state is returned only for 24 hours after the CreateInstance API was
invoked.


=head2 DescribeInstanceAttribute

=over

=item AttributeType => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeInstanceAttribute>

Returns: a L<Paws::Connect::DescribeInstanceAttributeResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Describes the specified instance attribute.


=head2 DescribeInstanceStorageConfig

=over

=item AssociationId => Str

=item InstanceId => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeInstanceStorageConfig>

Returns: a L<Paws::Connect::DescribeInstanceStorageConfigResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Retrieves the current storage configurations for the specified resource
type, association ID, and instance ID.


=head2 DescribePhoneNumber

=over

=item PhoneNumberId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribePhoneNumber>

Returns: a L<Paws::Connect::DescribePhoneNumberResponse> instance

Gets details and status of a phone number thatE<rsquo>s claimed to your
Amazon Connect instance or traffic distribution group.

If the number is claimed to a traffic distribution group, and you are
calling in the Amazon Web Services Region where the traffic
distribution group was created, you can use either a phone number ARN
or UUID value for the C<PhoneNumberId> URI request parameter. However,
if the number is claimed to a traffic distribution group and you are
calling this API in the alternate Amazon Web Services Region associated
with the traffic distribution group, you must provide a full phone
number ARN. If a UUID is provided in this scenario, you receive a
C<ResourceNotFoundException>.


=head2 DescribePredefinedAttribute

=over

=item InstanceId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribePredefinedAttribute>

Returns: a L<Paws::Connect::DescribePredefinedAttributeResponse> instance

Describes a predefined attribute for the specified Amazon Connect
instance. I<Predefined attributes> are attributes in an Amazon Connect
instance that can be used to route contacts to an agent or pools of
agents within a queue. For more information, see Create predefined
attributes for routing contacts to agents
(https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html).


=head2 DescribePrompt

=over

=item InstanceId => Str

=item PromptId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribePrompt>

Returns: a L<Paws::Connect::DescribePromptResponse> instance

Describes the prompt.


=head2 DescribeQueue

=over

=item InstanceId => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeQueue>

Returns: a L<Paws::Connect::DescribeQueueResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Describes the specified queue.


=head2 DescribeQuickConnect

=over

=item InstanceId => Str

=item QuickConnectId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeQuickConnect>

Returns: a L<Paws::Connect::DescribeQuickConnectResponse> instance

Describes the quick connect.


=head2 DescribeRoutingProfile

=over

=item InstanceId => Str

=item RoutingProfileId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeRoutingProfile>

Returns: a L<Paws::Connect::DescribeRoutingProfileResponse> instance

Describes the specified routing profile.


=head2 DescribeRule

=over

=item InstanceId => Str

=item RuleId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeRule>

Returns: a L<Paws::Connect::DescribeRuleResponse> instance

Describes a rule for the specified Amazon Connect instance.


=head2 DescribeSecurityProfile

=over

=item InstanceId => Str

=item SecurityProfileId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeSecurityProfile>

Returns: a L<Paws::Connect::DescribeSecurityProfileResponse> instance

Gets basic information about the security profile.

For information about security profiles, see Security Profiles
(https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html)
in the I<Amazon Connect Administrator Guide>. For a mapping of the API
name and user interface name of the security profile permissions, see
List of security profile permissions
(https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html).


=head2 DescribeTrafficDistributionGroup

=over

=item TrafficDistributionGroupId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeTrafficDistributionGroup>

Returns: a L<Paws::Connect::DescribeTrafficDistributionGroupResponse> instance

Gets details and status of a traffic distribution group.


=head2 DescribeUser

=over

=item InstanceId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeUser>

Returns: a L<Paws::Connect::DescribeUserResponse> instance

Describes the specified user. You can find the instance ID in the
Amazon Connect console
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
(itE<rsquo>s the final part of the ARN). The console does not display
the user IDs. Instead, list the users and note the IDs provided in the
output.


=head2 DescribeUserHierarchyGroup

=over

=item HierarchyGroupId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeUserHierarchyGroup>

Returns: a L<Paws::Connect::DescribeUserHierarchyGroupResponse> instance

Describes the specified hierarchy group.


=head2 DescribeUserHierarchyStructure

=over

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeUserHierarchyStructure>

Returns: a L<Paws::Connect::DescribeUserHierarchyStructureResponse> instance

Describes the hierarchy structure of the specified Amazon Connect
instance.


=head2 DescribeView

=over

=item InstanceId => Str

=item ViewId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeView>

Returns: a L<Paws::Connect::DescribeViewResponse> instance

Retrieves the view for the specified Amazon Connect instance and view
identifier.

The view identifier can be supplied as a ViewId or ARN.

C<$SAVED> needs to be supplied if a view is unpublished.

The view identifier can contain an optional qualifier, for example,
C<E<lt>view-idE<gt>:$SAVED>, which is either an actual version number
or an Amazon Connect managed qualifier C<$SAVED | $LATEST>. If it is
not supplied, then C<$LATEST> is assumed for customer managed views and
an error is returned if there is no published content available.
Version 1 is assumed for Amazon Web Services managed views.


=head2 DescribeVocabulary

=over

=item InstanceId => Str

=item VocabularyId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeVocabulary>

Returns: a L<Paws::Connect::DescribeVocabularyResponse> instance

Describes the specified vocabulary.


=head2 DisassociateAnalyticsDataSet

=over

=item DataSetId => Str

=item InstanceId => Str

=item [TargetAccountId => Str]


=back

Each argument is described in detail in: L<Paws::Connect::DisassociateAnalyticsDataSet>

Returns: nothing

Removes the dataset ID associated with a given Amazon Connect instance.


=head2 DisassociateApprovedOrigin

=over

=item InstanceId => Str

=item Origin => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::DisassociateApprovedOrigin>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Revokes access to integrated applications from Amazon Connect.


=head2 DisassociateBot

=over

=item InstanceId => Str

=item [ClientToken => Str]

=item [LexBot => L<Paws::Connect::LexBot>]

=item [LexV2Bot => L<Paws::Connect::LexV2Bot>]


=back

Each argument is described in detail in: L<Paws::Connect::DisassociateBot>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Revokes authorization from the specified instance to access the
specified Amazon Lex or Amazon Lex V2 bot.


=head2 DisassociateFlow

=over

=item InstanceId => Str

=item ResourceId => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::Connect::DisassociateFlow>

Returns: a L<Paws::Connect::DisassociateFlowResponse> instance

Disassociates a connect resource from a flow.


=head2 DisassociateInstanceStorageConfig

=over

=item AssociationId => Str

=item InstanceId => Str

=item ResourceType => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::DisassociateInstanceStorageConfig>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Removes the storage type configurations for the specified resource type
and association ID.


=head2 DisassociateLambdaFunction

=over

=item FunctionArn => Str

=item InstanceId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::DisassociateLambdaFunction>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Remove the Lambda function from the dropdown options available in the
relevant flow blocks.


=head2 DisassociateLexBot

=over

=item BotName => Str

=item InstanceId => Str

=item LexRegion => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::DisassociateLexBot>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Revokes authorization from the specified instance to access the
specified Amazon Lex bot.


=head2 DisassociatePhoneNumberContactFlow

=over

=item InstanceId => Str

=item PhoneNumberId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DisassociatePhoneNumberContactFlow>

Returns: nothing

Removes the flow association from a phone number claimed to your Amazon
Connect instance.

If the number is claimed to a traffic distribution group, and you are
calling this API using an instance in the Amazon Web Services Region
where the traffic distribution group was created, you can use either a
full phone number ARN or UUID value for the C<PhoneNumberId> URI
request parameter. However, if the number is claimed to a traffic
distribution group and you are calling this API using an instance in
the alternate Amazon Web Services Region associated with the traffic
distribution group, you must provide a full phone number ARN. If a UUID
is provided in this scenario, you will receive a
C<ResourceNotFoundException>.


=head2 DisassociateQueueQuickConnects

=over

=item InstanceId => Str

=item QueueId => Str

=item QuickConnectIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Connect::DisassociateQueueQuickConnects>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Disassociates a set of quick connects from a queue.


=head2 DisassociateRoutingProfileQueues

=over

=item InstanceId => Str

=item QueueReferences => ArrayRef[L<Paws::Connect::RoutingProfileQueueReference>]

=item RoutingProfileId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DisassociateRoutingProfileQueues>

Returns: nothing

Disassociates a set of queues from a routing profile.


=head2 DisassociateSecurityKey

=over

=item AssociationId => Str

=item InstanceId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::DisassociateSecurityKey>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Deletes the specified security key.


=head2 DisassociateTrafficDistributionGroupUser

=over

=item InstanceId => Str

=item TrafficDistributionGroupId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DisassociateTrafficDistributionGroupUser>

Returns: a L<Paws::Connect::DisassociateTrafficDistributionGroupUserResponse> instance

Disassociates an agent from a traffic distribution group. This API can
be called only in the Region where the traffic distribution group is
created.


=head2 DisassociateUserProficiencies

=over

=item InstanceId => Str

=item UserId => Str

=item UserProficiencies => ArrayRef[L<Paws::Connect::UserProficiencyDisassociate>]


=back

Each argument is described in detail in: L<Paws::Connect::DisassociateUserProficiencies>

Returns: nothing

Disassociates a set of proficiencies from a user.


=head2 DismissUserContact

=over

=item ContactId => Str

=item InstanceId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DismissUserContact>

Returns: a L<Paws::Connect::DismissUserContactResponse> instance

Dismisses contacts from an agentE<rsquo>s CCP and returns the agent to
an available state, which allows the agent to receive a new routed
contact. Contacts can only be dismissed if they are in a C<MISSED>,
C<ERROR>, C<ENDED>, or C<REJECTED> state in the Agent Event Stream
(https://docs.aws.amazon.com/connect/latest/adminguide/about-contact-states.html).


=head2 GetAttachedFile

=over

=item AssociatedResourceArn => Str

=item FileId => Str

=item InstanceId => Str

=item [UrlExpiryInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::Connect::GetAttachedFile>

Returns: a L<Paws::Connect::GetAttachedFileResponse> instance

Provides a pre-signed URL for download of an approved attached file.
This API also returns metadata about the attached file. It will only
return a downloadURL if the status of the attached file is C<APPROVED>.


=head2 GetContactAttributes

=over

=item InitialContactId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::GetContactAttributes>

Returns: a L<Paws::Connect::GetContactAttributesResponse> instance

Retrieves the contact attributes for the specified contact.


=head2 GetCurrentMetricData

=over

=item CurrentMetrics => ArrayRef[L<Paws::Connect::CurrentMetric>]

=item Filters => L<Paws::Connect::Filters>

=item InstanceId => Str

=item [Groupings => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortCriteria => ArrayRef[L<Paws::Connect::CurrentMetricSortCriteria>]]


=back

Each argument is described in detail in: L<Paws::Connect::GetCurrentMetricData>

Returns: a L<Paws::Connect::GetCurrentMetricDataResponse> instance

Gets the real-time metric data from the specified Amazon Connect
instance.

For a description of each metric, see Metrics definitions
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html)
in the I<Amazon Connect Administrator Guide>.


=head2 GetCurrentUserData

=over

=item Filters => L<Paws::Connect::UserDataFilters>

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::GetCurrentUserData>

Returns: a L<Paws::Connect::GetCurrentUserDataResponse> instance

Gets the real-time active user data from the specified Amazon Connect
instance.


=head2 GetEffectiveHoursOfOperations

=over

=item FromDate => Str

=item HoursOfOperationId => Str

=item InstanceId => Str

=item ToDate => Str


=back

Each argument is described in detail in: L<Paws::Connect::GetEffectiveHoursOfOperations>

Returns: a L<Paws::Connect::GetEffectiveHoursOfOperationsResponse> instance

Get the hours of operations with the effective override applied.


=head2 GetFederationToken

=over

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::GetFederationToken>

Returns: a L<Paws::Connect::GetFederationTokenResponse> instance

Supports SAML sign-in for Amazon Connect. Retrieves a token for
federation. The token is for the Amazon Connect user which corresponds
to the IAM credentials that were used to invoke this action.

For more information about how SAML sign-in works in Amazon Connect,
see Configure SAML with IAM for Amazon Connect in the I<Amazon Connect
Administrator Guide>.
(https://docs.aws.amazon.com/connect/latest/adminguide/configure-saml.html
)

This API doesn't support root users. If you try to invoke
GetFederationToken with root credentials, an error message similar to
the following one appears:

C<Provided identity: Principal: .... User: .... cannot be used for
federation with Amazon Connect>


=head2 GetFlowAssociation

=over

=item InstanceId => Str

=item ResourceId => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::Connect::GetFlowAssociation>

Returns: a L<Paws::Connect::GetFlowAssociationResponse> instance

Retrieves the flow associated for a given resource.


=head2 GetMetricData

=over

=item EndTime => Str

=item Filters => L<Paws::Connect::Filters>

=item HistoricalMetrics => ArrayRef[L<Paws::Connect::HistoricalMetric>]

=item InstanceId => Str

=item StartTime => Str

=item [Groupings => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::GetMetricData>

Returns: a L<Paws::Connect::GetMetricDataResponse> instance

Gets historical metric data from the specified Amazon Connect instance.

For a description of each historical metric, see Metrics definitions
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html)
in the I<Amazon Connect Administrator Guide>.

We recommend using the GetMetricDataV2
(https://docs.aws.amazon.com/connect/latest/APIReference/API_GetMetricDataV2.html)
API. It provides more flexibility, features, and the ability to query
longer time ranges than C<GetMetricData>. Use it to retrieve historical
agent and contact metrics for the last 3 months, at varying intervals.
You can also use it to build custom dashboards to measure historical
queue and agent performance. For example, you can track the number of
incoming contacts for the last 7 days, with data split by day, to see
how contact volume changed per day of the week.


=head2 GetMetricDataV2

=over

=item EndTime => Str

=item Filters => ArrayRef[L<Paws::Connect::FilterV2>]

=item Metrics => ArrayRef[L<Paws::Connect::MetricV2>]

=item ResourceArn => Str

=item StartTime => Str

=item [Groupings => ArrayRef[Str|Undef]]

=item [Interval => L<Paws::Connect::IntervalDetails>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::GetMetricDataV2>

Returns: a L<Paws::Connect::GetMetricDataV2Response> instance

Gets metric data from the specified Amazon Connect instance.

C<GetMetricDataV2> offers more features than GetMetricData
(https://docs.aws.amazon.com/connect/latest/APIReference/API_GetMetricData.html),
the previous version of this API. It has new metrics, offers filtering
at a metric level, and offers the ability to filter and group data by
channels, queues, routing profiles, agents, and agent hierarchy levels.
It can retrieve historical data for the last 3 months, at varying
intervals. It does not support agent queues.

For a description of the historical metrics that are supported by
C<GetMetricDataV2> and C<GetMetricData>, see Metrics definitions
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html)
in the I<Amazon Connect Administrator Guide>.


=head2 GetPromptFile

=over

=item InstanceId => Str

=item PromptId => Str


=back

Each argument is described in detail in: L<Paws::Connect::GetPromptFile>

Returns: a L<Paws::Connect::GetPromptFileResponse> instance

Gets the prompt file.


=head2 GetTaskTemplate

=over

=item InstanceId => Str

=item TaskTemplateId => Str

=item [SnapshotVersion => Str]


=back

Each argument is described in detail in: L<Paws::Connect::GetTaskTemplate>

Returns: a L<Paws::Connect::GetTaskTemplateResponse> instance

Gets details about a specific task template in the specified Amazon
Connect instance.


=head2 GetTrafficDistribution

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Connect::GetTrafficDistribution>

Returns: a L<Paws::Connect::GetTrafficDistributionResponse> instance

Retrieves the current traffic distribution for a given traffic
distribution group.


=head2 ImportPhoneNumber

=over

=item InstanceId => Str

=item SourcePhoneNumberArn => Str

=item [ClientToken => Str]

=item [PhoneNumberDescription => Str]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::ImportPhoneNumber>

Returns: a L<Paws::Connect::ImportPhoneNumberResponse> instance

Imports a claimed phone number from an external service, such as Amazon
Web Services End User Messaging, into an Amazon Connect instance. You
can call this API only in the same Amazon Web Services Region where the
Amazon Connect instance was created.

Call the DescribePhoneNumber
(https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html)
API to verify the status of a previous C<ImportPhoneNumber> operation.

If you plan to claim or import numbers and then release numbers
frequently, contact us for a service quota exception. Otherwise, it is
possible you will be blocked from claiming and releasing any more
numbers until up to 180 days past the oldest number released has
expired.

By default you can claim or import and then release up to 200% of your
maximum number of active phone numbers. If you claim or import and then
release phone numbers using the UI or API during a rolling 180 day
cycle that exceeds 200% of your phone number service level quota, you
will be blocked from claiming or importing any more numbers until 180
days past the oldest number released has expired.

For example, if you already have 99 claimed or imported numbers and a
service level quota of 99 phone numbers, and in any 180 day period you
release 99, claim 99, and then release 99, you will have exceeded the
200% limit. At that point you are blocked from claiming any more
numbers until you open an Amazon Web ServicesSupport ticket.


=head2 ListAgentStatuses

=over

=item InstanceId => Str

=item [AgentStatusTypes => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListAgentStatuses>

Returns: a L<Paws::Connect::ListAgentStatusResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Lists agent statuses.


=head2 ListAnalyticsDataAssociations

=over

=item InstanceId => Str

=item [DataSetId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListAnalyticsDataAssociations>

Returns: a L<Paws::Connect::ListAnalyticsDataAssociationsResponse> instance

Lists the association status of requested dataset ID for a given Amazon
Connect instance.


=head2 ListAnalyticsDataLakeDataSets

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListAnalyticsDataLakeDataSets>

Returns: a L<Paws::Connect::ListAnalyticsDataLakeDataSetsResponse> instance

Lists the data lake datasets available to associate with for a given
Amazon Connect instance.


=head2 ListApprovedOrigins

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListApprovedOrigins>

Returns: a L<Paws::Connect::ListApprovedOriginsResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Returns a paginated list of all approved origins associated with the
instance.


=head2 ListAssociatedContacts

=over

=item ContactId => Str

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListAssociatedContacts>

Returns: a L<Paws::Connect::ListAssociatedContactsResponse> instance

Provides information about contact tree, a list of associated contacts
with a unique identifier.


=head2 ListAuthenticationProfiles

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListAuthenticationProfiles>

Returns: a L<Paws::Connect::ListAuthenticationProfilesResponse> instance

This API is in preview release for Amazon Connect and is subject to
change. To request access to this API, contact Amazon Web
ServicesSupport.

Provides summary information about the authentication profiles in a
specified Amazon Connect instance.


=head2 ListBots

=over

=item InstanceId => Str

=item LexVersion => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListBots>

Returns: a L<Paws::Connect::ListBotsResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

For the specified version of Amazon Lex, returns a paginated list of
all the Amazon Lex bots currently associated with the instance. Use
this API to return both Amazon Lex V1 and V2 bots.


=head2 ListContactEvaluations

=over

=item ContactId => Str

=item InstanceId => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListContactEvaluations>

Returns: a L<Paws::Connect::ListContactEvaluationsResponse> instance

Lists contact evaluations in the specified Amazon Connect instance.


=head2 ListContactFlowModules

=over

=item InstanceId => Str

=item [ContactFlowModuleState => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListContactFlowModules>

Returns: a L<Paws::Connect::ListContactFlowModulesResponse> instance

Provides information about the flow modules for the specified Amazon
Connect instance.


=head2 ListContactFlows

=over

=item InstanceId => Str

=item [ContactFlowTypes => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListContactFlows>

Returns: a L<Paws::Connect::ListContactFlowsResponse> instance

Provides information about the flows for the specified Amazon Connect
instance.

You can also create and update flows using the Amazon Connect Flow
language
(https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html).

For more information about flows, see Flows
(https://docs.aws.amazon.com/connect/latest/adminguide/concepts-contact-flows.html)
in the I<Amazon Connect Administrator Guide>.


=head2 ListContactFlowVersions

=over

=item ContactFlowId => Str

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListContactFlowVersions>

Returns: a L<Paws::Connect::ListContactFlowVersionsResponse> instance

Returns all the available versions for the specified Amazon Connect
instance and flow identifier.


=head2 ListContactReferences

=over

=item ContactId => Str

=item InstanceId => Str

=item ReferenceTypes => ArrayRef[Str|Undef]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListContactReferences>

Returns: a L<Paws::Connect::ListContactReferencesResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

For the specified C<referenceTypes>, returns a list of references
associated with the contact. I<References> are links to documents that
are related to a contact, such as emails, attachments, or URLs.


=head2 ListDefaultVocabularies

=over

=item InstanceId => Str

=item [LanguageCode => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListDefaultVocabularies>

Returns: a L<Paws::Connect::ListDefaultVocabulariesResponse> instance

Lists the default vocabularies for the specified Amazon Connect
instance.


=head2 ListEvaluationForms

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListEvaluationForms>

Returns: a L<Paws::Connect::ListEvaluationFormsResponse> instance

Lists evaluation forms in the specified Amazon Connect instance.


=head2 ListEvaluationFormVersions

=over

=item EvaluationFormId => Str

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListEvaluationFormVersions>

Returns: a L<Paws::Connect::ListEvaluationFormVersionsResponse> instance

Lists versions of an evaluation form in the specified Amazon Connect
instance.


=head2 ListFlowAssociations

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListFlowAssociations>

Returns: a L<Paws::Connect::ListFlowAssociationsResponse> instance

List the flow association based on the filters.


=head2 ListHoursOfOperationOverrides

=over

=item HoursOfOperationId => Str

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListHoursOfOperationOverrides>

Returns: a L<Paws::Connect::ListHoursOfOperationOverridesResponse> instance

List the hours of operation overrides.


=head2 ListHoursOfOperations

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListHoursOfOperations>

Returns: a L<Paws::Connect::ListHoursOfOperationsResponse> instance

Provides information about the hours of operation for the specified
Amazon Connect instance.

For more information about hours of operation, see Set the Hours of
Operation for a Queue
(https://docs.aws.amazon.com/connect/latest/adminguide/set-hours-operation.html)
in the I<Amazon Connect Administrator Guide>.


=head2 ListInstanceAttributes

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListInstanceAttributes>

Returns: a L<Paws::Connect::ListInstanceAttributesResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Returns a paginated list of all attribute types for the given instance.


=head2 ListInstances

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListInstances>

Returns: a L<Paws::Connect::ListInstancesResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Return a list of instances which are in active state,
creation-in-progress state, and failed state. Instances that aren't
successfully created (they are in a failed state) are returned only for
24 hours after the CreateInstance API was invoked.


=head2 ListInstanceStorageConfigs

=over

=item InstanceId => Str

=item ResourceType => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListInstanceStorageConfigs>

Returns: a L<Paws::Connect::ListInstanceStorageConfigsResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Returns a paginated list of storage configs for the identified instance
and resource type.


=head2 ListIntegrationAssociations

=over

=item InstanceId => Str

=item [IntegrationArn => Str]

=item [IntegrationType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListIntegrationAssociations>

Returns: a L<Paws::Connect::ListIntegrationAssociationsResponse> instance

Provides summary information about the Amazon Web Services resource
associations for the specified Amazon Connect instance.


=head2 ListLambdaFunctions

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListLambdaFunctions>

Returns: a L<Paws::Connect::ListLambdaFunctionsResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Returns a paginated list of all Lambda functions that display in the
dropdown options in the relevant flow blocks.


=head2 ListLexBots

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListLexBots>

Returns: a L<Paws::Connect::ListLexBotsResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Returns a paginated list of all the Amazon Lex V1 bots currently
associated with the instance. To return both Amazon Lex V1 and V2 bots,
use the ListBots
(https://docs.aws.amazon.com/connect/latest/APIReference/API_ListBots.html)
API.


=head2 ListPhoneNumbers

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PhoneNumberCountryCodes => ArrayRef[Str|Undef]]

=item [PhoneNumberTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Connect::ListPhoneNumbers>

Returns: a L<Paws::Connect::ListPhoneNumbersResponse> instance

Provides information about the phone numbers for the specified Amazon
Connect instance.

For more information about phone numbers, see Set Up Phone Numbers for
Your Contact Center
(https://docs.aws.amazon.com/connect/latest/adminguide/contact-center-phone-number.html)
in the I<Amazon Connect Administrator Guide>.

=over

=item *

We recommend using ListPhoneNumbersV2
(https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html)
to return phone number types. ListPhoneNumbers doesn't support number
types C<UIFN>, C<SHARED>, C<THIRD_PARTY_TF>, and C<THIRD_PARTY_DID>.
While it returns numbers of those types, it incorrectly lists them as
C<TOLL_FREE> or C<DID>.

=item *

The phone number C<Arn> value that is returned from each of the items
in the PhoneNumberSummaryList
(https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbers.html#connect-ListPhoneNumbers-response-PhoneNumberSummaryList)
cannot be used to tag phone number resources. It will fail with a
C<ResourceNotFoundException>. Instead, use the ListPhoneNumbersV2
(https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html)
API. It returns the new phone number ARN that can be used to tag phone
number resources.

=back



=head2 ListPhoneNumbersV2

=over

=item [InstanceId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PhoneNumberCountryCodes => ArrayRef[Str|Undef]]

=item [PhoneNumberPrefix => Str]

=item [PhoneNumberTypes => ArrayRef[Str|Undef]]

=item [TargetArn => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListPhoneNumbersV2>

Returns: a L<Paws::Connect::ListPhoneNumbersV2Response> instance

Lists phone numbers claimed to your Amazon Connect instance or traffic
distribution group. If the provided C<TargetArn> is a traffic
distribution group, you can call this API in both Amazon Web Services
Regions associated with traffic distribution group.

For more information about phone numbers, see Set Up Phone Numbers for
Your Contact Center
(https://docs.aws.amazon.com/connect/latest/adminguide/contact-center-phone-number.html)
in the I<Amazon Connect Administrator Guide>.

=over

=item *

When given an instance ARN, C<ListPhoneNumbersV2> returns only the
phone numbers claimed to the instance.

=item *

When given a traffic distribution group ARN C<ListPhoneNumbersV2>
returns only the phone numbers claimed to the traffic distribution
group.

=back



=head2 ListPredefinedAttributes

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListPredefinedAttributes>

Returns: a L<Paws::Connect::ListPredefinedAttributesResponse> instance

Lists predefined attributes for the specified Amazon Connect instance.
I<Predefined attributes> are attributes in an Amazon Connect instance
that can be used to route contacts to an agent or pools of agents
within a queue. For more information, see Create predefined attributes
for routing contacts to agents
(https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html).


=head2 ListPrompts

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListPrompts>

Returns: a L<Paws::Connect::ListPromptsResponse> instance

Provides information about the prompts for the specified Amazon Connect
instance.


=head2 ListQueueQuickConnects

=over

=item InstanceId => Str

=item QueueId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListQueueQuickConnects>

Returns: a L<Paws::Connect::ListQueueQuickConnectsResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Lists the quick connects associated with a queue.


=head2 ListQueues

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [QueueTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Connect::ListQueues>

Returns: a L<Paws::Connect::ListQueuesResponse> instance

Provides information about the queues for the specified Amazon Connect
instance.

If you do not specify a C<QueueTypes> parameter, both standard and
agent queues are returned. This might cause an unexpected truncation of
results if you have more than 1000 agents and you limit the number of
results of the API call in code.

For more information about queues, see Queues: Standard and Agent
(https://docs.aws.amazon.com/connect/latest/adminguide/concepts-queues-standard-and-agent.html)
in the I<Amazon Connect Administrator Guide>.


=head2 ListQuickConnects

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [QuickConnectTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Connect::ListQuickConnects>

Returns: a L<Paws::Connect::ListQuickConnectsResponse> instance

Provides information about the quick connects for the specified Amazon
Connect instance.


=head2 ListRealtimeContactAnalysisSegmentsV2

=over

=item ContactId => Str

=item InstanceId => Str

=item OutputType => Str

=item SegmentTypes => ArrayRef[Str|Undef]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListRealtimeContactAnalysisSegmentsV2>

Returns: a L<Paws::Connect::ListRealtimeContactAnalysisSegmentsV2Response> instance

Provides a list of analysis segments for a real-time chat analysis
session. This API supports CHAT channels only.

This API does not support VOICE. If you attempt to use it for VOICE, an
C<InvalidRequestException> occurs.


=head2 ListRoutingProfileQueues

=over

=item InstanceId => Str

=item RoutingProfileId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListRoutingProfileQueues>

Returns: a L<Paws::Connect::ListRoutingProfileQueuesResponse> instance

Lists the queues associated with a routing profile.


=head2 ListRoutingProfiles

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListRoutingProfiles>

Returns: a L<Paws::Connect::ListRoutingProfilesResponse> instance

Provides summary information about the routing profiles for the
specified Amazon Connect instance.

For more information about routing profiles, see Routing Profiles
(https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing.html)
and Create a Routing Profile
(https://docs.aws.amazon.com/connect/latest/adminguide/routing-profiles.html)
in the I<Amazon Connect Administrator Guide>.


=head2 ListRules

=over

=item InstanceId => Str

=item [EventSourceName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PublishStatus => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListRules>

Returns: a L<Paws::Connect::ListRulesResponse> instance

List all rules for the specified Amazon Connect instance.


=head2 ListSecurityKeys

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListSecurityKeys>

Returns: a L<Paws::Connect::ListSecurityKeysResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Returns a paginated list of all security keys associated with the
instance.


=head2 ListSecurityProfileApplications

=over

=item InstanceId => Str

=item SecurityProfileId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListSecurityProfileApplications>

Returns: a L<Paws::Connect::ListSecurityProfileApplicationsResponse> instance

Returns a list of third-party applications in a specific security
profile.


=head2 ListSecurityProfilePermissions

=over

=item InstanceId => Str

=item SecurityProfileId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListSecurityProfilePermissions>

Returns: a L<Paws::Connect::ListSecurityProfilePermissionsResponse> instance

Lists the permissions granted to a security profile.

For information about security profiles, see Security Profiles
(https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html)
in the I<Amazon Connect Administrator Guide>. For a mapping of the API
name and user interface name of the security profile permissions, see
List of security profile permissions
(https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html).


=head2 ListSecurityProfiles

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListSecurityProfiles>

Returns: a L<Paws::Connect::ListSecurityProfilesResponse> instance

Provides summary information about the security profiles for the
specified Amazon Connect instance.

For more information about security profiles, see Security Profiles
(https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html)
in the I<Amazon Connect Administrator Guide>. For a mapping of the API
name and user interface name of the security profile permissions, see
List of security profile permissions
(https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html).


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Connect::ListTagsForResource>

Returns: a L<Paws::Connect::ListTagsForResourceResponse> instance

Lists the tags for the specified resource.

For sample policies that use tags, see Amazon Connect Identity-Based
Policy Examples
(https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html)
in the I<Amazon Connect Administrator Guide>.


=head2 ListTaskTemplates

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListTaskTemplates>

Returns: a L<Paws::Connect::ListTaskTemplatesResponse> instance

Lists task templates for the specified Amazon Connect instance.


=head2 ListTrafficDistributionGroups

=over

=item [InstanceId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListTrafficDistributionGroups>

Returns: a L<Paws::Connect::ListTrafficDistributionGroupsResponse> instance

Lists traffic distribution groups.


=head2 ListTrafficDistributionGroupUsers

=over

=item TrafficDistributionGroupId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListTrafficDistributionGroupUsers>

Returns: a L<Paws::Connect::ListTrafficDistributionGroupUsersResponse> instance

Lists traffic distribution group users.


=head2 ListUseCases

=over

=item InstanceId => Str

=item IntegrationAssociationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListUseCases>

Returns: a L<Paws::Connect::ListUseCasesResponse> instance

Lists the use cases for the integration association.


=head2 ListUserHierarchyGroups

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListUserHierarchyGroups>

Returns: a L<Paws::Connect::ListUserHierarchyGroupsResponse> instance

Provides summary information about the hierarchy groups for the
specified Amazon Connect instance.

For more information about agent hierarchies, see Set Up Agent
Hierarchies
(https://docs.aws.amazon.com/connect/latest/adminguide/agent-hierarchy.html)
in the I<Amazon Connect Administrator Guide>.


=head2 ListUserProficiencies

=over

=item InstanceId => Str

=item UserId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListUserProficiencies>

Returns: a L<Paws::Connect::ListUserProficienciesResponse> instance

Lists proficiencies associated with a user.


=head2 ListUsers

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListUsers>

Returns: a L<Paws::Connect::ListUsersResponse> instance

Provides summary information about the users for the specified Amazon
Connect instance.


=head2 ListViews

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListViews>

Returns: a L<Paws::Connect::ListViewsResponse> instance

Returns views in the given instance.

Results are sorted primarily by type, and secondarily by name.


=head2 ListViewVersions

=over

=item InstanceId => Str

=item ViewId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListViewVersions>

Returns: a L<Paws::Connect::ListViewVersionsResponse> instance

Returns all the available versions for the specified Amazon Connect
instance and view identifier.

Results will be sorted from highest to lowest.


=head2 MonitorContact

=over

=item ContactId => Str

=item InstanceId => Str

=item UserId => Str

=item [AllowedMonitorCapabilities => ArrayRef[Str|Undef]]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::MonitorContact>

Returns: a L<Paws::Connect::MonitorContactResponse> instance

Initiates silent monitoring of a contact. The Contact Control Panel
(CCP) of the user specified by I<userId> will be set to silent
monitoring mode on the contact.


=head2 PauseContact

=over

=item ContactId => Str

=item InstanceId => Str

=item [ContactFlowId => Str]


=back

Each argument is described in detail in: L<Paws::Connect::PauseContact>

Returns: a L<Paws::Connect::PauseContactResponse> instance

Allows pausing an ongoing task contact.


=head2 PutUserStatus

=over

=item AgentStatusId => Str

=item InstanceId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::PutUserStatus>

Returns: a L<Paws::Connect::PutUserStatusResponse> instance

Changes the current status of a user or agent in Amazon Connect. If the
agent is currently handling a contact, this sets the agent's next
status.

For more information, see Agent status
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-agent-status.html)
and Set your next status
(https://docs.aws.amazon.com/connect/latest/adminguide/set-next-status.html)
in the I<Amazon Connect Administrator Guide>.


=head2 ReleasePhoneNumber

=over

=item PhoneNumberId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ReleasePhoneNumber>

Returns: nothing

Releases a phone number previously claimed to an Amazon Connect
instance or traffic distribution group. You can call this API only in
the Amazon Web Services Region where the number was claimed.

To release phone numbers from a traffic distribution group, use the
C<ReleasePhoneNumber> API, not the Amazon Connect admin website.

After releasing a phone number, the phone number enters into a cooldown
period for up to 180 days. It cannot be searched for or claimed again
until the period has ended. If you accidentally release a phone number,
contact Amazon Web ServicesSupport.

If you plan to claim and release numbers frequently, contact us for a
service quota exception. Otherwise, it is possible you will be blocked
from claiming and releasing any more numbers until up to 180 days past
the oldest number released has expired.

By default you can claim and release up to 200% of your maximum number
of active phone numbers. If you claim and release phone numbers using
the UI or API during a rolling 180 day cycle that exceeds 200% of your
phone number service level quota, you will be blocked from claiming any
more numbers until 180 days past the oldest number released has
expired.

For example, if you already have 99 claimed numbers and a service level
quota of 99 phone numbers, and in any 180 day period you release 99,
claim 99, and then release 99, you will have exceeded the 200% limit.
At that point you are blocked from claiming any more numbers until you
open an Amazon Web Services support ticket.


=head2 ReplicateInstance

=over

=item InstanceId => Str

=item ReplicaAlias => Str

=item ReplicaRegion => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ReplicateInstance>

Returns: a L<Paws::Connect::ReplicateInstanceResponse> instance

Replicates an Amazon Connect instance in the specified Amazon Web
Services Region and copies configuration information for Amazon Connect
resources across Amazon Web Services Regions.

For more information about replicating an Amazon Connect instance, see
Create a replica of your existing Amazon Connect instance
(https://docs.aws.amazon.com/connect/latest/adminguide/create-replica-connect-instance.html)
in the I<Amazon Connect Administrator Guide>.


=head2 ResumeContact

=over

=item ContactId => Str

=item InstanceId => Str

=item [ContactFlowId => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ResumeContact>

Returns: a L<Paws::Connect::ResumeContactResponse> instance

Allows resuming a task contact in a paused state.


=head2 ResumeContactRecording

=over

=item ContactId => Str

=item InitialContactId => Str

=item InstanceId => Str

=item [ContactRecordingType => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ResumeContactRecording>

Returns: a L<Paws::Connect::ResumeContactRecordingResponse> instance

When a contact is being recorded, and the recording has been suspended
using SuspendContactRecording, this API resumes recording whatever
recording is selected in the flow configuration: call, screen, or both.
If only call recording or only screen recording is enabled, then it
would resume.

Voice and screen recordings are supported.


=head2 SearchAgentStatuses

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchCriteria => L<Paws::Connect::AgentStatusSearchCriteria>]

=item [SearchFilter => L<Paws::Connect::AgentStatusSearchFilter>]


=back

Each argument is described in detail in: L<Paws::Connect::SearchAgentStatuses>

Returns: a L<Paws::Connect::SearchAgentStatusesResponse> instance

Searches AgentStatuses in an Amazon Connect instance, with optional
filtering.


=head2 SearchAvailablePhoneNumbers

=over

=item PhoneNumberCountryCode => Str

=item PhoneNumberType => Str

=item [InstanceId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PhoneNumberPrefix => Str]

=item [TargetArn => Str]


=back

Each argument is described in detail in: L<Paws::Connect::SearchAvailablePhoneNumbers>

Returns: a L<Paws::Connect::SearchAvailablePhoneNumbersResponse> instance

Searches for available phone numbers that you can claim to your Amazon
Connect instance or traffic distribution group. If the provided
C<TargetArn> is a traffic distribution group, you can call this API in
both Amazon Web Services Regions associated with the traffic
distribution group.


=head2 SearchContactFlowModules

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchCriteria => L<Paws::Connect::ContactFlowModuleSearchCriteria>]

=item [SearchFilter => L<Paws::Connect::ContactFlowModuleSearchFilter>]


=back

Each argument is described in detail in: L<Paws::Connect::SearchContactFlowModules>

Returns: a L<Paws::Connect::SearchContactFlowModulesResponse> instance

Searches the flow modules in an Amazon Connect instance, with optional
filtering.


=head2 SearchContactFlows

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchCriteria => L<Paws::Connect::ContactFlowSearchCriteria>]

=item [SearchFilter => L<Paws::Connect::ContactFlowSearchFilter>]


=back

Each argument is described in detail in: L<Paws::Connect::SearchContactFlows>

Returns: a L<Paws::Connect::SearchContactFlowsResponse> instance

Searches the flows in an Amazon Connect instance, with optional
filtering.


=head2 SearchContacts

=over

=item InstanceId => Str

=item TimeRange => L<Paws::Connect::SearchContactsTimeRange>

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchCriteria => L<Paws::Connect::SearchCriteria>]

=item [Sort => L<Paws::Connect::Sort>]


=back

Each argument is described in detail in: L<Paws::Connect::SearchContacts>

Returns: a L<Paws::Connect::SearchContactsResponse> instance

Searches contacts in an Amazon Connect instance.


=head2 SearchEmailAddresses

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchCriteria => L<Paws::Connect::EmailAddressSearchCriteria>]

=item [SearchFilter => L<Paws::Connect::EmailAddressSearchFilter>]


=back

Each argument is described in detail in: L<Paws::Connect::SearchEmailAddresses>

Returns: a L<Paws::Connect::SearchEmailAddressesResponse> instance

Searches email address in an instance, with optional filtering.


=head2 SearchHoursOfOperationOverrides

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchCriteria => L<Paws::Connect::HoursOfOperationOverrideSearchCriteria>]

=item [SearchFilter => L<Paws::Connect::HoursOfOperationSearchFilter>]


=back

Each argument is described in detail in: L<Paws::Connect::SearchHoursOfOperationOverrides>

Returns: a L<Paws::Connect::SearchHoursOfOperationOverridesResponse> instance

Searches the hours of operation overrides.


=head2 SearchHoursOfOperations

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchCriteria => L<Paws::Connect::HoursOfOperationSearchCriteria>]

=item [SearchFilter => L<Paws::Connect::HoursOfOperationSearchFilter>]


=back

Each argument is described in detail in: L<Paws::Connect::SearchHoursOfOperations>

Returns: a L<Paws::Connect::SearchHoursOfOperationsResponse> instance

Searches the hours of operation in an Amazon Connect instance, with
optional filtering.


=head2 SearchPredefinedAttributes

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchCriteria => L<Paws::Connect::PredefinedAttributeSearchCriteria>]


=back

Each argument is described in detail in: L<Paws::Connect::SearchPredefinedAttributes>

Returns: a L<Paws::Connect::SearchPredefinedAttributesResponse> instance

Searches predefined attributes that meet certain criteria. I<Predefined
attributes> are attributes in an Amazon Connect instance that can be
used to route contacts to an agent or pools of agents within a queue.
For more information, see Create predefined attributes for routing
contacts to agents
(https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html).


=head2 SearchPrompts

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchCriteria => L<Paws::Connect::PromptSearchCriteria>]

=item [SearchFilter => L<Paws::Connect::PromptSearchFilter>]


=back

Each argument is described in detail in: L<Paws::Connect::SearchPrompts>

Returns: a L<Paws::Connect::SearchPromptsResponse> instance

Searches prompts in an Amazon Connect instance, with optional
filtering.


=head2 SearchQueues

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchCriteria => L<Paws::Connect::QueueSearchCriteria>]

=item [SearchFilter => L<Paws::Connect::QueueSearchFilter>]


=back

Each argument is described in detail in: L<Paws::Connect::SearchQueues>

Returns: a L<Paws::Connect::SearchQueuesResponse> instance

Searches queues in an Amazon Connect instance, with optional filtering.


=head2 SearchQuickConnects

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchCriteria => L<Paws::Connect::QuickConnectSearchCriteria>]

=item [SearchFilter => L<Paws::Connect::QuickConnectSearchFilter>]


=back

Each argument is described in detail in: L<Paws::Connect::SearchQuickConnects>

Returns: a L<Paws::Connect::SearchQuickConnectsResponse> instance

Searches quick connects in an Amazon Connect instance, with optional
filtering.


=head2 SearchResourceTags

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceTypes => ArrayRef[Str|Undef]]

=item [SearchCriteria => L<Paws::Connect::ResourceTagsSearchCriteria>]


=back

Each argument is described in detail in: L<Paws::Connect::SearchResourceTags>

Returns: a L<Paws::Connect::SearchResourceTagsResponse> instance

Searches tags used in an Amazon Connect instance using optional search
criteria.


=head2 SearchRoutingProfiles

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchCriteria => L<Paws::Connect::RoutingProfileSearchCriteria>]

=item [SearchFilter => L<Paws::Connect::RoutingProfileSearchFilter>]


=back

Each argument is described in detail in: L<Paws::Connect::SearchRoutingProfiles>

Returns: a L<Paws::Connect::SearchRoutingProfilesResponse> instance

Searches routing profiles in an Amazon Connect instance, with optional
filtering.


=head2 SearchSecurityProfiles

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchCriteria => L<Paws::Connect::SecurityProfileSearchCriteria>]

=item [SearchFilter => L<Paws::Connect::SecurityProfilesSearchFilter>]


=back

Each argument is described in detail in: L<Paws::Connect::SearchSecurityProfiles>

Returns: a L<Paws::Connect::SearchSecurityProfilesResponse> instance

Searches security profiles in an Amazon Connect instance, with optional
filtering.

For information about security profiles, see Security Profiles
(https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html)
in the I<Amazon Connect Administrator Guide>. For a mapping of the API
name and user interface name of the security profile permissions, see
List of security profile permissions
(https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html).


=head2 SearchUserHierarchyGroups

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchCriteria => L<Paws::Connect::UserHierarchyGroupSearchCriteria>]

=item [SearchFilter => L<Paws::Connect::UserHierarchyGroupSearchFilter>]


=back

Each argument is described in detail in: L<Paws::Connect::SearchUserHierarchyGroups>

Returns: a L<Paws::Connect::SearchUserHierarchyGroupsResponse> instance

Searches UserHierarchyGroups in an Amazon Connect instance, with
optional filtering.

The UserHierarchyGroup with C<"LevelId": "0"> is the foundation for
building levels on top of an instance. It is not user-definable, nor is
it visible in the UI.


=head2 SearchUsers

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchCriteria => L<Paws::Connect::UserSearchCriteria>]

=item [SearchFilter => L<Paws::Connect::UserSearchFilter>]


=back

Each argument is described in detail in: L<Paws::Connect::SearchUsers>

Returns: a L<Paws::Connect::SearchUsersResponse> instance

Searches users in an Amazon Connect instance, with optional filtering.

C<AfterContactWorkTimeLimit> is returned in milliseconds.


=head2 SearchVocabularies

=over

=item InstanceId => Str

=item [LanguageCode => Str]

=item [MaxResults => Int]

=item [NameStartsWith => Str]

=item [NextToken => Str]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::Connect::SearchVocabularies>

Returns: a L<Paws::Connect::SearchVocabulariesResponse> instance

Searches for vocabularies within a specific Amazon Connect instance
using C<State>, C<NameStartsWith>, and C<LanguageCode>.


=head2 SendChatIntegrationEvent

=over

=item DestinationId => Str

=item Event => L<Paws::Connect::ChatEvent>

=item SourceId => Str

=item [NewSessionDetails => L<Paws::Connect::NewSessionDetails>]

=item [Subtype => Str]


=back

Each argument is described in detail in: L<Paws::Connect::SendChatIntegrationEvent>

Returns: a L<Paws::Connect::SendChatIntegrationEventResponse> instance

Processes chat integration events from Amazon Web Services or external
integrations to Amazon Connect. A chat integration event includes:

=over

=item *

SourceId, DestinationId, and Subtype: a set of identifiers, uniquely
representing a chat

=item *

ChatEvent: details of the chat action to perform such as sending a
message, event, or disconnecting from a chat

=back

When a chat integration event is sent with chat identifiers that do not
map to an active chat contact, a new chat contact is also created
before handling chat action.

Access to this API is currently restricted to Amazon Web Services End
User Messaging for supporting SMS integration.


=head2 SendOutboundEmail

=over

=item DestinationEmailAddress => L<Paws::Connect::EmailAddressInfo>

=item EmailMessage => L<Paws::Connect::OutboundEmailContent>

=item FromEmailAddress => L<Paws::Connect::EmailAddressInfo>

=item InstanceId => Str

=item TrafficType => Str

=item [AdditionalRecipients => L<Paws::Connect::OutboundAdditionalRecipients>]

=item [ClientToken => Str]

=item [SourceCampaign => L<Paws::Connect::SourceCampaign>]


=back

Each argument is described in detail in: L<Paws::Connect::SendOutboundEmail>

Returns: a L<Paws::Connect::SendOutboundEmailResponse> instance

Send outbound email for outbound campaigns. For more information about
outbound campaigns, see Set up Amazon Connect outbound campaigns
(https://docs.aws.amazon.com/connect/latest/adminguide/enable-outbound-campaigns.html).

Only the Amazon Connect outbound campaigns service principal is allowed
to assume a role in your account and call this API.


=head2 StartAttachedFileUpload

=over

=item AssociatedResourceArn => Str

=item FileName => Str

=item FileSizeInBytes => Int

=item FileUseCaseType => Str

=item InstanceId => Str

=item [ClientToken => Str]

=item [CreatedBy => L<Paws::Connect::CreatedByInfo>]

=item [Tags => L<Paws::Connect::TagMap>]

=item [UrlExpiryInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::Connect::StartAttachedFileUpload>

Returns: a L<Paws::Connect::StartAttachedFileUploadResponse> instance

Provides a pre-signed Amazon S3 URL in response for uploading your
content.

You may only use this API to upload attachments to an Amazon Connect
Case
(https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateCase.html)
or Amazon Connect Email
(https://docs.aws.amazon.com/connect/latest/adminguide/setup-email-channel.html).


=head2 StartChatContact

=over

=item ContactFlowId => Str

=item InstanceId => Str

=item ParticipantDetails => L<Paws::Connect::ParticipantDetails>

=item [Attributes => L<Paws::Connect::Attributes>]

=item [ChatDurationInMinutes => Int]

=item [ClientToken => Str]

=item [CustomerId => Str]

=item [InitialMessage => L<Paws::Connect::ChatMessage>]

=item [PersistentChat => L<Paws::Connect::PersistentChat>]

=item [RelatedContactId => Str]

=item [SegmentAttributes => L<Paws::Connect::SegmentAttributes>]

=item [SupportedMessagingContentTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Connect::StartChatContact>

Returns: a L<Paws::Connect::StartChatContactResponse> instance

Initiates a flow to start a new chat for the customer. Response of this
API provides a token required to obtain credentials from the
CreateParticipantConnection
(https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html)
API in the Amazon Connect Participant Service.

When a new chat contact is successfully created, clients must subscribe
to the participantE<rsquo>s connection for the created chat within 5
minutes. This is achieved by invoking CreateParticipantConnection
(https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html)
with WEBSOCKET and CONNECTION_CREDENTIALS.

A 429 error occurs in the following situations:

=over

=item *

API rate limit is exceeded. API TPS throttling returns a
C<TooManyRequests> exception.

=item *

The quota for concurrent active chats
(https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
is exceeded. Active chat throttling returns a
C<LimitExceededException>.

=back

If you use the C<ChatDurationInMinutes> parameter and receive a 400
error, your account may not support the ability to configure custom
chat durations. For more information, contact Amazon Web
ServicesSupport.

For more information about chat, see the following topics in the
I<Amazon Connect Administrator Guide>:

=over

=item *

Concepts: Web and mobile messaging capabilities in Amazon Connect
(https://docs.aws.amazon.com/connect/latest/adminguide/web-and-mobile-chat.html)

=item *

Amazon Connect Chat security best practices
(https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat)

=back



=head2 StartContactEvaluation

=over

=item ContactId => Str

=item EvaluationFormId => Str

=item InstanceId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::StartContactEvaluation>

Returns: a L<Paws::Connect::StartContactEvaluationResponse> instance

Starts an empty evaluation in the specified Amazon Connect instance,
using the given evaluation form for the particular contact. The
evaluation form version used for the contact evaluation corresponds to
the currently activated version. If no version is activated for the
evaluation form, the contact evaluation cannot be started.

Evaluations created through the public API do not contain answer values
suggested from automation.


=head2 StartContactRecording

=over

=item ContactId => Str

=item InitialContactId => Str

=item InstanceId => Str

=item VoiceRecordingConfiguration => L<Paws::Connect::VoiceRecordingConfiguration>


=back

Each argument is described in detail in: L<Paws::Connect::StartContactRecording>

Returns: a L<Paws::Connect::StartContactRecordingResponse> instance

Starts recording the contact:

=over

=item *

If the API is called I<before> the agent joins the call, recording
starts when the agent joins the call.

=item *

If the API is called I<after> the agent joins the call, recording
starts at the time of the API call.

=back

StartContactRecording is a one-time action. For example, if you use
StopContactRecording to stop recording an ongoing call, you can't use
StartContactRecording to restart it. For scenarios where the recording
has started and you want to suspend and resume it, such as when
collecting sensitive information (for example, a credit card number),
use SuspendContactRecording and ResumeContactRecording.

You can use this API to override the recording behavior configured in
the Set recording behavior
(https://docs.aws.amazon.com/connect/latest/adminguide/set-recording-behavior.html)
block.

Only voice recordings are supported at this time.


=head2 StartContactStreaming

=over

=item ChatStreamingConfiguration => L<Paws::Connect::ChatStreamingConfiguration>

=item ClientToken => Str

=item ContactId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::StartContactStreaming>

Returns: a L<Paws::Connect::StartContactStreamingResponse> instance

Initiates real-time message streaming for a new chat contact.

For more information about message streaming, see Enable real-time chat
message streaming
(https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html)
in the I<Amazon Connect Administrator Guide>.

For more information about chat, see the following topics in the
I<Amazon Connect Administrator Guide>:

=over

=item *

Concepts: Web and mobile messaging capabilities in Amazon Connect
(https://docs.aws.amazon.com/connect/latest/adminguide/web-and-mobile-chat.html)

=item *

Amazon Connect Chat security best practices
(https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat)

=back



=head2 StartEmailContact

=over

=item DestinationEmailAddress => Str

=item EmailMessage => L<Paws::Connect::InboundEmailContent>

=item FromEmailAddress => L<Paws::Connect::EmailAddressInfo>

=item InstanceId => Str

=item [AdditionalRecipients => L<Paws::Connect::InboundAdditionalRecipients>]

=item [Attachments => ArrayRef[L<Paws::Connect::EmailAttachment>]]

=item [Attributes => L<Paws::Connect::Attributes>]

=item [ClientToken => Str]

=item [ContactFlowId => Str]

=item [Description => Str]

=item [Name => Str]

=item [References => L<Paws::Connect::ContactReferences>]

=item [RelatedContactId => Str]

=item [SegmentAttributes => L<Paws::Connect::SegmentAttributes>]


=back

Each argument is described in detail in: L<Paws::Connect::StartEmailContact>

Returns: a L<Paws::Connect::StartEmailContactResponse> instance

Creates an inbound email contact and initiates a flow to start the
email contact for the customer. Response of this API provides the
ContactId of the email contact created.


=head2 StartOutboundChatContact

=over

=item ContactFlowId => Str

=item DestinationEndpoint => L<Paws::Connect::Endpoint>

=item InstanceId => Str

=item SegmentAttributes => L<Paws::Connect::SegmentAttributes>

=item SourceEndpoint => L<Paws::Connect::Endpoint>

=item [Attributes => L<Paws::Connect::Attributes>]

=item [ChatDurationInMinutes => Int]

=item [ClientToken => Str]

=item [InitialSystemMessage => L<Paws::Connect::ChatMessage>]

=item [ParticipantDetails => L<Paws::Connect::ParticipantDetails>]

=item [RelatedContactId => Str]

=item [SupportedMessagingContentTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Connect::StartOutboundChatContact>

Returns: a L<Paws::Connect::StartOutboundChatContactResponse> instance

Initiates a new outbound SMS contact to a customer. Response of this
API provides the C<ContactId> of the outbound SMS contact created.

B<SourceEndpoint> only supports Endpoints with
C<CONNECT_PHONENUMBER_ARN> as Type and B<DestinationEndpoint> only
supports Endpoints with C<TELEPHONE_NUMBER> as Type. B<ContactFlowId>
initiates the flow to manage the new SMS contact created.

This API can be used to initiate outbound SMS contacts for an agent, or
it can also deflect an ongoing contact to an outbound SMS contact by
using the StartOutboundChatContact
(https://docs.aws.amazon.com/connect/latest/APIReference/API_StartOutboundChatContact.html)
Flow Action.

For more information about using SMS in Amazon Connect, see the
following topics in the I<Amazon Connect Administrator Guide>:

=over

=item *

Set up SMS messaging
(https://docs.aws.amazon.com/connect/latest/adminguide/setup-sms-messaging.html)

=item *

Request an SMS-enabled phone number through AWS End User Messaging SMS
(https://docs.aws.amazon.com/connect/latest/adminguide/sms-number.html)

=back



=head2 StartOutboundEmailContact

=over

=item ContactId => Str

=item DestinationEmailAddress => L<Paws::Connect::EmailAddressInfo>

=item EmailMessage => L<Paws::Connect::OutboundEmailContent>

=item InstanceId => Str

=item [AdditionalRecipients => L<Paws::Connect::OutboundAdditionalRecipients>]

=item [ClientToken => Str]

=item [FromEmailAddress => L<Paws::Connect::EmailAddressInfo>]


=back

Each argument is described in detail in: L<Paws::Connect::StartOutboundEmailContact>

Returns: a L<Paws::Connect::StartOutboundEmailContactResponse> instance

Initiates a flow to send an agent reply or outbound email contact
(created from the CreateContact API) to a customer.


=head2 StartOutboundVoiceContact

=over

=item ContactFlowId => Str

=item DestinationPhoneNumber => Str

=item InstanceId => Str

=item [AnswerMachineDetectionConfig => L<Paws::Connect::AnswerMachineDetectionConfig>]

=item [Attributes => L<Paws::Connect::Attributes>]

=item [CampaignId => Str]

=item [ClientToken => Str]

=item [Description => Str]

=item [Name => Str]

=item [QueueId => Str]

=item [References => L<Paws::Connect::ContactReferences>]

=item [RelatedContactId => Str]

=item [SourcePhoneNumber => Str]

=item [TrafficType => Str]


=back

Each argument is described in detail in: L<Paws::Connect::StartOutboundVoiceContact>

Returns: a L<Paws::Connect::StartOutboundVoiceContactResponse> instance

Places an outbound call to a contact, and then initiates the flow. It
performs the actions in the flow that's specified (in
C<ContactFlowId>).

Agents do not initiate the outbound API, which means that they do not
dial the contact. If the flow places an outbound call to a contact, and
then puts the contact in queue, the call is then routed to the agent,
like any other inbound case.

There is a 60-second dialing timeout for this operation. If the call is
not connected after 60 seconds, it fails.

UK numbers with a 447 prefix are not allowed by default. Before you can
dial these UK mobile numbers, you must submit a service quota increase
request. For more information, see Amazon Connect Service Quotas
(https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
in the I<Amazon Connect Administrator Guide>.

Campaign calls are not allowed by default. Before you can make a call
with C<TrafficType> = C<CAMPAIGN>, you must submit a service quota
increase request to the quota Amazon Connect campaigns
(https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#outbound-communications-quotas).


=head2 StartScreenSharing

=over

=item ContactId => Str

=item InstanceId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::StartScreenSharing>

Returns: a L<Paws::Connect::StartScreenSharingResponse> instance

Starts screen sharing for a contact. For more information about screen
sharing, see Set up in-app, web, video calling, and screen sharing
capabilities
(https://docs.aws.amazon.com/connect/latest/adminguide/inapp-calling.html)
in the I<Amazon Connect Administrator Guide>.


=head2 StartTaskContact

=over

=item InstanceId => Str

=item Name => Str

=item [Attributes => L<Paws::Connect::Attributes>]

=item [ClientToken => Str]

=item [ContactFlowId => Str]

=item [Description => Str]

=item [PreviousContactId => Str]

=item [QuickConnectId => Str]

=item [References => L<Paws::Connect::ContactReferences>]

=item [RelatedContactId => Str]

=item [ScheduledTime => Str]

=item [SegmentAttributes => L<Paws::Connect::SegmentAttributes>]

=item [TaskTemplateId => Str]


=back

Each argument is described in detail in: L<Paws::Connect::StartTaskContact>

Returns: a L<Paws::Connect::StartTaskContactResponse> instance

Initiates a flow to start a new task contact. For more information
about task contacts, see Concepts: Tasks in Amazon Connect
(https://docs.aws.amazon.com/connect/latest/adminguide/tasks.html) in
the I<Amazon Connect Administrator Guide>.

When using C<PreviousContactId> and C<RelatedContactId> input
parameters, note the following:

=over

=item *

C<PreviousContactId>

=over

=item *

Any updates to user-defined task contact attributes on any contact
linked through the same C<PreviousContactId> will affect every contact
in the chain.

=item *

There can be a maximum of 12 linked task contacts in a chain. That is,
12 task contacts can be created that share the same
C<PreviousContactId>.

=back

=item *

C<RelatedContactId>

=over

=item *

Copies contact attributes from the related task contact to the new
contact.

=item *

Any update on attributes in a new task contact does not update
attributes on previous contact.

=item *

ThereE<rsquo>s no limit on the number of task contacts that can be
created that use the same C<RelatedContactId>.

=back

=back

In addition, when calling StartTaskContact include only one of these
parameters: C<ContactFlowID>, C<QuickConnectID>, or C<TaskTemplateID>.
Only one parameter is required as long as the task template has a flow
configured to run it. If more than one parameter is specified, or only
the C<TaskTemplateID> is specified but it does not have a flow
configured, the request returns an error because Amazon Connect cannot
identify the unique flow to run when the task is created.

A C<ServiceQuotaExceededException> occurs when the number of open tasks
exceeds the active tasks quota or there are already 12 tasks
referencing the same C<PreviousContactId>. For more information about
service quotas for task contacts, see Amazon Connect service quotas
(https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
in the I<Amazon Connect Administrator Guide>.


=head2 StartWebRTCContact

=over

=item ContactFlowId => Str

=item InstanceId => Str

=item ParticipantDetails => L<Paws::Connect::ParticipantDetails>

=item [AllowedCapabilities => L<Paws::Connect::AllowedCapabilities>]

=item [Attributes => L<Paws::Connect::Attributes>]

=item [ClientToken => Str]

=item [Description => Str]

=item [References => L<Paws::Connect::ContactReferences>]

=item [RelatedContactId => Str]


=back

Each argument is described in detail in: L<Paws::Connect::StartWebRTCContact>

Returns: a L<Paws::Connect::StartWebRTCContactResponse> instance

Places an inbound in-app, web, or video call to a contact, and then
initiates the flow. It performs the actions in the flow that are
specified (in ContactFlowId) and present in the Amazon Connect instance
(specified as InstanceId).


=head2 StopContact

=over

=item ContactId => Str

=item InstanceId => Str

=item [DisconnectReason => L<Paws::Connect::DisconnectReason>]


=back

Each argument is described in detail in: L<Paws::Connect::StopContact>

Returns: a L<Paws::Connect::StopContactResponse> instance

Ends the specified contact. Use this API to stop queued callbacks. It
does not work for voice contacts that use the following initiation
methods:

=over

=item *

DISCONNECT

=item *

TRANSFER

=item *

QUEUE_TRANSFER

=item *

EXTERNAL_OUTBOUND

=item *

MONITOR

=back

Chat and task contacts can be terminated in any state, regardless of
initiation method.


=head2 StopContactRecording

=over

=item ContactId => Str

=item InitialContactId => Str

=item InstanceId => Str

=item [ContactRecordingType => Str]


=back

Each argument is described in detail in: L<Paws::Connect::StopContactRecording>

Returns: a L<Paws::Connect::StopContactRecordingResponse> instance

Stops recording a call when a contact is being recorded.
StopContactRecording is a one-time action. If you use
StopContactRecording to stop recording an ongoing call, you can't use
StartContactRecording to restart it. For scenarios where the recording
has started and you want to suspend it for sensitive information (for
example, to collect a credit card number), and then restart it, use
SuspendContactRecording and ResumeContactRecording.

Only voice recordings are supported at this time.


=head2 StopContactStreaming

=over

=item ContactId => Str

=item InstanceId => Str

=item StreamingId => Str


=back

Each argument is described in detail in: L<Paws::Connect::StopContactStreaming>

Returns: a L<Paws::Connect::StopContactStreamingResponse> instance

Ends message streaming on a specified contact. To restart message
streaming on that contact, call the StartContactStreaming
(https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html)
API.


=head2 SubmitContactEvaluation

=over

=item EvaluationId => Str

=item InstanceId => Str

=item [Answers => L<Paws::Connect::EvaluationAnswersInputMap>]

=item [Notes => L<Paws::Connect::EvaluationNotesMap>]


=back

Each argument is described in detail in: L<Paws::Connect::SubmitContactEvaluation>

Returns: a L<Paws::Connect::SubmitContactEvaluationResponse> instance

Submits a contact evaluation in the specified Amazon Connect instance.
Answers included in the request are merged with existing answers for
the given evaluation. If no answers or notes are passed, the evaluation
is submitted with the existing answers and notes. You can delete an
answer or note by passing an empty object (C<{}>) to the question
identifier.

If a contact evaluation is already in submitted state, this operation
will trigger a resubmission.


=head2 SuspendContactRecording

=over

=item ContactId => Str

=item InitialContactId => Str

=item InstanceId => Str

=item [ContactRecordingType => Str]


=back

Each argument is described in detail in: L<Paws::Connect::SuspendContactRecording>

Returns: a L<Paws::Connect::SuspendContactRecordingResponse> instance

When a contact is being recorded, this API suspends recording whatever
is selected in the flow configuration: call (IVR or agent), screen, or
both. If only call recording or only screen recording is enabled, then
it would be suspended. For example, you might suspend the screen
recording while collecting sensitive information, such as a credit card
number. Then use ResumeContactRecording
(https://docs.aws.amazon.com/connect/latest/APIReference/API_ResumeContactRecording.html)
to restart recording the screen.

The period of time that the recording is suspended is filled with
silence in the final recording.

Voice (IVR, agent) and screen recordings are supported.


=head2 TagContact

=over

=item ContactId => Str

=item InstanceId => Str

=item Tags => L<Paws::Connect::ContactTagMap>


=back

Each argument is described in detail in: L<Paws::Connect::TagContact>

Returns: a L<Paws::Connect::TagContactResponse> instance

Adds the specified tags to the contact resource. For more information
about this API is used, see Set up granular billing for a detailed view
of your Amazon Connect usage
(https://docs.aws.amazon.com/connect/latest/adminguide/granular-billing.html).


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Connect::TagMap>


=back

Each argument is described in detail in: L<Paws::Connect::TagResource>

Returns: nothing

Adds the specified tags to the specified resource.

Some of the supported resource types are agents, routing profiles,
queues, quick connects, flows, agent statuses, hours of operation,
phone numbers, security profiles, and task templates. For a complete
list, see Tagging resources in Amazon Connect
(https://docs.aws.amazon.com/connect/latest/adminguide/tagging.html).

For sample policies that use tags, see Amazon Connect Identity-Based
Policy Examples
(https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html)
in the I<Amazon Connect Administrator Guide>.


=head2 TransferContact

=over

=item ContactFlowId => Str

=item ContactId => Str

=item InstanceId => Str

=item [ClientToken => Str]

=item [QueueId => Str]

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::Connect::TransferContact>

Returns: a L<Paws::Connect::TransferContactResponse> instance

Transfers C<TASK> or C<EMAIL> contacts from one agent or queue to
another agent or queue at any point after a contact is created. You can
transfer a contact to another queue by providing the flow which
orchestrates the contact to the destination queue. This gives you more
control over contact handling and helps you adhere to the service level
agreement (SLA) guaranteed to your customers.

Note the following requirements:

=over

=item *

Transfer is only supported for C<TASK> and C<EMAIL> contacts.

=item *

Do not use both C<QueueId> and C<UserId> in the same call.

=item *

The following flow types are supported: Inbound flow, Transfer to agent
flow, and Transfer to queue flow.

=item *

The C<TransferContact> API can be called only on active contacts.

=item *

A contact cannot be transferred more than 11 times.

=back



=head2 UntagContact

=over

=item ContactId => Str

=item InstanceId => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Connect::UntagContact>

Returns: a L<Paws::Connect::UntagContactResponse> instance

Removes the specified tags from the contact resource. For more
information about this API is used, see Set up granular billing for a
detailed view of your Amazon Connect usage
(https://docs.aws.amazon.com/connect/latest/adminguide/granular-billing.html).


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Connect::UntagResource>

Returns: nothing

Removes the specified tags from the specified resource.


=head2 UpdateAgentStatus

=over

=item AgentStatusId => Str

=item InstanceId => Str

=item [Description => Str]

=item [DisplayOrder => Int]

=item [Name => Str]

=item [ResetOrderNumber => Bool]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateAgentStatus>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Updates agent status.


=head2 UpdateAuthenticationProfile

=over

=item AuthenticationProfileId => Str

=item InstanceId => Str

=item [AllowedIps => ArrayRef[Str|Undef]]

=item [BlockedIps => ArrayRef[Str|Undef]]

=item [Description => Str]

=item [Name => Str]

=item [PeriodicSessionDuration => Int]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateAuthenticationProfile>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change. To request access to this API, contact Amazon Web
ServicesSupport.

Updates the selected authentication profile.


=head2 UpdateContact

=over

=item ContactId => Str

=item InstanceId => Str

=item [CustomerEndpoint => L<Paws::Connect::Endpoint>]

=item [Description => Str]

=item [Name => Str]

=item [QueueInfo => L<Paws::Connect::QueueInfoInput>]

=item [References => L<Paws::Connect::ContactReferences>]

=item [SegmentAttributes => L<Paws::Connect::SegmentAttributes>]

=item [SystemEndpoint => L<Paws::Connect::Endpoint>]

=item [UserInfo => L<Paws::Connect::UserInfo>]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateContact>

Returns: a L<Paws::Connect::UpdateContactResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Adds or updates user-defined contact information associated with the
specified contact. At least one field to be updated must be present in
the request.

You can add or update user-defined contact information for both ongoing
and completed contacts.


=head2 UpdateContactAttributes

=over

=item Attributes => L<Paws::Connect::Attributes>

=item InitialContactId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateContactAttributes>

Returns: a L<Paws::Connect::UpdateContactAttributesResponse> instance

Creates or updates user-defined contact attributes associated with the
specified contact.

You can create or update user-defined attributes for both ongoing and
completed contacts. For example, while the call is active, you can
update the customer's name or the reason the customer called. You can
add notes about steps that the agent took during the call that display
to the next agent that takes the call. You can also update attributes
for a contact using data from your CRM application and save the data
with the contact in Amazon Connect. You could also flag calls for
additional analysis, such as legal review or to identify abusive
callers.

Contact attributes are available in Amazon Connect for 24 months, and
are then deleted. For information about contact record retention and
the maximum size of the contact record attributes section, see Feature
specifications
(https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits)
in the I<Amazon Connect Administrator Guide>.


=head2 UpdateContactEvaluation

=over

=item EvaluationId => Str

=item InstanceId => Str

=item [Answers => L<Paws::Connect::EvaluationAnswersInputMap>]

=item [Notes => L<Paws::Connect::EvaluationNotesMap>]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateContactEvaluation>

Returns: a L<Paws::Connect::UpdateContactEvaluationResponse> instance

Updates details about a contact evaluation in the specified Amazon
Connect instance. A contact evaluation must be in draft state. Answers
included in the request are merged with existing answers for the given
evaluation. An answer or note can be deleted by passing an empty object
(C<{}>) to the question identifier.


=head2 UpdateContactFlowContent

=over

=item ContactFlowId => Str

=item Content => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateContactFlowContent>

Returns: a L<Paws::Connect::UpdateContactFlowContentResponse> instance

Updates the specified flow.

You can also create and update flows using the Amazon Connect Flow
language
(https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html).

Use the C<$SAVED> alias in the request to describe the C<SAVED> content
of a Flow. For example, C<arn:aws:.../contact-flow/{id}:$SAVED>. After
a flow is published, C<$SAVED> needs to be supplied to view saved
content that has not been published.


=head2 UpdateContactFlowMetadata

=over

=item ContactFlowId => Str

=item InstanceId => Str

=item [ContactFlowState => Str]

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateContactFlowMetadata>

Returns: a L<Paws::Connect::UpdateContactFlowMetadataResponse> instance

Updates metadata about specified flow.


=head2 UpdateContactFlowModuleContent

=over

=item ContactFlowModuleId => Str

=item Content => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateContactFlowModuleContent>

Returns: a L<Paws::Connect::UpdateContactFlowModuleContentResponse> instance

Updates specified flow module for the specified Amazon Connect
instance.

Use the C<$SAVED> alias in the request to describe the C<SAVED> content
of a Flow. For example, C<arn:aws:.../contact-flow/{id}:$SAVED>. After
a flow is published, C<$SAVED> needs to be supplied to view saved
content that has not been published.


=head2 UpdateContactFlowModuleMetadata

=over

=item ContactFlowModuleId => Str

=item InstanceId => Str

=item [Description => Str]

=item [Name => Str]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateContactFlowModuleMetadata>

Returns: a L<Paws::Connect::UpdateContactFlowModuleMetadataResponse> instance

Updates metadata about specified flow module.


=head2 UpdateContactFlowName

=over

=item ContactFlowId => Str

=item InstanceId => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateContactFlowName>

Returns: a L<Paws::Connect::UpdateContactFlowNameResponse> instance

The name of the flow.

You can also create and update flows using the Amazon Connect Flow
language
(https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html).


=head2 UpdateContactRoutingData

=over

=item ContactId => Str

=item InstanceId => Str

=item [QueuePriority => Int]

=item [QueueTimeAdjustmentSeconds => Int]

=item [RoutingCriteria => L<Paws::Connect::RoutingCriteriaInput>]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateContactRoutingData>

Returns: a L<Paws::Connect::UpdateContactRoutingDataResponse> instance

Updates routing priority and age on the contact (B<QueuePriority> and
B<QueueTimeAdjustmentInSeconds>). These properties can be used to
change a customer's position in the queue. For example, you can move a
contact to the back of the queue by setting a lower routing priority
relative to other contacts in queue; or you can move a contact to the
front of the queue by increasing the routing age which will make the
contact look artificially older and therefore higher up in the
first-in-first-out routing order. Note that adjusting the routing age
of a contact affects only its position in queue, and not its actual
queue wait time as reported through metrics. These properties can also
be updated by using the Set routing priority / age flow block
(https://docs.aws.amazon.com/connect/latest/adminguide/change-routing-priority.html).

Either B<QueuePriority> or B<QueueTimeAdjustmentInSeconds> should be
provided within the request body, but not both.


=head2 UpdateContactSchedule

=over

=item ContactId => Str

=item InstanceId => Str

=item ScheduledTime => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateContactSchedule>

Returns: a L<Paws::Connect::UpdateContactScheduleResponse> instance

Updates the scheduled time of a task contact that is already scheduled.


=head2 UpdateEmailAddressMetadata

=over

=item EmailAddressId => Str

=item InstanceId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DisplayName => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateEmailAddressMetadata>

Returns: a L<Paws::Connect::UpdateEmailAddressMetadataResponse> instance

Updates an email address metadata. For more information about email
addresses, see Create email addresses
(https://docs.aws.amazon.com/connect/latest/adminguide/create-email-address1.html)
in the Amazon Connect Administrator Guide.


=head2 UpdateEvaluationForm

=over

=item EvaluationFormId => Str

=item EvaluationFormVersion => Int

=item InstanceId => Str

=item Items => ArrayRef[L<Paws::Connect::EvaluationFormItem>]

=item Title => Str

=item [ClientToken => Str]

=item [CreateNewVersion => Bool]

=item [Description => Str]

=item [ScoringStrategy => L<Paws::Connect::EvaluationFormScoringStrategy>]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateEvaluationForm>

Returns: a L<Paws::Connect::UpdateEvaluationFormResponse> instance

Updates details about a specific evaluation form version in the
specified Amazon Connect instance. Question and section identifiers
cannot be duplicated within the same evaluation form.

This operation does not support partial updates. Instead it does a full
update of evaluation form content.


=head2 UpdateHoursOfOperation

=over

=item HoursOfOperationId => Str

=item InstanceId => Str

=item [Config => ArrayRef[L<Paws::Connect::HoursOfOperationConfig>]]

=item [Description => Str]

=item [Name => Str]

=item [TimeZone => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateHoursOfOperation>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Updates the hours of operation.


=head2 UpdateHoursOfOperationOverride

=over

=item HoursOfOperationId => Str

=item HoursOfOperationOverrideId => Str

=item InstanceId => Str

=item [Config => ArrayRef[L<Paws::Connect::HoursOfOperationOverrideConfig>]]

=item [Description => Str]

=item [EffectiveFrom => Str]

=item [EffectiveTill => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateHoursOfOperationOverride>

Returns: nothing

Update the hours of operation override.


=head2 UpdateInstanceAttribute

=over

=item AttributeType => Str

=item InstanceId => Str

=item Value => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateInstanceAttribute>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Updates the value for the specified attribute type.


=head2 UpdateInstanceStorageConfig

=over

=item AssociationId => Str

=item InstanceId => Str

=item ResourceType => Str

=item StorageConfig => L<Paws::Connect::InstanceStorageConfig>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateInstanceStorageConfig>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Updates an existing configuration for a resource type. This API is
idempotent.


=head2 UpdateParticipantAuthentication

=over

=item InstanceId => Str

=item State => Str

=item [Code => Str]

=item [Error => Str]

=item [ErrorDescription => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateParticipantAuthentication>

Returns: a L<Paws::Connect::UpdateParticipantAuthenticationResponse> instance

Instructs Amazon Connect to resume the authentication process. The
subsequent actions depend on the request body contents:

=over

=item *

B<If a code is provided>: Connect retrieves the identity information
from Amazon Cognito and imports it into Connect Customer Profiles.

=item *

B<If an error is provided>: The error branch of the Authenticate
Customer block is executed.

=back

The API returns a success response to acknowledge the request. However,
the interaction and exchange of identity information occur
asynchronously after the response is returned.


=head2 UpdateParticipantRoleConfig

=over

=item ChannelConfiguration => L<Paws::Connect::UpdateParticipantRoleConfigChannelInfo>

=item ContactId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateParticipantRoleConfig>

Returns: a L<Paws::Connect::UpdateParticipantRoleConfigResponse> instance

Updates timeouts for when human chat participants are to be considered
idle, and when agents are automatically disconnected from a chat due to
idleness. You can set four timers:

=over

=item *

Customer idle timeout

=item *

Customer auto-disconnect timeout

=item *

Agent idle timeout

=item *

Agent auto-disconnect timeout

=back

For more information about how chat timeouts work, see Set up chat
timeouts for human participants
(https://docs.aws.amazon.com/connect/latest/adminguide/setup-chat-timeouts.html).


=head2 UpdatePhoneNumber

=over

=item PhoneNumberId => Str

=item [ClientToken => Str]

=item [InstanceId => Str]

=item [TargetArn => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdatePhoneNumber>

Returns: a L<Paws::Connect::UpdatePhoneNumberResponse> instance

Updates your claimed phone number from its current Amazon Connect
instance or traffic distribution group to another Amazon Connect
instance or traffic distribution group in the same Amazon Web Services
Region.

After using this API, you must verify that the phone number is attached
to the correct flow in the target instance or traffic distribution
group. You need to do this because the API switches only the phone
number to a new instance or traffic distribution group. It doesn't
migrate the flow configuration of the phone number, too.

You can call DescribePhoneNumber
(https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html)
API to verify the status of a previous UpdatePhoneNumber
(https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdatePhoneNumber.html)
operation.


=head2 UpdatePhoneNumberMetadata

=over

=item PhoneNumberId => Str

=item [ClientToken => Str]

=item [PhoneNumberDescription => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdatePhoneNumberMetadata>

Returns: nothing

Updates a phone numberE<rsquo>s metadata.

To verify the status of a previous UpdatePhoneNumberMetadata operation,
call the DescribePhoneNumber
(https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html)
API.


=head2 UpdatePredefinedAttribute

=over

=item InstanceId => Str

=item Name => Str

=item [Values => L<Paws::Connect::PredefinedAttributeValues>]


=back

Each argument is described in detail in: L<Paws::Connect::UpdatePredefinedAttribute>

Returns: nothing

Updates a predefined attribute for the specified Amazon Connect
instance. I<Predefined attributes> are attributes in an Amazon Connect
instance that can be used to route contacts to an agent or pools of
agents within a queue. For more information, see Create predefined
attributes for routing contacts to agents
(https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html).


=head2 UpdatePrompt

=over

=item InstanceId => Str

=item PromptId => Str

=item [Description => Str]

=item [Name => Str]

=item [S3Uri => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdatePrompt>

Returns: a L<Paws::Connect::UpdatePromptResponse> instance

Updates a prompt.


=head2 UpdateQueueHoursOfOperation

=over

=item HoursOfOperationId => Str

=item InstanceId => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateQueueHoursOfOperation>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Updates the hours of operation for the specified queue.


=head2 UpdateQueueMaxContacts

=over

=item InstanceId => Str

=item QueueId => Str

=item [MaxContacts => Int]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateQueueMaxContacts>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Updates the maximum number of contacts allowed in a queue before it is
considered full.


=head2 UpdateQueueName

=over

=item InstanceId => Str

=item QueueId => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateQueueName>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Updates the name and description of a queue. At least C<Name> or
C<Description> must be provided.


=head2 UpdateQueueOutboundCallerConfig

=over

=item InstanceId => Str

=item OutboundCallerConfig => L<Paws::Connect::OutboundCallerConfig>

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateQueueOutboundCallerConfig>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Updates the outbound caller ID name, number, and outbound whisper flow
for a specified queue.

=over

=item *

If the phone number is claimed to a traffic distribution group that was
created in the same Region as the Amazon Connect instance where you are
calling this API, then you can use a full phone number ARN or a UUID
for C<OutboundCallerIdNumberId>. However, if the phone number is
claimed to a traffic distribution group that is in one Region, and you
are calling this API from an instance in another Amazon Web Services
Region that is associated with the traffic distribution group, you must
provide a full phone number ARN. If a UUID is provided in this
scenario, you will receive a C<ResourceNotFoundException>.

=item *

Only use the phone number ARN format that doesn't contain C<instance>
in the path, for example,
C<arn:aws:connect:us-east-1:1234567890:phone-number/uuid>. This is the
same ARN format that is returned when you call the ListPhoneNumbersV2
(https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html)
API.

=item *

If you plan to use IAM policies to allow/deny access to this API for
phone number resources claimed to a traffic distribution group, see
Allow or Deny queue API actions for phone numbers in a replica Region
(https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_resource-level-policy-examples.html#allow-deny-queue-actions-replica-region).

=back



=head2 UpdateQueueOutboundEmailConfig

=over

=item InstanceId => Str

=item OutboundEmailConfig => L<Paws::Connect::OutboundEmailConfig>

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateQueueOutboundEmailConfig>

Returns: nothing

Updates the outbound email address Id for a specified queue.


=head2 UpdateQueueStatus

=over

=item InstanceId => Str

=item QueueId => Str

=item Status => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateQueueStatus>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Updates the status of the queue.


=head2 UpdateQuickConnectConfig

=over

=item InstanceId => Str

=item QuickConnectConfig => L<Paws::Connect::QuickConnectConfig>

=item QuickConnectId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateQuickConnectConfig>

Returns: nothing

Updates the configuration settings for the specified quick connect.


=head2 UpdateQuickConnectName

=over

=item InstanceId => Str

=item QuickConnectId => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateQuickConnectName>

Returns: nothing

Updates the name and description of a quick connect. The request
accepts the following data in JSON format. At least C<Name> or
C<Description> must be provided.


=head2 UpdateRoutingProfileAgentAvailabilityTimer

=over

=item AgentAvailabilityTimer => Str

=item InstanceId => Str

=item RoutingProfileId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateRoutingProfileAgentAvailabilityTimer>

Returns: nothing

Whether agents with this routing profile will have their routing order
calculated based on I<time since their last inbound contact> or
I<longest idle time>.


=head2 UpdateRoutingProfileConcurrency

=over

=item InstanceId => Str

=item MediaConcurrencies => ArrayRef[L<Paws::Connect::MediaConcurrency>]

=item RoutingProfileId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateRoutingProfileConcurrency>

Returns: nothing

Updates the channels that agents can handle in the Contact Control
Panel (CCP) for a routing profile.


=head2 UpdateRoutingProfileDefaultOutboundQueue

=over

=item DefaultOutboundQueueId => Str

=item InstanceId => Str

=item RoutingProfileId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateRoutingProfileDefaultOutboundQueue>

Returns: nothing

Updates the default outbound queue of a routing profile.


=head2 UpdateRoutingProfileName

=over

=item InstanceId => Str

=item RoutingProfileId => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateRoutingProfileName>

Returns: nothing

Updates the name and description of a routing profile. The request
accepts the following data in JSON format. At least C<Name> or
C<Description> must be provided.


=head2 UpdateRoutingProfileQueues

=over

=item InstanceId => Str

=item QueueConfigs => ArrayRef[L<Paws::Connect::RoutingProfileQueueConfig>]

=item RoutingProfileId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateRoutingProfileQueues>

Returns: nothing

Updates the properties associated with a set of queues for a routing
profile.


=head2 UpdateRule

=over

=item Actions => ArrayRef[L<Paws::Connect::RuleAction>]

=item Function => Str

=item InstanceId => Str

=item Name => Str

=item PublishStatus => Str

=item RuleId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateRule>

Returns: nothing

Updates a rule for the specified Amazon Connect instance.

Use the Rules Function language
(https://docs.aws.amazon.com/connect/latest/APIReference/connect-rules-language.html)
to code conditions for the rule.


=head2 UpdateSecurityProfile

=over

=item InstanceId => Str

=item SecurityProfileId => Str

=item [AllowedAccessControlHierarchyGroupId => Str]

=item [AllowedAccessControlTags => L<Paws::Connect::AllowedAccessControlTags>]

=item [Applications => ArrayRef[L<Paws::Connect::Application>]]

=item [Description => Str]

=item [HierarchyRestrictedResources => ArrayRef[Str|Undef]]

=item [Permissions => ArrayRef[Str|Undef]]

=item [TagRestrictedResources => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateSecurityProfile>

Returns: nothing

Updates a security profile.

For information about security profiles, see Security Profiles
(https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html)
in the I<Amazon Connect Administrator Guide>. For a mapping of the API
name and user interface name of the security profile permissions, see
List of security profile permissions
(https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html).


=head2 UpdateTaskTemplate

=over

=item InstanceId => Str

=item TaskTemplateId => Str

=item [Constraints => L<Paws::Connect::TaskTemplateConstraints>]

=item [ContactFlowId => Str]

=item [Defaults => L<Paws::Connect::TaskTemplateDefaults>]

=item [Description => Str]

=item [Fields => ArrayRef[L<Paws::Connect::TaskTemplateField>]]

=item [Name => Str]

=item [SelfAssignFlowId => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateTaskTemplate>

Returns: a L<Paws::Connect::UpdateTaskTemplateResponse> instance

Updates details about a specific task template in the specified Amazon
Connect instance. This operation does not support partial updates.
Instead it does a full update of template content.


=head2 UpdateTrafficDistribution

=over

=item Id => Str

=item [AgentConfig => L<Paws::Connect::AgentConfig>]

=item [SignInConfig => L<Paws::Connect::SignInConfig>]

=item [TelephonyConfig => L<Paws::Connect::TelephonyConfig>]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateTrafficDistribution>

Returns: a L<Paws::Connect::UpdateTrafficDistributionResponse> instance

Updates the traffic distribution for a given traffic distribution
group.

When you shift telephony traffic, also shift agents and/or agent
sign-ins to ensure they can handle the calls in the other Region. If
you don't shift the agents, voice calls will go to the shifted Region
but there won't be any agents available to receive the calls.

The C<SignInConfig> distribution is available only on a default
C<TrafficDistributionGroup> (see the C<IsDefault> parameter in the
TrafficDistributionGroup
(https://docs.aws.amazon.com/connect/latest/APIReference/API_TrafficDistributionGroup.html)
data type). If you call C<UpdateTrafficDistribution> with a modified
C<SignInConfig> and a non-default C<TrafficDistributionGroup>, an
C<InvalidRequestException> is returned.

For more information about updating a traffic distribution group, see
Update telephony traffic distribution across Amazon Web Services
Regions
(https://docs.aws.amazon.com/connect/latest/adminguide/update-telephony-traffic-distribution.html)
in the I<Amazon Connect Administrator Guide>.


=head2 UpdateUserHierarchy

=over

=item InstanceId => Str

=item UserId => Str

=item [HierarchyGroupId => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserHierarchy>

Returns: nothing

Assigns the specified hierarchy group to the specified user.


=head2 UpdateUserHierarchyGroupName

=over

=item HierarchyGroupId => Str

=item InstanceId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserHierarchyGroupName>

Returns: nothing

Updates the name of the user hierarchy group.


=head2 UpdateUserHierarchyStructure

=over

=item HierarchyStructure => L<Paws::Connect::HierarchyStructureUpdate>

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserHierarchyStructure>

Returns: nothing

Updates the user hierarchy structure: add, remove, and rename user
hierarchy levels.


=head2 UpdateUserIdentityInfo

=over

=item IdentityInfo => L<Paws::Connect::UserIdentityInfo>

=item InstanceId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserIdentityInfo>

Returns: nothing

Updates the identity information for the specified user.

We strongly recommend limiting who has the ability to invoke
C<UpdateUserIdentityInfo>. Someone with that ability can change the
login credentials of other users by changing their email address. This
poses a security risk to your organization. They can change the email
address of a user to the attacker's email address, and then reset the
password through email. For more information, see Best Practices for
Security Profiles
(https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html)
in the I<Amazon Connect Administrator Guide>.


=head2 UpdateUserPhoneConfig

=over

=item InstanceId => Str

=item PhoneConfig => L<Paws::Connect::UserPhoneConfig>

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserPhoneConfig>

Returns: nothing

Updates the phone configuration settings for the specified user.


=head2 UpdateUserProficiencies

=over

=item InstanceId => Str

=item UserId => Str

=item UserProficiencies => ArrayRef[L<Paws::Connect::UserProficiency>]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserProficiencies>

Returns: nothing

Updates the properties associated with the proficiencies of a user.


=head2 UpdateUserRoutingProfile

=over

=item InstanceId => Str

=item RoutingProfileId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserRoutingProfile>

Returns: nothing

Assigns the specified routing profile to the specified user.


=head2 UpdateUserSecurityProfiles

=over

=item InstanceId => Str

=item SecurityProfileIds => ArrayRef[Str|Undef]

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserSecurityProfiles>

Returns: nothing

Assigns the specified security profiles to the specified user.


=head2 UpdateViewContent

=over

=item Content => L<Paws::Connect::ViewInputContent>

=item InstanceId => Str

=item Status => Str

=item ViewId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateViewContent>

Returns: a L<Paws::Connect::UpdateViewContentResponse> instance

Updates the view content of the given view identifier in the specified
Amazon Connect instance.

It performs content validation if C<Status> is set to C<SAVED> and
performs full content validation if C<Status> is C<PUBLISHED>. Note
that the C<$SAVED> alias' content will always be updated, but the
C<$LATEST> alias' content will only be updated if C<Status> is
C<PUBLISHED>.


=head2 UpdateViewMetadata

=over

=item InstanceId => Str

=item ViewId => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateViewMetadata>

Returns: a L<Paws::Connect::UpdateViewMetadataResponse> instance

Updates the view metadata. Note that either C<Name> or C<Description>
must be provided.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllMetricData(sub { },EndTime => Str, Filters => L<Paws::Connect::Filters>, HistoricalMetrics => ArrayRef[L<Paws::Connect::HistoricalMetric>], InstanceId => Str, StartTime => Str, [Groupings => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 GetAllMetricData(EndTime => Str, Filters => L<Paws::Connect::Filters>, HistoricalMetrics => ArrayRef[L<Paws::Connect::HistoricalMetric>], InstanceId => Str, StartTime => Str, [Groupings => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MetricResults, passing the object as the first parameter, and the string 'MetricResults' as the second parameter 

If not, it will return a a L<Paws::Connect::GetMetricDataResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAgentStatuses(sub { },InstanceId => Str, [AgentStatusTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllAgentStatuses(InstanceId => Str, [AgentStatusTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AgentStatusSummaryList, passing the object as the first parameter, and the string 'AgentStatusSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListAgentStatusResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApprovedOrigins(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllApprovedOrigins(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Origins, passing the object as the first parameter, and the string 'Origins' as the second parameter 

If not, it will return a a L<Paws::Connect::ListApprovedOriginsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAuthenticationProfiles(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAuthenticationProfiles(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AuthenticationProfileSummaryList, passing the object as the first parameter, and the string 'AuthenticationProfileSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListAuthenticationProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBots(sub { },InstanceId => Str, LexVersion => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllBots(InstanceId => Str, LexVersion => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LexBots, passing the object as the first parameter, and the string 'LexBots' as the second parameter 

If not, it will return a a L<Paws::Connect::ListBotsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllContactEvaluations(sub { },ContactId => Str, InstanceId => Str, [NextToken => Str])

=head2 ListAllContactEvaluations(ContactId => Str, InstanceId => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EvaluationSummaryList, passing the object as the first parameter, and the string 'EvaluationSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListContactEvaluationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllContactFlowModules(sub { },InstanceId => Str, [ContactFlowModuleState => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllContactFlowModules(InstanceId => Str, [ContactFlowModuleState => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ContactFlowModulesSummaryList, passing the object as the first parameter, and the string 'ContactFlowModulesSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListContactFlowModulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllContactFlows(sub { },InstanceId => Str, [ContactFlowTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllContactFlows(InstanceId => Str, [ContactFlowTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ContactFlowSummaryList, passing the object as the first parameter, and the string 'ContactFlowSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListContactFlowsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllContactFlowVersions(sub { },ContactFlowId => Str, InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllContactFlowVersions(ContactFlowId => Str, InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ContactFlowVersionSummaryList, passing the object as the first parameter, and the string 'ContactFlowVersionSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListContactFlowVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllContactReferences(sub { },ContactId => Str, InstanceId => Str, ReferenceTypes => ArrayRef[Str|Undef], [NextToken => Str])

=head2 ListAllContactReferences(ContactId => Str, InstanceId => Str, ReferenceTypes => ArrayRef[Str|Undef], [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReferenceSummaryList, passing the object as the first parameter, and the string 'ReferenceSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListContactReferencesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDefaultVocabularies(sub { },InstanceId => Str, [LanguageCode => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllDefaultVocabularies(InstanceId => Str, [LanguageCode => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DefaultVocabularyList, passing the object as the first parameter, and the string 'DefaultVocabularyList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListDefaultVocabulariesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEvaluationForms(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllEvaluationForms(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EvaluationFormSummaryList, passing the object as the first parameter, and the string 'EvaluationFormSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListEvaluationFormsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEvaluationFormVersions(sub { },EvaluationFormId => Str, InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllEvaluationFormVersions(EvaluationFormId => Str, InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EvaluationFormVersionSummaryList, passing the object as the first parameter, and the string 'EvaluationFormVersionSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListEvaluationFormVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFlowAssociations(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, ResourceType => Str])

=head2 ListAllFlowAssociations(InstanceId => Str, [MaxResults => Int, NextToken => Str, ResourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FlowAssociationSummaryList, passing the object as the first parameter, and the string 'FlowAssociationSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListFlowAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllHoursOfOperationOverrides(sub { },HoursOfOperationId => Str, InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllHoursOfOperationOverrides(HoursOfOperationId => Str, InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HoursOfOperationOverrideList, passing the object as the first parameter, and the string 'HoursOfOperationOverrideList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListHoursOfOperationOverridesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllHoursOfOperations(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllHoursOfOperations(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HoursOfOperationSummaryList, passing the object as the first parameter, and the string 'HoursOfOperationSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListHoursOfOperationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInstanceAttributes(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllInstanceAttributes(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Attributes, passing the object as the first parameter, and the string 'Attributes' as the second parameter 

If not, it will return a a L<Paws::Connect::ListInstanceAttributesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInstances(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllInstances([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceSummaryList, passing the object as the first parameter, and the string 'InstanceSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListInstancesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInstanceStorageConfigs(sub { },InstanceId => Str, ResourceType => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllInstanceStorageConfigs(InstanceId => Str, ResourceType => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StorageConfigs, passing the object as the first parameter, and the string 'StorageConfigs' as the second parameter 

If not, it will return a a L<Paws::Connect::ListInstanceStorageConfigsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIntegrationAssociations(sub { },InstanceId => Str, [IntegrationArn => Str, IntegrationType => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllIntegrationAssociations(InstanceId => Str, [IntegrationArn => Str, IntegrationType => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IntegrationAssociationSummaryList, passing the object as the first parameter, and the string 'IntegrationAssociationSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListIntegrationAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLambdaFunctions(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllLambdaFunctions(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LambdaFunctions, passing the object as the first parameter, and the string 'LambdaFunctions' as the second parameter 

If not, it will return a a L<Paws::Connect::ListLambdaFunctionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLexBots(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllLexBots(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LexBots, passing the object as the first parameter, and the string 'LexBots' as the second parameter 

If not, it will return a a L<Paws::Connect::ListLexBotsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPhoneNumbers(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, PhoneNumberCountryCodes => ArrayRef[Str|Undef], PhoneNumberTypes => ArrayRef[Str|Undef]])

=head2 ListAllPhoneNumbers(InstanceId => Str, [MaxResults => Int, NextToken => Str, PhoneNumberCountryCodes => ArrayRef[Str|Undef], PhoneNumberTypes => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PhoneNumberSummaryList, passing the object as the first parameter, and the string 'PhoneNumberSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListPhoneNumbersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPhoneNumbersV2(sub { },[InstanceId => Str, MaxResults => Int, NextToken => Str, PhoneNumberCountryCodes => ArrayRef[Str|Undef], PhoneNumberPrefix => Str, PhoneNumberTypes => ArrayRef[Str|Undef], TargetArn => Str])

=head2 ListAllPhoneNumbersV2([InstanceId => Str, MaxResults => Int, NextToken => Str, PhoneNumberCountryCodes => ArrayRef[Str|Undef], PhoneNumberPrefix => Str, PhoneNumberTypes => ArrayRef[Str|Undef], TargetArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ListPhoneNumbersSummaryList, passing the object as the first parameter, and the string 'ListPhoneNumbersSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListPhoneNumbersV2Response> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPredefinedAttributes(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPredefinedAttributes(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PredefinedAttributeSummaryList, passing the object as the first parameter, and the string 'PredefinedAttributeSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListPredefinedAttributesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPrompts(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPrompts(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PromptSummaryList, passing the object as the first parameter, and the string 'PromptSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListPromptsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllQueueQuickConnects(sub { },InstanceId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllQueueQuickConnects(InstanceId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - QuickConnectSummaryList, passing the object as the first parameter, and the string 'QuickConnectSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListQueueQuickConnectsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllQueues(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, QueueTypes => ArrayRef[Str|Undef]])

=head2 ListAllQueues(InstanceId => Str, [MaxResults => Int, NextToken => Str, QueueTypes => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - QueueSummaryList, passing the object as the first parameter, and the string 'QueueSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListQueuesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllQuickConnects(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, QuickConnectTypes => ArrayRef[Str|Undef]])

=head2 ListAllQuickConnects(InstanceId => Str, [MaxResults => Int, NextToken => Str, QuickConnectTypes => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - QuickConnectSummaryList, passing the object as the first parameter, and the string 'QuickConnectSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListQuickConnectsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRoutingProfileQueues(sub { },InstanceId => Str, RoutingProfileId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllRoutingProfileQueues(InstanceId => Str, RoutingProfileId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RoutingProfileQueueConfigSummaryList, passing the object as the first parameter, and the string 'RoutingProfileQueueConfigSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListRoutingProfileQueuesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRoutingProfiles(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllRoutingProfiles(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RoutingProfileSummaryList, passing the object as the first parameter, and the string 'RoutingProfileSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListRoutingProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRules(sub { },InstanceId => Str, [EventSourceName => Str, MaxResults => Int, NextToken => Str, PublishStatus => Str])

=head2 ListAllRules(InstanceId => Str, [EventSourceName => Str, MaxResults => Int, NextToken => Str, PublishStatus => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RuleSummaryList, passing the object as the first parameter, and the string 'RuleSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListRulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSecurityKeys(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllSecurityKeys(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SecurityKeys, passing the object as the first parameter, and the string 'SecurityKeys' as the second parameter 

If not, it will return a a L<Paws::Connect::ListSecurityKeysResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSecurityProfileApplications(sub { },InstanceId => Str, SecurityProfileId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllSecurityProfileApplications(InstanceId => Str, SecurityProfileId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Applications, passing the object as the first parameter, and the string 'Applications' as the second parameter 

If not, it will return a a L<Paws::Connect::ListSecurityProfileApplicationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSecurityProfilePermissions(sub { },InstanceId => Str, SecurityProfileId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllSecurityProfilePermissions(InstanceId => Str, SecurityProfileId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Permissions, passing the object as the first parameter, and the string 'Permissions' as the second parameter 

If not, it will return a a L<Paws::Connect::ListSecurityProfilePermissionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSecurityProfiles(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllSecurityProfiles(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SecurityProfileSummaryList, passing the object as the first parameter, and the string 'SecurityProfileSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListSecurityProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTaskTemplates(sub { },InstanceId => Str, [MaxResults => Int, Name => Str, NextToken => Str, Status => Str])

=head2 ListAllTaskTemplates(InstanceId => Str, [MaxResults => Int, Name => Str, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TaskTemplates, passing the object as the first parameter, and the string 'TaskTemplates' as the second parameter 

If not, it will return a a L<Paws::Connect::ListTaskTemplatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTrafficDistributionGroups(sub { },[InstanceId => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllTrafficDistributionGroups([InstanceId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrafficDistributionGroupSummaryList, passing the object as the first parameter, and the string 'TrafficDistributionGroupSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListTrafficDistributionGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTrafficDistributionGroupUsers(sub { },TrafficDistributionGroupId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTrafficDistributionGroupUsers(TrafficDistributionGroupId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrafficDistributionGroupUserSummaryList, passing the object as the first parameter, and the string 'TrafficDistributionGroupUserSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListTrafficDistributionGroupUsersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUseCases(sub { },InstanceId => Str, IntegrationAssociationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllUseCases(InstanceId => Str, IntegrationAssociationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UseCaseSummaryList, passing the object as the first parameter, and the string 'UseCaseSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListUseCasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUserHierarchyGroups(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllUserHierarchyGroups(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UserHierarchyGroupSummaryList, passing the object as the first parameter, and the string 'UserHierarchyGroupSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListUserHierarchyGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUserProficiencies(sub { },InstanceId => Str, UserId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllUserProficiencies(InstanceId => Str, UserId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UserProficiencyList, passing the object as the first parameter, and the string 'UserProficiencyList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListUserProficienciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUsers(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllUsers(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UserSummaryList, passing the object as the first parameter, and the string 'UserSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListUsersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllViews(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, Type => Str])

=head2 ListAllViews(InstanceId => Str, [MaxResults => Int, NextToken => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ViewsSummaryList, passing the object as the first parameter, and the string 'ViewsSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListViewsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllViewVersions(sub { },InstanceId => Str, ViewId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllViewVersions(InstanceId => Str, ViewId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ViewVersionSummaryList, passing the object as the first parameter, and the string 'ViewVersionSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListViewVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllAgentStatuses(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::AgentStatusSearchCriteria>, SearchFilter => L<Paws::Connect::AgentStatusSearchFilter>])

=head2 SearchAllAgentStatuses(InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::AgentStatusSearchCriteria>, SearchFilter => L<Paws::Connect::AgentStatusSearchFilter>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AgentStatuses, passing the object as the first parameter, and the string 'AgentStatuses' as the second parameter 

If not, it will return a a L<Paws::Connect::SearchAgentStatusesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllAvailablePhoneNumbers(sub { },PhoneNumberCountryCode => Str, PhoneNumberType => Str, [InstanceId => Str, MaxResults => Int, NextToken => Str, PhoneNumberPrefix => Str, TargetArn => Str])

=head2 SearchAllAvailablePhoneNumbers(PhoneNumberCountryCode => Str, PhoneNumberType => Str, [InstanceId => Str, MaxResults => Int, NextToken => Str, PhoneNumberPrefix => Str, TargetArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AvailableNumbersList, passing the object as the first parameter, and the string 'AvailableNumbersList' as the second parameter 

If not, it will return a a L<Paws::Connect::SearchAvailablePhoneNumbersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllContactFlowModules(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::ContactFlowModuleSearchCriteria>, SearchFilter => L<Paws::Connect::ContactFlowModuleSearchFilter>])

=head2 SearchAllContactFlowModules(InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::ContactFlowModuleSearchCriteria>, SearchFilter => L<Paws::Connect::ContactFlowModuleSearchFilter>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ContactFlowModules, passing the object as the first parameter, and the string 'ContactFlowModules' as the second parameter 

If not, it will return a a L<Paws::Connect::SearchContactFlowModulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllContactFlows(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::ContactFlowSearchCriteria>, SearchFilter => L<Paws::Connect::ContactFlowSearchFilter>])

=head2 SearchAllContactFlows(InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::ContactFlowSearchCriteria>, SearchFilter => L<Paws::Connect::ContactFlowSearchFilter>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ContactFlows, passing the object as the first parameter, and the string 'ContactFlows' as the second parameter 

If not, it will return a a L<Paws::Connect::SearchContactFlowsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllContacts(sub { },InstanceId => Str, TimeRange => L<Paws::Connect::SearchContactsTimeRange>, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::SearchCriteria>, Sort => L<Paws::Connect::Sort>])

=head2 SearchAllContacts(InstanceId => Str, TimeRange => L<Paws::Connect::SearchContactsTimeRange>, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::SearchCriteria>, Sort => L<Paws::Connect::Sort>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Contacts, passing the object as the first parameter, and the string 'Contacts' as the second parameter 

If not, it will return a a L<Paws::Connect::SearchContactsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllHoursOfOperationOverrides(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::HoursOfOperationOverrideSearchCriteria>, SearchFilter => L<Paws::Connect::HoursOfOperationSearchFilter>])

=head2 SearchAllHoursOfOperationOverrides(InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::HoursOfOperationOverrideSearchCriteria>, SearchFilter => L<Paws::Connect::HoursOfOperationSearchFilter>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HoursOfOperationOverrides, passing the object as the first parameter, and the string 'HoursOfOperationOverrides' as the second parameter 

If not, it will return a a L<Paws::Connect::SearchHoursOfOperationOverridesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllHoursOfOperations(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::HoursOfOperationSearchCriteria>, SearchFilter => L<Paws::Connect::HoursOfOperationSearchFilter>])

=head2 SearchAllHoursOfOperations(InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::HoursOfOperationSearchCriteria>, SearchFilter => L<Paws::Connect::HoursOfOperationSearchFilter>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HoursOfOperations, passing the object as the first parameter, and the string 'HoursOfOperations' as the second parameter 

If not, it will return a a L<Paws::Connect::SearchHoursOfOperationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllPredefinedAttributes(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::PredefinedAttributeSearchCriteria>])

=head2 SearchAllPredefinedAttributes(InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::PredefinedAttributeSearchCriteria>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PredefinedAttributes, passing the object as the first parameter, and the string 'PredefinedAttributes' as the second parameter 

If not, it will return a a L<Paws::Connect::SearchPredefinedAttributesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllPrompts(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::PromptSearchCriteria>, SearchFilter => L<Paws::Connect::PromptSearchFilter>])

=head2 SearchAllPrompts(InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::PromptSearchCriteria>, SearchFilter => L<Paws::Connect::PromptSearchFilter>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Prompts, passing the object as the first parameter, and the string 'Prompts' as the second parameter 

If not, it will return a a L<Paws::Connect::SearchPromptsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllQueues(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::QueueSearchCriteria>, SearchFilter => L<Paws::Connect::QueueSearchFilter>])

=head2 SearchAllQueues(InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::QueueSearchCriteria>, SearchFilter => L<Paws::Connect::QueueSearchFilter>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Queues, passing the object as the first parameter, and the string 'Queues' as the second parameter 

If not, it will return a a L<Paws::Connect::SearchQueuesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllQuickConnects(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::QuickConnectSearchCriteria>, SearchFilter => L<Paws::Connect::QuickConnectSearchFilter>])

=head2 SearchAllQuickConnects(InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::QuickConnectSearchCriteria>, SearchFilter => L<Paws::Connect::QuickConnectSearchFilter>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - QuickConnects, passing the object as the first parameter, and the string 'QuickConnects' as the second parameter 

If not, it will return a a L<Paws::Connect::SearchQuickConnectsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllResourceTags(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, ResourceTypes => ArrayRef[Str|Undef], SearchCriteria => L<Paws::Connect::ResourceTagsSearchCriteria>])

=head2 SearchAllResourceTags(InstanceId => Str, [MaxResults => Int, NextToken => Str, ResourceTypes => ArrayRef[Str|Undef], SearchCriteria => L<Paws::Connect::ResourceTagsSearchCriteria>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::Connect::SearchResourceTagsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllRoutingProfiles(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::RoutingProfileSearchCriteria>, SearchFilter => L<Paws::Connect::RoutingProfileSearchFilter>])

=head2 SearchAllRoutingProfiles(InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::RoutingProfileSearchCriteria>, SearchFilter => L<Paws::Connect::RoutingProfileSearchFilter>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RoutingProfiles, passing the object as the first parameter, and the string 'RoutingProfiles' as the second parameter 

If not, it will return a a L<Paws::Connect::SearchRoutingProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllSecurityProfiles(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::SecurityProfileSearchCriteria>, SearchFilter => L<Paws::Connect::SecurityProfilesSearchFilter>])

=head2 SearchAllSecurityProfiles(InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::SecurityProfileSearchCriteria>, SearchFilter => L<Paws::Connect::SecurityProfilesSearchFilter>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SecurityProfiles, passing the object as the first parameter, and the string 'SecurityProfiles' as the second parameter 

If not, it will return a a L<Paws::Connect::SearchSecurityProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllUserHierarchyGroups(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::UserHierarchyGroupSearchCriteria>, SearchFilter => L<Paws::Connect::UserHierarchyGroupSearchFilter>])

=head2 SearchAllUserHierarchyGroups(InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::UserHierarchyGroupSearchCriteria>, SearchFilter => L<Paws::Connect::UserHierarchyGroupSearchFilter>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UserHierarchyGroups, passing the object as the first parameter, and the string 'UserHierarchyGroups' as the second parameter 

If not, it will return a a L<Paws::Connect::SearchUserHierarchyGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllUsers(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::UserSearchCriteria>, SearchFilter => L<Paws::Connect::UserSearchFilter>])

=head2 SearchAllUsers(InstanceId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::Connect::UserSearchCriteria>, SearchFilter => L<Paws::Connect::UserSearchFilter>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Users, passing the object as the first parameter, and the string 'Users' as the second parameter 

If not, it will return a a L<Paws::Connect::SearchUsersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllVocabularies(sub { },InstanceId => Str, [LanguageCode => Str, MaxResults => Int, NameStartsWith => Str, NextToken => Str, State => Str])

=head2 SearchAllVocabularies(InstanceId => Str, [LanguageCode => Str, MaxResults => Int, NameStartsWith => Str, NextToken => Str, State => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VocabularySummaryList, passing the object as the first parameter, and the string 'VocabularySummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::SearchVocabulariesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

