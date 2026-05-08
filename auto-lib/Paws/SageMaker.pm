package Paws::SageMaker;
  use Moose;
  sub service { 'api.sagemaker' }
  sub signing_name { 'sagemaker' }
  sub version { '2017-07-24' }
  sub target_prefix { 'SageMaker' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AddAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::AddAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::AddTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateTrialComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::AssociateTrialComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteClusterNodes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::BatchDeleteClusterNodes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDescribeModelPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::BatchDescribeModelPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAlgorithm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateAlgorithm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAppImageConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateAppImageConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateArtifact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAutoMLJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateAutoMLJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAutoMLJobV2 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateAutoMLJobV2', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateClusterSchedulerConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateClusterSchedulerConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCodeRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateCodeRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCompilationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateCompilationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateComputeQuota {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateComputeQuota', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateContext {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateContext', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataQualityJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateDataQualityJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDeviceFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateDeviceFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEdgeDeploymentPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateEdgeDeploymentPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEdgeDeploymentStage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateEdgeDeploymentStage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEdgePackagingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateEdgePackagingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEndpointConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateEndpointConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFeatureGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateFeatureGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFlowDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateFlowDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHub {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateHub', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHubContentReference {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateHubContentReference', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHumanTaskUi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateHumanTaskUi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHyperParameterTuningJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateHyperParameterTuningJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateImageVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateImageVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInferenceComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateInferenceComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInferenceExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateInferenceExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInferenceRecommendationsJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateInferenceRecommendationsJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLabelingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateLabelingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMlflowTrackingServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateMlflowTrackingServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModelBiasJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateModelBiasJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModelCard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateModelCard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModelCardExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateModelCardExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModelExplainabilityJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateModelExplainabilityJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModelPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateModelPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModelPackageGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateModelPackageGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModelQualityJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateModelQualityJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMonitoringSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateMonitoringSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNotebookInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateNotebookInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNotebookInstanceLifecycleConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateNotebookInstanceLifecycleConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOptimizationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateOptimizationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePartnerApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreatePartnerApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePartnerAppPresignedUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreatePartnerAppPresignedUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreatePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePresignedDomainUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreatePresignedDomainUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePresignedMlflowTrackingServerUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreatePresignedMlflowTrackingServerUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePresignedNotebookInstanceUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreatePresignedNotebookInstanceUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProcessingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateProcessingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSpace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateSpace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStudioLifecycleConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateStudioLifecycleConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrainingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateTrainingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrainingPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateTrainingPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransformJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateTransformJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrial {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateTrial', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrialComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateTrialComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUserProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateUserProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkforce {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateWorkforce', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkteam {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateWorkteam', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAlgorithm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteAlgorithm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAppImageConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteAppImageConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteArtifact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteClusterSchedulerConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteClusterSchedulerConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCodeRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteCodeRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCompilationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteCompilationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteComputeQuota {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteComputeQuota', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteContext {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteContext', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataQualityJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteDataQualityJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDeviceFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteDeviceFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEdgeDeploymentPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteEdgeDeploymentPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEdgeDeploymentStage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteEdgeDeploymentStage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEndpointConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteEndpointConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFeatureGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteFeatureGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFlowDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteFlowDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHub {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteHub', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHubContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteHubContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHubContentReference {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteHubContentReference', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHumanTaskUi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteHumanTaskUi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHyperParameterTuningJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteHyperParameterTuningJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImageVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteImageVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInferenceComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteInferenceComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInferenceExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteInferenceExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMlflowTrackingServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteMlflowTrackingServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModelBiasJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteModelBiasJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModelCard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteModelCard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModelExplainabilityJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteModelExplainabilityJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModelPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteModelPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModelPackageGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteModelPackageGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModelPackageGroupPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteModelPackageGroupPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModelQualityJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteModelQualityJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMonitoringSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteMonitoringSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNotebookInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteNotebookInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNotebookInstanceLifecycleConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteNotebookInstanceLifecycleConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOptimizationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteOptimizationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePartnerApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeletePartnerApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeletePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSpace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteSpace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStudioLifecycleConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteStudioLifecycleConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrial {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteTrial', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrialComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteTrialComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUserProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteUserProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkforce {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteWorkforce', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkteam {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteWorkteam', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeregisterDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAlgorithm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeAlgorithm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAppImageConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeAppImageConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeArtifact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAutoMLJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeAutoMLJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAutoMLJobV2 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeAutoMLJobV2', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusterNode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeClusterNode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusterSchedulerConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeClusterSchedulerConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCodeRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeCodeRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCompilationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeCompilationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeComputeQuota {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeComputeQuota', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeContext {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeContext', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataQualityJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeDataQualityJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDeviceFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeDeviceFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEdgeDeploymentPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeEdgeDeploymentPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEdgePackagingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeEdgePackagingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpointConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeEndpointConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFeatureGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeFeatureGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFeatureMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeFeatureMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFlowDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeFlowDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHub {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeHub', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHubContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeHubContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHumanTaskUi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeHumanTaskUi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHyperParameterTuningJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeHyperParameterTuningJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImageVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeImageVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInferenceComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeInferenceComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInferenceExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeInferenceExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInferenceRecommendationsJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeInferenceRecommendationsJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLabelingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeLabelingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLineageGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeLineageGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMlflowTrackingServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeMlflowTrackingServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeModelBiasJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeModelBiasJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeModelCard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeModelCard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeModelCardExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeModelCardExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeModelExplainabilityJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeModelExplainabilityJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeModelPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeModelPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeModelPackageGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeModelPackageGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeModelQualityJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeModelQualityJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMonitoringSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeMonitoringSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNotebookInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeNotebookInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNotebookInstanceLifecycleConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeNotebookInstanceLifecycleConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOptimizationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeOptimizationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePartnerApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribePartnerApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePipelineDefinitionForExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribePipelineDefinitionForExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePipelineExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribePipelineExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProcessingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeProcessingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeSpace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStudioLifecycleConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeStudioLifecycleConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSubscribedWorkteam {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeSubscribedWorkteam', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrainingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeTrainingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrainingPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeTrainingPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTransformJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeTransformJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrial {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeTrial', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrialComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeTrialComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUserProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeUserProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkforce {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeWorkforce', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkteam {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeWorkteam', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableSagemakerServicecatalogPortfolio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DisableSagemakerServicecatalogPortfolio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateTrialComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DisassociateTrialComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableSagemakerServicecatalogPortfolio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::EnableSagemakerServicecatalogPortfolio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeviceFleetReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::GetDeviceFleetReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLineageGroupPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::GetLineageGroupPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetModelPackageGroupPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::GetModelPackageGroupPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSagemakerServicecatalogPortfolioStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::GetSagemakerServicecatalogPortfolioStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetScalingConfigurationRecommendation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::GetScalingConfigurationRecommendation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSearchSuggestions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::GetSearchSuggestions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportHubContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ImportHubContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAlgorithms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListAlgorithms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppImageConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListAppImageConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListApps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListArtifacts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListArtifacts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAutoMLJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListAutoMLJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCandidatesForAutoMLJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListCandidatesForAutoMLJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClusterNodes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListClusterNodes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClusterSchedulerConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListClusterSchedulerConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCodeRepositories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListCodeRepositories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCompilationJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListCompilationJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComputeQuotas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListComputeQuotas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContexts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListContexts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataQualityJobDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListDataQualityJobDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeviceFleets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListDeviceFleets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEdgeDeploymentPlans {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListEdgeDeploymentPlans', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEdgePackagingJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListEdgePackagingJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEndpointConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListEndpointConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExperiments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListExperiments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFeatureGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListFeatureGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFlowDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListFlowDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHubContents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListHubContents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHubContentVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListHubContentVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHubs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListHubs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHumanTaskUis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListHumanTaskUis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHyperParameterTuningJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListHyperParameterTuningJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListImages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImageVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListImageVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInferenceComponents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListInferenceComponents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInferenceExperiments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListInferenceExperiments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInferenceRecommendationsJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListInferenceRecommendationsJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInferenceRecommendationsJobSteps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListInferenceRecommendationsJobSteps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLabelingJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListLabelingJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLabelingJobsForWorkteam {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListLabelingJobsForWorkteam', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLineageGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListLineageGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMlflowTrackingServers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListMlflowTrackingServers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModelBiasJobDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListModelBiasJobDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModelCardExportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListModelCardExportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModelCards {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListModelCards', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModelCardVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListModelCardVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModelExplainabilityJobDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListModelExplainabilityJobDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModelMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListModelMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModelPackageGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListModelPackageGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModelPackages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListModelPackages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModelQualityJobDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListModelQualityJobDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMonitoringAlertHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListMonitoringAlertHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMonitoringAlerts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListMonitoringAlerts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMonitoringExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListMonitoringExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMonitoringSchedules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListMonitoringSchedules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNotebookInstanceLifecycleConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListNotebookInstanceLifecycleConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNotebookInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListNotebookInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOptimizationJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListOptimizationJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPartnerApps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListPartnerApps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPipelineExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListPipelineExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPipelineExecutionSteps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListPipelineExecutionSteps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPipelineParametersForExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListPipelineParametersForExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPipelines {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListPipelines', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProcessingJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListProcessingJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListProjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceCatalogs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListResourceCatalogs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSpaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListSpaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStageDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListStageDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStudioLifecycleConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListStudioLifecycleConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSubscribedWorkteams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListSubscribedWorkteams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrainingJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListTrainingJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrainingJobsForHyperParameterTuningJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListTrainingJobsForHyperParameterTuningJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrainingPlans {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListTrainingPlans', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTransformJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListTransformJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrialComponents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListTrialComponents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListTrials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUserProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListUserProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkforces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListWorkforces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkteams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListWorkteams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutModelPackageGroupPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::PutModelPackageGroupPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub QueryLineage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::QueryLineage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::RegisterDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RenderUiTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::RenderUiTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RetryPipelineExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::RetryPipelineExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Search {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::Search', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchTrainingPlanOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::SearchTrainingPlanOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendPipelineExecutionStepFailure {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::SendPipelineExecutionStepFailure', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendPipelineExecutionStepSuccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::SendPipelineExecutionStepSuccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartEdgeDeploymentStage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StartEdgeDeploymentStage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartInferenceExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StartInferenceExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMlflowTrackingServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StartMlflowTrackingServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMonitoringSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StartMonitoringSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartNotebookInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StartNotebookInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartPipelineExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StartPipelineExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopAutoMLJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopAutoMLJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopCompilationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopCompilationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopEdgeDeploymentStage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopEdgeDeploymentStage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopEdgePackagingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopEdgePackagingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopHyperParameterTuningJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopHyperParameterTuningJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopInferenceExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopInferenceExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopInferenceRecommendationsJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopInferenceRecommendationsJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopLabelingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopLabelingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopMlflowTrackingServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopMlflowTrackingServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopMonitoringSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopMonitoringSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopNotebookInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopNotebookInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopOptimizationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopOptimizationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopPipelineExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopPipelineExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopProcessingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopProcessingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopTrainingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopTrainingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopTransformJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopTransformJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAppImageConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateAppImageConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateArtifact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateClusterSchedulerConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateClusterSchedulerConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateClusterSoftware {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateClusterSoftware', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCodeRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateCodeRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateComputeQuota {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateComputeQuota', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContext {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateContext', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDeviceFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateDeviceFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEndpointWeightsAndCapacities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateEndpointWeightsAndCapacities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFeatureGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateFeatureGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFeatureMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateFeatureMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateHub {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateHub', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateHubContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateHubContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateHubContentReference {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateHubContentReference', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateImageVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateImageVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInferenceComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateInferenceComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInferenceComponentRuntimeConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateInferenceComponentRuntimeConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInferenceExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateInferenceExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMlflowTrackingServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateMlflowTrackingServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateModelCard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateModelCard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateModelPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateModelPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMonitoringAlert {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateMonitoringAlert', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMonitoringSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateMonitoringSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNotebookInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateNotebookInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNotebookInstanceLifecycleConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateNotebookInstanceLifecycleConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePartnerApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdatePartnerApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdatePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePipelineExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdatePipelineExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSpace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateSpace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTrainingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateTrainingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTrial {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateTrial', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTrialComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateTrialComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateUserProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkforce {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateWorkforce', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkteam {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateWorkteam', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllActions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListActions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListActions(@_, NextToken => $next_result->NextToken);
        push @{ $result->ActionSummaries }, @{ $next_result->ActionSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ActionSummaries') foreach (@{ $result->ActionSummaries });
        $result = $self->ListActions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ActionSummaries') foreach (@{ $result->ActionSummaries });
    }

    return undef
  }
  sub ListAllAlgorithms {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAlgorithms(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAlgorithms(@_, NextToken => $next_result->NextToken);
        push @{ $result->AlgorithmSummaryList }, @{ $next_result->AlgorithmSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AlgorithmSummaryList') foreach (@{ $result->AlgorithmSummaryList });
        $result = $self->ListAlgorithms(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AlgorithmSummaryList') foreach (@{ $result->AlgorithmSummaryList });
    }

    return undef
  }
  sub ListAllAliases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAliases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAliases(@_, NextToken => $next_result->NextToken);
        push @{ $result->SageMakerImageVersionAliases }, @{ $next_result->SageMakerImageVersionAliases };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SageMakerImageVersionAliases') foreach (@{ $result->SageMakerImageVersionAliases });
        $result = $self->ListAliases(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SageMakerImageVersionAliases') foreach (@{ $result->SageMakerImageVersionAliases });
    }

    return undef
  }
  sub ListAllAppImageConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAppImageConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAppImageConfigs(@_, NextToken => $next_result->NextToken);
        push @{ $result->AppImageConfigs }, @{ $next_result->AppImageConfigs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AppImageConfigs') foreach (@{ $result->AppImageConfigs });
        $result = $self->ListAppImageConfigs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AppImageConfigs') foreach (@{ $result->AppImageConfigs });
    }

    return undef
  }
  sub ListAllApps {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApps(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListApps(@_, NextToken => $next_result->NextToken);
        push @{ $result->Apps }, @{ $next_result->Apps };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Apps') foreach (@{ $result->Apps });
        $result = $self->ListApps(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Apps') foreach (@{ $result->Apps });
    }

    return undef
  }
  sub ListAllArtifacts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListArtifacts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListArtifacts(@_, NextToken => $next_result->NextToken);
        push @{ $result->ArtifactSummaries }, @{ $next_result->ArtifactSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ArtifactSummaries') foreach (@{ $result->ArtifactSummaries });
        $result = $self->ListArtifacts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ArtifactSummaries') foreach (@{ $result->ArtifactSummaries });
    }

    return undef
  }
  sub ListAllAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->AssociationSummaries }, @{ $next_result->AssociationSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AssociationSummaries') foreach (@{ $result->AssociationSummaries });
        $result = $self->ListAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AssociationSummaries') foreach (@{ $result->AssociationSummaries });
    }

    return undef
  }
  sub ListAllAutoMLJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAutoMLJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAutoMLJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->AutoMLJobSummaries }, @{ $next_result->AutoMLJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AutoMLJobSummaries') foreach (@{ $result->AutoMLJobSummaries });
        $result = $self->ListAutoMLJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AutoMLJobSummaries') foreach (@{ $result->AutoMLJobSummaries });
    }

    return undef
  }
  sub ListAllCandidatesForAutoMLJob {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCandidatesForAutoMLJob(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCandidatesForAutoMLJob(@_, NextToken => $next_result->NextToken);
        push @{ $result->Candidates }, @{ $next_result->Candidates };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Candidates') foreach (@{ $result->Candidates });
        $result = $self->ListCandidatesForAutoMLJob(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Candidates') foreach (@{ $result->Candidates });
    }

    return undef
  }
  sub ListAllClusterNodes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClusterNodes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListClusterNodes(@_, NextToken => $next_result->NextToken);
        push @{ $result->ClusterNodeSummaries }, @{ $next_result->ClusterNodeSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ClusterNodeSummaries') foreach (@{ $result->ClusterNodeSummaries });
        $result = $self->ListClusterNodes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ClusterNodeSummaries') foreach (@{ $result->ClusterNodeSummaries });
    }

    return undef
  }
  sub ListAllClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClusters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListClusters(@_, NextToken => $next_result->NextToken);
        push @{ $result->ClusterSummaries }, @{ $next_result->ClusterSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ClusterSummaries') foreach (@{ $result->ClusterSummaries });
        $result = $self->ListClusters(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ClusterSummaries') foreach (@{ $result->ClusterSummaries });
    }

    return undef
  }
  sub ListAllClusterSchedulerConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClusterSchedulerConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListClusterSchedulerConfigs(@_, NextToken => $next_result->NextToken);
        push @{ $result->ClusterSchedulerConfigSummaries }, @{ $next_result->ClusterSchedulerConfigSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ClusterSchedulerConfigSummaries') foreach (@{ $result->ClusterSchedulerConfigSummaries });
        $result = $self->ListClusterSchedulerConfigs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ClusterSchedulerConfigSummaries') foreach (@{ $result->ClusterSchedulerConfigSummaries });
    }

    return undef
  }
  sub ListAllCodeRepositories {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCodeRepositories(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCodeRepositories(@_, NextToken => $next_result->NextToken);
        push @{ $result->CodeRepositorySummaryList }, @{ $next_result->CodeRepositorySummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CodeRepositorySummaryList') foreach (@{ $result->CodeRepositorySummaryList });
        $result = $self->ListCodeRepositories(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CodeRepositorySummaryList') foreach (@{ $result->CodeRepositorySummaryList });
    }

    return undef
  }
  sub ListAllCompilationJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCompilationJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCompilationJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->CompilationJobSummaries }, @{ $next_result->CompilationJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CompilationJobSummaries') foreach (@{ $result->CompilationJobSummaries });
        $result = $self->ListCompilationJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CompilationJobSummaries') foreach (@{ $result->CompilationJobSummaries });
    }

    return undef
  }
  sub ListAllComputeQuotas {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListComputeQuotas(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListComputeQuotas(@_, NextToken => $next_result->NextToken);
        push @{ $result->ComputeQuotaSummaries }, @{ $next_result->ComputeQuotaSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ComputeQuotaSummaries') foreach (@{ $result->ComputeQuotaSummaries });
        $result = $self->ListComputeQuotas(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ComputeQuotaSummaries') foreach (@{ $result->ComputeQuotaSummaries });
    }

    return undef
  }
  sub ListAllContexts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContexts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListContexts(@_, NextToken => $next_result->NextToken);
        push @{ $result->ContextSummaries }, @{ $next_result->ContextSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ContextSummaries') foreach (@{ $result->ContextSummaries });
        $result = $self->ListContexts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ContextSummaries') foreach (@{ $result->ContextSummaries });
    }

    return undef
  }
  sub ListAllDataQualityJobDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataQualityJobDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDataQualityJobDefinitions(@_, NextToken => $next_result->NextToken);
        push @{ $result->JobDefinitionSummaries }, @{ $next_result->JobDefinitionSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'JobDefinitionSummaries') foreach (@{ $result->JobDefinitionSummaries });
        $result = $self->ListDataQualityJobDefinitions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'JobDefinitionSummaries') foreach (@{ $result->JobDefinitionSummaries });
    }

    return undef
  }
  sub ListAllDeviceFleets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeviceFleets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDeviceFleets(@_, NextToken => $next_result->NextToken);
        push @{ $result->DeviceFleetSummaries }, @{ $next_result->DeviceFleetSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DeviceFleetSummaries') foreach (@{ $result->DeviceFleetSummaries });
        $result = $self->ListDeviceFleets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DeviceFleetSummaries') foreach (@{ $result->DeviceFleetSummaries });
    }

    return undef
  }
  sub ListAllDevices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDevices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDevices(@_, NextToken => $next_result->NextToken);
        push @{ $result->DeviceSummaries }, @{ $next_result->DeviceSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DeviceSummaries') foreach (@{ $result->DeviceSummaries });
        $result = $self->ListDevices(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DeviceSummaries') foreach (@{ $result->DeviceSummaries });
    }

    return undef
  }
  sub ListAllDomains {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDomains(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDomains(@_, NextToken => $next_result->NextToken);
        push @{ $result->Domains }, @{ $next_result->Domains };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Domains') foreach (@{ $result->Domains });
        $result = $self->ListDomains(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Domains') foreach (@{ $result->Domains });
    }

    return undef
  }
  sub ListAllEdgeDeploymentPlans {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEdgeDeploymentPlans(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEdgeDeploymentPlans(@_, NextToken => $next_result->NextToken);
        push @{ $result->EdgeDeploymentPlanSummaries }, @{ $next_result->EdgeDeploymentPlanSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EdgeDeploymentPlanSummaries') foreach (@{ $result->EdgeDeploymentPlanSummaries });
        $result = $self->ListEdgeDeploymentPlans(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EdgeDeploymentPlanSummaries') foreach (@{ $result->EdgeDeploymentPlanSummaries });
    }

    return undef
  }
  sub ListAllEdgePackagingJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEdgePackagingJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEdgePackagingJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->EdgePackagingJobSummaries }, @{ $next_result->EdgePackagingJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EdgePackagingJobSummaries') foreach (@{ $result->EdgePackagingJobSummaries });
        $result = $self->ListEdgePackagingJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EdgePackagingJobSummaries') foreach (@{ $result->EdgePackagingJobSummaries });
    }

    return undef
  }
  sub ListAllEndpointConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEndpointConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEndpointConfigs(@_, NextToken => $next_result->NextToken);
        push @{ $result->EndpointConfigs }, @{ $next_result->EndpointConfigs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EndpointConfigs') foreach (@{ $result->EndpointConfigs });
        $result = $self->ListEndpointConfigs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EndpointConfigs') foreach (@{ $result->EndpointConfigs });
    }

    return undef
  }
  sub ListAllEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEndpoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->Endpoints }, @{ $next_result->Endpoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Endpoints') foreach (@{ $result->Endpoints });
        $result = $self->ListEndpoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Endpoints') foreach (@{ $result->Endpoints });
    }

    return undef
  }
  sub ListAllExperiments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExperiments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListExperiments(@_, NextToken => $next_result->NextToken);
        push @{ $result->ExperimentSummaries }, @{ $next_result->ExperimentSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ExperimentSummaries') foreach (@{ $result->ExperimentSummaries });
        $result = $self->ListExperiments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ExperimentSummaries') foreach (@{ $result->ExperimentSummaries });
    }

    return undef
  }
  sub ListAllFeatureGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFeatureGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFeatureGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->FeatureGroupSummaries }, @{ $next_result->FeatureGroupSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FeatureGroupSummaries') foreach (@{ $result->FeatureGroupSummaries });
        $result = $self->ListFeatureGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FeatureGroupSummaries') foreach (@{ $result->FeatureGroupSummaries });
    }

    return undef
  }
  sub ListAllFlowDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFlowDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFlowDefinitions(@_, NextToken => $next_result->NextToken);
        push @{ $result->FlowDefinitionSummaries }, @{ $next_result->FlowDefinitionSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FlowDefinitionSummaries') foreach (@{ $result->FlowDefinitionSummaries });
        $result = $self->ListFlowDefinitions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FlowDefinitionSummaries') foreach (@{ $result->FlowDefinitionSummaries });
    }

    return undef
  }
  sub ListAllHumanTaskUis {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListHumanTaskUis(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListHumanTaskUis(@_, NextToken => $next_result->NextToken);
        push @{ $result->HumanTaskUiSummaries }, @{ $next_result->HumanTaskUiSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'HumanTaskUiSummaries') foreach (@{ $result->HumanTaskUiSummaries });
        $result = $self->ListHumanTaskUis(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'HumanTaskUiSummaries') foreach (@{ $result->HumanTaskUiSummaries });
    }

    return undef
  }
  sub ListAllHyperParameterTuningJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListHyperParameterTuningJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListHyperParameterTuningJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->HyperParameterTuningJobSummaries }, @{ $next_result->HyperParameterTuningJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'HyperParameterTuningJobSummaries') foreach (@{ $result->HyperParameterTuningJobSummaries });
        $result = $self->ListHyperParameterTuningJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'HyperParameterTuningJobSummaries') foreach (@{ $result->HyperParameterTuningJobSummaries });
    }

    return undef
  }
  sub ListAllImages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListImages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListImages(@_, NextToken => $next_result->NextToken);
        push @{ $result->Images }, @{ $next_result->Images };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Images') foreach (@{ $result->Images });
        $result = $self->ListImages(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Images') foreach (@{ $result->Images });
    }

    return undef
  }
  sub ListAllImageVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListImageVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListImageVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->ImageVersions }, @{ $next_result->ImageVersions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ImageVersions') foreach (@{ $result->ImageVersions });
        $result = $self->ListImageVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ImageVersions') foreach (@{ $result->ImageVersions });
    }

    return undef
  }
  sub ListAllInferenceComponents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInferenceComponents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListInferenceComponents(@_, NextToken => $next_result->NextToken);
        push @{ $result->InferenceComponents }, @{ $next_result->InferenceComponents };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InferenceComponents') foreach (@{ $result->InferenceComponents });
        $result = $self->ListInferenceComponents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InferenceComponents') foreach (@{ $result->InferenceComponents });
    }

    return undef
  }
  sub ListAllInferenceExperiments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInferenceExperiments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListInferenceExperiments(@_, NextToken => $next_result->NextToken);
        push @{ $result->InferenceExperiments }, @{ $next_result->InferenceExperiments };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InferenceExperiments') foreach (@{ $result->InferenceExperiments });
        $result = $self->ListInferenceExperiments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InferenceExperiments') foreach (@{ $result->InferenceExperiments });
    }

    return undef
  }
  sub ListAllInferenceRecommendationsJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInferenceRecommendationsJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListInferenceRecommendationsJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->InferenceRecommendationsJobs }, @{ $next_result->InferenceRecommendationsJobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InferenceRecommendationsJobs') foreach (@{ $result->InferenceRecommendationsJobs });
        $result = $self->ListInferenceRecommendationsJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InferenceRecommendationsJobs') foreach (@{ $result->InferenceRecommendationsJobs });
    }

    return undef
  }
  sub ListAllInferenceRecommendationsJobSteps {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInferenceRecommendationsJobSteps(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListInferenceRecommendationsJobSteps(@_, NextToken => $next_result->NextToken);
        push @{ $result->Steps }, @{ $next_result->Steps };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Steps') foreach (@{ $result->Steps });
        $result = $self->ListInferenceRecommendationsJobSteps(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Steps') foreach (@{ $result->Steps });
    }

    return undef
  }
  sub ListAllLabelingJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLabelingJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLabelingJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->LabelingJobSummaryList }, @{ $next_result->LabelingJobSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LabelingJobSummaryList') foreach (@{ $result->LabelingJobSummaryList });
        $result = $self->ListLabelingJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LabelingJobSummaryList') foreach (@{ $result->LabelingJobSummaryList });
    }

    return undef
  }
  sub ListAllLabelingJobsForWorkteam {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLabelingJobsForWorkteam(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLabelingJobsForWorkteam(@_, NextToken => $next_result->NextToken);
        push @{ $result->LabelingJobSummaryList }, @{ $next_result->LabelingJobSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LabelingJobSummaryList') foreach (@{ $result->LabelingJobSummaryList });
        $result = $self->ListLabelingJobsForWorkteam(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LabelingJobSummaryList') foreach (@{ $result->LabelingJobSummaryList });
    }

    return undef
  }
  sub ListAllLineageGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLineageGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLineageGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->LineageGroupSummaries }, @{ $next_result->LineageGroupSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LineageGroupSummaries') foreach (@{ $result->LineageGroupSummaries });
        $result = $self->ListLineageGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LineageGroupSummaries') foreach (@{ $result->LineageGroupSummaries });
    }

    return undef
  }
  sub ListAllMlflowTrackingServers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMlflowTrackingServers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMlflowTrackingServers(@_, NextToken => $next_result->NextToken);
        push @{ $result->TrackingServerSummaries }, @{ $next_result->TrackingServerSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TrackingServerSummaries') foreach (@{ $result->TrackingServerSummaries });
        $result = $self->ListMlflowTrackingServers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TrackingServerSummaries') foreach (@{ $result->TrackingServerSummaries });
    }

    return undef
  }
  sub ListAllModelBiasJobDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModelBiasJobDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListModelBiasJobDefinitions(@_, NextToken => $next_result->NextToken);
        push @{ $result->JobDefinitionSummaries }, @{ $next_result->JobDefinitionSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'JobDefinitionSummaries') foreach (@{ $result->JobDefinitionSummaries });
        $result = $self->ListModelBiasJobDefinitions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'JobDefinitionSummaries') foreach (@{ $result->JobDefinitionSummaries });
    }

    return undef
  }
  sub ListAllModelCardExportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModelCardExportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListModelCardExportJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->ModelCardExportJobSummaries }, @{ $next_result->ModelCardExportJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ModelCardExportJobSummaries') foreach (@{ $result->ModelCardExportJobSummaries });
        $result = $self->ListModelCardExportJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ModelCardExportJobSummaries') foreach (@{ $result->ModelCardExportJobSummaries });
    }

    return undef
  }
  sub ListAllModelCards {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModelCards(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListModelCards(@_, NextToken => $next_result->NextToken);
        push @{ $result->ModelCardSummaries }, @{ $next_result->ModelCardSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ModelCardSummaries') foreach (@{ $result->ModelCardSummaries });
        $result = $self->ListModelCards(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ModelCardSummaries') foreach (@{ $result->ModelCardSummaries });
    }

    return undef
  }
  sub ListAllModelCardVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModelCardVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListModelCardVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->ModelCardVersionSummaryList }, @{ $next_result->ModelCardVersionSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ModelCardVersionSummaryList') foreach (@{ $result->ModelCardVersionSummaryList });
        $result = $self->ListModelCardVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ModelCardVersionSummaryList') foreach (@{ $result->ModelCardVersionSummaryList });
    }

    return undef
  }
  sub ListAllModelExplainabilityJobDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModelExplainabilityJobDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListModelExplainabilityJobDefinitions(@_, NextToken => $next_result->NextToken);
        push @{ $result->JobDefinitionSummaries }, @{ $next_result->JobDefinitionSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'JobDefinitionSummaries') foreach (@{ $result->JobDefinitionSummaries });
        $result = $self->ListModelExplainabilityJobDefinitions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'JobDefinitionSummaries') foreach (@{ $result->JobDefinitionSummaries });
    }

    return undef
  }
  sub ListAllModelMetadata {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModelMetadata(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListModelMetadata(@_, NextToken => $next_result->NextToken);
        push @{ $result->ModelMetadataSummaries }, @{ $next_result->ModelMetadataSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ModelMetadataSummaries') foreach (@{ $result->ModelMetadataSummaries });
        $result = $self->ListModelMetadata(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ModelMetadataSummaries') foreach (@{ $result->ModelMetadataSummaries });
    }

    return undef
  }
  sub ListAllModelPackageGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModelPackageGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListModelPackageGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->ModelPackageGroupSummaryList }, @{ $next_result->ModelPackageGroupSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ModelPackageGroupSummaryList') foreach (@{ $result->ModelPackageGroupSummaryList });
        $result = $self->ListModelPackageGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ModelPackageGroupSummaryList') foreach (@{ $result->ModelPackageGroupSummaryList });
    }

    return undef
  }
  sub ListAllModelPackages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModelPackages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListModelPackages(@_, NextToken => $next_result->NextToken);
        push @{ $result->ModelPackageSummaryList }, @{ $next_result->ModelPackageSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ModelPackageSummaryList') foreach (@{ $result->ModelPackageSummaryList });
        $result = $self->ListModelPackages(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ModelPackageSummaryList') foreach (@{ $result->ModelPackageSummaryList });
    }

    return undef
  }
  sub ListAllModelQualityJobDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModelQualityJobDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListModelQualityJobDefinitions(@_, NextToken => $next_result->NextToken);
        push @{ $result->JobDefinitionSummaries }, @{ $next_result->JobDefinitionSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'JobDefinitionSummaries') foreach (@{ $result->JobDefinitionSummaries });
        $result = $self->ListModelQualityJobDefinitions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'JobDefinitionSummaries') foreach (@{ $result->JobDefinitionSummaries });
    }

    return undef
  }
  sub ListAllModels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListModels(@_, NextToken => $next_result->NextToken);
        push @{ $result->Models }, @{ $next_result->Models };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Models') foreach (@{ $result->Models });
        $result = $self->ListModels(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Models') foreach (@{ $result->Models });
    }

    return undef
  }
  sub ListAllMonitoringAlertHistory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMonitoringAlertHistory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMonitoringAlertHistory(@_, NextToken => $next_result->NextToken);
        push @{ $result->MonitoringAlertHistory }, @{ $next_result->MonitoringAlertHistory };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MonitoringAlertHistory') foreach (@{ $result->MonitoringAlertHistory });
        $result = $self->ListMonitoringAlertHistory(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MonitoringAlertHistory') foreach (@{ $result->MonitoringAlertHistory });
    }

    return undef
  }
  sub ListAllMonitoringAlerts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMonitoringAlerts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMonitoringAlerts(@_, NextToken => $next_result->NextToken);
        push @{ $result->MonitoringAlertSummaries }, @{ $next_result->MonitoringAlertSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MonitoringAlertSummaries') foreach (@{ $result->MonitoringAlertSummaries });
        $result = $self->ListMonitoringAlerts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MonitoringAlertSummaries') foreach (@{ $result->MonitoringAlertSummaries });
    }

    return undef
  }
  sub ListAllMonitoringExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMonitoringExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMonitoringExecutions(@_, NextToken => $next_result->NextToken);
        push @{ $result->MonitoringExecutionSummaries }, @{ $next_result->MonitoringExecutionSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MonitoringExecutionSummaries') foreach (@{ $result->MonitoringExecutionSummaries });
        $result = $self->ListMonitoringExecutions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MonitoringExecutionSummaries') foreach (@{ $result->MonitoringExecutionSummaries });
    }

    return undef
  }
  sub ListAllMonitoringSchedules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMonitoringSchedules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMonitoringSchedules(@_, NextToken => $next_result->NextToken);
        push @{ $result->MonitoringScheduleSummaries }, @{ $next_result->MonitoringScheduleSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MonitoringScheduleSummaries') foreach (@{ $result->MonitoringScheduleSummaries });
        $result = $self->ListMonitoringSchedules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MonitoringScheduleSummaries') foreach (@{ $result->MonitoringScheduleSummaries });
    }

    return undef
  }
  sub ListAllNotebookInstanceLifecycleConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNotebookInstanceLifecycleConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListNotebookInstanceLifecycleConfigs(@_, NextToken => $next_result->NextToken);
        push @{ $result->NotebookInstanceLifecycleConfigs }, @{ $next_result->NotebookInstanceLifecycleConfigs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NotebookInstanceLifecycleConfigs') foreach (@{ $result->NotebookInstanceLifecycleConfigs });
        $result = $self->ListNotebookInstanceLifecycleConfigs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NotebookInstanceLifecycleConfigs') foreach (@{ $result->NotebookInstanceLifecycleConfigs });
    }

    return undef
  }
  sub ListAllNotebookInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNotebookInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListNotebookInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->NotebookInstances }, @{ $next_result->NotebookInstances };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NotebookInstances') foreach (@{ $result->NotebookInstances });
        $result = $self->ListNotebookInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NotebookInstances') foreach (@{ $result->NotebookInstances });
    }

    return undef
  }
  sub ListAllOptimizationJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOptimizationJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListOptimizationJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->OptimizationJobSummaries }, @{ $next_result->OptimizationJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'OptimizationJobSummaries') foreach (@{ $result->OptimizationJobSummaries });
        $result = $self->ListOptimizationJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'OptimizationJobSummaries') foreach (@{ $result->OptimizationJobSummaries });
    }

    return undef
  }
  sub ListAllPartnerApps {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPartnerApps(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPartnerApps(@_, NextToken => $next_result->NextToken);
        push @{ $result->Summaries }, @{ $next_result->Summaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Summaries') foreach (@{ $result->Summaries });
        $result = $self->ListPartnerApps(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Summaries') foreach (@{ $result->Summaries });
    }

    return undef
  }
  sub ListAllPipelineExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPipelineExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPipelineExecutions(@_, NextToken => $next_result->NextToken);
        push @{ $result->PipelineExecutionSummaries }, @{ $next_result->PipelineExecutionSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PipelineExecutionSummaries') foreach (@{ $result->PipelineExecutionSummaries });
        $result = $self->ListPipelineExecutions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PipelineExecutionSummaries') foreach (@{ $result->PipelineExecutionSummaries });
    }

    return undef
  }
  sub ListAllPipelineExecutionSteps {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPipelineExecutionSteps(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPipelineExecutionSteps(@_, NextToken => $next_result->NextToken);
        push @{ $result->PipelineExecutionSteps }, @{ $next_result->PipelineExecutionSteps };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PipelineExecutionSteps') foreach (@{ $result->PipelineExecutionSteps });
        $result = $self->ListPipelineExecutionSteps(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PipelineExecutionSteps') foreach (@{ $result->PipelineExecutionSteps });
    }

    return undef
  }
  sub ListAllPipelineParametersForExecution {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPipelineParametersForExecution(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPipelineParametersForExecution(@_, NextToken => $next_result->NextToken);
        push @{ $result->PipelineParameters }, @{ $next_result->PipelineParameters };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PipelineParameters') foreach (@{ $result->PipelineParameters });
        $result = $self->ListPipelineParametersForExecution(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PipelineParameters') foreach (@{ $result->PipelineParameters });
    }

    return undef
  }
  sub ListAllPipelines {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPipelines(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPipelines(@_, NextToken => $next_result->NextToken);
        push @{ $result->PipelineSummaries }, @{ $next_result->PipelineSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PipelineSummaries') foreach (@{ $result->PipelineSummaries });
        $result = $self->ListPipelines(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PipelineSummaries') foreach (@{ $result->PipelineSummaries });
    }

    return undef
  }
  sub ListAllProcessingJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProcessingJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListProcessingJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->ProcessingJobSummaries }, @{ $next_result->ProcessingJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ProcessingJobSummaries') foreach (@{ $result->ProcessingJobSummaries });
        $result = $self->ListProcessingJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ProcessingJobSummaries') foreach (@{ $result->ProcessingJobSummaries });
    }

    return undef
  }
  sub ListAllResourceCatalogs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourceCatalogs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResourceCatalogs(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResourceCatalogs }, @{ $next_result->ResourceCatalogs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResourceCatalogs') foreach (@{ $result->ResourceCatalogs });
        $result = $self->ListResourceCatalogs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResourceCatalogs') foreach (@{ $result->ResourceCatalogs });
    }

    return undef
  }
  sub ListAllSpaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSpaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSpaces(@_, NextToken => $next_result->NextToken);
        push @{ $result->Spaces }, @{ $next_result->Spaces };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Spaces') foreach (@{ $result->Spaces });
        $result = $self->ListSpaces(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Spaces') foreach (@{ $result->Spaces });
    }

    return undef
  }
  sub ListAllStageDevices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStageDevices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListStageDevices(@_, NextToken => $next_result->NextToken);
        push @{ $result->DeviceDeploymentSummaries }, @{ $next_result->DeviceDeploymentSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DeviceDeploymentSummaries') foreach (@{ $result->DeviceDeploymentSummaries });
        $result = $self->ListStageDevices(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DeviceDeploymentSummaries') foreach (@{ $result->DeviceDeploymentSummaries });
    }

    return undef
  }
  sub ListAllStudioLifecycleConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStudioLifecycleConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListStudioLifecycleConfigs(@_, NextToken => $next_result->NextToken);
        push @{ $result->StudioLifecycleConfigs }, @{ $next_result->StudioLifecycleConfigs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'StudioLifecycleConfigs') foreach (@{ $result->StudioLifecycleConfigs });
        $result = $self->ListStudioLifecycleConfigs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'StudioLifecycleConfigs') foreach (@{ $result->StudioLifecycleConfigs });
    }

    return undef
  }
  sub ListAllSubscribedWorkteams {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSubscribedWorkteams(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSubscribedWorkteams(@_, NextToken => $next_result->NextToken);
        push @{ $result->SubscribedWorkteams }, @{ $next_result->SubscribedWorkteams };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SubscribedWorkteams') foreach (@{ $result->SubscribedWorkteams });
        $result = $self->ListSubscribedWorkteams(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SubscribedWorkteams') foreach (@{ $result->SubscribedWorkteams });
    }

    return undef
  }
  sub ListAllTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTags(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTags(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }
  sub ListAllTrainingJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTrainingJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTrainingJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->TrainingJobSummaries }, @{ $next_result->TrainingJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TrainingJobSummaries') foreach (@{ $result->TrainingJobSummaries });
        $result = $self->ListTrainingJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TrainingJobSummaries') foreach (@{ $result->TrainingJobSummaries });
    }

    return undef
  }
  sub ListAllTrainingJobsForHyperParameterTuningJob {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTrainingJobsForHyperParameterTuningJob(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTrainingJobsForHyperParameterTuningJob(@_, NextToken => $next_result->NextToken);
        push @{ $result->TrainingJobSummaries }, @{ $next_result->TrainingJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TrainingJobSummaries') foreach (@{ $result->TrainingJobSummaries });
        $result = $self->ListTrainingJobsForHyperParameterTuningJob(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TrainingJobSummaries') foreach (@{ $result->TrainingJobSummaries });
    }

    return undef
  }
  sub ListAllTrainingPlans {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTrainingPlans(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTrainingPlans(@_, NextToken => $next_result->NextToken);
        push @{ $result->TrainingPlanSummaries }, @{ $next_result->TrainingPlanSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TrainingPlanSummaries') foreach (@{ $result->TrainingPlanSummaries });
        $result = $self->ListTrainingPlans(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TrainingPlanSummaries') foreach (@{ $result->TrainingPlanSummaries });
    }

    return undef
  }
  sub ListAllTransformJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTransformJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTransformJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransformJobSummaries }, @{ $next_result->TransformJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransformJobSummaries') foreach (@{ $result->TransformJobSummaries });
        $result = $self->ListTransformJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransformJobSummaries') foreach (@{ $result->TransformJobSummaries });
    }

    return undef
  }
  sub ListAllTrialComponents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTrialComponents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTrialComponents(@_, NextToken => $next_result->NextToken);
        push @{ $result->TrialComponentSummaries }, @{ $next_result->TrialComponentSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TrialComponentSummaries') foreach (@{ $result->TrialComponentSummaries });
        $result = $self->ListTrialComponents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TrialComponentSummaries') foreach (@{ $result->TrialComponentSummaries });
    }

    return undef
  }
  sub ListAllTrials {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTrials(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTrials(@_, NextToken => $next_result->NextToken);
        push @{ $result->TrialSummaries }, @{ $next_result->TrialSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TrialSummaries') foreach (@{ $result->TrialSummaries });
        $result = $self->ListTrials(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TrialSummaries') foreach (@{ $result->TrialSummaries });
    }

    return undef
  }
  sub ListAllUserProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUserProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUserProfiles(@_, NextToken => $next_result->NextToken);
        push @{ $result->UserProfiles }, @{ $next_result->UserProfiles };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'UserProfiles') foreach (@{ $result->UserProfiles });
        $result = $self->ListUserProfiles(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'UserProfiles') foreach (@{ $result->UserProfiles });
    }

    return undef
  }
  sub ListAllWorkforces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkforces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListWorkforces(@_, NextToken => $next_result->NextToken);
        push @{ $result->Workforces }, @{ $next_result->Workforces };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Workforces') foreach (@{ $result->Workforces });
        $result = $self->ListWorkforces(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Workforces') foreach (@{ $result->Workforces });
    }

    return undef
  }
  sub ListAllWorkteams {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkteams(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListWorkteams(@_, NextToken => $next_result->NextToken);
        push @{ $result->Workteams }, @{ $next_result->Workteams };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Workteams') foreach (@{ $result->Workteams });
        $result = $self->ListWorkteams(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Workteams') foreach (@{ $result->Workteams });
    }

    return undef
  }
  sub SearchAll {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->Search(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->Search(@_, NextToken => $next_result->NextToken);
        push @{ $result->Results }, @{ $next_result->Results };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Results') foreach (@{ $result->Results });
        $result = $self->Search(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Results') foreach (@{ $result->Results });
    }

    return undef
  }


  sub operations { qw/AddAssociation AddTags AssociateTrialComponent BatchDeleteClusterNodes BatchDescribeModelPackage CreateAction CreateAlgorithm CreateApp CreateAppImageConfig CreateArtifact CreateAutoMLJob CreateAutoMLJobV2 CreateCluster CreateClusterSchedulerConfig CreateCodeRepository CreateCompilationJob CreateComputeQuota CreateContext CreateDataQualityJobDefinition CreateDeviceFleet CreateDomain CreateEdgeDeploymentPlan CreateEdgeDeploymentStage CreateEdgePackagingJob CreateEndpoint CreateEndpointConfig CreateExperiment CreateFeatureGroup CreateFlowDefinition CreateHub CreateHubContentReference CreateHumanTaskUi CreateHyperParameterTuningJob CreateImage CreateImageVersion CreateInferenceComponent CreateInferenceExperiment CreateInferenceRecommendationsJob CreateLabelingJob CreateMlflowTrackingServer CreateModel CreateModelBiasJobDefinition CreateModelCard CreateModelCardExportJob CreateModelExplainabilityJobDefinition CreateModelPackage CreateModelPackageGroup CreateModelQualityJobDefinition CreateMonitoringSchedule CreateNotebookInstance CreateNotebookInstanceLifecycleConfig CreateOptimizationJob CreatePartnerApp CreatePartnerAppPresignedUrl CreatePipeline CreatePresignedDomainUrl CreatePresignedMlflowTrackingServerUrl CreatePresignedNotebookInstanceUrl CreateProcessingJob CreateProject CreateSpace CreateStudioLifecycleConfig CreateTrainingJob CreateTrainingPlan CreateTransformJob CreateTrial CreateTrialComponent CreateUserProfile CreateWorkforce CreateWorkteam DeleteAction DeleteAlgorithm DeleteApp DeleteAppImageConfig DeleteArtifact DeleteAssociation DeleteCluster DeleteClusterSchedulerConfig DeleteCodeRepository DeleteCompilationJob DeleteComputeQuota DeleteContext DeleteDataQualityJobDefinition DeleteDeviceFleet DeleteDomain DeleteEdgeDeploymentPlan DeleteEdgeDeploymentStage DeleteEndpoint DeleteEndpointConfig DeleteExperiment DeleteFeatureGroup DeleteFlowDefinition DeleteHub DeleteHubContent DeleteHubContentReference DeleteHumanTaskUi DeleteHyperParameterTuningJob DeleteImage DeleteImageVersion DeleteInferenceComponent DeleteInferenceExperiment DeleteMlflowTrackingServer DeleteModel DeleteModelBiasJobDefinition DeleteModelCard DeleteModelExplainabilityJobDefinition DeleteModelPackage DeleteModelPackageGroup DeleteModelPackageGroupPolicy DeleteModelQualityJobDefinition DeleteMonitoringSchedule DeleteNotebookInstance DeleteNotebookInstanceLifecycleConfig DeleteOptimizationJob DeletePartnerApp DeletePipeline DeleteProject DeleteSpace DeleteStudioLifecycleConfig DeleteTags DeleteTrial DeleteTrialComponent DeleteUserProfile DeleteWorkforce DeleteWorkteam DeregisterDevices DescribeAction DescribeAlgorithm DescribeApp DescribeAppImageConfig DescribeArtifact DescribeAutoMLJob DescribeAutoMLJobV2 DescribeCluster DescribeClusterNode DescribeClusterSchedulerConfig DescribeCodeRepository DescribeCompilationJob DescribeComputeQuota DescribeContext DescribeDataQualityJobDefinition DescribeDevice DescribeDeviceFleet DescribeDomain DescribeEdgeDeploymentPlan DescribeEdgePackagingJob DescribeEndpoint DescribeEndpointConfig DescribeExperiment DescribeFeatureGroup DescribeFeatureMetadata DescribeFlowDefinition DescribeHub DescribeHubContent DescribeHumanTaskUi DescribeHyperParameterTuningJob DescribeImage DescribeImageVersion DescribeInferenceComponent DescribeInferenceExperiment DescribeInferenceRecommendationsJob DescribeLabelingJob DescribeLineageGroup DescribeMlflowTrackingServer DescribeModel DescribeModelBiasJobDefinition DescribeModelCard DescribeModelCardExportJob DescribeModelExplainabilityJobDefinition DescribeModelPackage DescribeModelPackageGroup DescribeModelQualityJobDefinition DescribeMonitoringSchedule DescribeNotebookInstance DescribeNotebookInstanceLifecycleConfig DescribeOptimizationJob DescribePartnerApp DescribePipeline DescribePipelineDefinitionForExecution DescribePipelineExecution DescribeProcessingJob DescribeProject DescribeSpace DescribeStudioLifecycleConfig DescribeSubscribedWorkteam DescribeTrainingJob DescribeTrainingPlan DescribeTransformJob DescribeTrial DescribeTrialComponent DescribeUserProfile DescribeWorkforce DescribeWorkteam DisableSagemakerServicecatalogPortfolio DisassociateTrialComponent EnableSagemakerServicecatalogPortfolio GetDeviceFleetReport GetLineageGroupPolicy GetModelPackageGroupPolicy GetSagemakerServicecatalogPortfolioStatus GetScalingConfigurationRecommendation GetSearchSuggestions ImportHubContent ListActions ListAlgorithms ListAliases ListAppImageConfigs ListApps ListArtifacts ListAssociations ListAutoMLJobs ListCandidatesForAutoMLJob ListClusterNodes ListClusters ListClusterSchedulerConfigs ListCodeRepositories ListCompilationJobs ListComputeQuotas ListContexts ListDataQualityJobDefinitions ListDeviceFleets ListDevices ListDomains ListEdgeDeploymentPlans ListEdgePackagingJobs ListEndpointConfigs ListEndpoints ListExperiments ListFeatureGroups ListFlowDefinitions ListHubContents ListHubContentVersions ListHubs ListHumanTaskUis ListHyperParameterTuningJobs ListImages ListImageVersions ListInferenceComponents ListInferenceExperiments ListInferenceRecommendationsJobs ListInferenceRecommendationsJobSteps ListLabelingJobs ListLabelingJobsForWorkteam ListLineageGroups ListMlflowTrackingServers ListModelBiasJobDefinitions ListModelCardExportJobs ListModelCards ListModelCardVersions ListModelExplainabilityJobDefinitions ListModelMetadata ListModelPackageGroups ListModelPackages ListModelQualityJobDefinitions ListModels ListMonitoringAlertHistory ListMonitoringAlerts ListMonitoringExecutions ListMonitoringSchedules ListNotebookInstanceLifecycleConfigs ListNotebookInstances ListOptimizationJobs ListPartnerApps ListPipelineExecutions ListPipelineExecutionSteps ListPipelineParametersForExecution ListPipelines ListProcessingJobs ListProjects ListResourceCatalogs ListSpaces ListStageDevices ListStudioLifecycleConfigs ListSubscribedWorkteams ListTags ListTrainingJobs ListTrainingJobsForHyperParameterTuningJob ListTrainingPlans ListTransformJobs ListTrialComponents ListTrials ListUserProfiles ListWorkforces ListWorkteams PutModelPackageGroupPolicy QueryLineage RegisterDevices RenderUiTemplate RetryPipelineExecution Search SearchTrainingPlanOfferings SendPipelineExecutionStepFailure SendPipelineExecutionStepSuccess StartEdgeDeploymentStage StartInferenceExperiment StartMlflowTrackingServer StartMonitoringSchedule StartNotebookInstance StartPipelineExecution StopAutoMLJob StopCompilationJob StopEdgeDeploymentStage StopEdgePackagingJob StopHyperParameterTuningJob StopInferenceExperiment StopInferenceRecommendationsJob StopLabelingJob StopMlflowTrackingServer StopMonitoringSchedule StopNotebookInstance StopOptimizationJob StopPipelineExecution StopProcessingJob StopTrainingJob StopTransformJob UpdateAction UpdateAppImageConfig UpdateArtifact UpdateCluster UpdateClusterSchedulerConfig UpdateClusterSoftware UpdateCodeRepository UpdateComputeQuota UpdateContext UpdateDeviceFleet UpdateDevices UpdateDomain UpdateEndpoint UpdateEndpointWeightsAndCapacities UpdateExperiment UpdateFeatureGroup UpdateFeatureMetadata UpdateHub UpdateHubContent UpdateHubContentReference UpdateImage UpdateImageVersion UpdateInferenceComponent UpdateInferenceComponentRuntimeConfig UpdateInferenceExperiment UpdateMlflowTrackingServer UpdateModelCard UpdateModelPackage UpdateMonitoringAlert UpdateMonitoringSchedule UpdateNotebookInstance UpdateNotebookInstanceLifecycleConfig UpdatePartnerApp UpdatePipeline UpdatePipelineExecution UpdateProject UpdateSpace UpdateTrainingJob UpdateTrial UpdateTrialComponent UpdateUserProfile UpdateWorkforce UpdateWorkteam / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker - Perl Interface to AWS Amazon SageMaker Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SageMaker');
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

Provides APIs for creating and managing SageMaker resources.

Other Resources:

=over

=item *

SageMaker Developer Guide
(https://docs.aws.amazon.com/sagemaker/latest/dg/whatis.html#first-time-user)

=item *

Amazon Augmented AI Runtime API Reference
(https://docs.aws.amazon.com/augmented-ai/2019-11-07/APIReference/Welcome.html)

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker-2017-07-24>


=head1 METHODS

=head2 AddAssociation

=over

=item DestinationArn => Str

=item SourceArn => Str

=item [AssociationType => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::AddAssociation>

Returns: a L<Paws::SageMaker::AddAssociationResponse> instance

Creates an I<association> between the source and the destination. A
source can be associated with multiple destinations, and a destination
can be associated with multiple sources. An association is a lineage
tracking entity. For more information, see Amazon SageMaker ML Lineage
Tracking
(https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html).


=head2 AddTags

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::SageMaker::Tag>]


=back

Each argument is described in detail in: L<Paws::SageMaker::AddTags>

Returns: a L<Paws::SageMaker::AddTagsOutput> instance

Adds or overwrites one or more tags for the specified SageMaker
resource. You can add tags to notebook instances, training jobs,
hyperparameter tuning jobs, batch transform jobs, models, labeling
jobs, work teams, endpoint configurations, and endpoints.

Each tag consists of a key and an optional value. Tag keys must be
unique per resource. For more information about tags, see For more
information, see Amazon Web Services Tagging Strategies
(https://aws.amazon.com/answers/account-management/aws-tagging-strategies/).

Tags that you add to a hyperparameter tuning job by calling this API
are also added to any training jobs that the hyperparameter tuning job
launches after you call this API, but not to training jobs that the
hyperparameter tuning job launched before you called this API. To make
sure that the tags associated with a hyperparameter tuning job are also
added to all training jobs that the hyperparameter tuning job launches,
add the tags when you first create the tuning job by specifying them in
the C<Tags> parameter of CreateHyperParameterTuningJob
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateHyperParameterTuningJob.html)

Tags that you add to a SageMaker Domain or User Profile by calling this
API are also added to any Apps that the Domain or User Profile launches
after you call this API, but not to Apps that the Domain or User
Profile launched before you called this API. To make sure that the tags
associated with a Domain or User Profile are also added to all Apps
that the Domain or User Profile launches, add the tags when you first
create the Domain or User Profile by specifying them in the C<Tags>
parameter of CreateDomain
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateDomain.html)
or CreateUserProfile
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateUserProfile.html).


=head2 AssociateTrialComponent

=over

=item TrialComponentName => Str

=item TrialName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::AssociateTrialComponent>

Returns: a L<Paws::SageMaker::AssociateTrialComponentResponse> instance

Associates a trial component with a trial. A trial component can be
associated with multiple trials. To disassociate a trial component from
a trial, call the DisassociateTrialComponent
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DisassociateTrialComponent.html)
API.


=head2 BatchDeleteClusterNodes

=over

=item ClusterName => Str

=item NodeIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SageMaker::BatchDeleteClusterNodes>

Returns: a L<Paws::SageMaker::BatchDeleteClusterNodesResponse> instance

Deletes specific nodes within a SageMaker HyperPod cluster.
C<BatchDeleteClusterNodes> accepts a cluster name and a list of node
IDs.

=over

=item *

To safeguard your work, back up your data to Amazon S3 or an FSx for
Lustre file system before invoking the API on a worker node group. This
will help prevent any potential data loss from the instance root
volume. For more information about backup, see Use the backup script
provided by SageMaker HyperPod
(https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-hyperpod-operate-cli-command.html#sagemaker-hyperpod-operate-cli-command-update-cluster-software-backup).

=item *

If you want to invoke this API on an existing cluster, you'll first
need to patch the cluster by running the UpdateClusterSoftware API
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_UpdateClusterSoftware.html).
For more information about patching a cluster, see Update the SageMaker
HyperPod platform software of a cluster
(https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-hyperpod-operate-cli-command.html#sagemaker-hyperpod-operate-cli-command-update-cluster-software).

=back



=head2 BatchDescribeModelPackage

=over

=item ModelPackageArnList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SageMaker::BatchDescribeModelPackage>

Returns: a L<Paws::SageMaker::BatchDescribeModelPackageOutput> instance

This action batch describes a list of versioned model packages


=head2 CreateAction

=over

=item ActionName => Str

=item ActionType => Str

=item Source => L<Paws::SageMaker::ActionSource>

=item [Description => Str]

=item [MetadataProperties => L<Paws::SageMaker::MetadataProperties>]

=item [Properties => L<Paws::SageMaker::LineageEntityParameters>]

=item [Status => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateAction>

Returns: a L<Paws::SageMaker::CreateActionResponse> instance

Creates an I<action>. An action is a lineage tracking entity that
represents an action or activity. For example, a model deployment or an
HPO job. Generally, an action involves at least one input or output
artifact. For more information, see Amazon SageMaker ML Lineage
Tracking
(https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html).


=head2 CreateAlgorithm

=over

=item AlgorithmName => Str

=item TrainingSpecification => L<Paws::SageMaker::TrainingSpecification>

=item [AlgorithmDescription => Str]

=item [CertifyForMarketplace => Bool]

=item [InferenceSpecification => L<Paws::SageMaker::InferenceSpecification>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [ValidationSpecification => L<Paws::SageMaker::AlgorithmValidationSpecification>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateAlgorithm>

Returns: a L<Paws::SageMaker::CreateAlgorithmOutput> instance

Create a machine learning algorithm that you can use in SageMaker and
list in the Amazon Web Services Marketplace.


=head2 CreateApp

=over

=item AppName => Str

=item AppType => Str

=item DomainId => Str

=item [RecoveryMode => Bool]

=item [ResourceSpec => L<Paws::SageMaker::ResourceSpec>]

=item [SpaceName => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [UserProfileName => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateApp>

Returns: a L<Paws::SageMaker::CreateAppResponse> instance

Creates a running app for the specified UserProfile. This operation is
automatically invoked by Amazon SageMaker AI upon access to the
associated Domain, and when new kernel configurations are selected by
the user. A user may have multiple Apps active simultaneously.


=head2 CreateAppImageConfig

=over

=item AppImageConfigName => Str

=item [CodeEditorAppImageConfig => L<Paws::SageMaker::CodeEditorAppImageConfig>]

=item [JupyterLabAppImageConfig => L<Paws::SageMaker::JupyterLabAppImageConfig>]

=item [KernelGatewayImageConfig => L<Paws::SageMaker::KernelGatewayImageConfig>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateAppImageConfig>

Returns: a L<Paws::SageMaker::CreateAppImageConfigResponse> instance

Creates a configuration for running a SageMaker AI image as a
KernelGateway app. The configuration specifies the Amazon Elastic File
System storage volume on the image, and a list of the kernels in the
image.


=head2 CreateArtifact

=over

=item ArtifactType => Str

=item Source => L<Paws::SageMaker::ArtifactSource>

=item [ArtifactName => Str]

=item [MetadataProperties => L<Paws::SageMaker::MetadataProperties>]

=item [Properties => L<Paws::SageMaker::ArtifactProperties>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateArtifact>

Returns: a L<Paws::SageMaker::CreateArtifactResponse> instance

Creates an I<artifact>. An artifact is a lineage tracking entity that
represents a URI addressable object or data. Some examples are the S3
URI of a dataset and the ECR registry path of an image. For more
information, see Amazon SageMaker ML Lineage Tracking
(https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html).


=head2 CreateAutoMLJob

=over

=item AutoMLJobName => Str

=item InputDataConfig => ArrayRef[L<Paws::SageMaker::AutoMLChannel>]

=item OutputDataConfig => L<Paws::SageMaker::AutoMLOutputDataConfig>

=item RoleArn => Str

=item [AutoMLJobConfig => L<Paws::SageMaker::AutoMLJobConfig>]

=item [AutoMLJobObjective => L<Paws::SageMaker::AutoMLJobObjective>]

=item [GenerateCandidateDefinitionsOnly => Bool]

=item [ModelDeployConfig => L<Paws::SageMaker::ModelDeployConfig>]

=item [ProblemType => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateAutoMLJob>

Returns: a L<Paws::SageMaker::CreateAutoMLJobResponse> instance

Creates an Autopilot job also referred to as Autopilot experiment or
AutoML job.

An AutoML job in SageMaker AI is a fully automated process that allows
you to build machine learning models with minimal effort and machine
learning expertise. When initiating an AutoML job, you provide your
data and optionally specify parameters tailored to your use case.
SageMaker AI then automates the entire model development lifecycle,
including data preprocessing, model training, tuning, and evaluation.
AutoML jobs are designed to simplify and accelerate the model building
process by automating various tasks and exploring different
combinations of machine learning algorithms, data preprocessing
techniques, and hyperparameter values. The output of an AutoML job
comprises one or more trained models ready for deployment and
inference. Additionally, SageMaker AI AutoML jobs generate a candidate
model leaderboard, allowing you to select the best-performing model for
deployment.

For more information about AutoML jobs, see
https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-automate-model-development.html
(https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-automate-model-development.html)
in the SageMaker AI developer guide.

We recommend using the new versions CreateAutoMLJobV2
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJobV2.html)
and DescribeAutoMLJobV2
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeAutoMLJobV2.html),
which offer backward compatibility.

C<CreateAutoMLJobV2> can manage tabular problem types identical to
those of its previous version C<CreateAutoMLJob>, as well as
time-series forecasting, non-tabular problem types such as image or
text classification, and text generation (LLMs fine-tuning).

Find guidelines about how to migrate a C<CreateAutoMLJob> to
C<CreateAutoMLJobV2> in Migrate a CreateAutoMLJob to CreateAutoMLJobV2
(https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-automate-model-development-create-experiment.html#autopilot-create-experiment-api-migrate-v1-v2).

You can find the best-performing model after you run an AutoML job by
calling DescribeAutoMLJobV2
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeAutoMLJobV2.html)
(recommended) or DescribeAutoMLJob
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeAutoMLJob.html).


=head2 CreateAutoMLJobV2

=over

=item AutoMLJobInputDataConfig => ArrayRef[L<Paws::SageMaker::AutoMLJobChannel>]

=item AutoMLJobName => Str

=item AutoMLProblemTypeConfig => L<Paws::SageMaker::AutoMLProblemTypeConfig>

=item OutputDataConfig => L<Paws::SageMaker::AutoMLOutputDataConfig>

=item RoleArn => Str

=item [AutoMLComputeConfig => L<Paws::SageMaker::AutoMLComputeConfig>]

=item [AutoMLJobObjective => L<Paws::SageMaker::AutoMLJobObjective>]

=item [DataSplitConfig => L<Paws::SageMaker::AutoMLDataSplitConfig>]

=item [ModelDeployConfig => L<Paws::SageMaker::ModelDeployConfig>]

=item [SecurityConfig => L<Paws::SageMaker::AutoMLSecurityConfig>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateAutoMLJobV2>

Returns: a L<Paws::SageMaker::CreateAutoMLJobV2Response> instance

Creates an Autopilot job also referred to as Autopilot experiment or
AutoML job V2.

An AutoML job in SageMaker AI is a fully automated process that allows
you to build machine learning models with minimal effort and machine
learning expertise. When initiating an AutoML job, you provide your
data and optionally specify parameters tailored to your use case.
SageMaker AI then automates the entire model development lifecycle,
including data preprocessing, model training, tuning, and evaluation.
AutoML jobs are designed to simplify and accelerate the model building
process by automating various tasks and exploring different
combinations of machine learning algorithms, data preprocessing
techniques, and hyperparameter values. The output of an AutoML job
comprises one or more trained models ready for deployment and
inference. Additionally, SageMaker AI AutoML jobs generate a candidate
model leaderboard, allowing you to select the best-performing model for
deployment.

For more information about AutoML jobs, see
https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-automate-model-development.html
(https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-automate-model-development.html)
in the SageMaker AI developer guide.

AutoML jobs V2 support various problem types such as regression,
binary, and multiclass classification with tabular data, text and image
classification, time-series forecasting, and fine-tuning of large
language models (LLMs) for text generation.

CreateAutoMLJobV2
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJobV2.html)
and DescribeAutoMLJobV2
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeAutoMLJobV2.html)
are new versions of CreateAutoMLJob
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJob.html)
and DescribeAutoMLJob
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeAutoMLJob.html)
which offer backward compatibility.

C<CreateAutoMLJobV2> can manage tabular problem types identical to
those of its previous version C<CreateAutoMLJob>, as well as
time-series forecasting, non-tabular problem types such as image or
text classification, and text generation (LLMs fine-tuning).

Find guidelines about how to migrate a C<CreateAutoMLJob> to
C<CreateAutoMLJobV2> in Migrate a CreateAutoMLJob to CreateAutoMLJobV2
(https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-automate-model-development-create-experiment.html#autopilot-create-experiment-api-migrate-v1-v2).

For the list of available problem types supported by
C<CreateAutoMLJobV2>, see AutoMLProblemTypeConfig
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_AutoMLProblemTypeConfig.html).

You can find the best-performing model after you run an AutoML job V2
by calling DescribeAutoMLJobV2
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeAutoMLJobV2.html).


=head2 CreateCluster

=over

=item ClusterName => Str

=item InstanceGroups => ArrayRef[L<Paws::SageMaker::ClusterInstanceGroupSpecification>]

=item [NodeRecovery => Str]

=item [Orchestrator => L<Paws::SageMaker::ClusterOrchestrator>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [VpcConfig => L<Paws::SageMaker::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateCluster>

Returns: a L<Paws::SageMaker::CreateClusterResponse> instance

Creates a SageMaker HyperPod cluster. SageMaker HyperPod is a
capability of SageMaker for creating and managing persistent clusters
for developing large machine learning models, such as large language
models (LLMs) and diffusion models. To learn more, see Amazon SageMaker
HyperPod
(https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-hyperpod.html)
in the I<Amazon SageMaker Developer Guide>.


=head2 CreateClusterSchedulerConfig

=over

=item ClusterArn => Str

=item Name => Str

=item SchedulerConfig => L<Paws::SageMaker::SchedulerConfig>

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateClusterSchedulerConfig>

Returns: a L<Paws::SageMaker::CreateClusterSchedulerConfigResponse> instance

Create cluster policy configuration. This policy is used for task
prioritization and fair-share allocation of idle compute. This helps
prioritize critical workloads and distributes idle compute across
entities.


=head2 CreateCodeRepository

=over

=item CodeRepositoryName => Str

=item GitConfig => L<Paws::SageMaker::GitConfig>

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateCodeRepository>

Returns: a L<Paws::SageMaker::CreateCodeRepositoryOutput> instance

Creates a Git repository as a resource in your SageMaker AI account.
You can associate the repository with notebook instances so that you
can use Git source control for the notebooks you create. The Git
repository is a resource in your SageMaker AI account, so it can be
associated with more than one notebook instance, and it persists
independently from the lifecycle of any notebook instances it is
associated with.

The repository can be hosted either in Amazon Web Services CodeCommit
(https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html)
or in any other Git repository.


=head2 CreateCompilationJob

=over

=item CompilationJobName => Str

=item OutputConfig => L<Paws::SageMaker::OutputConfig>

=item RoleArn => Str

=item StoppingCondition => L<Paws::SageMaker::StoppingCondition>

=item [InputConfig => L<Paws::SageMaker::InputConfig>]

=item [ModelPackageVersionArn => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [VpcConfig => L<Paws::SageMaker::NeoVpcConfig>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateCompilationJob>

Returns: a L<Paws::SageMaker::CreateCompilationJobResponse> instance

Starts a model compilation job. After the model has been compiled,
Amazon SageMaker AI saves the resulting model artifacts to an Amazon
Simple Storage Service (Amazon S3) bucket that you specify.

If you choose to host your model using Amazon SageMaker AI hosting
services, you can use the resulting model artifacts as part of the
model. You can also use the artifacts with Amazon Web Services IoT
Greengrass. In that case, deploy them as an ML resource.

In the request body, you provide the following:

=over

=item *

A name for the compilation job

=item *

Information about the input model artifacts

=item *

The output location for the compiled model and the device (target) that
the model runs on

=item *

The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker AI
assumes to perform the model compilation job.

=back

You can also provide a C<Tag> to track the model compilation job's
resource use and costs. The response body contains the
C<CompilationJobArn> for the compiled job.

To stop a model compilation job, use StopCompilationJob
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_StopCompilationJob.html).
To get information about a particular model compilation job, use
DescribeCompilationJob
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeCompilationJob.html).
To get information about multiple model compilation jobs, use
ListCompilationJobs
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListCompilationJobs.html).


=head2 CreateComputeQuota

=over

=item ClusterArn => Str

=item ComputeQuotaConfig => L<Paws::SageMaker::ComputeQuotaConfig>

=item ComputeQuotaTarget => L<Paws::SageMaker::ComputeQuotaTarget>

=item Name => Str

=item [ActivationState => Str]

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateComputeQuota>

Returns: a L<Paws::SageMaker::CreateComputeQuotaResponse> instance

Create compute allocation definition. This defines how compute is
allocated, shared, and borrowed for specified entities. Specifically,
how to lend and borrow idle compute and assign a fair-share weight to
the specified entities.


=head2 CreateContext

=over

=item ContextName => Str

=item ContextType => Str

=item Source => L<Paws::SageMaker::ContextSource>

=item [Description => Str]

=item [Properties => L<Paws::SageMaker::LineageEntityParameters>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateContext>

Returns: a L<Paws::SageMaker::CreateContextResponse> instance

Creates a I<context>. A context is a lineage tracking entity that
represents a logical grouping of other tracking or experiment entities.
Some examples are an endpoint and a model package. For more
information, see Amazon SageMaker ML Lineage Tracking
(https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html).


=head2 CreateDataQualityJobDefinition

=over

=item DataQualityAppSpecification => L<Paws::SageMaker::DataQualityAppSpecification>

=item DataQualityJobInput => L<Paws::SageMaker::DataQualityJobInput>

=item DataQualityJobOutputConfig => L<Paws::SageMaker::MonitoringOutputConfig>

=item JobDefinitionName => Str

=item JobResources => L<Paws::SageMaker::MonitoringResources>

=item RoleArn => Str

=item [DataQualityBaselineConfig => L<Paws::SageMaker::DataQualityBaselineConfig>]

=item [NetworkConfig => L<Paws::SageMaker::MonitoringNetworkConfig>]

=item [StoppingCondition => L<Paws::SageMaker::MonitoringStoppingCondition>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateDataQualityJobDefinition>

Returns: a L<Paws::SageMaker::CreateDataQualityJobDefinitionResponse> instance

Creates a definition for a job that monitors data quality and drift.
For information about model monitor, see Amazon SageMaker AI Model
Monitor
(https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor.html).


=head2 CreateDeviceFleet

=over

=item DeviceFleetName => Str

=item OutputConfig => L<Paws::SageMaker::EdgeOutputConfig>

=item [Description => Str]

=item [EnableIotRoleAlias => Bool]

=item [RoleArn => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateDeviceFleet>

Returns: nothing

Creates a device fleet.


=head2 CreateDomain

=over

=item AuthMode => Str

=item DefaultUserSettings => L<Paws::SageMaker::UserSettings>

=item DomainName => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item VpcId => Str

=item [AppNetworkAccessType => Str]

=item [AppSecurityGroupManagement => Str]

=item [DefaultSpaceSettings => L<Paws::SageMaker::DefaultSpaceSettings>]

=item [DomainSettings => L<Paws::SageMaker::DomainSettings>]

=item [HomeEfsFileSystemKmsKeyId => Str]

=item [KmsKeyId => Str]

=item [TagPropagation => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateDomain>

Returns: a L<Paws::SageMaker::CreateDomainResponse> instance

Creates a C<Domain>. A domain consists of an associated Amazon Elastic
File System volume, a list of authorized users, and a variety of
security, application, policy, and Amazon Virtual Private Cloud (VPC)
configurations. Users within a domain can share notebook files and
other artifacts with each other.

B<EFS storage>

When a domain is created, an EFS volume is created for use by all of
the users within the domain. Each user receives a private home
directory within the EFS volume for notebooks, Git repositories, and
data files.

SageMaker AI uses the Amazon Web Services Key Management Service
(Amazon Web Services KMS) to encrypt the EFS volume attached to the
domain with an Amazon Web Services managed key by default. For more
control, you can specify a customer managed key. For more information,
see Protect Data at Rest Using Encryption
(https://docs.aws.amazon.com/sagemaker/latest/dg/encryption-at-rest.html).

B<VPC configuration>

All traffic between the domain and the Amazon EFS volume is through the
specified VPC and subnets. For other traffic, you can specify the
C<AppNetworkAccessType> parameter. C<AppNetworkAccessType> corresponds
to the network access type that you choose when you onboard to the
domain. The following options are available:

=over

=item *

C<PublicInternetOnly> - Non-EFS traffic goes through a VPC managed by
Amazon SageMaker AI, which allows internet access. This is the default
value.

=item *

C<VpcOnly> - All traffic is through the specified VPC and subnets.
Internet access is disabled by default. To allow internet access, you
must specify a NAT gateway.

When internet access is disabled, you won't be able to run a Amazon
SageMaker AI Studio notebook or to train or host models unless your VPC
has an interface endpoint to the SageMaker AI API and runtime or a NAT
gateway and your security groups allow outbound connections.

=back

NFS traffic over TCP on port 2049 needs to be allowed in both inbound
and outbound rules in order to launch a Amazon SageMaker AI Studio app
successfully.

For more information, see Connect Amazon SageMaker AI Studio Notebooks
to Resources in a VPC
(https://docs.aws.amazon.com/sagemaker/latest/dg/studio-notebooks-and-internet-access.html).


=head2 CreateEdgeDeploymentPlan

=over

=item DeviceFleetName => Str

=item EdgeDeploymentPlanName => Str

=item ModelConfigs => ArrayRef[L<Paws::SageMaker::EdgeDeploymentModelConfig>]

=item [Stages => ArrayRef[L<Paws::SageMaker::DeploymentStage>]]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateEdgeDeploymentPlan>

Returns: a L<Paws::SageMaker::CreateEdgeDeploymentPlanResponse> instance

Creates an edge deployment plan, consisting of multiple stages. Each
stage may have a different deployment configuration and devices.


=head2 CreateEdgeDeploymentStage

=over

=item EdgeDeploymentPlanName => Str

=item Stages => ArrayRef[L<Paws::SageMaker::DeploymentStage>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateEdgeDeploymentStage>

Returns: nothing

Creates a new stage in an existing edge deployment plan.


=head2 CreateEdgePackagingJob

=over

=item CompilationJobName => Str

=item EdgePackagingJobName => Str

=item ModelName => Str

=item ModelVersion => Str

=item OutputConfig => L<Paws::SageMaker::EdgeOutputConfig>

=item RoleArn => Str

=item [ResourceKey => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateEdgePackagingJob>

Returns: nothing

Starts a SageMaker Edge Manager model packaging job. Edge Manager will
use the model artifacts from the Amazon Simple Storage Service bucket
that you specify. After the model has been packaged, Amazon SageMaker
saves the resulting artifacts to an S3 bucket that you specify.


=head2 CreateEndpoint

=over

=item EndpointConfigName => Str

=item EndpointName => Str

=item [DeploymentConfig => L<Paws::SageMaker::DeploymentConfig>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateEndpoint>

Returns: a L<Paws::SageMaker::CreateEndpointOutput> instance

Creates an endpoint using the endpoint configuration specified in the
request. SageMaker uses the endpoint to provision resources and deploy
models. You create the endpoint configuration with the
CreateEndpointConfig
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpointConfig.html)
API.

Use this API to deploy models using SageMaker hosting services.

You must not delete an C<EndpointConfig> that is in use by an endpoint
that is live or while the C<UpdateEndpoint> or C<CreateEndpoint>
operations are being performed on the endpoint. To update an endpoint,
you must create a new C<EndpointConfig>.

The endpoint name must be unique within an Amazon Web Services Region
in your Amazon Web Services account.

When it receives the request, SageMaker creates the endpoint, launches
the resources (ML compute instances), and deploys the model(s) on them.

When you call CreateEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html),
a load call is made to DynamoDB to verify that your endpoint
configuration exists. When you read data from a DynamoDB table
supporting C<Eventually Consistent Reads>
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadConsistency.html),
the response might not reflect the results of a recently completed
write operation. The response might include some stale data. If the
dependent entities are not yet in DynamoDB, this causes a validation
error. If you repeat your read request after a short time, the response
should return the latest data. So retry logic is recommended to handle
these possible issues. We also recommend that customers call
DescribeEndpointConfig
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeEndpointConfig.html)
before calling CreateEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html)
to minimize the potential impact of a DynamoDB eventually consistent
read.

When SageMaker receives the request, it sets the endpoint status to
C<Creating>. After it creates the endpoint, it sets the status to
C<InService>. SageMaker can then process incoming requests for
inferences. To check the status of an endpoint, use the
DescribeEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeEndpoint.html)
API.

If any of the models hosted at this endpoint get model data from an
Amazon S3 location, SageMaker uses Amazon Web Services Security Token
Service to download model artifacts from the S3 path you provided.
Amazon Web Services STS is activated in your Amazon Web Services
account by default. If you previously deactivated Amazon Web Services
STS for a region, you need to reactivate Amazon Web Services STS for
that region. For more information, see Activating and Deactivating
Amazon Web Services STS in an Amazon Web Services Region
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
in the I<Amazon Web Services Identity and Access Management User
Guide>.

To add the IAM role policies for using this API operation, go to the
IAM console (https://console.aws.amazon.com/iam/), and choose Roles in
the left navigation pane. Search the IAM role that you want to grant
access to use the CreateEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html)
and CreateEndpointConfig
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpointConfig.html)
API operations, add the following policies to the role.

=over

=item *

Option 1: For a full SageMaker access, search and attach the
C<AmazonSageMakerFullAccess> policy.

=item *

Option 2: For granting a limited access to an IAM role, paste the
following Action elements manually into the JSON file of the IAM role:

C<"Action": ["sagemaker:CreateEndpoint",
"sagemaker:CreateEndpointConfig"]>

C<"Resource": [>

C<"arn:aws:sagemaker:region:account-id:endpoint/endpointName">

C<"arn:aws:sagemaker:region:account-id:endpoint-config/endpointConfigName">

C<]>

For more information, see SageMaker API Permissions: Actions,
Permissions, and Resources Reference
(https://docs.aws.amazon.com/sagemaker/latest/dg/api-permissions-reference.html).

=back



=head2 CreateEndpointConfig

=over

=item EndpointConfigName => Str

=item ProductionVariants => ArrayRef[L<Paws::SageMaker::ProductionVariant>]

=item [AsyncInferenceConfig => L<Paws::SageMaker::AsyncInferenceConfig>]

=item [DataCaptureConfig => L<Paws::SageMaker::DataCaptureConfig>]

=item [EnableNetworkIsolation => Bool]

=item [ExecutionRoleArn => Str]

=item [ExplainerConfig => L<Paws::SageMaker::ExplainerConfig>]

=item [KmsKeyId => Str]

=item [ShadowProductionVariants => ArrayRef[L<Paws::SageMaker::ProductionVariant>]]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [VpcConfig => L<Paws::SageMaker::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateEndpointConfig>

Returns: a L<Paws::SageMaker::CreateEndpointConfigOutput> instance

Creates an endpoint configuration that SageMaker hosting services uses
to deploy models. In the configuration, you identify one or more
models, created using the C<CreateModel> API, to deploy and the
resources that you want SageMaker to provision. Then you call the
CreateEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html)
API.

Use this API if you want to use SageMaker hosting services to deploy
models into production.

In the request, you define a C<ProductionVariant>, for each model that
you want to deploy. Each C<ProductionVariant> parameter also describes
the resources that you want SageMaker to provision. This includes the
number and type of ML compute instances to deploy.

If you are hosting multiple models, you also assign a C<VariantWeight>
to specify how much traffic you want to allocate to each model. For
example, suppose that you want to host two models, A and B, and you
assign traffic weight 2 for model A and 1 for model B. SageMaker
distributes two-thirds of the traffic to Model A, and one-third to
model B.

When you call CreateEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html),
a load call is made to DynamoDB to verify that your endpoint
configuration exists. When you read data from a DynamoDB table
supporting C<Eventually Consistent Reads>
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadConsistency.html),
the response might not reflect the results of a recently completed
write operation. The response might include some stale data. If the
dependent entities are not yet in DynamoDB, this causes a validation
error. If you repeat your read request after a short time, the response
should return the latest data. So retry logic is recommended to handle
these possible issues. We also recommend that customers call
DescribeEndpointConfig
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeEndpointConfig.html)
before calling CreateEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html)
to minimize the potential impact of a DynamoDB eventually consistent
read.


=head2 CreateExperiment

=over

=item ExperimentName => Str

=item [Description => Str]

=item [DisplayName => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateExperiment>

Returns: a L<Paws::SageMaker::CreateExperimentResponse> instance

Creates a SageMaker I<experiment>. An experiment is a collection of
I<trials> that are observed, compared and evaluated as a group. A trial
is a set of steps, called I<trial components>, that produce a machine
learning model.

In the Studio UI, trials are referred to as I<run groups> and trial
components are referred to as I<runs>.

The goal of an experiment is to determine the components that produce
the best model. Multiple trials are performed, each one isolating and
measuring the impact of a change to one or more inputs, while keeping
the remaining inputs constant.

When you use SageMaker Studio or the SageMaker Python SDK, all
experiments, trials, and trial components are automatically tracked,
logged, and indexed. When you use the Amazon Web Services SDK for
Python (Boto), you must use the logging APIs provided by the SDK.

You can add tags to experiments, trials, trial components and then use
the Search
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_Search.html)
API to search for the tags.

To add a description to an experiment, specify the optional
C<Description> parameter. To add a description later, or to change the
description, call the UpdateExperiment
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_UpdateExperiment.html)
API.

To get a list of all your experiments, call the ListExperiments
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListExperiments.html)
API. To view an experiment's properties, call the DescribeExperiment
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeExperiment.html)
API. To get a list of all the trials associated with an experiment,
call the ListTrials
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListTrials.html)
API. To create a trial call the CreateTrial
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateTrial.html)
API.


=head2 CreateFeatureGroup

=over

=item EventTimeFeatureName => Str

=item FeatureDefinitions => ArrayRef[L<Paws::SageMaker::FeatureDefinition>]

=item FeatureGroupName => Str

=item RecordIdentifierFeatureName => Str

=item [Description => Str]

=item [OfflineStoreConfig => L<Paws::SageMaker::OfflineStoreConfig>]

=item [OnlineStoreConfig => L<Paws::SageMaker::OnlineStoreConfig>]

=item [RoleArn => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [ThroughputConfig => L<Paws::SageMaker::ThroughputConfig>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateFeatureGroup>

Returns: a L<Paws::SageMaker::CreateFeatureGroupResponse> instance

Create a new C<FeatureGroup>. A C<FeatureGroup> is a group of
C<Features> defined in the C<FeatureStore> to describe a C<Record>.

The C<FeatureGroup> defines the schema and features contained in the
C<FeatureGroup>. A C<FeatureGroup> definition is composed of a list of
C<Features>, a C<RecordIdentifierFeatureName>, an
C<EventTimeFeatureName> and configurations for its C<OnlineStore> and
C<OfflineStore>. Check Amazon Web Services service quotas
(https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html)
to see the C<FeatureGroup>s quota for your Amazon Web Services account.

Note that it can take approximately 10-15 minutes to provision an
C<OnlineStore> C<FeatureGroup> with the C<InMemory> C<StorageType>.

You must include at least one of C<OnlineStoreConfig> and
C<OfflineStoreConfig> to create a C<FeatureGroup>.


=head2 CreateFlowDefinition

=over

=item FlowDefinitionName => Str

=item OutputConfig => L<Paws::SageMaker::FlowDefinitionOutputConfig>

=item RoleArn => Str

=item [HumanLoopActivationConfig => L<Paws::SageMaker::HumanLoopActivationConfig>]

=item [HumanLoopConfig => L<Paws::SageMaker::HumanLoopConfig>]

=item [HumanLoopRequestSource => L<Paws::SageMaker::HumanLoopRequestSource>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateFlowDefinition>

Returns: a L<Paws::SageMaker::CreateFlowDefinitionResponse> instance

Creates a flow definition.


=head2 CreateHub

=over

=item HubDescription => Str

=item HubName => Str

=item [HubDisplayName => Str]

=item [HubSearchKeywords => ArrayRef[Str|Undef]]

=item [S3StorageConfig => L<Paws::SageMaker::HubS3StorageConfig>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateHub>

Returns: a L<Paws::SageMaker::CreateHubResponse> instance

Create a hub.


=head2 CreateHubContentReference

=over

=item HubName => Str

=item SageMakerPublicHubContentArn => Str

=item [HubContentName => Str]

=item [MinVersion => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateHubContentReference>

Returns: a L<Paws::SageMaker::CreateHubContentReferenceResponse> instance

Create a hub content reference in order to add a model in the JumpStart
public hub to a private hub.


=head2 CreateHumanTaskUi

=over

=item HumanTaskUiName => Str

=item UiTemplate => L<Paws::SageMaker::UiTemplate>

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateHumanTaskUi>

Returns: a L<Paws::SageMaker::CreateHumanTaskUiResponse> instance

Defines the settings you will use for the human review workflow user
interface. Reviewers will see a three-panel interface with an
instruction area, the item to review, and an input area.


=head2 CreateHyperParameterTuningJob

=over

=item HyperParameterTuningJobConfig => L<Paws::SageMaker::HyperParameterTuningJobConfig>

=item HyperParameterTuningJobName => Str

=item [Autotune => L<Paws::SageMaker::Autotune>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [TrainingJobDefinition => L<Paws::SageMaker::HyperParameterTrainingJobDefinition>]

=item [TrainingJobDefinitions => ArrayRef[L<Paws::SageMaker::HyperParameterTrainingJobDefinition>]]

=item [WarmStartConfig => L<Paws::SageMaker::HyperParameterTuningJobWarmStartConfig>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateHyperParameterTuningJob>

Returns: a L<Paws::SageMaker::CreateHyperParameterTuningJobResponse> instance

Starts a hyperparameter tuning job. A hyperparameter tuning job finds
the best version of a model by running many training jobs on your
dataset using the algorithm you choose and values for hyperparameters
within ranges that you specify. It then chooses the hyperparameter
values that result in a model that performs the best, as measured by an
objective metric that you choose.

A hyperparameter tuning job automatically creates Amazon SageMaker
experiments, trials, and trial components for each training job that it
runs. You can view these entities in Amazon SageMaker Studio. For more
information, see View Experiments, Trials, and Trial Components
(https://docs.aws.amazon.com/sagemaker/latest/dg/experiments-view-compare.html#experiments-view).

Do not include any security-sensitive information including account
access IDs, secrets, or tokens in any hyperparameter fields. As part of
the shared responsibility model, you are responsible for any potential
exposure, unauthorized access, or compromise of your sensitive data if
caused by any security-sensitive information included in the request
hyperparameter variable or plain text fields..


=head2 CreateImage

=over

=item ImageName => Str

=item RoleArn => Str

=item [Description => Str]

=item [DisplayName => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateImage>

Returns: a L<Paws::SageMaker::CreateImageResponse> instance

Creates a custom SageMaker AI image. A SageMaker AI image is a set of
image versions. Each image version represents a container image stored
in Amazon ECR. For more information, see Bring your own SageMaker AI
image
(https://docs.aws.amazon.com/sagemaker/latest/dg/studio-byoi.html).


=head2 CreateImageVersion

=over

=item BaseImage => Str

=item ClientToken => Str

=item ImageName => Str

=item [Aliases => ArrayRef[Str|Undef]]

=item [Horovod => Bool]

=item [JobType => Str]

=item [MLFramework => Str]

=item [Processor => Str]

=item [ProgrammingLang => Str]

=item [ReleaseNotes => Str]

=item [VendorGuidance => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateImageVersion>

Returns: a L<Paws::SageMaker::CreateImageVersionResponse> instance

Creates a version of the SageMaker AI image specified by C<ImageName>.
The version represents the Amazon ECR container image specified by
C<BaseImage>.


=head2 CreateInferenceComponent

=over

=item EndpointName => Str

=item InferenceComponentName => Str

=item Specification => L<Paws::SageMaker::InferenceComponentSpecification>

=item [RuntimeConfig => L<Paws::SageMaker::InferenceComponentRuntimeConfig>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [VariantName => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateInferenceComponent>

Returns: a L<Paws::SageMaker::CreateInferenceComponentOutput> instance

Creates an inference component, which is a SageMaker AI hosting object
that you can use to deploy a model to an endpoint. In the inference
component settings, you specify the model, the endpoint, and how the
model utilizes the resources that the endpoint hosts. You can optimize
resource utilization by tailoring how the required CPU cores,
accelerators, and memory are allocated. You can deploy multiple
inference components to an endpoint, where each inference component
contains one model and the resource utilization needs for that
individual model. After you deploy an inference component, you can
directly invoke the associated model when you use the InvokeEndpoint
API action.


=head2 CreateInferenceExperiment

=over

=item EndpointName => Str

=item ModelVariants => ArrayRef[L<Paws::SageMaker::ModelVariantConfig>]

=item Name => Str

=item RoleArn => Str

=item ShadowModeConfig => L<Paws::SageMaker::ShadowModeConfig>

=item Type => Str

=item [DataStorageConfig => L<Paws::SageMaker::InferenceExperimentDataStorageConfig>]

=item [Description => Str]

=item [KmsKey => Str]

=item [Schedule => L<Paws::SageMaker::InferenceExperimentSchedule>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateInferenceExperiment>

Returns: a L<Paws::SageMaker::CreateInferenceExperimentResponse> instance

Creates an inference experiment using the configurations specified in
the request.

Use this API to setup and schedule an experiment to compare model
variants on a Amazon SageMaker inference endpoint. For more information
about inference experiments, see Shadow tests
(https://docs.aws.amazon.com/sagemaker/latest/dg/shadow-tests.html).

Amazon SageMaker begins your experiment at the scheduled time and
routes traffic to your endpoint's model variants based on your
specified configuration.

While the experiment is in progress or after it has concluded, you can
view metrics that compare your model variants. For more information,
see View, monitor, and edit shadow tests
(https://docs.aws.amazon.com/sagemaker/latest/dg/shadow-tests-view-monitor-edit.html).


=head2 CreateInferenceRecommendationsJob

=over

=item InputConfig => L<Paws::SageMaker::RecommendationJobInputConfig>

=item JobName => Str

=item JobType => Str

=item RoleArn => Str

=item [JobDescription => Str]

=item [OutputConfig => L<Paws::SageMaker::RecommendationJobOutputConfig>]

=item [StoppingConditions => L<Paws::SageMaker::RecommendationJobStoppingConditions>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateInferenceRecommendationsJob>

Returns: a L<Paws::SageMaker::CreateInferenceRecommendationsJobResponse> instance

Starts a recommendation job. You can create either an instance
recommendation or load test job.


=head2 CreateLabelingJob

=over

=item HumanTaskConfig => L<Paws::SageMaker::HumanTaskConfig>

=item InputConfig => L<Paws::SageMaker::LabelingJobInputConfig>

=item LabelAttributeName => Str

=item LabelingJobName => Str

=item OutputConfig => L<Paws::SageMaker::LabelingJobOutputConfig>

=item RoleArn => Str

=item [LabelCategoryConfigS3Uri => Str]

=item [LabelingJobAlgorithmsConfig => L<Paws::SageMaker::LabelingJobAlgorithmsConfig>]

=item [StoppingConditions => L<Paws::SageMaker::LabelingJobStoppingConditions>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateLabelingJob>

Returns: a L<Paws::SageMaker::CreateLabelingJobResponse> instance

Creates a job that uses workers to label the data objects in your input
dataset. You can use the labeled data to train machine learning models.

You can select your workforce from one of three providers:

=over

=item *

A private workforce that you create. It can include employees,
contractors, and outside experts. Use a private workforce when want the
data to stay within your organization or when a specific set of skills
is required.

=item *

One or more vendors that you select from the Amazon Web Services
Marketplace. Vendors provide expertise in specific areas.

=item *

The Amazon Mechanical Turk workforce. This is the largest workforce,
but it should only be used for public data or data that has been
stripped of any personally identifiable information.

=back

You can also use I<automated data labeling> to reduce the number of
data objects that need to be labeled by a human. Automated data
labeling uses I<active learning> to determine if a data object can be
labeled by machine or if it needs to be sent to a human worker. For
more information, see Using Automated Data Labeling
(https://docs.aws.amazon.com/sagemaker/latest/dg/sms-automated-labeling.html).

The data objects to be labeled are contained in an Amazon S3 bucket.
You create a I<manifest file> that describes the location of each
object. For more information, see Using Input and Output Data
(https://docs.aws.amazon.com/sagemaker/latest/dg/sms-data.html).

The output can be used as the manifest file for another labeling job or
as training data for your machine learning models.

You can use this operation to create a static labeling job or a
streaming labeling job. A static labeling job stops if all data objects
in the input manifest file identified in C<ManifestS3Uri> have been
labeled. A streaming labeling job runs perpetually until it is manually
stopped, or remains idle for 10 days. You can send new data objects to
an active (C<InProgress>) streaming labeling job in real time. To learn
how to create a static labeling job, see Create a Labeling Job (API)
(https://docs.aws.amazon.com/sagemaker/latest/dg/sms-create-labeling-job-api.html)
in the Amazon SageMaker Developer Guide. To learn how to create a
streaming labeling job, see Create a Streaming Labeling Job
(https://docs.aws.amazon.com/sagemaker/latest/dg/sms-streaming-create-job.html).


=head2 CreateMlflowTrackingServer

=over

=item ArtifactStoreUri => Str

=item RoleArn => Str

=item TrackingServerName => Str

=item [AutomaticModelRegistration => Bool]

=item [MlflowVersion => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [TrackingServerSize => Str]

=item [WeeklyMaintenanceWindowStart => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateMlflowTrackingServer>

Returns: a L<Paws::SageMaker::CreateMlflowTrackingServerResponse> instance

Creates an MLflow Tracking Server using a general purpose Amazon S3
bucket as the artifact store. For more information, see Create an
MLflow Tracking Server
(https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow-create-tracking-server.html).


=head2 CreateModel

=over

=item ModelName => Str

=item [Containers => ArrayRef[L<Paws::SageMaker::ContainerDefinition>]]

=item [EnableNetworkIsolation => Bool]

=item [ExecutionRoleArn => Str]

=item [InferenceExecutionConfig => L<Paws::SageMaker::InferenceExecutionConfig>]

=item [PrimaryContainer => L<Paws::SageMaker::ContainerDefinition>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [VpcConfig => L<Paws::SageMaker::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateModel>

Returns: a L<Paws::SageMaker::CreateModelOutput> instance

Creates a model in SageMaker. In the request, you name the model and
describe a primary container. For the primary container, you specify
the Docker image that contains inference code, artifacts (from prior
training), and a custom environment map that the inference code uses
when you deploy the model for predictions.

Use this API to create a model if you want to use SageMaker hosting
services or run a batch transform job.

To host your model, you create an endpoint configuration with the
C<CreateEndpointConfig> API, and then create an endpoint with the
C<CreateEndpoint> API. SageMaker then deploys all of the containers
that you defined for the model in the hosting environment.

To run a batch transform using your model, you start a job with the
C<CreateTransformJob> API. SageMaker uses your model and your dataset
to get inferences which are then saved to a specified S3 location.

In the request, you also provide an IAM role that SageMaker can assume
to access model artifacts and docker image for deployment on ML compute
hosting instances or for batch transform jobs. In addition, you also
use the IAM role to manage permissions the inference code needs. For
example, if the inference code access any other Amazon Web Services
resources, you grant necessary permissions via this role.


=head2 CreateModelBiasJobDefinition

=over

=item JobDefinitionName => Str

=item JobResources => L<Paws::SageMaker::MonitoringResources>

=item ModelBiasAppSpecification => L<Paws::SageMaker::ModelBiasAppSpecification>

=item ModelBiasJobInput => L<Paws::SageMaker::ModelBiasJobInput>

=item ModelBiasJobOutputConfig => L<Paws::SageMaker::MonitoringOutputConfig>

=item RoleArn => Str

=item [ModelBiasBaselineConfig => L<Paws::SageMaker::ModelBiasBaselineConfig>]

=item [NetworkConfig => L<Paws::SageMaker::MonitoringNetworkConfig>]

=item [StoppingCondition => L<Paws::SageMaker::MonitoringStoppingCondition>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateModelBiasJobDefinition>

Returns: a L<Paws::SageMaker::CreateModelBiasJobDefinitionResponse> instance

Creates the definition for a model bias job.


=head2 CreateModelCard

=over

=item Content => Str

=item ModelCardName => Str

=item ModelCardStatus => Str

=item [SecurityConfig => L<Paws::SageMaker::ModelCardSecurityConfig>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateModelCard>

Returns: a L<Paws::SageMaker::CreateModelCardResponse> instance

Creates an Amazon SageMaker Model Card.

For information about how to use model cards, see Amazon SageMaker
Model Card
(https://docs.aws.amazon.com/sagemaker/latest/dg/model-cards.html).


=head2 CreateModelCardExportJob

=over

=item ModelCardExportJobName => Str

=item ModelCardName => Str

=item OutputConfig => L<Paws::SageMaker::ModelCardExportOutputConfig>

=item [ModelCardVersion => Int]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateModelCardExportJob>

Returns: a L<Paws::SageMaker::CreateModelCardExportJobResponse> instance

Creates an Amazon SageMaker Model Card export job.


=head2 CreateModelExplainabilityJobDefinition

=over

=item JobDefinitionName => Str

=item JobResources => L<Paws::SageMaker::MonitoringResources>

=item ModelExplainabilityAppSpecification => L<Paws::SageMaker::ModelExplainabilityAppSpecification>

=item ModelExplainabilityJobInput => L<Paws::SageMaker::ModelExplainabilityJobInput>

=item ModelExplainabilityJobOutputConfig => L<Paws::SageMaker::MonitoringOutputConfig>

=item RoleArn => Str

=item [ModelExplainabilityBaselineConfig => L<Paws::SageMaker::ModelExplainabilityBaselineConfig>]

=item [NetworkConfig => L<Paws::SageMaker::MonitoringNetworkConfig>]

=item [StoppingCondition => L<Paws::SageMaker::MonitoringStoppingCondition>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateModelExplainabilityJobDefinition>

Returns: a L<Paws::SageMaker::CreateModelExplainabilityJobDefinitionResponse> instance

Creates the definition for a model explainability job.


=head2 CreateModelPackage

=over

=item [AdditionalInferenceSpecifications => ArrayRef[L<Paws::SageMaker::AdditionalInferenceSpecificationDefinition>]]

=item [CertifyForMarketplace => Bool]

=item [ClientToken => Str]

=item [CustomerMetadataProperties => L<Paws::SageMaker::CustomerMetadataMap>]

=item [Domain => Str]

=item [DriftCheckBaselines => L<Paws::SageMaker::DriftCheckBaselines>]

=item [InferenceSpecification => L<Paws::SageMaker::InferenceSpecification>]

=item [MetadataProperties => L<Paws::SageMaker::MetadataProperties>]

=item [ModelApprovalStatus => Str]

=item [ModelCard => L<Paws::SageMaker::ModelPackageModelCard>]

=item [ModelLifeCycle => L<Paws::SageMaker::ModelLifeCycle>]

=item [ModelMetrics => L<Paws::SageMaker::ModelMetrics>]

=item [ModelPackageDescription => Str]

=item [ModelPackageGroupName => Str]

=item [ModelPackageName => Str]

=item [SamplePayloadUrl => Str]

=item [SecurityConfig => L<Paws::SageMaker::ModelPackageSecurityConfig>]

=item [SkipModelValidation => Str]

=item [SourceAlgorithmSpecification => L<Paws::SageMaker::SourceAlgorithmSpecification>]

=item [SourceUri => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [Task => Str]

=item [ValidationSpecification => L<Paws::SageMaker::ModelPackageValidationSpecification>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateModelPackage>

Returns: a L<Paws::SageMaker::CreateModelPackageOutput> instance

Creates a model package that you can use to create SageMaker models or
list on Amazon Web Services Marketplace, or a versioned model that is
part of a model group. Buyers can subscribe to model packages listed on
Amazon Web Services Marketplace to create models in SageMaker.

To create a model package by specifying a Docker container that
contains your inference code and the Amazon S3 location of your model
artifacts, provide values for C<InferenceSpecification>. To create a
model from an algorithm resource that you created or subscribed to in
Amazon Web Services Marketplace, provide a value for
C<SourceAlgorithmSpecification>.

There are two types of model packages:

=over

=item *

Versioned - a model that is part of a model group in the model
registry.

=item *

Unversioned - a model package that is not part of a model group.

=back



=head2 CreateModelPackageGroup

=over

=item ModelPackageGroupName => Str

=item [ModelPackageGroupDescription => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateModelPackageGroup>

Returns: a L<Paws::SageMaker::CreateModelPackageGroupOutput> instance

Creates a model group. A model group contains a group of model
versions.


=head2 CreateModelQualityJobDefinition

=over

=item JobDefinitionName => Str

=item JobResources => L<Paws::SageMaker::MonitoringResources>

=item ModelQualityAppSpecification => L<Paws::SageMaker::ModelQualityAppSpecification>

=item ModelQualityJobInput => L<Paws::SageMaker::ModelQualityJobInput>

=item ModelQualityJobOutputConfig => L<Paws::SageMaker::MonitoringOutputConfig>

=item RoleArn => Str

=item [ModelQualityBaselineConfig => L<Paws::SageMaker::ModelQualityBaselineConfig>]

=item [NetworkConfig => L<Paws::SageMaker::MonitoringNetworkConfig>]

=item [StoppingCondition => L<Paws::SageMaker::MonitoringStoppingCondition>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateModelQualityJobDefinition>

Returns: a L<Paws::SageMaker::CreateModelQualityJobDefinitionResponse> instance

Creates a definition for a job that monitors model quality and drift.
For information about model monitor, see Amazon SageMaker AI Model
Monitor
(https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor.html).


=head2 CreateMonitoringSchedule

=over

=item MonitoringScheduleConfig => L<Paws::SageMaker::MonitoringScheduleConfig>

=item MonitoringScheduleName => Str

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateMonitoringSchedule>

Returns: a L<Paws::SageMaker::CreateMonitoringScheduleResponse> instance

Creates a schedule that regularly starts Amazon SageMaker AI Processing
Jobs to monitor the data captured for an Amazon SageMaker AI Endpoint.


=head2 CreateNotebookInstance

=over

=item InstanceType => Str

=item NotebookInstanceName => Str

=item RoleArn => Str

=item [AcceleratorTypes => ArrayRef[Str|Undef]]

=item [AdditionalCodeRepositories => ArrayRef[Str|Undef]]

=item [DefaultCodeRepository => Str]

=item [DirectInternetAccess => Str]

=item [InstanceMetadataServiceConfiguration => L<Paws::SageMaker::InstanceMetadataServiceConfiguration>]

=item [KmsKeyId => Str]

=item [LifecycleConfigName => Str]

=item [PlatformIdentifier => Str]

=item [RootAccess => Str]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SubnetId => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [VolumeSizeInGB => Int]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateNotebookInstance>

Returns: a L<Paws::SageMaker::CreateNotebookInstanceOutput> instance

Creates an SageMaker AI notebook instance. A notebook instance is a
machine learning (ML) compute instance running on a Jupyter notebook.

In a C<CreateNotebookInstance> request, specify the type of ML compute
instance that you want to run. SageMaker AI launches the instance,
installs common libraries that you can use to explore datasets for
model training, and attaches an ML storage volume to the notebook
instance.

SageMaker AI also provides a set of example notebooks. Each notebook
demonstrates how to use SageMaker AI with a specific algorithm or with
a machine learning framework.

After receiving the request, SageMaker AI does the following:

=over

=item 1.

Creates a network interface in the SageMaker AI VPC.

=item 2.

(Option) If you specified C<SubnetId>, SageMaker AI creates a network
interface in your own VPC, which is inferred from the subnet ID that
you provide in the input. When creating this network interface,
SageMaker AI attaches the security group that you specified in the
request to the network interface that it creates in your VPC.

=item 3.

Launches an EC2 instance of the type specified in the request in the
SageMaker AI VPC. If you specified C<SubnetId> of your VPC, SageMaker
AI specifies both network interfaces when launching this instance. This
enables inbound traffic from your own VPC to the notebook instance,
assuming that the security groups allow it.

=back

After creating the notebook instance, SageMaker AI returns its Amazon
Resource Name (ARN). You can't change the name of a notebook instance
after you create it.

After SageMaker AI creates the notebook instance, you can connect to
the Jupyter server and work in Jupyter notebooks. For example, you can
write code to explore a dataset that you can use for model training,
train a model, host models by creating SageMaker AI endpoints, and
validate hosted models.

For more information, see How It Works
(https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).


=head2 CreateNotebookInstanceLifecycleConfig

=over

=item NotebookInstanceLifecycleConfigName => Str

=item [OnCreate => ArrayRef[L<Paws::SageMaker::NotebookInstanceLifecycleHook>]]

=item [OnStart => ArrayRef[L<Paws::SageMaker::NotebookInstanceLifecycleHook>]]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateNotebookInstanceLifecycleConfig>

Returns: a L<Paws::SageMaker::CreateNotebookInstanceLifecycleConfigOutput> instance

Creates a lifecycle configuration that you can associate with a
notebook instance. A I<lifecycle configuration> is a collection of
shell scripts that run when you create or start a notebook instance.

Each lifecycle configuration script has a limit of 16384 characters.

The value of the C<$PATH> environment variable that is available to
both scripts is C</sbin:bin:/usr/sbin:/usr/bin>.

View Amazon CloudWatch Logs for notebook instance lifecycle
configurations in log group C</aws/sagemaker/NotebookInstances> in log
stream C<[notebook-instance-name]/[LifecycleConfigHook]>.

Lifecycle configuration scripts cannot run for longer than 5 minutes.
If a script runs for longer than 5 minutes, it fails and the notebook
instance is not created or started.

For information about notebook instance lifestyle configurations, see
Step 2.1: (Optional) Customize a Notebook Instance
(https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html).


=head2 CreateOptimizationJob

=over

=item DeploymentInstanceType => Str

=item ModelSource => L<Paws::SageMaker::OptimizationJobModelSource>

=item OptimizationConfigs => ArrayRef[L<Paws::SageMaker::OptimizationConfig>]

=item OptimizationJobName => Str

=item OutputConfig => L<Paws::SageMaker::OptimizationJobOutputConfig>

=item RoleArn => Str

=item StoppingCondition => L<Paws::SageMaker::StoppingCondition>

=item [OptimizationEnvironment => L<Paws::SageMaker::OptimizationJobEnvironmentVariables>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [VpcConfig => L<Paws::SageMaker::OptimizationVpcConfig>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateOptimizationJob>

Returns: a L<Paws::SageMaker::CreateOptimizationJobResponse> instance

Creates a job that optimizes a model for inference performance. To
create the job, you provide the location of a source model, and you
provide the settings for the optimization techniques that you want the
job to apply. When the job completes successfully, SageMaker uploads
the new optimized model to the output destination that you specify.

For more information about how to use this action, and about the
supported optimization techniques, see Optimize model inference with
Amazon SageMaker
(https://docs.aws.amazon.com/sagemaker/latest/dg/model-optimize.html).


=head2 CreatePartnerApp

=over

=item AuthType => Str

=item ExecutionRoleArn => Str

=item Name => Str

=item Tier => Str

=item Type => Str

=item [ApplicationConfig => L<Paws::SageMaker::PartnerAppConfig>]

=item [ClientToken => Str]

=item [EnableIamSessionBasedIdentity => Bool]

=item [KmsKeyId => Str]

=item [MaintenanceConfig => L<Paws::SageMaker::PartnerAppMaintenanceConfig>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreatePartnerApp>

Returns: a L<Paws::SageMaker::CreatePartnerAppResponse> instance

Creates an Amazon SageMaker Partner AI App.


=head2 CreatePartnerAppPresignedUrl

=over

=item Arn => Str

=item [ExpiresInSeconds => Int]

=item [SessionExpirationDurationInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreatePartnerAppPresignedUrl>

Returns: a L<Paws::SageMaker::CreatePartnerAppPresignedUrlResponse> instance

Creates a presigned URL to access an Amazon SageMaker Partner AI App.


=head2 CreatePipeline

=over

=item ClientRequestToken => Str

=item PipelineName => Str

=item RoleArn => Str

=item [ParallelismConfiguration => L<Paws::SageMaker::ParallelismConfiguration>]

=item [PipelineDefinition => Str]

=item [PipelineDefinitionS3Location => L<Paws::SageMaker::PipelineDefinitionS3Location>]

=item [PipelineDescription => Str]

=item [PipelineDisplayName => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreatePipeline>

Returns: a L<Paws::SageMaker::CreatePipelineResponse> instance

Creates a pipeline using a JSON pipeline definition.


=head2 CreatePresignedDomainUrl

=over

=item DomainId => Str

=item UserProfileName => Str

=item [ExpiresInSeconds => Int]

=item [LandingUri => Str]

=item [SessionExpirationDurationInSeconds => Int]

=item [SpaceName => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreatePresignedDomainUrl>

Returns: a L<Paws::SageMaker::CreatePresignedDomainUrlResponse> instance

Creates a URL for a specified UserProfile in a Domain. When accessed in
a web browser, the user will be automatically signed in to the domain,
and granted access to all of the Apps and files associated with the
Domain's Amazon Elastic File System volume. This operation can only be
called when the authentication mode equals IAM.

The IAM role or user passed to this API defines the permissions to
access the app. Once the presigned URL is created, no additional
permission is required to access this URL. IAM authorization policies
for this API are also enforced for every HTTP request and WebSocket
frame that attempts to connect to the app.

You can restrict access to this API and to the URL that it returns to a
list of IP addresses, Amazon VPCs or Amazon VPC Endpoints that you
specify. For more information, see Connect to Amazon SageMaker AI
Studio Through an Interface VPC Endpoint
(https://docs.aws.amazon.com/sagemaker/latest/dg/studio-interface-endpoint.html)
.

=over

=item *

The URL that you get from a call to C<CreatePresignedDomainUrl> has a
default timeout of 5 minutes. You can configure this value using
C<ExpiresInSeconds>. If you try to use the URL after the timeout limit
expires, you are directed to the Amazon Web Services console sign-in
page.

=item *

The JupyterLab session default expiration time is 12 hours. You can
configure this value using SessionExpirationDurationInSeconds.

=back



=head2 CreatePresignedMlflowTrackingServerUrl

=over

=item TrackingServerName => Str

=item [ExpiresInSeconds => Int]

=item [SessionExpirationDurationInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreatePresignedMlflowTrackingServerUrl>

Returns: a L<Paws::SageMaker::CreatePresignedMlflowTrackingServerUrlResponse> instance

Returns a presigned URL that you can use to connect to the MLflow UI
attached to your tracking server. For more information, see Launch the
MLflow UI using a presigned URL
(https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow-launch-ui.html).


=head2 CreatePresignedNotebookInstanceUrl

=over

=item NotebookInstanceName => Str

=item [SessionExpirationDurationInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreatePresignedNotebookInstanceUrl>

Returns: a L<Paws::SageMaker::CreatePresignedNotebookInstanceUrlOutput> instance

Returns a URL that you can use to connect to the Jupyter server from a
notebook instance. In the SageMaker AI console, when you choose C<Open>
next to a notebook instance, SageMaker AI opens a new tab showing the
Jupyter server home page from the notebook instance. The console uses
this API to get the URL and show the page.

The IAM role or user used to call this API defines the permissions to
access the notebook instance. Once the presigned URL is created, no
additional permission is required to access this URL. IAM authorization
policies for this API are also enforced for every HTTP request and
WebSocket frame that attempts to connect to the notebook instance.

You can restrict access to this API and to the URL that it returns to a
list of IP addresses that you specify. Use the C<NotIpAddress>
condition operator and the C<aws:SourceIP> condition context key to
specify the list of IP addresses that you want to have access to the
notebook instance. For more information, see Limit Access to a Notebook
Instance by IP Address
(https://docs.aws.amazon.com/sagemaker/latest/dg/security_iam_id-based-policy-examples.html#nbi-ip-filter).

The URL that you get from a call to CreatePresignedNotebookInstanceUrl
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreatePresignedNotebookInstanceUrl.html)
is valid only for 5 minutes. If you try to use the URL after the
5-minute limit expires, you are directed to the Amazon Web Services
console sign-in page.


=head2 CreateProcessingJob

=over

=item AppSpecification => L<Paws::SageMaker::AppSpecification>

=item ProcessingJobName => Str

=item ProcessingResources => L<Paws::SageMaker::ProcessingResources>

=item RoleArn => Str

=item [Environment => L<Paws::SageMaker::ProcessingEnvironmentMap>]

=item [ExperimentConfig => L<Paws::SageMaker::ExperimentConfig>]

=item [NetworkConfig => L<Paws::SageMaker::NetworkConfig>]

=item [ProcessingInputs => ArrayRef[L<Paws::SageMaker::ProcessingInput>]]

=item [ProcessingOutputConfig => L<Paws::SageMaker::ProcessingOutputConfig>]

=item [StoppingCondition => L<Paws::SageMaker::ProcessingStoppingCondition>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateProcessingJob>

Returns: a L<Paws::SageMaker::CreateProcessingJobResponse> instance

Creates a processing job.


=head2 CreateProject

=over

=item ProjectName => Str

=item [ProjectDescription => Str]

=item [ServiceCatalogProvisioningDetails => L<Paws::SageMaker::ServiceCatalogProvisioningDetails>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateProject>

Returns: a L<Paws::SageMaker::CreateProjectOutput> instance

Creates a machine learning (ML) project that can contain one or more
templates that set up an ML pipeline from training to deploying an
approved model.


=head2 CreateSpace

=over

=item DomainId => Str

=item SpaceName => Str

=item [OwnershipSettings => L<Paws::SageMaker::OwnershipSettings>]

=item [SpaceDisplayName => Str]

=item [SpaceSettings => L<Paws::SageMaker::SpaceSettings>]

=item [SpaceSharingSettings => L<Paws::SageMaker::SpaceSharingSettings>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateSpace>

Returns: a L<Paws::SageMaker::CreateSpaceResponse> instance

Creates a private space or a space used for real time collaboration in
a domain.


=head2 CreateStudioLifecycleConfig

=over

=item StudioLifecycleConfigAppType => Str

=item StudioLifecycleConfigContent => Str

=item StudioLifecycleConfigName => Str

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateStudioLifecycleConfig>

Returns: a L<Paws::SageMaker::CreateStudioLifecycleConfigResponse> instance

Creates a new Amazon SageMaker AI Studio Lifecycle Configuration.


=head2 CreateTrainingJob

=over

=item AlgorithmSpecification => L<Paws::SageMaker::AlgorithmSpecification>

=item OutputDataConfig => L<Paws::SageMaker::OutputDataConfig>

=item ResourceConfig => L<Paws::SageMaker::ResourceConfig>

=item RoleArn => Str

=item StoppingCondition => L<Paws::SageMaker::StoppingCondition>

=item TrainingJobName => Str

=item [CheckpointConfig => L<Paws::SageMaker::CheckpointConfig>]

=item [DebugHookConfig => L<Paws::SageMaker::DebugHookConfig>]

=item [DebugRuleConfigurations => ArrayRef[L<Paws::SageMaker::DebugRuleConfiguration>]]

=item [EnableInterContainerTrafficEncryption => Bool]

=item [EnableManagedSpotTraining => Bool]

=item [EnableNetworkIsolation => Bool]

=item [Environment => L<Paws::SageMaker::TrainingEnvironmentMap>]

=item [ExperimentConfig => L<Paws::SageMaker::ExperimentConfig>]

=item [HyperParameters => L<Paws::SageMaker::HyperParameters>]

=item [InfraCheckConfig => L<Paws::SageMaker::InfraCheckConfig>]

=item [InputDataConfig => ArrayRef[L<Paws::SageMaker::Channel>]]

=item [ProfilerConfig => L<Paws::SageMaker::ProfilerConfig>]

=item [ProfilerRuleConfigurations => ArrayRef[L<Paws::SageMaker::ProfilerRuleConfiguration>]]

=item [RemoteDebugConfig => L<Paws::SageMaker::RemoteDebugConfig>]

=item [RetryStrategy => L<Paws::SageMaker::RetryStrategy>]

=item [SessionChainingConfig => L<Paws::SageMaker::SessionChainingConfig>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [TensorBoardOutputConfig => L<Paws::SageMaker::TensorBoardOutputConfig>]

=item [VpcConfig => L<Paws::SageMaker::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateTrainingJob>

Returns: a L<Paws::SageMaker::CreateTrainingJobResponse> instance

Starts a model training job. After training completes, SageMaker saves
the resulting model artifacts to an Amazon S3 location that you
specify.

If you choose to host your model using SageMaker hosting services, you
can use the resulting model artifacts as part of the model. You can
also use the artifacts in a machine learning service other than
SageMaker, provided that you know how to use them for inference.

In the request body, you provide the following:

=over

=item *

C<AlgorithmSpecification> - Identifies the training algorithm to use.

=item *

C<HyperParameters> - Specify these algorithm-specific parameters to
enable the estimation of model parameters during training.
Hyperparameters can be tuned to optimize this learning process. For a
list of hyperparameters for each training algorithm provided by
SageMaker, see Algorithms
(https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html).

Do not include any security-sensitive information including account
access IDs, secrets, or tokens in any hyperparameter fields. As part of
the shared responsibility model, you are responsible for any potential
exposure, unauthorized access, or compromise of your sensitive data if
caused by security-sensitive information included in the request
hyperparameter variable or plain text fields.

=item *

C<InputDataConfig> - Describes the input required by the training job
and the Amazon S3, EFS, or FSx location where it is stored.

=item *

C<OutputDataConfig> - Identifies the Amazon S3 bucket where you want
SageMaker to save the results of model training.

=item *

C<ResourceConfig> - Identifies the resources, ML compute instances, and
ML storage volumes to deploy for model training. In distributed
training, you specify more than one instance.

=item *

C<EnableManagedSpotTraining> - Optimize the cost of training machine
learning models by up to 80% by using Amazon EC2 Spot instances. For
more information, see Managed Spot Training
(https://docs.aws.amazon.com/sagemaker/latest/dg/model-managed-spot-training.html).

=item *

C<RoleArn> - The Amazon Resource Name (ARN) that SageMaker assumes to
perform tasks on your behalf during model training. You must grant this
role the necessary permissions so that SageMaker can successfully
complete model training.

=item *

C<StoppingCondition> - To help cap training costs, use
C<MaxRuntimeInSeconds> to set a time limit for training. Use
C<MaxWaitTimeInSeconds> to specify how long a managed spot training job
has to complete.

=item *

C<Environment> - The environment variables to set in the Docker
container.

Do not include any security-sensitive information including account
access IDs, secrets, or tokens in any environment fields. As part of
the shared responsibility model, you are responsible for any potential
exposure, unauthorized access, or compromise of your sensitive data if
caused by security-sensitive information included in the request
environment variable or plain text fields.

=item *

C<RetryStrategy> - The number of times to retry the job when the job
fails due to an C<InternalServerError>.

=back

For more information about SageMaker, see How It Works
(https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).


=head2 CreateTrainingPlan

=over

=item TrainingPlanName => Str

=item TrainingPlanOfferingId => Str

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateTrainingPlan>

Returns: a L<Paws::SageMaker::CreateTrainingPlanResponse> instance

Creates a new training plan in SageMaker to reserve compute capacity.

Amazon SageMaker Training Plan is a capability within SageMaker that
allows customers to reserve and manage GPU capacity for large-scale AI
model training. It provides a way to secure predictable access to
computational resources within specific timelines and budgets, without
the need to manage underlying infrastructure.

B<How it works>

Plans can be created for specific resources such as SageMaker Training
Jobs or SageMaker HyperPod clusters, automatically provisioning
resources, setting up infrastructure, executing workloads, and handling
infrastructure failures.

B<Plan creation workflow>

=over

=item *

Users search for available plan offerings based on their requirements
(e.g., instance type, count, start time, duration) using the C<
SearchTrainingPlanOfferings
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_SearchTrainingPlanOfferings.html)
> API operation.

=item *

They create a plan that best matches their needs using the ID of the
plan offering they want to use.

=item *

After successful upfront payment, the plan's status becomes
C<Scheduled>.

=item *

The plan can be used to:

=over

=item *

Queue training jobs.

=item *

Allocate to an instance group of a SageMaker HyperPod cluster.

=back

=item *

When the plan start date arrives, it becomes C<Active>. Based on
available reserved capacity:

=over

=item *

Training jobs are launched.

=item *

Instance groups are provisioned.

=back

=back

B<Plan composition>

A plan can consist of one or more Reserved Capacities, each defined by
a specific instance type, quantity, Availability Zone, duration, and
start and end times. For more information about Reserved Capacity, see
C< ReservedCapacitySummary
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ReservedCapacitySummary.html)
>.


=head2 CreateTransformJob

=over

=item ModelName => Str

=item TransformInput => L<Paws::SageMaker::TransformInput>

=item TransformJobName => Str

=item TransformOutput => L<Paws::SageMaker::TransformOutput>

=item TransformResources => L<Paws::SageMaker::TransformResources>

=item [BatchStrategy => Str]

=item [DataCaptureConfig => L<Paws::SageMaker::BatchDataCaptureConfig>]

=item [DataProcessing => L<Paws::SageMaker::DataProcessing>]

=item [Environment => L<Paws::SageMaker::TransformEnvironmentMap>]

=item [ExperimentConfig => L<Paws::SageMaker::ExperimentConfig>]

=item [MaxConcurrentTransforms => Int]

=item [MaxPayloadInMB => Int]

=item [ModelClientConfig => L<Paws::SageMaker::ModelClientConfig>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateTransformJob>

Returns: a L<Paws::SageMaker::CreateTransformJobResponse> instance

Starts a transform job. A transform job uses a trained model to get
inferences on a dataset and saves these results to an Amazon S3
location that you specify.

To perform batch transformations, you create a transform job and use
the data that you have readily available.

In the request body, you provide the following:

=over

=item *

C<TransformJobName> - Identifies the transform job. The name must be
unique within an Amazon Web Services Region in an Amazon Web Services
account.

=item *

C<ModelName> - Identifies the model to use. C<ModelName> must be the
name of an existing Amazon SageMaker model in the same Amazon Web
Services Region and Amazon Web Services account. For information on
creating a model, see CreateModel
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateModel.html).

=item *

C<TransformInput> - Describes the dataset to be transformed and the
Amazon S3 location where it is stored.

=item *

C<TransformOutput> - Identifies the Amazon S3 location where you want
Amazon SageMaker to save the results from the transform job.

=item *

C<TransformResources> - Identifies the ML compute instances and AMI
image versions for the transform job.

=back

For more information about how batch transformation works, see Batch
Transform
(https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform.html).


=head2 CreateTrial

=over

=item ExperimentName => Str

=item TrialName => Str

=item [DisplayName => Str]

=item [MetadataProperties => L<Paws::SageMaker::MetadataProperties>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateTrial>

Returns: a L<Paws::SageMaker::CreateTrialResponse> instance

Creates an SageMaker I<trial>. A trial is a set of steps called I<trial
components> that produce a machine learning model. A trial is part of a
single SageMaker I<experiment>.

When you use SageMaker Studio or the SageMaker Python SDK, all
experiments, trials, and trial components are automatically tracked,
logged, and indexed. When you use the Amazon Web Services SDK for
Python (Boto), you must use the logging APIs provided by the SDK.

You can add tags to a trial and then use the Search
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_Search.html)
API to search for the tags.

To get a list of all your trials, call the ListTrials
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListTrials.html)
API. To view a trial's properties, call the DescribeTrial
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeTrial.html)
API. To create a trial component, call the CreateTrialComponent
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateTrialComponent.html)
API.


=head2 CreateTrialComponent

=over

=item TrialComponentName => Str

=item [DisplayName => Str]

=item [EndTime => Str]

=item [InputArtifacts => L<Paws::SageMaker::TrialComponentArtifacts>]

=item [MetadataProperties => L<Paws::SageMaker::MetadataProperties>]

=item [OutputArtifacts => L<Paws::SageMaker::TrialComponentArtifacts>]

=item [Parameters => L<Paws::SageMaker::TrialComponentParameters>]

=item [StartTime => Str]

=item [Status => L<Paws::SageMaker::TrialComponentStatus>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateTrialComponent>

Returns: a L<Paws::SageMaker::CreateTrialComponentResponse> instance

Creates a I<trial component>, which is a stage of a machine learning
I<trial>. A trial is composed of one or more trial components. A trial
component can be used in multiple trials.

Trial components include pre-processing jobs, training jobs, and batch
transform jobs.

When you use SageMaker Studio or the SageMaker Python SDK, all
experiments, trials, and trial components are automatically tracked,
logged, and indexed. When you use the Amazon Web Services SDK for
Python (Boto), you must use the logging APIs provided by the SDK.

You can add tags to a trial component and then use the Search
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_Search.html)
API to search for the tags.


=head2 CreateUserProfile

=over

=item DomainId => Str

=item UserProfileName => Str

=item [SingleSignOnUserIdentifier => Str]

=item [SingleSignOnUserValue => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [UserSettings => L<Paws::SageMaker::UserSettings>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateUserProfile>

Returns: a L<Paws::SageMaker::CreateUserProfileResponse> instance

Creates a user profile. A user profile represents a single user within
a domain, and is the main way to reference a "person" for the purposes
of sharing, reporting, and other user-oriented features. This entity is
created when a user onboards to a domain. If an administrator invites a
person by email or imports them from IAM Identity Center, a user
profile is automatically created. A user profile is the primary holder
of settings for an individual user and has a reference to the user's
private Amazon Elastic File System home directory.


=head2 CreateWorkforce

=over

=item WorkforceName => Str

=item [CognitoConfig => L<Paws::SageMaker::CognitoConfig>]

=item [OidcConfig => L<Paws::SageMaker::OidcConfig>]

=item [SourceIpConfig => L<Paws::SageMaker::SourceIpConfig>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [WorkforceVpcConfig => L<Paws::SageMaker::WorkforceVpcConfigRequest>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateWorkforce>

Returns: a L<Paws::SageMaker::CreateWorkforceResponse> instance

Use this operation to create a workforce. This operation will return an
error if a workforce already exists in the Amazon Web Services Region
that you specify. You can only create one workforce in each Amazon Web
Services Region per Amazon Web Services account.

If you want to create a new workforce in an Amazon Web Services Region
where a workforce already exists, use the DeleteWorkforce
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteWorkforce.html)
API operation to delete the existing workforce and then use
C<CreateWorkforce> to create a new workforce.

To create a private workforce using Amazon Cognito, you must specify a
Cognito user pool in C<CognitoConfig>. You can also create an Amazon
Cognito workforce using the Amazon SageMaker console. For more
information, see Create a Private Workforce (Amazon Cognito)
(https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-create-private.html).

To create a private workforce using your own OIDC Identity Provider
(IdP), specify your IdP configuration in C<OidcConfig>. Your OIDC IdP
must support I<groups> because groups are used by Ground Truth and
Amazon A2I to create work teams. For more information, see Create a
Private Workforce (OIDC IdP)
(https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-create-private-oidc.html).


=head2 CreateWorkteam

=over

=item Description => Str

=item MemberDefinitions => ArrayRef[L<Paws::SageMaker::MemberDefinition>]

=item WorkteamName => Str

=item [NotificationConfiguration => L<Paws::SageMaker::NotificationConfiguration>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [WorkerAccessConfiguration => L<Paws::SageMaker::WorkerAccessConfiguration>]

=item [WorkforceName => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateWorkteam>

Returns: a L<Paws::SageMaker::CreateWorkteamResponse> instance

Creates a new work team for labeling your data. A work team is defined
by one or more Amazon Cognito user pools. You must first create the
user pools before you can create a work team.

You cannot create more than 25 work teams in an account and region.


=head2 DeleteAction

=over

=item ActionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteAction>

Returns: a L<Paws::SageMaker::DeleteActionResponse> instance

Deletes an action.


=head2 DeleteAlgorithm

=over

=item AlgorithmName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteAlgorithm>

Returns: nothing

Removes the specified algorithm from your account.


=head2 DeleteApp

=over

=item AppName => Str

=item AppType => Str

=item DomainId => Str

=item [SpaceName => Str]

=item [UserProfileName => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteApp>

Returns: nothing

Used to stop and delete an app.


=head2 DeleteAppImageConfig

=over

=item AppImageConfigName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteAppImageConfig>

Returns: nothing

Deletes an AppImageConfig.


=head2 DeleteArtifact

=over

=item [ArtifactArn => Str]

=item [Source => L<Paws::SageMaker::ArtifactSource>]


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteArtifact>

Returns: a L<Paws::SageMaker::DeleteArtifactResponse> instance

Deletes an artifact. Either C<ArtifactArn> or C<Source> must be
specified.


=head2 DeleteAssociation

=over

=item DestinationArn => Str

=item SourceArn => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteAssociation>

Returns: a L<Paws::SageMaker::DeleteAssociationResponse> instance

Deletes an association.


=head2 DeleteCluster

=over

=item ClusterName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteCluster>

Returns: a L<Paws::SageMaker::DeleteClusterResponse> instance

Delete a SageMaker HyperPod cluster.


=head2 DeleteClusterSchedulerConfig

=over

=item ClusterSchedulerConfigId => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteClusterSchedulerConfig>

Returns: nothing

Deletes the cluster policy of the cluster.


=head2 DeleteCodeRepository

=over

=item CodeRepositoryName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteCodeRepository>

Returns: nothing

Deletes the specified Git repository from your account.


=head2 DeleteCompilationJob

=over

=item CompilationJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteCompilationJob>

Returns: nothing

Deletes the specified compilation job. This action deletes only the
compilation job resource in Amazon SageMaker AI. It doesn't delete
other resources that are related to that job, such as the model
artifacts that the job creates, the compilation logs in CloudWatch, the
compiled model, or the IAM role.

You can delete a compilation job only if its current status is
C<COMPLETED>, C<FAILED>, or C<STOPPED>. If the job status is
C<STARTING> or C<INPROGRESS>, stop the job, and then delete it after
its status becomes C<STOPPED>.


=head2 DeleteComputeQuota

=over

=item ComputeQuotaId => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteComputeQuota>

Returns: nothing

Deletes the compute allocation from the cluster.


=head2 DeleteContext

=over

=item ContextName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteContext>

Returns: a L<Paws::SageMaker::DeleteContextResponse> instance

Deletes an context.


=head2 DeleteDataQualityJobDefinition

=over

=item JobDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteDataQualityJobDefinition>

Returns: nothing

Deletes a data quality monitoring job definition.


=head2 DeleteDeviceFleet

=over

=item DeviceFleetName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteDeviceFleet>

Returns: nothing

Deletes a fleet.


=head2 DeleteDomain

=over

=item DomainId => Str

=item [RetentionPolicy => L<Paws::SageMaker::RetentionPolicy>]


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteDomain>

Returns: nothing

Used to delete a domain. If you onboarded with IAM mode, you will need
to delete your domain to onboard again using IAM Identity Center. Use
with caution. All of the members of the domain will lose access to
their EFS volume, including data, notebooks, and other artifacts.


=head2 DeleteEdgeDeploymentPlan

=over

=item EdgeDeploymentPlanName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteEdgeDeploymentPlan>

Returns: nothing

Deletes an edge deployment plan if (and only if) all the stages in the
plan are inactive or there are no stages in the plan.


=head2 DeleteEdgeDeploymentStage

=over

=item EdgeDeploymentPlanName => Str

=item StageName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteEdgeDeploymentStage>

Returns: nothing

Delete a stage in an edge deployment plan if (and only if) the stage is
inactive.


=head2 DeleteEndpoint

=over

=item EndpointName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteEndpoint>

Returns: nothing

Deletes an endpoint. SageMaker frees up all of the resources that were
deployed when the endpoint was created.

SageMaker retires any custom KMS key grants associated with the
endpoint, meaning you don't need to use the RevokeGrant
(http://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html)
API call.

When you delete your endpoint, SageMaker asynchronously deletes
associated endpoint resources such as KMS key grants. You might still
see these resources in your account for a few minutes after deleting
your endpoint. Do not delete or revoke the permissions for your C<
ExecutionRoleArn
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateModel.html#sagemaker-CreateModel-request-ExecutionRoleArn)
>, otherwise SageMaker cannot delete these resources.


=head2 DeleteEndpointConfig

=over

=item EndpointConfigName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteEndpointConfig>

Returns: nothing

Deletes an endpoint configuration. The C<DeleteEndpointConfig> API
deletes only the specified configuration. It does not delete endpoints
created using the configuration.

You must not delete an C<EndpointConfig> in use by an endpoint that is
live or while the C<UpdateEndpoint> or C<CreateEndpoint> operations are
being performed on the endpoint. If you delete the C<EndpointConfig> of
an endpoint that is active or being created or updated you may lose
visibility into the instance type the endpoint is using. The endpoint
must be deleted in order to stop incurring charges.


=head2 DeleteExperiment

=over

=item ExperimentName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteExperiment>

Returns: a L<Paws::SageMaker::DeleteExperimentResponse> instance

Deletes an SageMaker experiment. All trials associated with the
experiment must be deleted first. Use the ListTrials
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListTrials.html)
API to get a list of the trials associated with the experiment.


=head2 DeleteFeatureGroup

=over

=item FeatureGroupName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteFeatureGroup>

Returns: nothing

Delete the C<FeatureGroup> and any data that was written to the
C<OnlineStore> of the C<FeatureGroup>. Data cannot be accessed from the
C<OnlineStore> immediately after C<DeleteFeatureGroup> is called.

Data written into the C<OfflineStore> will not be deleted. The Amazon
Web Services Glue database and tables that are automatically created
for your C<OfflineStore> are not deleted.

Note that it can take approximately 10-15 minutes to delete an
C<OnlineStore> C<FeatureGroup> with the C<InMemory> C<StorageType>.


=head2 DeleteFlowDefinition

=over

=item FlowDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteFlowDefinition>

Returns: a L<Paws::SageMaker::DeleteFlowDefinitionResponse> instance

Deletes the specified flow definition.


=head2 DeleteHub

=over

=item HubName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteHub>

Returns: nothing

Delete a hub.


=head2 DeleteHubContent

=over

=item HubContentName => Str

=item HubContentType => Str

=item HubContentVersion => Str

=item HubName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteHubContent>

Returns: nothing

Delete the contents of a hub.


=head2 DeleteHubContentReference

=over

=item HubContentName => Str

=item HubContentType => Str

=item HubName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteHubContentReference>

Returns: nothing

Delete a hub content reference in order to remove a model from a
private hub.


=head2 DeleteHumanTaskUi

=over

=item HumanTaskUiName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteHumanTaskUi>

Returns: a L<Paws::SageMaker::DeleteHumanTaskUiResponse> instance

Use this operation to delete a human task user interface (worker task
template).

To see a list of human task user interfaces (work task templates) in
your account, use ListHumanTaskUis
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListHumanTaskUis.html).
When you delete a worker task template, it no longer appears when you
call C<ListHumanTaskUis>.


=head2 DeleteHyperParameterTuningJob

=over

=item HyperParameterTuningJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteHyperParameterTuningJob>

Returns: nothing

Deletes a hyperparameter tuning job. The
C<DeleteHyperParameterTuningJob> API deletes only the tuning job entry
that was created in SageMaker when you called the
C<CreateHyperParameterTuningJob> API. It does not delete training jobs,
artifacts, or the IAM role that you specified when creating the model.


=head2 DeleteImage

=over

=item ImageName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteImage>

Returns: a L<Paws::SageMaker::DeleteImageResponse> instance

Deletes a SageMaker AI image and all versions of the image. The
container images aren't deleted.


=head2 DeleteImageVersion

=over

=item ImageName => Str

=item [Alias => Str]

=item [Version => Int]


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteImageVersion>

Returns: a L<Paws::SageMaker::DeleteImageVersionResponse> instance

Deletes a version of a SageMaker AI image. The container image the
version represents isn't deleted.


=head2 DeleteInferenceComponent

=over

=item InferenceComponentName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteInferenceComponent>

Returns: nothing

Deletes an inference component.


=head2 DeleteInferenceExperiment

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteInferenceExperiment>

Returns: a L<Paws::SageMaker::DeleteInferenceExperimentResponse> instance

Deletes an inference experiment.

This operation does not delete your endpoint, variants, or any
underlying resources. This operation only deletes the metadata of your
experiment.


=head2 DeleteMlflowTrackingServer

=over

=item TrackingServerName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteMlflowTrackingServer>

Returns: a L<Paws::SageMaker::DeleteMlflowTrackingServerResponse> instance

Deletes an MLflow Tracking Server. For more information, see Clean up
MLflow resources
(https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow-cleanup.html.html).


=head2 DeleteModel

=over

=item ModelName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteModel>

Returns: nothing

Deletes a model. The C<DeleteModel> API deletes only the model entry
that was created in SageMaker when you called the C<CreateModel> API.
It does not delete model artifacts, inference code, or the IAM role
that you specified when creating the model.


=head2 DeleteModelBiasJobDefinition

=over

=item JobDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteModelBiasJobDefinition>

Returns: nothing

Deletes an Amazon SageMaker AI model bias job definition.


=head2 DeleteModelCard

=over

=item ModelCardName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteModelCard>

Returns: nothing

Deletes an Amazon SageMaker Model Card.


=head2 DeleteModelExplainabilityJobDefinition

=over

=item JobDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteModelExplainabilityJobDefinition>

Returns: nothing

Deletes an Amazon SageMaker AI model explainability job definition.


=head2 DeleteModelPackage

=over

=item ModelPackageName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteModelPackage>

Returns: nothing

Deletes a model package.

A model package is used to create SageMaker models or list on Amazon
Web Services Marketplace. Buyers can subscribe to model packages listed
on Amazon Web Services Marketplace to create models in SageMaker.


=head2 DeleteModelPackageGroup

=over

=item ModelPackageGroupName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteModelPackageGroup>

Returns: nothing

Deletes the specified model group.


=head2 DeleteModelPackageGroupPolicy

=over

=item ModelPackageGroupName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteModelPackageGroupPolicy>

Returns: nothing

Deletes a model group resource policy.


=head2 DeleteModelQualityJobDefinition

=over

=item JobDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteModelQualityJobDefinition>

Returns: nothing

Deletes the secified model quality monitoring job definition.


=head2 DeleteMonitoringSchedule

=over

=item MonitoringScheduleName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteMonitoringSchedule>

Returns: nothing

Deletes a monitoring schedule. Also stops the schedule had not already
been stopped. This does not delete the job execution history of the
monitoring schedule.


=head2 DeleteNotebookInstance

=over

=item NotebookInstanceName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteNotebookInstance>

Returns: nothing

Deletes an SageMaker AI notebook instance. Before you can delete a
notebook instance, you must call the C<StopNotebookInstance> API.

When you delete a notebook instance, you lose all of your data.
SageMaker AI removes the ML compute instance, and deletes the ML
storage volume and the network interface associated with the notebook
instance.


=head2 DeleteNotebookInstanceLifecycleConfig

=over

=item NotebookInstanceLifecycleConfigName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteNotebookInstanceLifecycleConfig>

Returns: nothing

Deletes a notebook instance lifecycle configuration.


=head2 DeleteOptimizationJob

=over

=item OptimizationJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteOptimizationJob>

Returns: nothing

Deletes an optimization job.


=head2 DeletePartnerApp

=over

=item Arn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::DeletePartnerApp>

Returns: a L<Paws::SageMaker::DeletePartnerAppResponse> instance

Deletes a SageMaker Partner AI App.


=head2 DeletePipeline

=over

=item ClientRequestToken => Str

=item PipelineName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeletePipeline>

Returns: a L<Paws::SageMaker::DeletePipelineResponse> instance

Deletes a pipeline if there are no running instances of the pipeline.
To delete a pipeline, you must stop all running instances of the
pipeline using the C<StopPipelineExecution> API. When you delete a
pipeline, all instances of the pipeline are deleted.


=head2 DeleteProject

=over

=item ProjectName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteProject>

Returns: nothing

Delete the specified project.


=head2 DeleteSpace

=over

=item DomainId => Str

=item SpaceName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteSpace>

Returns: nothing

Used to delete a space.


=head2 DeleteStudioLifecycleConfig

=over

=item StudioLifecycleConfigName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteStudioLifecycleConfig>

Returns: nothing

Deletes the Amazon SageMaker AI Studio Lifecycle Configuration. In
order to delete the Lifecycle Configuration, there must be no running
apps using the Lifecycle Configuration. You must also remove the
Lifecycle Configuration from UserSettings in all Domains and
UserProfiles.


=head2 DeleteTags

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteTags>

Returns: a L<Paws::SageMaker::DeleteTagsOutput> instance

Deletes the specified tags from an SageMaker resource.

To list a resource's tags, use the C<ListTags> API.

When you call this API to delete tags from a hyperparameter tuning job,
the deleted tags are not removed from training jobs that the
hyperparameter tuning job launched before you called this API.

When you call this API to delete tags from a SageMaker Domain or User
Profile, the deleted tags are not removed from Apps that the SageMaker
Domain or User Profile launched before you called this API.


=head2 DeleteTrial

=over

=item TrialName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteTrial>

Returns: a L<Paws::SageMaker::DeleteTrialResponse> instance

Deletes the specified trial. All trial components that make up the
trial must be deleted first. Use the DescribeTrialComponent
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeTrialComponent.html)
API to get the list of trial components.


=head2 DeleteTrialComponent

=over

=item TrialComponentName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteTrialComponent>

Returns: a L<Paws::SageMaker::DeleteTrialComponentResponse> instance

Deletes the specified trial component. A trial component must be
disassociated from all trials before the trial component can be
deleted. To disassociate a trial component from a trial, call the
DisassociateTrialComponent
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DisassociateTrialComponent.html)
API.


=head2 DeleteUserProfile

=over

=item DomainId => Str

=item UserProfileName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteUserProfile>

Returns: nothing

Deletes a user profile. When a user profile is deleted, the user loses
access to their EFS volume, including data, notebooks, and other
artifacts.


=head2 DeleteWorkforce

=over

=item WorkforceName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteWorkforce>

Returns: a L<Paws::SageMaker::DeleteWorkforceResponse> instance

Use this operation to delete a workforce.

If you want to create a new workforce in an Amazon Web Services Region
where a workforce already exists, use this operation to delete the
existing workforce and then use CreateWorkforce
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateWorkforce.html)
to create a new workforce.

If a private workforce contains one or more work teams, you must use
the DeleteWorkteam
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteWorkteam.html)
operation to delete all work teams before you delete the workforce. If
you try to delete a workforce that contains one or more work teams, you
will receive a C<ResourceInUse> error.


=head2 DeleteWorkteam

=over

=item WorkteamName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteWorkteam>

Returns: a L<Paws::SageMaker::DeleteWorkteamResponse> instance

Deletes an existing work team. This operation can't be undone.


=head2 DeregisterDevices

=over

=item DeviceFleetName => Str

=item DeviceNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SageMaker::DeregisterDevices>

Returns: nothing

Deregisters the specified devices. After you deregister a device, you
will need to re-register the devices.


=head2 DescribeAction

=over

=item ActionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeAction>

Returns: a L<Paws::SageMaker::DescribeActionResponse> instance

Describes an action.


=head2 DescribeAlgorithm

=over

=item AlgorithmName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeAlgorithm>

Returns: a L<Paws::SageMaker::DescribeAlgorithmOutput> instance

Returns a description of the specified algorithm that is in your
account.


=head2 DescribeApp

=over

=item AppName => Str

=item AppType => Str

=item DomainId => Str

=item [SpaceName => Str]

=item [UserProfileName => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeApp>

Returns: a L<Paws::SageMaker::DescribeAppResponse> instance

Describes the app.


=head2 DescribeAppImageConfig

=over

=item AppImageConfigName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeAppImageConfig>

Returns: a L<Paws::SageMaker::DescribeAppImageConfigResponse> instance

Describes an AppImageConfig.


=head2 DescribeArtifact

=over

=item ArtifactArn => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeArtifact>

Returns: a L<Paws::SageMaker::DescribeArtifactResponse> instance

Describes an artifact.


=head2 DescribeAutoMLJob

=over

=item AutoMLJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeAutoMLJob>

Returns: a L<Paws::SageMaker::DescribeAutoMLJobResponse> instance

Returns information about an AutoML job created by calling
CreateAutoMLJob
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJob.html).

AutoML jobs created by calling CreateAutoMLJobV2
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJobV2.html)
cannot be described by C<DescribeAutoMLJob>.


=head2 DescribeAutoMLJobV2

=over

=item AutoMLJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeAutoMLJobV2>

Returns: a L<Paws::SageMaker::DescribeAutoMLJobV2Response> instance

Returns information about an AutoML job created by calling
CreateAutoMLJobV2
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJobV2.html)
or CreateAutoMLJob
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJob.html).


=head2 DescribeCluster

=over

=item ClusterName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeCluster>

Returns: a L<Paws::SageMaker::DescribeClusterResponse> instance

Retrieves information of a SageMaker HyperPod cluster.


=head2 DescribeClusterNode

=over

=item ClusterName => Str

=item NodeId => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeClusterNode>

Returns: a L<Paws::SageMaker::DescribeClusterNodeResponse> instance

Retrieves information of a node (also called a I<instance>
interchangeably) of a SageMaker HyperPod cluster.


=head2 DescribeClusterSchedulerConfig

=over

=item ClusterSchedulerConfigId => Str

=item [ClusterSchedulerConfigVersion => Int]


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeClusterSchedulerConfig>

Returns: a L<Paws::SageMaker::DescribeClusterSchedulerConfigResponse> instance

Description of the cluster policy. This policy is used for task
prioritization and fair-share allocation. This helps prioritize
critical workloads and distributes idle compute across entities.


=head2 DescribeCodeRepository

=over

=item CodeRepositoryName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeCodeRepository>

Returns: a L<Paws::SageMaker::DescribeCodeRepositoryOutput> instance

Gets details about the specified Git repository.


=head2 DescribeCompilationJob

=over

=item CompilationJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeCompilationJob>

Returns: a L<Paws::SageMaker::DescribeCompilationJobResponse> instance

Returns information about a model compilation job.

To create a model compilation job, use CreateCompilationJob
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateCompilationJob.html).
To get information about multiple model compilation jobs, use
ListCompilationJobs
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListCompilationJobs.html).


=head2 DescribeComputeQuota

=over

=item ComputeQuotaId => Str

=item [ComputeQuotaVersion => Int]


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeComputeQuota>

Returns: a L<Paws::SageMaker::DescribeComputeQuotaResponse> instance

Description of the compute allocation definition.


=head2 DescribeContext

=over

=item ContextName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeContext>

Returns: a L<Paws::SageMaker::DescribeContextResponse> instance

Describes a context.


=head2 DescribeDataQualityJobDefinition

=over

=item JobDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeDataQualityJobDefinition>

Returns: a L<Paws::SageMaker::DescribeDataQualityJobDefinitionResponse> instance

Gets the details of a data quality monitoring job definition.


=head2 DescribeDevice

=over

=item DeviceFleetName => Str

=item DeviceName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeDevice>

Returns: a L<Paws::SageMaker::DescribeDeviceResponse> instance

Describes the device.


=head2 DescribeDeviceFleet

=over

=item DeviceFleetName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeDeviceFleet>

Returns: a L<Paws::SageMaker::DescribeDeviceFleetResponse> instance

A description of the fleet the device belongs to.


=head2 DescribeDomain

=over

=item DomainId => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeDomain>

Returns: a L<Paws::SageMaker::DescribeDomainResponse> instance

The description of the domain.


=head2 DescribeEdgeDeploymentPlan

=over

=item EdgeDeploymentPlanName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeEdgeDeploymentPlan>

Returns: a L<Paws::SageMaker::DescribeEdgeDeploymentPlanResponse> instance

Describes an edge deployment plan with deployment status per stage.


=head2 DescribeEdgePackagingJob

=over

=item EdgePackagingJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeEdgePackagingJob>

Returns: a L<Paws::SageMaker::DescribeEdgePackagingJobResponse> instance

A description of edge packaging jobs.


=head2 DescribeEndpoint

=over

=item EndpointName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeEndpoint>

Returns: a L<Paws::SageMaker::DescribeEndpointOutput> instance

Returns the description of an endpoint.


=head2 DescribeEndpointConfig

=over

=item EndpointConfigName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeEndpointConfig>

Returns: a L<Paws::SageMaker::DescribeEndpointConfigOutput> instance

Returns the description of an endpoint configuration created using the
C<CreateEndpointConfig> API.


=head2 DescribeExperiment

=over

=item ExperimentName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeExperiment>

Returns: a L<Paws::SageMaker::DescribeExperimentResponse> instance

Provides a list of an experiment's properties.


=head2 DescribeFeatureGroup

=over

=item FeatureGroupName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeFeatureGroup>

Returns: a L<Paws::SageMaker::DescribeFeatureGroupResponse> instance

Use this operation to describe a C<FeatureGroup>. The response includes
information on the creation time, C<FeatureGroup> name, the unique
identifier for each C<FeatureGroup>, and more.


=head2 DescribeFeatureMetadata

=over

=item FeatureGroupName => Str

=item FeatureName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeFeatureMetadata>

Returns: a L<Paws::SageMaker::DescribeFeatureMetadataResponse> instance

Shows the metadata for a feature within a feature group.


=head2 DescribeFlowDefinition

=over

=item FlowDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeFlowDefinition>

Returns: a L<Paws::SageMaker::DescribeFlowDefinitionResponse> instance

Returns information about the specified flow definition.


=head2 DescribeHub

=over

=item HubName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeHub>

Returns: a L<Paws::SageMaker::DescribeHubResponse> instance

Describes a hub.


=head2 DescribeHubContent

=over

=item HubContentName => Str

=item HubContentType => Str

=item HubName => Str

=item [HubContentVersion => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeHubContent>

Returns: a L<Paws::SageMaker::DescribeHubContentResponse> instance

Describe the content of a hub.


=head2 DescribeHumanTaskUi

=over

=item HumanTaskUiName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeHumanTaskUi>

Returns: a L<Paws::SageMaker::DescribeHumanTaskUiResponse> instance

Returns information about the requested human task user interface
(worker task template).


=head2 DescribeHyperParameterTuningJob

=over

=item HyperParameterTuningJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeHyperParameterTuningJob>

Returns: a L<Paws::SageMaker::DescribeHyperParameterTuningJobResponse> instance

Returns a description of a hyperparameter tuning job, depending on the
fields selected. These fields can include the name, Amazon Resource
Name (ARN), job status of your tuning job and more.


=head2 DescribeImage

=over

=item ImageName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeImage>

Returns: a L<Paws::SageMaker::DescribeImageResponse> instance

Describes a SageMaker AI image.


=head2 DescribeImageVersion

=over

=item ImageName => Str

=item [Alias => Str]

=item [Version => Int]


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeImageVersion>

Returns: a L<Paws::SageMaker::DescribeImageVersionResponse> instance

Describes a version of a SageMaker AI image.


=head2 DescribeInferenceComponent

=over

=item InferenceComponentName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeInferenceComponent>

Returns: a L<Paws::SageMaker::DescribeInferenceComponentOutput> instance

Returns information about an inference component.


=head2 DescribeInferenceExperiment

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeInferenceExperiment>

Returns: a L<Paws::SageMaker::DescribeInferenceExperimentResponse> instance

Returns details about an inference experiment.


=head2 DescribeInferenceRecommendationsJob

=over

=item JobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeInferenceRecommendationsJob>

Returns: a L<Paws::SageMaker::DescribeInferenceRecommendationsJobResponse> instance

Provides the results of the Inference Recommender job. One or more
recommendation jobs are returned.


=head2 DescribeLabelingJob

=over

=item LabelingJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeLabelingJob>

Returns: a L<Paws::SageMaker::DescribeLabelingJobResponse> instance

Gets information about a labeling job.


=head2 DescribeLineageGroup

=over

=item LineageGroupName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeLineageGroup>

Returns: a L<Paws::SageMaker::DescribeLineageGroupResponse> instance

Provides a list of properties for the requested lineage group. For more
information, see Cross-Account Lineage Tracking
(https://docs.aws.amazon.com/sagemaker/latest/dg/xaccount-lineage-tracking.html)
in the I<Amazon SageMaker Developer Guide>.


=head2 DescribeMlflowTrackingServer

=over

=item TrackingServerName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeMlflowTrackingServer>

Returns: a L<Paws::SageMaker::DescribeMlflowTrackingServerResponse> instance

Returns information about an MLflow Tracking Server.


=head2 DescribeModel

=over

=item ModelName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeModel>

Returns: a L<Paws::SageMaker::DescribeModelOutput> instance

Describes a model that you created using the C<CreateModel> API.


=head2 DescribeModelBiasJobDefinition

=over

=item JobDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeModelBiasJobDefinition>

Returns: a L<Paws::SageMaker::DescribeModelBiasJobDefinitionResponse> instance

Returns a description of a model bias job definition.


=head2 DescribeModelCard

=over

=item ModelCardName => Str

=item [ModelCardVersion => Int]


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeModelCard>

Returns: a L<Paws::SageMaker::DescribeModelCardResponse> instance

Describes the content, creation time, and security configuration of an
Amazon SageMaker Model Card.


=head2 DescribeModelCardExportJob

=over

=item ModelCardExportJobArn => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeModelCardExportJob>

Returns: a L<Paws::SageMaker::DescribeModelCardExportJobResponse> instance

Describes an Amazon SageMaker Model Card export job.


=head2 DescribeModelExplainabilityJobDefinition

=over

=item JobDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeModelExplainabilityJobDefinition>

Returns: a L<Paws::SageMaker::DescribeModelExplainabilityJobDefinitionResponse> instance

Returns a description of a model explainability job definition.


=head2 DescribeModelPackage

=over

=item ModelPackageName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeModelPackage>

Returns: a L<Paws::SageMaker::DescribeModelPackageOutput> instance

Returns a description of the specified model package, which is used to
create SageMaker models or list them on Amazon Web Services
Marketplace.

If you provided a KMS Key ID when you created your model package, you
will see the KMS Decrypt
(https://docs.aws.amazon.com/kms/latest/APIReference/API_Decrypt.html)
API call in your CloudTrail logs when you use this API.

To create models in SageMaker, buyers can subscribe to model packages
listed on Amazon Web Services Marketplace.


=head2 DescribeModelPackageGroup

=over

=item ModelPackageGroupName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeModelPackageGroup>

Returns: a L<Paws::SageMaker::DescribeModelPackageGroupOutput> instance

Gets a description for the specified model group.


=head2 DescribeModelQualityJobDefinition

=over

=item JobDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeModelQualityJobDefinition>

Returns: a L<Paws::SageMaker::DescribeModelQualityJobDefinitionResponse> instance

Returns a description of a model quality job definition.


=head2 DescribeMonitoringSchedule

=over

=item MonitoringScheduleName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeMonitoringSchedule>

Returns: a L<Paws::SageMaker::DescribeMonitoringScheduleResponse> instance

Describes the schedule for a monitoring job.


=head2 DescribeNotebookInstance

=over

=item NotebookInstanceName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeNotebookInstance>

Returns: a L<Paws::SageMaker::DescribeNotebookInstanceOutput> instance

Returns information about a notebook instance.


=head2 DescribeNotebookInstanceLifecycleConfig

=over

=item NotebookInstanceLifecycleConfigName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeNotebookInstanceLifecycleConfig>

Returns: a L<Paws::SageMaker::DescribeNotebookInstanceLifecycleConfigOutput> instance

Returns a description of a notebook instance lifecycle configuration.

For information about notebook instance lifestyle configurations, see
Step 2.1: (Optional) Customize a Notebook Instance
(https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html).


=head2 DescribeOptimizationJob

=over

=item OptimizationJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeOptimizationJob>

Returns: a L<Paws::SageMaker::DescribeOptimizationJobResponse> instance

Provides the properties of the specified optimization job.


=head2 DescribePartnerApp

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribePartnerApp>

Returns: a L<Paws::SageMaker::DescribePartnerAppResponse> instance

Gets information about a SageMaker Partner AI App.


=head2 DescribePipeline

=over

=item PipelineName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribePipeline>

Returns: a L<Paws::SageMaker::DescribePipelineResponse> instance

Describes the details of a pipeline.


=head2 DescribePipelineDefinitionForExecution

=over

=item PipelineExecutionArn => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribePipelineDefinitionForExecution>

Returns: a L<Paws::SageMaker::DescribePipelineDefinitionForExecutionResponse> instance

Describes the details of an execution's pipeline definition.


=head2 DescribePipelineExecution

=over

=item PipelineExecutionArn => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribePipelineExecution>

Returns: a L<Paws::SageMaker::DescribePipelineExecutionResponse> instance

Describes the details of a pipeline execution.


=head2 DescribeProcessingJob

=over

=item ProcessingJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeProcessingJob>

Returns: a L<Paws::SageMaker::DescribeProcessingJobResponse> instance

Returns a description of a processing job.


=head2 DescribeProject

=over

=item ProjectName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeProject>

Returns: a L<Paws::SageMaker::DescribeProjectOutput> instance

Describes the details of a project.


=head2 DescribeSpace

=over

=item DomainId => Str

=item SpaceName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeSpace>

Returns: a L<Paws::SageMaker::DescribeSpaceResponse> instance

Describes the space.


=head2 DescribeStudioLifecycleConfig

=over

=item StudioLifecycleConfigName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeStudioLifecycleConfig>

Returns: a L<Paws::SageMaker::DescribeStudioLifecycleConfigResponse> instance

Describes the Amazon SageMaker AI Studio Lifecycle Configuration.


=head2 DescribeSubscribedWorkteam

=over

=item WorkteamArn => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeSubscribedWorkteam>

Returns: a L<Paws::SageMaker::DescribeSubscribedWorkteamResponse> instance

Gets information about a work team provided by a vendor. It returns
details about the subscription with a vendor in the Amazon Web Services
Marketplace.


=head2 DescribeTrainingJob

=over

=item TrainingJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeTrainingJob>

Returns: a L<Paws::SageMaker::DescribeTrainingJobResponse> instance

Returns information about a training job.

Some of the attributes below only appear if the training job
successfully starts. If the training job fails, C<TrainingJobStatus> is
C<Failed> and, depending on the C<FailureReason>, attributes like
C<TrainingStartTime>, C<TrainingTimeInSeconds>, C<TrainingEndTime>, and
C<BillableTimeInSeconds> may not be present in the response.


=head2 DescribeTrainingPlan

=over

=item TrainingPlanName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeTrainingPlan>

Returns: a L<Paws::SageMaker::DescribeTrainingPlanResponse> instance

Retrieves detailed information about a specific training plan.


=head2 DescribeTransformJob

=over

=item TransformJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeTransformJob>

Returns: a L<Paws::SageMaker::DescribeTransformJobResponse> instance

Returns information about a transform job.


=head2 DescribeTrial

=over

=item TrialName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeTrial>

Returns: a L<Paws::SageMaker::DescribeTrialResponse> instance

Provides a list of a trial's properties.


=head2 DescribeTrialComponent

=over

=item TrialComponentName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeTrialComponent>

Returns: a L<Paws::SageMaker::DescribeTrialComponentResponse> instance

Provides a list of a trials component's properties.


=head2 DescribeUserProfile

=over

=item DomainId => Str

=item UserProfileName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeUserProfile>

Returns: a L<Paws::SageMaker::DescribeUserProfileResponse> instance

Describes a user profile. For more information, see
C<CreateUserProfile>.


=head2 DescribeWorkforce

=over

=item WorkforceName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeWorkforce>

Returns: a L<Paws::SageMaker::DescribeWorkforceResponse> instance

Lists private workforce information, including workforce name, Amazon
Resource Name (ARN), and, if applicable, allowed IP address ranges
(CIDRs
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html)).
Allowable IP address ranges are the IP addresses that workers can use
to access tasks.

This operation applies only to private workforces.


=head2 DescribeWorkteam

=over

=item WorkteamName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeWorkteam>

Returns: a L<Paws::SageMaker::DescribeWorkteamResponse> instance

Gets information about a specific work team. You can see information
such as the creation date, the last updated date, membership
information, and the work team's Amazon Resource Name (ARN).


=head2 DisableSagemakerServicecatalogPortfolio






Each argument is described in detail in: L<Paws::SageMaker::DisableSagemakerServicecatalogPortfolio>

Returns: a L<Paws::SageMaker::DisableSagemakerServicecatalogPortfolioOutput> instance

Disables using Service Catalog in SageMaker. Service Catalog is used to
create SageMaker projects.


=head2 DisassociateTrialComponent

=over

=item TrialComponentName => Str

=item TrialName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DisassociateTrialComponent>

Returns: a L<Paws::SageMaker::DisassociateTrialComponentResponse> instance

Disassociates a trial component from a trial. This doesn't effect other
trials the component is associated with. Before you can delete a
component, you must disassociate the component from all trials it is
associated with. To associate a trial component with a trial, call the
AssociateTrialComponent
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_AssociateTrialComponent.html)
API.

To get a list of the trials a component is associated with, use the
Search
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_Search.html)
API. Specify C<ExperimentTrialComponent> for the C<Resource> parameter.
The list appears in the response under
C<Results.TrialComponent.Parents>.


=head2 EnableSagemakerServicecatalogPortfolio






Each argument is described in detail in: L<Paws::SageMaker::EnableSagemakerServicecatalogPortfolio>

Returns: a L<Paws::SageMaker::EnableSagemakerServicecatalogPortfolioOutput> instance

Enables using Service Catalog in SageMaker. Service Catalog is used to
create SageMaker projects.


=head2 GetDeviceFleetReport

=over

=item DeviceFleetName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::GetDeviceFleetReport>

Returns: a L<Paws::SageMaker::GetDeviceFleetReportResponse> instance

Describes a fleet.


=head2 GetLineageGroupPolicy

=over

=item LineageGroupName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::GetLineageGroupPolicy>

Returns: a L<Paws::SageMaker::GetLineageGroupPolicyResponse> instance

The resource policy for the lineage group.


=head2 GetModelPackageGroupPolicy

=over

=item ModelPackageGroupName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::GetModelPackageGroupPolicy>

Returns: a L<Paws::SageMaker::GetModelPackageGroupPolicyOutput> instance

Gets a resource policy that manages access for a model group. For
information about resource policies, see Identity-based policies and
resource-based policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html)
in the I<Amazon Web Services Identity and Access Management User
Guide.>.


=head2 GetSagemakerServicecatalogPortfolioStatus






Each argument is described in detail in: L<Paws::SageMaker::GetSagemakerServicecatalogPortfolioStatus>

Returns: a L<Paws::SageMaker::GetSagemakerServicecatalogPortfolioStatusOutput> instance

Gets the status of Service Catalog in SageMaker. Service Catalog is
used to create SageMaker projects.


=head2 GetScalingConfigurationRecommendation

=over

=item InferenceRecommendationsJobName => Str

=item [EndpointName => Str]

=item [RecommendationId => Str]

=item [ScalingPolicyObjective => L<Paws::SageMaker::ScalingPolicyObjective>]

=item [TargetCpuUtilizationPerCore => Int]


=back

Each argument is described in detail in: L<Paws::SageMaker::GetScalingConfigurationRecommendation>

Returns: a L<Paws::SageMaker::GetScalingConfigurationRecommendationResponse> instance

Starts an Amazon SageMaker Inference Recommender autoscaling
recommendation job. Returns recommendations for autoscaling policies
that you can apply to your SageMaker endpoint.


=head2 GetSearchSuggestions

=over

=item Resource => Str

=item [SuggestionQuery => L<Paws::SageMaker::SuggestionQuery>]


=back

Each argument is described in detail in: L<Paws::SageMaker::GetSearchSuggestions>

Returns: a L<Paws::SageMaker::GetSearchSuggestionsResponse> instance

An auto-complete API for the search functionality in the SageMaker
console. It returns suggestions of possible matches for the property
name to use in C<Search> queries. Provides suggestions for
C<HyperParameters>, C<Tags>, and C<Metrics>.


=head2 ImportHubContent

=over

=item DocumentSchemaVersion => Str

=item HubContentDocument => Str

=item HubContentName => Str

=item HubContentType => Str

=item HubName => Str

=item [HubContentDescription => Str]

=item [HubContentDisplayName => Str]

=item [HubContentMarkdown => Str]

=item [HubContentSearchKeywords => ArrayRef[Str|Undef]]

=item [HubContentVersion => Str]

=item [SupportStatus => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::ImportHubContent>

Returns: a L<Paws::SageMaker::ImportHubContentResponse> instance

Import hub content.


=head2 ListActions

=over

=item [ActionType => Str]

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [SourceUri => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListActions>

Returns: a L<Paws::SageMaker::ListActionsResponse> instance

Lists the actions in your account and their properties.


=head2 ListAlgorithms

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListAlgorithms>

Returns: a L<Paws::SageMaker::ListAlgorithmsOutput> instance

Lists the machine learning algorithms that have been created.


=head2 ListAliases

=over

=item ImageName => Str

=item [Alias => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Version => Int]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListAliases>

Returns: a L<Paws::SageMaker::ListAliasesResponse> instance

Lists the aliases of a specified image or image version.


=head2 ListAppImageConfigs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [ModifiedTimeAfter => Str]

=item [ModifiedTimeBefore => Str]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListAppImageConfigs>

Returns: a L<Paws::SageMaker::ListAppImageConfigsResponse> instance

Lists the AppImageConfigs in your account and their properties. The
list can be filtered by creation time or modified time, and whether the
AppImageConfig name contains a specified string.


=head2 ListApps

=over

=item [DomainIdEquals => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [SpaceNameEquals => Str]

=item [UserProfileNameEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListApps>

Returns: a L<Paws::SageMaker::ListAppsResponse> instance

Lists apps.


=head2 ListArtifacts

=over

=item [ArtifactType => Str]

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [SourceUri => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListArtifacts>

Returns: a L<Paws::SageMaker::ListArtifactsResponse> instance

Lists the artifacts in your account and their properties.


=head2 ListAssociations

=over

=item [AssociationType => Str]

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [DestinationArn => Str]

=item [DestinationType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [SourceArn => Str]

=item [SourceType => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListAssociations>

Returns: a L<Paws::SageMaker::ListAssociationsResponse> instance

Lists the associations in your account and their properties.


=head2 ListAutoMLJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListAutoMLJobs>

Returns: a L<Paws::SageMaker::ListAutoMLJobsResponse> instance

Request a list of jobs.


=head2 ListCandidatesForAutoMLJob

=over

=item AutoMLJobName => Str

=item [CandidateNameEquals => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListCandidatesForAutoMLJob>

Returns: a L<Paws::SageMaker::ListCandidatesForAutoMLJobResponse> instance

List the candidates created for the job.


=head2 ListClusterNodes

=over

=item ClusterName => Str

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [InstanceGroupNameContains => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListClusterNodes>

Returns: a L<Paws::SageMaker::ListClusterNodesResponse> instance

Retrieves the list of instances (also called I<nodes> interchangeably)
in a SageMaker HyperPod cluster.


=head2 ListClusters

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [TrainingPlanArn => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListClusters>

Returns: a L<Paws::SageMaker::ListClustersResponse> instance

Retrieves the list of SageMaker HyperPod clusters.


=head2 ListClusterSchedulerConfigs

=over

=item [ClusterArn => Str]

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListClusterSchedulerConfigs>

Returns: a L<Paws::SageMaker::ListClusterSchedulerConfigsResponse> instance

List the cluster policy configurations.


=head2 ListCodeRepositories

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListCodeRepositories>

Returns: a L<Paws::SageMaker::ListCodeRepositoriesOutput> instance

Gets a list of the Git repositories in your account.


=head2 ListCompilationJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListCompilationJobs>

Returns: a L<Paws::SageMaker::ListCompilationJobsResponse> instance

Lists model compilation jobs that satisfy various filters.

To create a model compilation job, use CreateCompilationJob
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateCompilationJob.html).
To get information about a particular model compilation job you have
created, use DescribeCompilationJob
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeCompilationJob.html).


=head2 ListComputeQuotas

=over

=item [ClusterArn => Str]

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListComputeQuotas>

Returns: a L<Paws::SageMaker::ListComputeQuotasResponse> instance

List the resource allocation definitions.


=head2 ListContexts

=over

=item [ContextType => Str]

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [SourceUri => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListContexts>

Returns: a L<Paws::SageMaker::ListContextsResponse> instance

Lists the contexts in your account and their properties.


=head2 ListDataQualityJobDefinitions

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [EndpointName => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListDataQualityJobDefinitions>

Returns: a L<Paws::SageMaker::ListDataQualityJobDefinitionsResponse> instance

Lists the data quality job definitions in your account.


=head2 ListDeviceFleets

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListDeviceFleets>

Returns: a L<Paws::SageMaker::ListDeviceFleetsResponse> instance

Returns a list of devices in the fleet.


=head2 ListDevices

=over

=item [DeviceFleetName => Str]

=item [LatestHeartbeatAfter => Str]

=item [MaxResults => Int]

=item [ModelName => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListDevices>

Returns: a L<Paws::SageMaker::ListDevicesResponse> instance

A list of devices.


=head2 ListDomains

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListDomains>

Returns: a L<Paws::SageMaker::ListDomainsResponse> instance

Lists the domains.


=head2 ListEdgeDeploymentPlans

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [DeviceFleetNameContains => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListEdgeDeploymentPlans>

Returns: a L<Paws::SageMaker::ListEdgeDeploymentPlansResponse> instance

Lists all edge deployment plans.


=head2 ListEdgePackagingJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [ModelNameContains => Str]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListEdgePackagingJobs>

Returns: a L<Paws::SageMaker::ListEdgePackagingJobsResponse> instance

Returns a list of edge packaging jobs.


=head2 ListEndpointConfigs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListEndpointConfigs>

Returns: a L<Paws::SageMaker::ListEndpointConfigsOutput> instance

Lists endpoint configurations.


=head2 ListEndpoints

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListEndpoints>

Returns: a L<Paws::SageMaker::ListEndpointsOutput> instance

Lists endpoints.


=head2 ListExperiments

=over

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListExperiments>

Returns: a L<Paws::SageMaker::ListExperimentsResponse> instance

Lists all the experiments in your account. The list can be filtered to
show only experiments that were created in a specific time range. The
list can be sorted by experiment name or creation time.


=head2 ListFeatureGroups

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [FeatureGroupStatusEquals => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [OfflineStoreStatusEquals => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListFeatureGroups>

Returns: a L<Paws::SageMaker::ListFeatureGroupsResponse> instance

List C<FeatureGroup>s based on given filter and order.


=head2 ListFlowDefinitions

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListFlowDefinitions>

Returns: a L<Paws::SageMaker::ListFlowDefinitionsResponse> instance

Returns information about the flow definitions in your account.


=head2 ListHubContents

=over

=item HubContentType => Str

=item HubName => Str

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [MaxSchemaVersion => Str]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListHubContents>

Returns: a L<Paws::SageMaker::ListHubContentsResponse> instance

List the contents of a hub.


=head2 ListHubContentVersions

=over

=item HubContentName => Str

=item HubContentType => Str

=item HubName => Str

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [MaxSchemaVersion => Str]

=item [MinVersion => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListHubContentVersions>

Returns: a L<Paws::SageMaker::ListHubContentVersionsResponse> instance

List hub content versions.


=head2 ListHubs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListHubs>

Returns: a L<Paws::SageMaker::ListHubsResponse> instance

List all existing hubs.


=head2 ListHumanTaskUis

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListHumanTaskUis>

Returns: a L<Paws::SageMaker::ListHumanTaskUisResponse> instance

Returns information about the human task user interfaces in your
account.


=head2 ListHyperParameterTuningJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListHyperParameterTuningJobs>

Returns: a L<Paws::SageMaker::ListHyperParameterTuningJobsResponse> instance

Gets a list of HyperParameterTuningJobSummary
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTuningJobSummary.html)
objects that describe the hyperparameter tuning jobs launched in your
account.


=head2 ListImages

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListImages>

Returns: a L<Paws::SageMaker::ListImagesResponse> instance

Lists the images in your account and their properties. The list can be
filtered by creation time or modified time, and whether the image name
contains a specified string.


=head2 ListImageVersions

=over

=item ImageName => Str

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListImageVersions>

Returns: a L<Paws::SageMaker::ListImageVersionsResponse> instance

Lists the versions of a specified image and their properties. The list
can be filtered by creation time or modified time.


=head2 ListInferenceComponents

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [EndpointNameEquals => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]

=item [VariantNameEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListInferenceComponents>

Returns: a L<Paws::SageMaker::ListInferenceComponentsOutput> instance

Lists the inference components in your account and their properties.


=head2 ListInferenceExperiments

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListInferenceExperiments>

Returns: a L<Paws::SageMaker::ListInferenceExperimentsResponse> instance

Returns the list of all inference experiments.


=head2 ListInferenceRecommendationsJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [ModelNameEquals => Str]

=item [ModelPackageVersionArnEquals => Str]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListInferenceRecommendationsJobs>

Returns: a L<Paws::SageMaker::ListInferenceRecommendationsJobsResponse> instance

Lists recommendation jobs that satisfy various filters.


=head2 ListInferenceRecommendationsJobSteps

=over

=item JobName => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]

=item [StepType => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListInferenceRecommendationsJobSteps>

Returns: a L<Paws::SageMaker::ListInferenceRecommendationsJobStepsResponse> instance

Returns a list of the subtasks for an Inference Recommender job.

The supported subtasks are benchmarks, which evaluate the performance
of your model on different instance types.


=head2 ListLabelingJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListLabelingJobs>

Returns: a L<Paws::SageMaker::ListLabelingJobsResponse> instance

Gets a list of labeling jobs.


=head2 ListLabelingJobsForWorkteam

=over

=item WorkteamArn => Str

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [JobReferenceCodeContains => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListLabelingJobsForWorkteam>

Returns: a L<Paws::SageMaker::ListLabelingJobsForWorkteamResponse> instance

Gets a list of labeling jobs assigned to a specified work team.


=head2 ListLineageGroups

=over

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListLineageGroups>

Returns: a L<Paws::SageMaker::ListLineageGroupsResponse> instance

A list of lineage groups shared with your Amazon Web Services account.
For more information, see Cross-Account Lineage Tracking
(https://docs.aws.amazon.com/sagemaker/latest/dg/xaccount-lineage-tracking.html)
in the I<Amazon SageMaker Developer Guide>.


=head2 ListMlflowTrackingServers

=over

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [MaxResults => Int]

=item [MlflowVersion => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [TrackingServerStatus => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListMlflowTrackingServers>

Returns: a L<Paws::SageMaker::ListMlflowTrackingServersResponse> instance

Lists all MLflow Tracking Servers.


=head2 ListModelBiasJobDefinitions

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [EndpointName => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListModelBiasJobDefinitions>

Returns: a L<Paws::SageMaker::ListModelBiasJobDefinitionsResponse> instance

Lists model bias jobs definitions that satisfy various filters.


=head2 ListModelCardExportJobs

=over

=item ModelCardName => Str

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [ModelCardExportJobNameContains => Str]

=item [ModelCardVersion => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListModelCardExportJobs>

Returns: a L<Paws::SageMaker::ListModelCardExportJobsResponse> instance

List the export jobs for the Amazon SageMaker Model Card.


=head2 ListModelCards

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [ModelCardStatus => Str]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListModelCards>

Returns: a L<Paws::SageMaker::ListModelCardsResponse> instance

List existing model cards.


=head2 ListModelCardVersions

=over

=item ModelCardName => Str

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [ModelCardStatus => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListModelCardVersions>

Returns: a L<Paws::SageMaker::ListModelCardVersionsResponse> instance

List existing versions of an Amazon SageMaker Model Card.


=head2 ListModelExplainabilityJobDefinitions

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [EndpointName => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListModelExplainabilityJobDefinitions>

Returns: a L<Paws::SageMaker::ListModelExplainabilityJobDefinitionsResponse> instance

Lists model explainability job definitions that satisfy various
filters.


=head2 ListModelMetadata

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchExpression => L<Paws::SageMaker::ModelMetadataSearchExpression>]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListModelMetadata>

Returns: a L<Paws::SageMaker::ListModelMetadataResponse> instance

Lists the domain, framework, task, and model name of standard machine
learning models found in common model zoos.


=head2 ListModelPackageGroups

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [CrossAccountFilterOption => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListModelPackageGroups>

Returns: a L<Paws::SageMaker::ListModelPackageGroupsOutput> instance

Gets a list of the model groups in your Amazon Web Services account.


=head2 ListModelPackages

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [ModelApprovalStatus => Str]

=item [ModelPackageGroupName => Str]

=item [ModelPackageType => Str]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListModelPackages>

Returns: a L<Paws::SageMaker::ListModelPackagesOutput> instance

Lists the model packages that have been created.


=head2 ListModelQualityJobDefinitions

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [EndpointName => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListModelQualityJobDefinitions>

Returns: a L<Paws::SageMaker::ListModelQualityJobDefinitionsResponse> instance

Gets a list of model quality monitoring job definitions in your
account.


=head2 ListModels

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListModels>

Returns: a L<Paws::SageMaker::ListModelsOutput> instance

Lists models created with the C<CreateModel> API.


=head2 ListMonitoringAlertHistory

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [MonitoringAlertName => Str]

=item [MonitoringScheduleName => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListMonitoringAlertHistory>

Returns: a L<Paws::SageMaker::ListMonitoringAlertHistoryResponse> instance

Gets a list of past alerts in a model monitoring schedule.


=head2 ListMonitoringAlerts

=over

=item MonitoringScheduleName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListMonitoringAlerts>

Returns: a L<Paws::SageMaker::ListMonitoringAlertsResponse> instance

Gets the alerts for a single monitoring schedule.


=head2 ListMonitoringExecutions

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [EndpointName => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [MonitoringJobDefinitionName => Str]

=item [MonitoringScheduleName => Str]

=item [MonitoringTypeEquals => Str]

=item [NextToken => Str]

=item [ScheduledTimeAfter => Str]

=item [ScheduledTimeBefore => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListMonitoringExecutions>

Returns: a L<Paws::SageMaker::ListMonitoringExecutionsResponse> instance

Returns list of all monitoring job executions.


=head2 ListMonitoringSchedules

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [EndpointName => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [MonitoringJobDefinitionName => Str]

=item [MonitoringTypeEquals => Str]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListMonitoringSchedules>

Returns: a L<Paws::SageMaker::ListMonitoringSchedulesResponse> instance

Returns list of all monitoring schedules.


=head2 ListNotebookInstanceLifecycleConfigs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListNotebookInstanceLifecycleConfigs>

Returns: a L<Paws::SageMaker::ListNotebookInstanceLifecycleConfigsOutput> instance

Lists notebook instance lifestyle configurations created with the
CreateNotebookInstanceLifecycleConfig
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateNotebookInstanceLifecycleConfig.html)
API.


=head2 ListNotebookInstances

=over

=item [AdditionalCodeRepositoryEquals => Str]

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [DefaultCodeRepositoryContains => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [NotebookInstanceLifecycleConfigNameContains => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListNotebookInstances>

Returns: a L<Paws::SageMaker::ListNotebookInstancesOutput> instance

Returns a list of the SageMaker AI notebook instances in the
requester's account in an Amazon Web Services Region.


=head2 ListOptimizationJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [OptimizationContains => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListOptimizationJobs>

Returns: a L<Paws::SageMaker::ListOptimizationJobsResponse> instance

Lists the optimization jobs in your account and their properties.


=head2 ListPartnerApps

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListPartnerApps>

Returns: a L<Paws::SageMaker::ListPartnerAppsResponse> instance

Lists all of the SageMaker Partner AI Apps in an account.


=head2 ListPipelineExecutions

=over

=item PipelineName => Str

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListPipelineExecutions>

Returns: a L<Paws::SageMaker::ListPipelineExecutionsResponse> instance

Gets a list of the pipeline executions.


=head2 ListPipelineExecutionSteps

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PipelineExecutionArn => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListPipelineExecutionSteps>

Returns: a L<Paws::SageMaker::ListPipelineExecutionStepsResponse> instance

Gets a list of C<PipeLineExecutionStep> objects.


=head2 ListPipelineParametersForExecution

=over

=item PipelineExecutionArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListPipelineParametersForExecution>

Returns: a L<Paws::SageMaker::ListPipelineParametersForExecutionResponse> instance

Gets a list of parameters for a pipeline execution.


=head2 ListPipelines

=over

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PipelineNamePrefix => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListPipelines>

Returns: a L<Paws::SageMaker::ListPipelinesResponse> instance

Gets a list of pipelines.


=head2 ListProcessingJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListProcessingJobs>

Returns: a L<Paws::SageMaker::ListProcessingJobsResponse> instance

Lists processing jobs that satisfy various filters.


=head2 ListProjects

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListProjects>

Returns: a L<Paws::SageMaker::ListProjectsOutput> instance

Gets a list of the projects in an Amazon Web Services account.


=head2 ListResourceCatalogs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListResourceCatalogs>

Returns: a L<Paws::SageMaker::ListResourceCatalogsResponse> instance

Lists Amazon SageMaker Catalogs based on given filters and orders. The
maximum number of C<ResourceCatalog>s viewable is 1000.


=head2 ListSpaces

=over

=item [DomainIdEquals => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [SpaceNameContains => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListSpaces>

Returns: a L<Paws::SageMaker::ListSpacesResponse> instance

Lists spaces.


=head2 ListStageDevices

=over

=item EdgeDeploymentPlanName => Str

=item StageName => Str

=item [ExcludeDevicesDeployedInOtherStage => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListStageDevices>

Returns: a L<Paws::SageMaker::ListStageDevicesResponse> instance

Lists devices allocated to the stage, containing detailed device
information and deployment status.


=head2 ListStudioLifecycleConfigs

=over

=item [AppTypeEquals => Str]

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [ModifiedTimeAfter => Str]

=item [ModifiedTimeBefore => Str]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListStudioLifecycleConfigs>

Returns: a L<Paws::SageMaker::ListStudioLifecycleConfigsResponse> instance

Lists the Amazon SageMaker AI Studio Lifecycle Configurations in your
Amazon Web Services Account.


=head2 ListSubscribedWorkteams

=over

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListSubscribedWorkteams>

Returns: a L<Paws::SageMaker::ListSubscribedWorkteamsResponse> instance

Gets a list of the work teams that you are subscribed to in the Amazon
Web Services Marketplace. The list may be empty if no work team
satisfies the filter specified in the C<NameContains> parameter.


=head2 ListTags

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListTags>

Returns: a L<Paws::SageMaker::ListTagsOutput> instance

Returns the tags for the specified SageMaker resource.


=head2 ListTrainingJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]

=item [TrainingPlanArnEquals => Str]

=item [WarmPoolStatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListTrainingJobs>

Returns: a L<Paws::SageMaker::ListTrainingJobsResponse> instance

Lists training jobs.

When C<StatusEquals> and C<MaxResults> are set at the same time, the
C<MaxResults> number of training jobs are first retrieved ignoring the
C<StatusEquals> parameter and then they are filtered by the
C<StatusEquals> parameter, which is returned as a response.

For example, if C<ListTrainingJobs> is invoked with the following
parameters:

C<{ ... MaxResults: 100, StatusEquals: InProgress ... }>

First, 100 trainings jobs with any status, including those other than
C<InProgress>, are selected (sorted according to the creation time,
from the most current to the oldest). Next, those with a status of
C<InProgress> are returned.

You can quickly test the API using the following Amazon Web Services
CLI code.

C<aws sagemaker list-training-jobs --max-results 100 --status-equals
InProgress>


=head2 ListTrainingJobsForHyperParameterTuningJob

=over

=item HyperParameterTuningJobName => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListTrainingJobsForHyperParameterTuningJob>

Returns: a L<Paws::SageMaker::ListTrainingJobsForHyperParameterTuningJobResponse> instance

Gets a list of TrainingJobSummary
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_TrainingJobSummary.html)
objects that describe the training jobs that a hyperparameter tuning
job launched.


=head2 ListTrainingPlans

=over

=item [Filters => ArrayRef[L<Paws::SageMaker::TrainingPlanFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StartTimeAfter => Str]

=item [StartTimeBefore => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListTrainingPlans>

Returns: a L<Paws::SageMaker::ListTrainingPlansResponse> instance

Retrieves a list of training plans for the current account.


=head2 ListTransformJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListTransformJobs>

Returns: a L<Paws::SageMaker::ListTransformJobsResponse> instance

Lists transform jobs.


=head2 ListTrialComponents

=over

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [ExperimentName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [SourceArn => Str]

=item [TrialName => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListTrialComponents>

Returns: a L<Paws::SageMaker::ListTrialComponentsResponse> instance

Lists the trial components in your account. You can sort the list by
trial component name or creation time. You can filter the list to show
only components that were created in a specific time range. You can
also filter on one of the following:

=over

=item *

C<ExperimentName>

=item *

C<SourceArn>

=item *

C<TrialName>

=back



=head2 ListTrials

=over

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [ExperimentName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [TrialComponentName => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListTrials>

Returns: a L<Paws::SageMaker::ListTrialsResponse> instance

Lists the trials in your account. Specify an experiment name to limit
the list to the trials that are part of that experiment. Specify a
trial component name to limit the list to the trials that associated
with that trial component. The list can be filtered to show only trials
that were created in a specific time range. The list can be sorted by
trial name or creation time.


=head2 ListUserProfiles

=over

=item [DomainIdEquals => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [UserProfileNameContains => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListUserProfiles>

Returns: a L<Paws::SageMaker::ListUserProfilesResponse> instance

Lists user profiles.


=head2 ListWorkforces

=over

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListWorkforces>

Returns: a L<Paws::SageMaker::ListWorkforcesResponse> instance

Use this operation to list all private and vendor workforces in an
Amazon Web Services Region. Note that you can only have one private
workforce per Amazon Web Services Region.


=head2 ListWorkteams

=over

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListWorkteams>

Returns: a L<Paws::SageMaker::ListWorkteamsResponse> instance

Gets a list of private work teams that you have defined in a region.
The list may be empty if no work team satisfies the filter specified in
the C<NameContains> parameter.


=head2 PutModelPackageGroupPolicy

=over

=item ModelPackageGroupName => Str

=item ResourcePolicy => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::PutModelPackageGroupPolicy>

Returns: a L<Paws::SageMaker::PutModelPackageGroupPolicyOutput> instance

Adds a resouce policy to control access to a model group. For
information about resoure policies, see Identity-based policies and
resource-based policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html)
in the I<Amazon Web Services Identity and Access Management User
Guide.>.


=head2 QueryLineage

=over

=item [Direction => Str]

=item [Filters => L<Paws::SageMaker::QueryFilters>]

=item [IncludeEdges => Bool]

=item [MaxDepth => Int]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SageMaker::QueryLineage>

Returns: a L<Paws::SageMaker::QueryLineageResponse> instance

Use this action to inspect your lineage and discover relationships
between entities. For more information, see Querying Lineage Entities
(https://docs.aws.amazon.com/sagemaker/latest/dg/querying-lineage-entities.html)
in the I<Amazon SageMaker Developer Guide>.


=head2 RegisterDevices

=over

=item DeviceFleetName => Str

=item Devices => ArrayRef[L<Paws::SageMaker::Device>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::RegisterDevices>

Returns: nothing

Register devices.


=head2 RenderUiTemplate

=over

=item RoleArn => Str

=item Task => L<Paws::SageMaker::RenderableTask>

=item [HumanTaskUiArn => Str]

=item [UiTemplate => L<Paws::SageMaker::UiTemplate>]


=back

Each argument is described in detail in: L<Paws::SageMaker::RenderUiTemplate>

Returns: a L<Paws::SageMaker::RenderUiTemplateResponse> instance

Renders the UI template so that you can preview the worker's
experience.


=head2 RetryPipelineExecution

=over

=item ClientRequestToken => Str

=item PipelineExecutionArn => Str

=item [ParallelismConfiguration => L<Paws::SageMaker::ParallelismConfiguration>]


=back

Each argument is described in detail in: L<Paws::SageMaker::RetryPipelineExecution>

Returns: a L<Paws::SageMaker::RetryPipelineExecutionResponse> instance

Retry the execution of the pipeline.


=head2 Search

=over

=item Resource => Str

=item [CrossAccountFilterOption => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchExpression => L<Paws::SageMaker::SearchExpression>]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [VisibilityConditions => ArrayRef[L<Paws::SageMaker::VisibilityConditions>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::Search>

Returns: a L<Paws::SageMaker::SearchResponse> instance

Finds SageMaker resources that match a search query. Matching resources
are returned as a list of C<SearchRecord> objects in the response. You
can sort the search results by any resource property in a ascending or
descending order.

You can query against the following value types: numeric, text,
Boolean, and timestamp.

The Search API may provide access to otherwise restricted data. See
Amazon SageMaker API Permissions: Actions, Permissions, and Resources
Reference
(https://docs.aws.amazon.com/sagemaker/latest/dg/api-permissions-reference.html)
for more information.


=head2 SearchTrainingPlanOfferings

=over

=item DurationHours => Int

=item TargetResources => ArrayRef[Str|Undef]

=item [EndTimeBefore => Str]

=item [InstanceCount => Int]

=item [InstanceType => Str]

=item [StartTimeAfter => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::SearchTrainingPlanOfferings>

Returns: a L<Paws::SageMaker::SearchTrainingPlanOfferingsResponse> instance

Searches for available training plan offerings based on specified
criteria.

=over

=item *

Users search for available plan offerings based on their requirements
(e.g., instance type, count, start time, duration).

=item *

And then, they create a plan that best matches their needs using the ID
of the plan offering they want to use.

=back

For more information about how to reserve GPU capacity for your
SageMaker training jobs or SageMaker HyperPod clusters using Amazon
SageMaker Training Plan , see C< CreateTrainingPlan
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateTrainingPlan.html)
>.


=head2 SendPipelineExecutionStepFailure

=over

=item CallbackToken => Str

=item [ClientRequestToken => Str]

=item [FailureReason => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::SendPipelineExecutionStepFailure>

Returns: a L<Paws::SageMaker::SendPipelineExecutionStepFailureResponse> instance

Notifies the pipeline that the execution of a callback step failed,
along with a message describing why. When a callback step is run, the
pipeline generates a callback token and includes the token in a message
sent to Amazon Simple Queue Service (Amazon SQS).


=head2 SendPipelineExecutionStepSuccess

=over

=item CallbackToken => Str

=item [ClientRequestToken => Str]

=item [OutputParameters => ArrayRef[L<Paws::SageMaker::OutputParameter>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::SendPipelineExecutionStepSuccess>

Returns: a L<Paws::SageMaker::SendPipelineExecutionStepSuccessResponse> instance

Notifies the pipeline that the execution of a callback step succeeded
and provides a list of the step's output parameters. When a callback
step is run, the pipeline generates a callback token and includes the
token in a message sent to Amazon Simple Queue Service (Amazon SQS).


=head2 StartEdgeDeploymentStage

=over

=item EdgeDeploymentPlanName => Str

=item StageName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StartEdgeDeploymentStage>

Returns: nothing

Starts a stage in an edge deployment plan.


=head2 StartInferenceExperiment

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StartInferenceExperiment>

Returns: a L<Paws::SageMaker::StartInferenceExperimentResponse> instance

Starts an inference experiment.


=head2 StartMlflowTrackingServer

=over

=item TrackingServerName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StartMlflowTrackingServer>

Returns: a L<Paws::SageMaker::StartMlflowTrackingServerResponse> instance

Programmatically start an MLflow Tracking Server.


=head2 StartMonitoringSchedule

=over

=item MonitoringScheduleName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StartMonitoringSchedule>

Returns: nothing

Starts a previously stopped monitoring schedule.

By default, when you successfully create a new schedule, the status of
a monitoring schedule is C<scheduled>.


=head2 StartNotebookInstance

=over

=item NotebookInstanceName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StartNotebookInstance>

Returns: nothing

Launches an ML compute instance with the latest version of the
libraries and attaches your ML storage volume. After configuring the
notebook instance, SageMaker AI sets the notebook instance status to
C<InService>. A notebook instance's status must be C<InService> before
you can connect to your Jupyter notebook.


=head2 StartPipelineExecution

=over

=item ClientRequestToken => Str

=item PipelineName => Str

=item [ParallelismConfiguration => L<Paws::SageMaker::ParallelismConfiguration>]

=item [PipelineExecutionDescription => Str]

=item [PipelineExecutionDisplayName => Str]

=item [PipelineParameters => ArrayRef[L<Paws::SageMaker::Parameter>]]

=item [SelectiveExecutionConfig => L<Paws::SageMaker::SelectiveExecutionConfig>]


=back

Each argument is described in detail in: L<Paws::SageMaker::StartPipelineExecution>

Returns: a L<Paws::SageMaker::StartPipelineExecutionResponse> instance

Starts a pipeline execution.


=head2 StopAutoMLJob

=over

=item AutoMLJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopAutoMLJob>

Returns: nothing

A method for forcing a running job to shut down.


=head2 StopCompilationJob

=over

=item CompilationJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopCompilationJob>

Returns: nothing

Stops a model compilation job.

To stop a job, Amazon SageMaker AI sends the algorithm the SIGTERM
signal. This gracefully shuts the job down. If the job hasn't stopped,
it sends the SIGKILL signal.

When it receives a C<StopCompilationJob> request, Amazon SageMaker AI
changes the C<CompilationJobStatus> of the job to C<Stopping>. After
Amazon SageMaker stops the job, it sets the C<CompilationJobStatus> to
C<Stopped>.


=head2 StopEdgeDeploymentStage

=over

=item EdgeDeploymentPlanName => Str

=item StageName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopEdgeDeploymentStage>

Returns: nothing

Stops a stage in an edge deployment plan.


=head2 StopEdgePackagingJob

=over

=item EdgePackagingJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopEdgePackagingJob>

Returns: nothing

Request to stop an edge packaging job.


=head2 StopHyperParameterTuningJob

=over

=item HyperParameterTuningJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopHyperParameterTuningJob>

Returns: nothing

Stops a running hyperparameter tuning job and all running training jobs
that the tuning job launched.

All model artifacts output from the training jobs are stored in Amazon
Simple Storage Service (Amazon S3). All data that the training jobs
write to Amazon CloudWatch Logs are still available in CloudWatch.
After the tuning job moves to the C<Stopped> state, it releases all
reserved resources for the tuning job.


=head2 StopInferenceExperiment

=over

=item ModelVariantActions => L<Paws::SageMaker::ModelVariantActionMap>

=item Name => Str

=item [DesiredModelVariants => ArrayRef[L<Paws::SageMaker::ModelVariantConfig>]]

=item [DesiredState => Str]

=item [Reason => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::StopInferenceExperiment>

Returns: a L<Paws::SageMaker::StopInferenceExperimentResponse> instance

Stops an inference experiment.


=head2 StopInferenceRecommendationsJob

=over

=item JobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopInferenceRecommendationsJob>

Returns: nothing

Stops an Inference Recommender job.


=head2 StopLabelingJob

=over

=item LabelingJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopLabelingJob>

Returns: nothing

Stops a running labeling job. A job that is stopped cannot be
restarted. Any results obtained before the job is stopped are placed in
the Amazon S3 output bucket.


=head2 StopMlflowTrackingServer

=over

=item TrackingServerName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopMlflowTrackingServer>

Returns: a L<Paws::SageMaker::StopMlflowTrackingServerResponse> instance

Programmatically stop an MLflow Tracking Server.


=head2 StopMonitoringSchedule

=over

=item MonitoringScheduleName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopMonitoringSchedule>

Returns: nothing

Stops a previously started monitoring schedule.


=head2 StopNotebookInstance

=over

=item NotebookInstanceName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopNotebookInstance>

Returns: nothing

Terminates the ML compute instance. Before terminating the instance,
SageMaker AI disconnects the ML storage volume from it. SageMaker AI
preserves the ML storage volume. SageMaker AI stops charging you for
the ML compute instance when you call C<StopNotebookInstance>.

To access data on the ML storage volume for a notebook instance that
has been terminated, call the C<StartNotebookInstance> API.
C<StartNotebookInstance> launches another ML compute instance,
configures it, and attaches the preserved ML storage volume so you can
continue your work.


=head2 StopOptimizationJob

=over

=item OptimizationJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopOptimizationJob>

Returns: nothing

Ends a running inference optimization job.


=head2 StopPipelineExecution

=over

=item ClientRequestToken => Str

=item PipelineExecutionArn => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopPipelineExecution>

Returns: a L<Paws::SageMaker::StopPipelineExecutionResponse> instance

Stops a pipeline execution.

B<Callback Step>

A pipeline execution won't stop while a callback step is running. When
you call C<StopPipelineExecution> on a pipeline execution with a
running callback step, SageMaker Pipelines sends an additional Amazon
SQS message to the specified SQS queue. The body of the SQS message
contains a "Status" field which is set to "Stopping".

You should add logic to your Amazon SQS message consumer to take any
needed action (for example, resource cleanup) upon receipt of the
message followed by a call to C<SendPipelineExecutionStepSuccess> or
C<SendPipelineExecutionStepFailure>.

Only when SageMaker Pipelines receives one of these calls will it stop
the pipeline execution.

B<Lambda Step>

A pipeline execution can't be stopped while a lambda step is running
because the Lambda function invoked by the lambda step can't be
stopped. If you attempt to stop the execution while the Lambda function
is running, the pipeline waits for the Lambda function to finish or
until the timeout is hit, whichever occurs first, and then stops. If
the Lambda function finishes, the pipeline execution status is
C<Stopped>. If the timeout is hit the pipeline execution status is
C<Failed>.


=head2 StopProcessingJob

=over

=item ProcessingJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopProcessingJob>

Returns: nothing

Stops a processing job.


=head2 StopTrainingJob

=over

=item TrainingJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopTrainingJob>

Returns: nothing

Stops a training job. To stop a job, SageMaker sends the algorithm the
C<SIGTERM> signal, which delays job termination for 120 seconds.
Algorithms might use this 120-second window to save the model
artifacts, so the results of the training is not lost.

When it receives a C<StopTrainingJob> request, SageMaker changes the
status of the job to C<Stopping>. After SageMaker stops the job, it
sets the status to C<Stopped>.


=head2 StopTransformJob

=over

=item TransformJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopTransformJob>

Returns: nothing

Stops a batch transform job.

When Amazon SageMaker receives a C<StopTransformJob> request, the
status of the job changes to C<Stopping>. After Amazon SageMaker stops
the job, the status is set to C<Stopped>. When you stop a batch
transform job before it is completed, Amazon SageMaker doesn't store
the job's output in Amazon S3.


=head2 UpdateAction

=over

=item ActionName => Str

=item [Description => Str]

=item [Properties => L<Paws::SageMaker::LineageEntityParameters>]

=item [PropertiesToRemove => ArrayRef[Str|Undef]]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateAction>

Returns: a L<Paws::SageMaker::UpdateActionResponse> instance

Updates an action.


=head2 UpdateAppImageConfig

=over

=item AppImageConfigName => Str

=item [CodeEditorAppImageConfig => L<Paws::SageMaker::CodeEditorAppImageConfig>]

=item [JupyterLabAppImageConfig => L<Paws::SageMaker::JupyterLabAppImageConfig>]

=item [KernelGatewayImageConfig => L<Paws::SageMaker::KernelGatewayImageConfig>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateAppImageConfig>

Returns: a L<Paws::SageMaker::UpdateAppImageConfigResponse> instance

Updates the properties of an AppImageConfig.


=head2 UpdateArtifact

=over

=item ArtifactArn => Str

=item [ArtifactName => Str]

=item [Properties => L<Paws::SageMaker::ArtifactProperties>]

=item [PropertiesToRemove => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateArtifact>

Returns: a L<Paws::SageMaker::UpdateArtifactResponse> instance

Updates an artifact.


=head2 UpdateCluster

=over

=item ClusterName => Str

=item InstanceGroups => ArrayRef[L<Paws::SageMaker::ClusterInstanceGroupSpecification>]

=item [InstanceGroupsToDelete => ArrayRef[Str|Undef]]

=item [NodeRecovery => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateCluster>

Returns: a L<Paws::SageMaker::UpdateClusterResponse> instance

Updates a SageMaker HyperPod cluster.


=head2 UpdateClusterSchedulerConfig

=over

=item ClusterSchedulerConfigId => Str

=item TargetVersion => Int

=item [Description => Str]

=item [SchedulerConfig => L<Paws::SageMaker::SchedulerConfig>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateClusterSchedulerConfig>

Returns: a L<Paws::SageMaker::UpdateClusterSchedulerConfigResponse> instance

Update the cluster policy configuration.


=head2 UpdateClusterSoftware

=over

=item ClusterName => Str

=item [DeploymentConfig => L<Paws::SageMaker::DeploymentConfiguration>]

=item [InstanceGroups => ArrayRef[L<Paws::SageMaker::UpdateClusterSoftwareInstanceGroupSpecification>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateClusterSoftware>

Returns: a L<Paws::SageMaker::UpdateClusterSoftwareResponse> instance

Updates the platform software of a SageMaker HyperPod cluster for
security patching. To learn how to use this API, see Update the
SageMaker HyperPod platform software of a cluster
(https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-hyperpod-operate.html#sagemaker-hyperpod-operate-cli-command-update-cluster-software).

The C<UpgradeClusterSoftware> API call may impact your SageMaker
HyperPod cluster uptime and availability. Plan accordingly to mitigate
potential disruptions to your workloads.


=head2 UpdateCodeRepository

=over

=item CodeRepositoryName => Str

=item [GitConfig => L<Paws::SageMaker::GitConfigForUpdate>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateCodeRepository>

Returns: a L<Paws::SageMaker::UpdateCodeRepositoryOutput> instance

Updates the specified Git repository with the specified values.


=head2 UpdateComputeQuota

=over

=item ComputeQuotaId => Str

=item TargetVersion => Int

=item [ActivationState => Str]

=item [ComputeQuotaConfig => L<Paws::SageMaker::ComputeQuotaConfig>]

=item [ComputeQuotaTarget => L<Paws::SageMaker::ComputeQuotaTarget>]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateComputeQuota>

Returns: a L<Paws::SageMaker::UpdateComputeQuotaResponse> instance

Update the compute allocation definition.


=head2 UpdateContext

=over

=item ContextName => Str

=item [Description => Str]

=item [Properties => L<Paws::SageMaker::LineageEntityParameters>]

=item [PropertiesToRemove => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateContext>

Returns: a L<Paws::SageMaker::UpdateContextResponse> instance

Updates a context.


=head2 UpdateDeviceFleet

=over

=item DeviceFleetName => Str

=item OutputConfig => L<Paws::SageMaker::EdgeOutputConfig>

=item [Description => Str]

=item [EnableIotRoleAlias => Bool]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateDeviceFleet>

Returns: nothing

Updates a fleet of devices.


=head2 UpdateDevices

=over

=item DeviceFleetName => Str

=item Devices => ArrayRef[L<Paws::SageMaker::Device>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateDevices>

Returns: nothing

Updates one or more devices in a fleet.


=head2 UpdateDomain

=over

=item DomainId => Str

=item [AppNetworkAccessType => Str]

=item [AppSecurityGroupManagement => Str]

=item [DefaultSpaceSettings => L<Paws::SageMaker::DefaultSpaceSettings>]

=item [DefaultUserSettings => L<Paws::SageMaker::UserSettings>]

=item [DomainSettingsForUpdate => L<Paws::SageMaker::DomainSettingsForUpdate>]

=item [SubnetIds => ArrayRef[Str|Undef]]

=item [TagPropagation => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateDomain>

Returns: a L<Paws::SageMaker::UpdateDomainResponse> instance

Updates the default settings for new user profiles in the domain.


=head2 UpdateEndpoint

=over

=item EndpointConfigName => Str

=item EndpointName => Str

=item [DeploymentConfig => L<Paws::SageMaker::DeploymentConfig>]

=item [ExcludeRetainedVariantProperties => ArrayRef[L<Paws::SageMaker::VariantProperty>]]

=item [RetainAllVariantProperties => Bool]

=item [RetainDeploymentConfig => Bool]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateEndpoint>

Returns: a L<Paws::SageMaker::UpdateEndpointOutput> instance

Deploys the C<EndpointConfig> specified in the request to a new fleet
of instances. SageMaker shifts endpoint traffic to the new instances
with the updated endpoint configuration and then deletes the old
instances using the previous C<EndpointConfig> (there is no
availability loss). For more information about how to control the
update and traffic shifting process, see Update models in production
(https://docs.aws.amazon.com/sagemaker/latest/dg/deployment-guardrails.html).

When SageMaker receives the request, it sets the endpoint status to
C<Updating>. After updating the endpoint, it sets the status to
C<InService>. To check the status of an endpoint, use the
DescribeEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeEndpoint.html)
API.

You must not delete an C<EndpointConfig> in use by an endpoint that is
live or while the C<UpdateEndpoint> or C<CreateEndpoint> operations are
being performed on the endpoint. To update an endpoint, you must create
a new C<EndpointConfig>.

If you delete the C<EndpointConfig> of an endpoint that is active or
being created or updated you may lose visibility into the instance type
the endpoint is using. The endpoint must be deleted in order to stop
incurring charges.


=head2 UpdateEndpointWeightsAndCapacities

=over

=item DesiredWeightsAndCapacities => ArrayRef[L<Paws::SageMaker::DesiredWeightAndCapacity>]

=item EndpointName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateEndpointWeightsAndCapacities>

Returns: a L<Paws::SageMaker::UpdateEndpointWeightsAndCapacitiesOutput> instance

Updates variant weight of one or more variants associated with an
existing endpoint, or capacity of one variant associated with an
existing endpoint. When it receives the request, SageMaker sets the
endpoint status to C<Updating>. After updating the endpoint, it sets
the status to C<InService>. To check the status of an endpoint, use the
DescribeEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeEndpoint.html)
API.


=head2 UpdateExperiment

=over

=item ExperimentName => Str

=item [Description => Str]

=item [DisplayName => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateExperiment>

Returns: a L<Paws::SageMaker::UpdateExperimentResponse> instance

Adds, updates, or removes the description of an experiment. Updates the
display name of an experiment.


=head2 UpdateFeatureGroup

=over

=item FeatureGroupName => Str

=item [FeatureAdditions => ArrayRef[L<Paws::SageMaker::FeatureDefinition>]]

=item [OnlineStoreConfig => L<Paws::SageMaker::OnlineStoreConfigUpdate>]

=item [ThroughputConfig => L<Paws::SageMaker::ThroughputConfigUpdate>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateFeatureGroup>

Returns: a L<Paws::SageMaker::UpdateFeatureGroupResponse> instance

Updates the feature group by either adding features or updating the
online store configuration. Use one of the following request parameters
at a time while using the C<UpdateFeatureGroup> API.

You can add features for your feature group using the
C<FeatureAdditions> request parameter. Features cannot be removed from
a feature group.

You can update the online store configuration by using the
C<OnlineStoreConfig> request parameter. If a C<TtlDuration> is
specified, the default C<TtlDuration> applies for all records added to
the feature group I<after the feature group is updated>. If a record
level C<TtlDuration> exists from using the C<PutRecord> API, the record
level C<TtlDuration> applies to that record instead of the default
C<TtlDuration>. To remove the default C<TtlDuration> from an existing
feature group, use the C<UpdateFeatureGroup> API and set the
C<TtlDuration> C<Unit> and C<Value> to C<null>.


=head2 UpdateFeatureMetadata

=over

=item FeatureGroupName => Str

=item FeatureName => Str

=item [Description => Str]

=item [ParameterAdditions => ArrayRef[L<Paws::SageMaker::FeatureParameter>]]

=item [ParameterRemovals => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateFeatureMetadata>

Returns: nothing

Updates the description and parameters of the feature group.


=head2 UpdateHub

=over

=item HubName => Str

=item [HubDescription => Str]

=item [HubDisplayName => Str]

=item [HubSearchKeywords => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateHub>

Returns: a L<Paws::SageMaker::UpdateHubResponse> instance

Update a hub.


=head2 UpdateHubContent

=over

=item HubContentName => Str

=item HubContentType => Str

=item HubContentVersion => Str

=item HubName => Str

=item [HubContentDescription => Str]

=item [HubContentDisplayName => Str]

=item [HubContentMarkdown => Str]

=item [HubContentSearchKeywords => ArrayRef[Str|Undef]]

=item [SupportStatus => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateHubContent>

Returns: a L<Paws::SageMaker::UpdateHubContentResponse> instance

Updates SageMaker hub content (either a C<Model> or C<Notebook>
resource).

You can update the metadata that describes the resource. In addition to
the required request fields, specify at least one of the following
fields to update:

=over

=item *

C<HubContentDescription>

=item *

C<HubContentDisplayName>

=item *

C<HubContentMarkdown>

=item *

C<HubContentSearchKeywords>

=item *

C<SupportStatus>

=back

For more information about hubs, see Private curated hubs for
foundation model access control in JumpStart
(https://docs.aws.amazon.com/sagemaker/latest/dg/jumpstart-curated-hubs.html).

If you want to update a C<ModelReference> resource in your hub, use the
C<UpdateHubContentResource> API instead.


=head2 UpdateHubContentReference

=over

=item HubContentName => Str

=item HubContentType => Str

=item HubName => Str

=item [MinVersion => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateHubContentReference>

Returns: a L<Paws::SageMaker::UpdateHubContentReferenceResponse> instance

Updates the contents of a SageMaker hub for a C<ModelReference>
resource. A C<ModelReference> allows you to access public SageMaker
JumpStart models from within your private hub.

When using this API, you can update the C<MinVersion> field for
additional flexibility in the model version. You shouldn't update any
additional fields when using this API, because the metadata in your
private hub should match the public JumpStart model's metadata.

If you want to update a C<Model> or C<Notebook> resource in your hub,
use the C<UpdateHubContent> API instead.

For more information about adding model references to your hub, see Add
models to a private hub
(https://docs.aws.amazon.com/sagemaker/latest/dg/jumpstart-curated-hubs-admin-guide-add-models.html).


=head2 UpdateImage

=over

=item ImageName => Str

=item [DeleteProperties => ArrayRef[Str|Undef]]

=item [Description => Str]

=item [DisplayName => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateImage>

Returns: a L<Paws::SageMaker::UpdateImageResponse> instance

Updates the properties of a SageMaker AI image. To change the image's
tags, use the AddTags
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_AddTags.html)
and DeleteTags
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteTags.html)
APIs.


=head2 UpdateImageVersion

=over

=item ImageName => Str

=item [Alias => Str]

=item [AliasesToAdd => ArrayRef[Str|Undef]]

=item [AliasesToDelete => ArrayRef[Str|Undef]]

=item [Horovod => Bool]

=item [JobType => Str]

=item [MLFramework => Str]

=item [Processor => Str]

=item [ProgrammingLang => Str]

=item [ReleaseNotes => Str]

=item [VendorGuidance => Str]

=item [Version => Int]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateImageVersion>

Returns: a L<Paws::SageMaker::UpdateImageVersionResponse> instance

Updates the properties of a SageMaker AI image version.


=head2 UpdateInferenceComponent

=over

=item InferenceComponentName => Str

=item [DeploymentConfig => L<Paws::SageMaker::InferenceComponentDeploymentConfig>]

=item [RuntimeConfig => L<Paws::SageMaker::InferenceComponentRuntimeConfig>]

=item [Specification => L<Paws::SageMaker::InferenceComponentSpecification>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateInferenceComponent>

Returns: a L<Paws::SageMaker::UpdateInferenceComponentOutput> instance

Updates an inference component.


=head2 UpdateInferenceComponentRuntimeConfig

=over

=item DesiredRuntimeConfig => L<Paws::SageMaker::InferenceComponentRuntimeConfig>

=item InferenceComponentName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateInferenceComponentRuntimeConfig>

Returns: a L<Paws::SageMaker::UpdateInferenceComponentRuntimeConfigOutput> instance

Runtime settings for a model that is deployed with an inference
component.


=head2 UpdateInferenceExperiment

=over

=item Name => Str

=item [DataStorageConfig => L<Paws::SageMaker::InferenceExperimentDataStorageConfig>]

=item [Description => Str]

=item [ModelVariants => ArrayRef[L<Paws::SageMaker::ModelVariantConfig>]]

=item [Schedule => L<Paws::SageMaker::InferenceExperimentSchedule>]

=item [ShadowModeConfig => L<Paws::SageMaker::ShadowModeConfig>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateInferenceExperiment>

Returns: a L<Paws::SageMaker::UpdateInferenceExperimentResponse> instance

Updates an inference experiment that you created. The status of the
inference experiment has to be either C<Created>, C<Running>. For more
information on the status of an inference experiment, see
DescribeInferenceExperiment
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeInferenceExperiment.html).


=head2 UpdateMlflowTrackingServer

=over

=item TrackingServerName => Str

=item [ArtifactStoreUri => Str]

=item [AutomaticModelRegistration => Bool]

=item [TrackingServerSize => Str]

=item [WeeklyMaintenanceWindowStart => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateMlflowTrackingServer>

Returns: a L<Paws::SageMaker::UpdateMlflowTrackingServerResponse> instance

Updates properties of an existing MLflow Tracking Server.


=head2 UpdateModelCard

=over

=item ModelCardName => Str

=item [Content => Str]

=item [ModelCardStatus => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateModelCard>

Returns: a L<Paws::SageMaker::UpdateModelCardResponse> instance

Update an Amazon SageMaker Model Card.

You cannot update both model card content and model card status in a
single call.


=head2 UpdateModelPackage

=over

=item ModelPackageArn => Str

=item [AdditionalInferenceSpecificationsToAdd => ArrayRef[L<Paws::SageMaker::AdditionalInferenceSpecificationDefinition>]]

=item [ApprovalDescription => Str]

=item [ClientToken => Str]

=item [CustomerMetadataProperties => L<Paws::SageMaker::CustomerMetadataMap>]

=item [CustomerMetadataPropertiesToRemove => ArrayRef[Str|Undef]]

=item [InferenceSpecification => L<Paws::SageMaker::InferenceSpecification>]

=item [ModelApprovalStatus => Str]

=item [ModelCard => L<Paws::SageMaker::ModelPackageModelCard>]

=item [ModelLifeCycle => L<Paws::SageMaker::ModelLifeCycle>]

=item [SourceUri => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateModelPackage>

Returns: a L<Paws::SageMaker::UpdateModelPackageOutput> instance

Updates a versioned model.


=head2 UpdateMonitoringAlert

=over

=item DatapointsToAlert => Int

=item EvaluationPeriod => Int

=item MonitoringAlertName => Str

=item MonitoringScheduleName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateMonitoringAlert>

Returns: a L<Paws::SageMaker::UpdateMonitoringAlertResponse> instance

Update the parameters of a model monitor alert.


=head2 UpdateMonitoringSchedule

=over

=item MonitoringScheduleConfig => L<Paws::SageMaker::MonitoringScheduleConfig>

=item MonitoringScheduleName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateMonitoringSchedule>

Returns: a L<Paws::SageMaker::UpdateMonitoringScheduleResponse> instance

Updates a previously created schedule.


=head2 UpdateNotebookInstance

=over

=item NotebookInstanceName => Str

=item [AcceleratorTypes => ArrayRef[Str|Undef]]

=item [AdditionalCodeRepositories => ArrayRef[Str|Undef]]

=item [DefaultCodeRepository => Str]

=item [DisassociateAcceleratorTypes => Bool]

=item [DisassociateAdditionalCodeRepositories => Bool]

=item [DisassociateDefaultCodeRepository => Bool]

=item [DisassociateLifecycleConfig => Bool]

=item [InstanceMetadataServiceConfiguration => L<Paws::SageMaker::InstanceMetadataServiceConfiguration>]

=item [InstanceType => Str]

=item [LifecycleConfigName => Str]

=item [RoleArn => Str]

=item [RootAccess => Str]

=item [VolumeSizeInGB => Int]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateNotebookInstance>

Returns: a L<Paws::SageMaker::UpdateNotebookInstanceOutput> instance

Updates a notebook instance. NotebookInstance updates include upgrading
or downgrading the ML compute instance used for your notebook instance
to accommodate changes in your workload requirements.


=head2 UpdateNotebookInstanceLifecycleConfig

=over

=item NotebookInstanceLifecycleConfigName => Str

=item [OnCreate => ArrayRef[L<Paws::SageMaker::NotebookInstanceLifecycleHook>]]

=item [OnStart => ArrayRef[L<Paws::SageMaker::NotebookInstanceLifecycleHook>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateNotebookInstanceLifecycleConfig>

Returns: a L<Paws::SageMaker::UpdateNotebookInstanceLifecycleConfigOutput> instance

Updates a notebook instance lifecycle configuration created with the
CreateNotebookInstanceLifecycleConfig
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateNotebookInstanceLifecycleConfig.html)
API.


=head2 UpdatePartnerApp

=over

=item Arn => Str

=item [ApplicationConfig => L<Paws::SageMaker::PartnerAppConfig>]

=item [ClientToken => Str]

=item [EnableIamSessionBasedIdentity => Bool]

=item [MaintenanceConfig => L<Paws::SageMaker::PartnerAppMaintenanceConfig>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [Tier => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdatePartnerApp>

Returns: a L<Paws::SageMaker::UpdatePartnerAppResponse> instance

Updates all of the SageMaker Partner AI Apps in an account.


=head2 UpdatePipeline

=over

=item PipelineName => Str

=item [ParallelismConfiguration => L<Paws::SageMaker::ParallelismConfiguration>]

=item [PipelineDefinition => Str]

=item [PipelineDefinitionS3Location => L<Paws::SageMaker::PipelineDefinitionS3Location>]

=item [PipelineDescription => Str]

=item [PipelineDisplayName => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdatePipeline>

Returns: a L<Paws::SageMaker::UpdatePipelineResponse> instance

Updates a pipeline.


=head2 UpdatePipelineExecution

=over

=item PipelineExecutionArn => Str

=item [ParallelismConfiguration => L<Paws::SageMaker::ParallelismConfiguration>]

=item [PipelineExecutionDescription => Str]

=item [PipelineExecutionDisplayName => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdatePipelineExecution>

Returns: a L<Paws::SageMaker::UpdatePipelineExecutionResponse> instance

Updates a pipeline execution.


=head2 UpdateProject

=over

=item ProjectName => Str

=item [ProjectDescription => Str]

=item [ServiceCatalogProvisioningUpdateDetails => L<Paws::SageMaker::ServiceCatalogProvisioningUpdateDetails>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateProject>

Returns: a L<Paws::SageMaker::UpdateProjectOutput> instance

Updates a machine learning (ML) project that is created from a template
that sets up an ML pipeline from training to deploying an approved
model.

You must not update a project that is in use. If you update the
C<ServiceCatalogProvisioningUpdateDetails> of a project that is active
or being created, or updated, you may lose resources already created by
the project.


=head2 UpdateSpace

=over

=item DomainId => Str

=item SpaceName => Str

=item [SpaceDisplayName => Str]

=item [SpaceSettings => L<Paws::SageMaker::SpaceSettings>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateSpace>

Returns: a L<Paws::SageMaker::UpdateSpaceResponse> instance

Updates the settings of a space.

You can't edit the app type of a space in the C<SpaceSettings>.


=head2 UpdateTrainingJob

=over

=item TrainingJobName => Str

=item [ProfilerConfig => L<Paws::SageMaker::ProfilerConfigForUpdate>]

=item [ProfilerRuleConfigurations => ArrayRef[L<Paws::SageMaker::ProfilerRuleConfiguration>]]

=item [RemoteDebugConfig => L<Paws::SageMaker::RemoteDebugConfigForUpdate>]

=item [ResourceConfig => L<Paws::SageMaker::ResourceConfigForUpdate>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateTrainingJob>

Returns: a L<Paws::SageMaker::UpdateTrainingJobResponse> instance

Update a model training job to request a new Debugger profiling
configuration or to change warm pool retention length.


=head2 UpdateTrial

=over

=item TrialName => Str

=item [DisplayName => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateTrial>

Returns: a L<Paws::SageMaker::UpdateTrialResponse> instance

Updates the display name of a trial.


=head2 UpdateTrialComponent

=over

=item TrialComponentName => Str

=item [DisplayName => Str]

=item [EndTime => Str]

=item [InputArtifacts => L<Paws::SageMaker::TrialComponentArtifacts>]

=item [InputArtifactsToRemove => ArrayRef[Str|Undef]]

=item [OutputArtifacts => L<Paws::SageMaker::TrialComponentArtifacts>]

=item [OutputArtifactsToRemove => ArrayRef[Str|Undef]]

=item [Parameters => L<Paws::SageMaker::TrialComponentParameters>]

=item [ParametersToRemove => ArrayRef[Str|Undef]]

=item [StartTime => Str]

=item [Status => L<Paws::SageMaker::TrialComponentStatus>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateTrialComponent>

Returns: a L<Paws::SageMaker::UpdateTrialComponentResponse> instance

Updates one or more properties of a trial component.


=head2 UpdateUserProfile

=over

=item DomainId => Str

=item UserProfileName => Str

=item [UserSettings => L<Paws::SageMaker::UserSettings>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateUserProfile>

Returns: a L<Paws::SageMaker::UpdateUserProfileResponse> instance

Updates a user profile.


=head2 UpdateWorkforce

=over

=item WorkforceName => Str

=item [OidcConfig => L<Paws::SageMaker::OidcConfig>]

=item [SourceIpConfig => L<Paws::SageMaker::SourceIpConfig>]

=item [WorkforceVpcConfig => L<Paws::SageMaker::WorkforceVpcConfigRequest>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateWorkforce>

Returns: a L<Paws::SageMaker::UpdateWorkforceResponse> instance

Use this operation to update your workforce. You can use this operation
to require that workers use specific IP addresses to work on tasks and
to update your OpenID Connect (OIDC) Identity Provider (IdP) workforce
configuration.

The worker portal is now supported in VPC and public internet.

Use C<SourceIpConfig> to restrict worker access to tasks to a specific
range of IP addresses. You specify allowed IP addresses by creating a
list of up to ten CIDRs
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html). By
default, a workforce isn't restricted to specific IP addresses. If you
specify a range of IP addresses, workers who attempt to access tasks
using any IP address outside the specified range are denied and get a
C<Not Found> error message on the worker portal.

To restrict access to all the workers in public internet, add the
C<SourceIpConfig> CIDR value as "10.0.0.0/16".

Amazon SageMaker does not support Source Ip restriction for worker
portals in VPC.

Use C<OidcConfig> to update the configuration of a workforce created
using your own OIDC IdP.

You can only update your OIDC IdP configuration when there are no work
teams associated with your workforce. You can delete work teams using
the DeleteWorkteam
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteWorkteam.html)
operation.

After restricting access to a range of IP addresses or updating your
OIDC IdP configuration with this operation, you can view details about
your update workforce using the DescribeWorkforce
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeWorkforce.html)
operation.

This operation only applies to private workforces.


=head2 UpdateWorkteam

=over

=item WorkteamName => Str

=item [Description => Str]

=item [MemberDefinitions => ArrayRef[L<Paws::SageMaker::MemberDefinition>]]

=item [NotificationConfiguration => L<Paws::SageMaker::NotificationConfiguration>]

=item [WorkerAccessConfiguration => L<Paws::SageMaker::WorkerAccessConfiguration>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateWorkteam>

Returns: a L<Paws::SageMaker::UpdateWorkteamResponse> instance

Updates an existing work team with new member definitions or
description.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllActions(sub { },[ActionType => Str, CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceUri => Str])

=head2 ListAllActions([ActionType => Str, CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceUri => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ActionSummaries, passing the object as the first parameter, and the string 'ActionSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListActionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAlgorithms(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllAlgorithms([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AlgorithmSummaryList, passing the object as the first parameter, and the string 'AlgorithmSummaryList' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListAlgorithmsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAliases(sub { },ImageName => Str, [Alias => Str, MaxResults => Int, NextToken => Str, Version => Int])

=head2 ListAllAliases(ImageName => Str, [Alias => Str, MaxResults => Int, NextToken => Str, Version => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SageMakerImageVersionAliases, passing the object as the first parameter, and the string 'SageMakerImageVersionAliases' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListAliasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAppImageConfigs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, ModifiedTimeAfter => Str, ModifiedTimeBefore => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllAppImageConfigs([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, ModifiedTimeAfter => Str, ModifiedTimeBefore => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AppImageConfigs, passing the object as the first parameter, and the string 'AppImageConfigs' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListAppImageConfigsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApps(sub { },[DomainIdEquals => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SpaceNameEquals => Str, UserProfileNameEquals => Str])

=head2 ListAllApps([DomainIdEquals => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SpaceNameEquals => Str, UserProfileNameEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Apps, passing the object as the first parameter, and the string 'Apps' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListAppsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllArtifacts(sub { },[ArtifactType => Str, CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceUri => Str])

=head2 ListAllArtifacts([ArtifactType => Str, CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceUri => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ArtifactSummaries, passing the object as the first parameter, and the string 'ArtifactSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListArtifactsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssociations(sub { },[AssociationType => Str, CreatedAfter => Str, CreatedBefore => Str, DestinationArn => Str, DestinationType => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceArn => Str, SourceType => Str])

=head2 ListAllAssociations([AssociationType => Str, CreatedAfter => Str, CreatedBefore => Str, DestinationArn => Str, DestinationType => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceArn => Str, SourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AssociationSummaries, passing the object as the first parameter, and the string 'AssociationSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAutoMLJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllAutoMLJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AutoMLJobSummaries, passing the object as the first parameter, and the string 'AutoMLJobSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListAutoMLJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCandidatesForAutoMLJob(sub { },AutoMLJobName => Str, [CandidateNameEquals => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllCandidatesForAutoMLJob(AutoMLJobName => Str, [CandidateNameEquals => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Candidates, passing the object as the first parameter, and the string 'Candidates' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListCandidatesForAutoMLJobResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllClusterNodes(sub { },ClusterName => Str, [CreationTimeAfter => Str, CreationTimeBefore => Str, InstanceGroupNameContains => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllClusterNodes(ClusterName => Str, [CreationTimeAfter => Str, CreationTimeBefore => Str, InstanceGroupNameContains => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ClusterNodeSummaries, passing the object as the first parameter, and the string 'ClusterNodeSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListClusterNodesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllClusters(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, TrainingPlanArn => Str])

=head2 ListAllClusters([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, TrainingPlanArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ClusterSummaries, passing the object as the first parameter, and the string 'ClusterSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListClustersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllClusterSchedulerConfigs(sub { },[ClusterArn => Str, CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, Status => Str])

=head2 ListAllClusterSchedulerConfigs([ClusterArn => Str, CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ClusterSchedulerConfigSummaries, passing the object as the first parameter, and the string 'ClusterSchedulerConfigSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListClusterSchedulerConfigsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCodeRepositories(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllCodeRepositories([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CodeRepositorySummaryList, passing the object as the first parameter, and the string 'CodeRepositorySummaryList' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListCodeRepositoriesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCompilationJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllCompilationJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CompilationJobSummaries, passing the object as the first parameter, and the string 'CompilationJobSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListCompilationJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllComputeQuotas(sub { },[ClusterArn => Str, CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, Status => Str])

=head2 ListAllComputeQuotas([ClusterArn => Str, CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ComputeQuotaSummaries, passing the object as the first parameter, and the string 'ComputeQuotaSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListComputeQuotasResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllContexts(sub { },[ContextType => Str, CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceUri => Str])

=head2 ListAllContexts([ContextType => Str, CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceUri => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ContextSummaries, passing the object as the first parameter, and the string 'ContextSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListContextsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataQualityJobDefinitions(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllDataQualityJobDefinitions([CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - JobDefinitionSummaries, passing the object as the first parameter, and the string 'JobDefinitionSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListDataQualityJobDefinitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDeviceFleets(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllDeviceFleets([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DeviceFleetSummaries, passing the object as the first parameter, and the string 'DeviceFleetSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListDeviceFleetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDevices(sub { },[DeviceFleetName => Str, LatestHeartbeatAfter => Str, MaxResults => Int, ModelName => Str, NextToken => Str])

=head2 ListAllDevices([DeviceFleetName => Str, LatestHeartbeatAfter => Str, MaxResults => Int, ModelName => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DeviceSummaries, passing the object as the first parameter, and the string 'DeviceSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListDevicesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDomains(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDomains([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Domains, passing the object as the first parameter, and the string 'Domains' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListDomainsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEdgeDeploymentPlans(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, DeviceFleetNameContains => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllEdgeDeploymentPlans([CreationTimeAfter => Str, CreationTimeBefore => Str, DeviceFleetNameContains => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EdgeDeploymentPlanSummaries, passing the object as the first parameter, and the string 'EdgeDeploymentPlanSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListEdgeDeploymentPlansResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEdgePackagingJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, ModelNameContains => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllEdgePackagingJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, ModelNameContains => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EdgePackagingJobSummaries, passing the object as the first parameter, and the string 'EdgePackagingJobSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListEdgePackagingJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEndpointConfigs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllEndpointConfigs([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EndpointConfigs, passing the object as the first parameter, and the string 'EndpointConfigs' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListEndpointConfigsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEndpoints(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllEndpoints([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Endpoints, passing the object as the first parameter, and the string 'Endpoints' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListEndpointsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllExperiments(sub { },[CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllExperiments([CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ExperimentSummaries, passing the object as the first parameter, and the string 'ExperimentSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListExperimentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFeatureGroups(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, FeatureGroupStatusEquals => Str, MaxResults => Int, NameContains => Str, NextToken => Str, OfflineStoreStatusEquals => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllFeatureGroups([CreationTimeAfter => Str, CreationTimeBefore => Str, FeatureGroupStatusEquals => Str, MaxResults => Int, NameContains => Str, NextToken => Str, OfflineStoreStatusEquals => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FeatureGroupSummaries, passing the object as the first parameter, and the string 'FeatureGroupSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListFeatureGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFlowDefinitions(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NextToken => Str, SortOrder => Str])

=head2 ListAllFlowDefinitions([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NextToken => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FlowDefinitionSummaries, passing the object as the first parameter, and the string 'FlowDefinitionSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListFlowDefinitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllHumanTaskUis(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NextToken => Str, SortOrder => Str])

=head2 ListAllHumanTaskUis([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NextToken => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HumanTaskUiSummaries, passing the object as the first parameter, and the string 'HumanTaskUiSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListHumanTaskUisResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllHyperParameterTuningJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllHyperParameterTuningJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HyperParameterTuningJobSummaries, passing the object as the first parameter, and the string 'HyperParameterTuningJobSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListHyperParameterTuningJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllImages(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllImages([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Images, passing the object as the first parameter, and the string 'Images' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListImagesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllImageVersions(sub { },ImageName => Str, [CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllImageVersions(ImageName => Str, [CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ImageVersions, passing the object as the first parameter, and the string 'ImageVersions' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListImageVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInferenceComponents(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointNameEquals => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str, VariantNameEquals => Str])

=head2 ListAllInferenceComponents([CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointNameEquals => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str, VariantNameEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InferenceComponents, passing the object as the first parameter, and the string 'InferenceComponents' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListInferenceComponentsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInferenceExperiments(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str, Type => Str])

=head2 ListAllInferenceExperiments([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InferenceExperiments, passing the object as the first parameter, and the string 'InferenceExperiments' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListInferenceExperimentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInferenceRecommendationsJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, ModelNameEquals => Str, ModelPackageVersionArnEquals => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllInferenceRecommendationsJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, ModelNameEquals => Str, ModelPackageVersionArnEquals => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InferenceRecommendationsJobs, passing the object as the first parameter, and the string 'InferenceRecommendationsJobs' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListInferenceRecommendationsJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInferenceRecommendationsJobSteps(sub { },JobName => Str, [MaxResults => Int, NextToken => Str, Status => Str, StepType => Str])

=head2 ListAllInferenceRecommendationsJobSteps(JobName => Str, [MaxResults => Int, NextToken => Str, Status => Str, StepType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Steps, passing the object as the first parameter, and the string 'Steps' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListInferenceRecommendationsJobStepsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLabelingJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllLabelingJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LabelingJobSummaryList, passing the object as the first parameter, and the string 'LabelingJobSummaryList' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListLabelingJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLabelingJobsForWorkteam(sub { },WorkteamArn => Str, [CreationTimeAfter => Str, CreationTimeBefore => Str, JobReferenceCodeContains => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllLabelingJobsForWorkteam(WorkteamArn => Str, [CreationTimeAfter => Str, CreationTimeBefore => Str, JobReferenceCodeContains => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LabelingJobSummaryList, passing the object as the first parameter, and the string 'LabelingJobSummaryList' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListLabelingJobsForWorkteamResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLineageGroups(sub { },[CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllLineageGroups([CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LineageGroupSummaries, passing the object as the first parameter, and the string 'LineageGroupSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListLineageGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMlflowTrackingServers(sub { },[CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, MlflowVersion => Str, NextToken => Str, SortBy => Str, SortOrder => Str, TrackingServerStatus => Str])

=head2 ListAllMlflowTrackingServers([CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, MlflowVersion => Str, NextToken => Str, SortBy => Str, SortOrder => Str, TrackingServerStatus => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrackingServerSummaries, passing the object as the first parameter, and the string 'TrackingServerSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListMlflowTrackingServersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModelBiasJobDefinitions(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllModelBiasJobDefinitions([CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - JobDefinitionSummaries, passing the object as the first parameter, and the string 'JobDefinitionSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListModelBiasJobDefinitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModelCardExportJobs(sub { },ModelCardName => Str, [CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, ModelCardExportJobNameContains => Str, ModelCardVersion => Int, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllModelCardExportJobs(ModelCardName => Str, [CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, ModelCardExportJobNameContains => Str, ModelCardVersion => Int, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ModelCardExportJobSummaries, passing the object as the first parameter, and the string 'ModelCardExportJobSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListModelCardExportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModelCards(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, ModelCardStatus => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllModelCards([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, ModelCardStatus => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ModelCardSummaries, passing the object as the first parameter, and the string 'ModelCardSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListModelCardsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModelCardVersions(sub { },ModelCardName => Str, [CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, ModelCardStatus => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllModelCardVersions(ModelCardName => Str, [CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, ModelCardStatus => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ModelCardVersionSummaryList, passing the object as the first parameter, and the string 'ModelCardVersionSummaryList' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListModelCardVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModelExplainabilityJobDefinitions(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllModelExplainabilityJobDefinitions([CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - JobDefinitionSummaries, passing the object as the first parameter, and the string 'JobDefinitionSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListModelExplainabilityJobDefinitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModelMetadata(sub { },[MaxResults => Int, NextToken => Str, SearchExpression => L<Paws::SageMaker::ModelMetadataSearchExpression>])

=head2 ListAllModelMetadata([MaxResults => Int, NextToken => Str, SearchExpression => L<Paws::SageMaker::ModelMetadataSearchExpression>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ModelMetadataSummaries, passing the object as the first parameter, and the string 'ModelMetadataSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListModelMetadataResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModelPackageGroups(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, CrossAccountFilterOption => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllModelPackageGroups([CreationTimeAfter => Str, CreationTimeBefore => Str, CrossAccountFilterOption => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ModelPackageGroupSummaryList, passing the object as the first parameter, and the string 'ModelPackageGroupSummaryList' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListModelPackageGroupsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModelPackages(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, ModelApprovalStatus => Str, ModelPackageGroupName => Str, ModelPackageType => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllModelPackages([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, ModelApprovalStatus => Str, ModelPackageGroupName => Str, ModelPackageType => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ModelPackageSummaryList, passing the object as the first parameter, and the string 'ModelPackageSummaryList' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListModelPackagesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModelQualityJobDefinitions(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllModelQualityJobDefinitions([CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - JobDefinitionSummaries, passing the object as the first parameter, and the string 'JobDefinitionSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListModelQualityJobDefinitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModels(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllModels([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Models, passing the object as the first parameter, and the string 'Models' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListModelsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMonitoringAlertHistory(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, MonitoringAlertName => Str, MonitoringScheduleName => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllMonitoringAlertHistory([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, MonitoringAlertName => Str, MonitoringScheduleName => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MonitoringAlertHistory, passing the object as the first parameter, and the string 'MonitoringAlertHistory' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListMonitoringAlertHistoryResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMonitoringAlerts(sub { },MonitoringScheduleName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllMonitoringAlerts(MonitoringScheduleName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MonitoringAlertSummaries, passing the object as the first parameter, and the string 'MonitoringAlertSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListMonitoringAlertsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMonitoringExecutions(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, MonitoringJobDefinitionName => Str, MonitoringScheduleName => Str, MonitoringTypeEquals => Str, NextToken => Str, ScheduledTimeAfter => Str, ScheduledTimeBefore => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllMonitoringExecutions([CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, MonitoringJobDefinitionName => Str, MonitoringScheduleName => Str, MonitoringTypeEquals => Str, NextToken => Str, ScheduledTimeAfter => Str, ScheduledTimeBefore => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MonitoringExecutionSummaries, passing the object as the first parameter, and the string 'MonitoringExecutionSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListMonitoringExecutionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMonitoringSchedules(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, MonitoringJobDefinitionName => Str, MonitoringTypeEquals => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllMonitoringSchedules([CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, MonitoringJobDefinitionName => Str, MonitoringTypeEquals => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MonitoringScheduleSummaries, passing the object as the first parameter, and the string 'MonitoringScheduleSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListMonitoringSchedulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNotebookInstanceLifecycleConfigs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllNotebookInstanceLifecycleConfigs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NotebookInstanceLifecycleConfigs, passing the object as the first parameter, and the string 'NotebookInstanceLifecycleConfigs' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListNotebookInstanceLifecycleConfigsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNotebookInstances(sub { },[AdditionalCodeRepositoryEquals => Str, CreationTimeAfter => Str, CreationTimeBefore => Str, DefaultCodeRepositoryContains => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, NotebookInstanceLifecycleConfigNameContains => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllNotebookInstances([AdditionalCodeRepositoryEquals => Str, CreationTimeAfter => Str, CreationTimeBefore => Str, DefaultCodeRepositoryContains => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, NotebookInstanceLifecycleConfigNameContains => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NotebookInstances, passing the object as the first parameter, and the string 'NotebookInstances' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListNotebookInstancesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOptimizationJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, OptimizationContains => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllOptimizationJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, OptimizationContains => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OptimizationJobSummaries, passing the object as the first parameter, and the string 'OptimizationJobSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListOptimizationJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPartnerApps(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllPartnerApps([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Summaries, passing the object as the first parameter, and the string 'Summaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListPartnerAppsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPipelineExecutions(sub { },PipelineName => Str, [CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllPipelineExecutions(PipelineName => Str, [CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PipelineExecutionSummaries, passing the object as the first parameter, and the string 'PipelineExecutionSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListPipelineExecutionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPipelineExecutionSteps(sub { },[MaxResults => Int, NextToken => Str, PipelineExecutionArn => Str, SortOrder => Str])

=head2 ListAllPipelineExecutionSteps([MaxResults => Int, NextToken => Str, PipelineExecutionArn => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PipelineExecutionSteps, passing the object as the first parameter, and the string 'PipelineExecutionSteps' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListPipelineExecutionStepsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPipelineParametersForExecution(sub { },PipelineExecutionArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPipelineParametersForExecution(PipelineExecutionArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PipelineParameters, passing the object as the first parameter, and the string 'PipelineParameters' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListPipelineParametersForExecutionResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPipelines(sub { },[CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, PipelineNamePrefix => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllPipelines([CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, PipelineNamePrefix => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PipelineSummaries, passing the object as the first parameter, and the string 'PipelineSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListPipelinesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProcessingJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllProcessingJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProcessingJobSummaries, passing the object as the first parameter, and the string 'ProcessingJobSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListProcessingJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResourceCatalogs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllResourceCatalogs([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceCatalogs, passing the object as the first parameter, and the string 'ResourceCatalogs' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListResourceCatalogsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSpaces(sub { },[DomainIdEquals => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SpaceNameContains => Str])

=head2 ListAllSpaces([DomainIdEquals => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SpaceNameContains => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Spaces, passing the object as the first parameter, and the string 'Spaces' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListSpacesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStageDevices(sub { },EdgeDeploymentPlanName => Str, StageName => Str, [ExcludeDevicesDeployedInOtherStage => Bool, MaxResults => Int, NextToken => Str])

=head2 ListAllStageDevices(EdgeDeploymentPlanName => Str, StageName => Str, [ExcludeDevicesDeployedInOtherStage => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DeviceDeploymentSummaries, passing the object as the first parameter, and the string 'DeviceDeploymentSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListStageDevicesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStudioLifecycleConfigs(sub { },[AppTypeEquals => Str, CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, ModifiedTimeAfter => Str, ModifiedTimeBefore => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllStudioLifecycleConfigs([AppTypeEquals => Str, CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, ModifiedTimeAfter => Str, ModifiedTimeBefore => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StudioLifecycleConfigs, passing the object as the first parameter, and the string 'StudioLifecycleConfigs' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListStudioLifecycleConfigsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSubscribedWorkteams(sub { },[MaxResults => Int, NameContains => Str, NextToken => Str])

=head2 ListAllSubscribedWorkteams([MaxResults => Int, NameContains => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SubscribedWorkteams, passing the object as the first parameter, and the string 'SubscribedWorkteams' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListSubscribedWorkteamsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTags(sub { },ResourceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTags(ResourceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListTagsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTrainingJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str, TrainingPlanArnEquals => Str, WarmPoolStatusEquals => Str])

=head2 ListAllTrainingJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str, TrainingPlanArnEquals => Str, WarmPoolStatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrainingJobSummaries, passing the object as the first parameter, and the string 'TrainingJobSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListTrainingJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTrainingJobsForHyperParameterTuningJob(sub { },HyperParameterTuningJobName => Str, [MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllTrainingJobsForHyperParameterTuningJob(HyperParameterTuningJobName => Str, [MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrainingJobSummaries, passing the object as the first parameter, and the string 'TrainingJobSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListTrainingJobsForHyperParameterTuningJobResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTrainingPlans(sub { },[Filters => ArrayRef[L<Paws::SageMaker::TrainingPlanFilter>], MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, StartTimeAfter => Str, StartTimeBefore => Str])

=head2 ListAllTrainingPlans([Filters => ArrayRef[L<Paws::SageMaker::TrainingPlanFilter>], MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, StartTimeAfter => Str, StartTimeBefore => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrainingPlanSummaries, passing the object as the first parameter, and the string 'TrainingPlanSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListTrainingPlansResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTransformJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllTransformJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransformJobSummaries, passing the object as the first parameter, and the string 'TransformJobSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListTransformJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTrialComponents(sub { },[CreatedAfter => Str, CreatedBefore => Str, ExperimentName => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceArn => Str, TrialName => Str])

=head2 ListAllTrialComponents([CreatedAfter => Str, CreatedBefore => Str, ExperimentName => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceArn => Str, TrialName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrialComponentSummaries, passing the object as the first parameter, and the string 'TrialComponentSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListTrialComponentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTrials(sub { },[CreatedAfter => Str, CreatedBefore => Str, ExperimentName => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, TrialComponentName => Str])

=head2 ListAllTrials([CreatedAfter => Str, CreatedBefore => Str, ExperimentName => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, TrialComponentName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrialSummaries, passing the object as the first parameter, and the string 'TrialSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListTrialsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUserProfiles(sub { },[DomainIdEquals => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, UserProfileNameContains => Str])

=head2 ListAllUserProfiles([DomainIdEquals => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, UserProfileNameContains => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UserProfiles, passing the object as the first parameter, and the string 'UserProfiles' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListUserProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkforces(sub { },[MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllWorkforces([MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Workforces, passing the object as the first parameter, and the string 'Workforces' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListWorkforcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkteams(sub { },[MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllWorkteams([MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Workteams, passing the object as the first parameter, and the string 'Workteams' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListWorkteamsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAll(sub { },Resource => Str, [CrossAccountFilterOption => Str, MaxResults => Int, NextToken => Str, SearchExpression => L<Paws::SageMaker::SearchExpression>, SortBy => Str, SortOrder => Str, VisibilityConditions => ArrayRef[L<Paws::SageMaker::VisibilityConditions>]])

=head2 SearchAll(Resource => Str, [CrossAccountFilterOption => Str, MaxResults => Int, NextToken => Str, SearchExpression => L<Paws::SageMaker::SearchExpression>, SortBy => Str, SortOrder => Str, VisibilityConditions => ArrayRef[L<Paws::SageMaker::VisibilityConditions>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Results, passing the object as the first parameter, and the string 'Results' as the second parameter 

If not, it will return a a L<Paws::SageMaker::SearchResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

