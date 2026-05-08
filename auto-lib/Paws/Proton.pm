package Paws::Proton;
  use Moose;
  sub service { 'proton' }
  sub signing_name { 'proton' }
  sub version { '2020-07-20' }
  sub target_prefix { 'AwsProton20200720' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AcceptEnvironmentAccountConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::AcceptEnvironmentAccountConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelComponentDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CancelComponentDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelEnvironmentDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CancelEnvironmentDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelServiceInstanceDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CancelServiceInstanceDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelServicePipelineDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CancelServicePipelineDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CreateComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CreateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEnvironmentAccountConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CreateEnvironmentAccountConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEnvironmentTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CreateEnvironmentTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEnvironmentTemplateVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CreateEnvironmentTemplateVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CreateRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CreateService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateServiceInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CreateServiceInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateServiceSyncConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CreateServiceSyncConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateServiceTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CreateServiceTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateServiceTemplateVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CreateServiceTemplateVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTemplateSyncConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CreateTemplateSyncConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::DeleteComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::DeleteDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::DeleteEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironmentAccountConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::DeleteEnvironmentAccountConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironmentTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::DeleteEnvironmentTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironmentTemplateVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::DeleteEnvironmentTemplateVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::DeleteRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::DeleteService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServiceSyncConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::DeleteServiceSyncConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServiceTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::DeleteServiceTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServiceTemplateVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::DeleteServiceTemplateVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTemplateSyncConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::DeleteTemplateSyncConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironmentAccountConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetEnvironmentAccountConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironmentTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetEnvironmentTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironmentTemplateVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetEnvironmentTemplateVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRepositorySyncStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetRepositorySyncStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcesSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetResourcesSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetServiceInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceInstanceSyncStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetServiceInstanceSyncStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceSyncBlockerSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetServiceSyncBlockerSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceSyncConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetServiceSyncConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetServiceTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceTemplateVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetServiceTemplateVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTemplateSyncConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetTemplateSyncConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTemplateSyncStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetTemplateSyncStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComponentOutputs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListComponentOutputs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComponentProvisionedResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListComponentProvisionedResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComponents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListComponents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeployments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListDeployments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironmentAccountConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListEnvironmentAccountConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironmentOutputs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListEnvironmentOutputs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironmentProvisionedResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListEnvironmentProvisionedResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListEnvironments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironmentTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListEnvironmentTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironmentTemplateVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListEnvironmentTemplateVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRepositories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListRepositories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRepositorySyncDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListRepositorySyncDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceInstanceOutputs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListServiceInstanceOutputs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceInstanceProvisionedResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListServiceInstanceProvisionedResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListServiceInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServicePipelineOutputs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListServicePipelineOutputs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServicePipelineProvisionedResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListServicePipelineProvisionedResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListServiceTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceTemplateVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListServiceTemplateVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub NotifyResourceDeploymentStatusChange {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::NotifyResourceDeploymentStatusChange', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectEnvironmentAccountConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::RejectEnvironmentAccountConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnvironmentAccountConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateEnvironmentAccountConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnvironmentTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateEnvironmentTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnvironmentTemplateVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateEnvironmentTemplateVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServiceInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateServiceInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServicePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateServicePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServiceSyncBlocker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateServiceSyncBlocker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServiceSyncConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateServiceSyncConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServiceTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateServiceTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServiceTemplateVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateServiceTemplateVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTemplateSyncConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateTemplateSyncConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllComponentOutputs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListComponentOutputs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListComponentOutputs(@_, nextToken => $next_result->nextToken);
        push @{ $result->outputs }, @{ $next_result->outputs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'outputs') foreach (@{ $result->outputs });
        $result = $self->ListComponentOutputs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'outputs') foreach (@{ $result->outputs });
    }

    return undef
  }
  sub ListAllComponentProvisionedResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListComponentProvisionedResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListComponentProvisionedResources(@_, nextToken => $next_result->nextToken);
        push @{ $result->provisionedResources }, @{ $next_result->provisionedResources };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'provisionedResources') foreach (@{ $result->provisionedResources });
        $result = $self->ListComponentProvisionedResources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'provisionedResources') foreach (@{ $result->provisionedResources });
    }

    return undef
  }
  sub ListAllComponents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListComponents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListComponents(@_, nextToken => $next_result->nextToken);
        push @{ $result->components }, @{ $next_result->components };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'components') foreach (@{ $result->components });
        $result = $self->ListComponents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'components') foreach (@{ $result->components });
    }

    return undef
  }
  sub ListAllDeployments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeployments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDeployments(@_, nextToken => $next_result->nextToken);
        push @{ $result->deployments }, @{ $next_result->deployments };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'deployments') foreach (@{ $result->deployments });
        $result = $self->ListDeployments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'deployments') foreach (@{ $result->deployments });
    }

    return undef
  }
  sub ListAllEnvironmentAccountConnections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironmentAccountConnections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEnvironmentAccountConnections(@_, nextToken => $next_result->nextToken);
        push @{ $result->environmentAccountConnections }, @{ $next_result->environmentAccountConnections };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'environmentAccountConnections') foreach (@{ $result->environmentAccountConnections });
        $result = $self->ListEnvironmentAccountConnections(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'environmentAccountConnections') foreach (@{ $result->environmentAccountConnections });
    }

    return undef
  }
  sub ListAllEnvironmentOutputs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironmentOutputs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEnvironmentOutputs(@_, nextToken => $next_result->nextToken);
        push @{ $result->outputs }, @{ $next_result->outputs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'outputs') foreach (@{ $result->outputs });
        $result = $self->ListEnvironmentOutputs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'outputs') foreach (@{ $result->outputs });
    }

    return undef
  }
  sub ListAllEnvironmentProvisionedResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironmentProvisionedResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEnvironmentProvisionedResources(@_, nextToken => $next_result->nextToken);
        push @{ $result->provisionedResources }, @{ $next_result->provisionedResources };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'provisionedResources') foreach (@{ $result->provisionedResources });
        $result = $self->ListEnvironmentProvisionedResources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'provisionedResources') foreach (@{ $result->provisionedResources });
    }

    return undef
  }
  sub ListAllEnvironments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEnvironments(@_, nextToken => $next_result->nextToken);
        push @{ $result->environments }, @{ $next_result->environments };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'environments') foreach (@{ $result->environments });
        $result = $self->ListEnvironments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'environments') foreach (@{ $result->environments });
    }

    return undef
  }
  sub ListAllEnvironmentTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironmentTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEnvironmentTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->templates }, @{ $next_result->templates };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'templates') foreach (@{ $result->templates });
        $result = $self->ListEnvironmentTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'templates') foreach (@{ $result->templates });
    }

    return undef
  }
  sub ListAllEnvironmentTemplateVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironmentTemplateVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEnvironmentTemplateVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->templateVersions }, @{ $next_result->templateVersions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'templateVersions') foreach (@{ $result->templateVersions });
        $result = $self->ListEnvironmentTemplateVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'templateVersions') foreach (@{ $result->templateVersions });
    }

    return undef
  }
  sub ListAllRepositories {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRepositories(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRepositories(@_, nextToken => $next_result->nextToken);
        push @{ $result->repositories }, @{ $next_result->repositories };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'repositories') foreach (@{ $result->repositories });
        $result = $self->ListRepositories(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'repositories') foreach (@{ $result->repositories });
    }

    return undef
  }
  sub ListAllRepositorySyncDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRepositorySyncDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRepositorySyncDefinitions(@_, nextToken => $next_result->nextToken);
        push @{ $result->syncDefinitions }, @{ $next_result->syncDefinitions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'syncDefinitions') foreach (@{ $result->syncDefinitions });
        $result = $self->ListRepositorySyncDefinitions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'syncDefinitions') foreach (@{ $result->syncDefinitions });
    }

    return undef
  }
  sub ListAllServiceInstanceOutputs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceInstanceOutputs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServiceInstanceOutputs(@_, nextToken => $next_result->nextToken);
        push @{ $result->outputs }, @{ $next_result->outputs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'outputs') foreach (@{ $result->outputs });
        $result = $self->ListServiceInstanceOutputs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'outputs') foreach (@{ $result->outputs });
    }

    return undef
  }
  sub ListAllServiceInstanceProvisionedResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceInstanceProvisionedResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServiceInstanceProvisionedResources(@_, nextToken => $next_result->nextToken);
        push @{ $result->provisionedResources }, @{ $next_result->provisionedResources };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'provisionedResources') foreach (@{ $result->provisionedResources });
        $result = $self->ListServiceInstanceProvisionedResources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'provisionedResources') foreach (@{ $result->provisionedResources });
    }

    return undef
  }
  sub ListAllServiceInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServiceInstances(@_, nextToken => $next_result->nextToken);
        push @{ $result->serviceInstances }, @{ $next_result->serviceInstances };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'serviceInstances') foreach (@{ $result->serviceInstances });
        $result = $self->ListServiceInstances(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'serviceInstances') foreach (@{ $result->serviceInstances });
    }

    return undef
  }
  sub ListAllServicePipelineOutputs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServicePipelineOutputs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServicePipelineOutputs(@_, nextToken => $next_result->nextToken);
        push @{ $result->outputs }, @{ $next_result->outputs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'outputs') foreach (@{ $result->outputs });
        $result = $self->ListServicePipelineOutputs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'outputs') foreach (@{ $result->outputs });
    }

    return undef
  }
  sub ListAllServicePipelineProvisionedResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServicePipelineProvisionedResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServicePipelineProvisionedResources(@_, nextToken => $next_result->nextToken);
        push @{ $result->provisionedResources }, @{ $next_result->provisionedResources };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'provisionedResources') foreach (@{ $result->provisionedResources });
        $result = $self->ListServicePipelineProvisionedResources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'provisionedResources') foreach (@{ $result->provisionedResources });
    }

    return undef
  }
  sub ListAllServices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServices(@_, nextToken => $next_result->nextToken);
        push @{ $result->services }, @{ $next_result->services };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'services') foreach (@{ $result->services });
        $result = $self->ListServices(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'services') foreach (@{ $result->services });
    }

    return undef
  }
  sub ListAllServiceTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServiceTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->templates }, @{ $next_result->templates };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'templates') foreach (@{ $result->templates });
        $result = $self->ListServiceTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'templates') foreach (@{ $result->templates });
    }

    return undef
  }
  sub ListAllServiceTemplateVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceTemplateVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServiceTemplateVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->templateVersions }, @{ $next_result->templateVersions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'templateVersions') foreach (@{ $result->templateVersions });
        $result = $self->ListServiceTemplateVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'templateVersions') foreach (@{ $result->templateVersions });
    }

    return undef
  }
  sub ListAllTagsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTagsForResource(@_, nextToken => $next_result->nextToken);
        push @{ $result->tags }, @{ $next_result->tags };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'tags') foreach (@{ $result->tags });
        $result = $self->ListTagsForResource(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'tags') foreach (@{ $result->tags });
    }

    return undef
  }


  sub operations { qw/AcceptEnvironmentAccountConnection CancelComponentDeployment CancelEnvironmentDeployment CancelServiceInstanceDeployment CancelServicePipelineDeployment CreateComponent CreateEnvironment CreateEnvironmentAccountConnection CreateEnvironmentTemplate CreateEnvironmentTemplateVersion CreateRepository CreateService CreateServiceInstance CreateServiceSyncConfig CreateServiceTemplate CreateServiceTemplateVersion CreateTemplateSyncConfig DeleteComponent DeleteDeployment DeleteEnvironment DeleteEnvironmentAccountConnection DeleteEnvironmentTemplate DeleteEnvironmentTemplateVersion DeleteRepository DeleteService DeleteServiceSyncConfig DeleteServiceTemplate DeleteServiceTemplateVersion DeleteTemplateSyncConfig GetAccountSettings GetComponent GetDeployment GetEnvironment GetEnvironmentAccountConnection GetEnvironmentTemplate GetEnvironmentTemplateVersion GetRepository GetRepositorySyncStatus GetResourcesSummary GetService GetServiceInstance GetServiceInstanceSyncStatus GetServiceSyncBlockerSummary GetServiceSyncConfig GetServiceTemplate GetServiceTemplateVersion GetTemplateSyncConfig GetTemplateSyncStatus ListComponentOutputs ListComponentProvisionedResources ListComponents ListDeployments ListEnvironmentAccountConnections ListEnvironmentOutputs ListEnvironmentProvisionedResources ListEnvironments ListEnvironmentTemplates ListEnvironmentTemplateVersions ListRepositories ListRepositorySyncDefinitions ListServiceInstanceOutputs ListServiceInstanceProvisionedResources ListServiceInstances ListServicePipelineOutputs ListServicePipelineProvisionedResources ListServices ListServiceTemplates ListServiceTemplateVersions ListTagsForResource NotifyResourceDeploymentStatusChange RejectEnvironmentAccountConnection TagResource UntagResource UpdateAccountSettings UpdateComponent UpdateEnvironment UpdateEnvironmentAccountConnection UpdateEnvironmentTemplate UpdateEnvironmentTemplateVersion UpdateService UpdateServiceInstance UpdateServicePipeline UpdateServiceSyncBlocker UpdateServiceSyncConfig UpdateServiceTemplate UpdateServiceTemplateVersion UpdateTemplateSyncConfig / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton - Perl Interface to AWS AWS Proton

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Proton');
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

This is the Proton Service API Reference. It provides descriptions,
syntax and usage examples for each of the actions
(https://docs.aws.amazon.com/proton/latest/APIReference/API_Operations.html)
and data types
(https://docs.aws.amazon.com/proton/latest/APIReference/API_Types.html)
for the Proton service.

The documentation for each action shows the Query API request
parameters and the XML response.

Alternatively, you can use the Amazon Web Services CLI to access an
API. For more information, see the Amazon Web Services Command Line
Interface User Guide
(https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html).

The Proton service is a two-pronged automation framework.
Administrators create service templates to provide standardized
infrastructure and deployment tooling for serverless and container
based applications. Developers, in turn, select from the available
service templates to automate their application or service deployments.

Because administrators define the infrastructure and tooling that
Proton deploys and manages, they need permissions to use all of the
listed API operations.

When developers select a specific infrastructure and tooling set,
Proton deploys their applications. To monitor their applications that
are running on Proton, developers need permissions to the service
I<create>, I<list>, I<update> and I<delete> API operations and the
service instance I<list> and I<update> API operations.

To learn more about Proton, see the Proton User Guide
(https://docs.aws.amazon.com/proton/latest/userguide/Welcome.html).

B<Ensuring Idempotency>

When you make a mutating API request, the request typically returns a
result before the asynchronous workflows of the operation are complete.
Operations might also time out or encounter other server issues before
they're complete, even if the request already returned a result. This
might make it difficult to determine whether the request succeeded.
Moreover, you might need to retry the request multiple times to ensure
that the operation completes successfully. However, if the original
request and the subsequent retries are successful, the operation occurs
multiple times. This means that you might create more resources than
you intended.

I<Idempotency> ensures that an API request action completes no more
than one time. With an idempotent request, if the original request
action completes successfully, any subsequent retries complete
successfully without performing any further actions. However, the
result might contain updated information, such as the current creation
status.

The following lists of APIs are grouped according to methods that
ensure idempotency.

B<Idempotent create APIs with a client token>

The API actions in this list support idempotency with the use of a
I<client token>. The corresponding Amazon Web Services CLI commands
also support idempotency using a client token. A client token is a
unique, case-sensitive string of up to 64 ASCII characters. To make an
idempotent API request using one of these actions, specify a client
token in the request. We recommend that you I<don't> reuse the same
client token for other API requests. If you donE<rsquo>t provide a
client token for these APIs, a default client token is automatically
provided by SDKs.

Given a request action that has succeeded:

If you retry the request using the same client token and the same
parameters, the retry succeeds without performing any further actions
other than returning the original resource detail data in the response.

If you retry the request using the same client token, but one or more
of the parameters are different, the retry throws a
C<ValidationException> with an C<IdempotentParameterMismatch> error.

Client tokens expire eight hours after a request is made. If you retry
the request with the expired token, a new resource is created.

If the original resource is deleted and you retry the request, a new
resource is created.

Idempotent create APIs with a client token:

=over

=item *

CreateEnvironmentTemplateVersion

=item *

CreateServiceTemplateVersion

=item *

CreateEnvironmentAccountConnection

=back

B<Idempotent create APIs>

Given a request action that has succeeded:

If you retry the request with an API from this group, and the original
resource I<hasn't> been modified, the retry succeeds without performing
any further actions other than returning the original resource detail
data in the response.

If the original resource has been modified, the retry throws a
C<ConflictException>.

If you retry with different input parameters, the retry throws a
C<ValidationException> with an C<IdempotentParameterMismatch> error.

Idempotent create APIs:

=over

=item *

CreateEnvironmentTemplate

=item *

CreateServiceTemplate

=item *

CreateEnvironment

=item *

CreateService

=back

B<Idempotent delete APIs>

Given a request action that has succeeded:

When you retry the request with an API from this group and the resource
was deleted, its metadata is returned in the response.

If you retry and the resource doesn't exist, the response is empty.

In both cases, the retry succeeds.

Idempotent delete APIs:

=over

=item *

DeleteEnvironmentTemplate

=item *

DeleteEnvironmentTemplateVersion

=item *

DeleteServiceTemplate

=item *

DeleteServiceTemplateVersion

=item *

DeleteEnvironmentAccountConnection

=back

B<Asynchronous idempotent delete APIs>

Given a request action that has succeeded:

If you retry the request with an API from this group, if the original
request delete operation status is C<DELETE_IN_PROGRESS>, the retry
returns the resource detail data in the response without performing any
further actions.

If the original request delete operation is complete, a retry returns
an empty response.

Asynchronous idempotent delete APIs:

=over

=item *

DeleteEnvironment

=item *

DeleteService

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20>


=head1 METHODS

=head2 AcceptEnvironmentAccountConnection

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Proton::AcceptEnvironmentAccountConnection>

Returns: a L<Paws::Proton::AcceptEnvironmentAccountConnectionOutput> instance

In a management account, an environment account connection request is
accepted. When the environment account connection request is accepted,
Proton can use the associated IAM role to provision environment
infrastructure resources in the associated environment account.

For more information, see Environment account connections
(https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
in the I<Proton User guide>.


=head2 CancelComponentDeployment

=over

=item ComponentName => Str


=back

Each argument is described in detail in: L<Paws::Proton::CancelComponentDeployment>

Returns: a L<Paws::Proton::CancelComponentDeploymentOutput> instance

Attempts to cancel a component deployment (for a component that is in
the C<IN_PROGRESS> deployment status).

For more information about components, see Proton components
(https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the I<Proton User Guide>.


=head2 CancelEnvironmentDeployment

=over

=item EnvironmentName => Str


=back

Each argument is described in detail in: L<Paws::Proton::CancelEnvironmentDeployment>

Returns: a L<Paws::Proton::CancelEnvironmentDeploymentOutput> instance

Attempts to cancel an environment deployment on an UpdateEnvironment
action, if the deployment is C<IN_PROGRESS>. For more information, see
Update an environment
(https://docs.aws.amazon.com/proton/latest/userguide/ag-env-update.html)
in the I<Proton User guide>.

The following list includes potential cancellation scenarios.

=over

=item *

If the cancellation attempt succeeds, the resulting deployment state is
C<CANCELLED>.

=item *

If the cancellation attempt fails, the resulting deployment state is
C<FAILED>.

=item *

If the current UpdateEnvironment action succeeds before the
cancellation attempt starts, the resulting deployment state is
C<SUCCEEDED> and the cancellation attempt has no effect.

=back



=head2 CancelServiceInstanceDeployment

=over

=item ServiceInstanceName => Str

=item ServiceName => Str


=back

Each argument is described in detail in: L<Paws::Proton::CancelServiceInstanceDeployment>

Returns: a L<Paws::Proton::CancelServiceInstanceDeploymentOutput> instance

Attempts to cancel a service instance deployment on an
UpdateServiceInstance action, if the deployment is C<IN_PROGRESS>. For
more information, see Update a service instance
(https://docs.aws.amazon.com/proton/latest/userguide/ag-svc-instance-update.html)
in the I<Proton User guide>.

The following list includes potential cancellation scenarios.

=over

=item *

If the cancellation attempt succeeds, the resulting deployment state is
C<CANCELLED>.

=item *

If the cancellation attempt fails, the resulting deployment state is
C<FAILED>.

=item *

If the current UpdateServiceInstance action succeeds before the
cancellation attempt starts, the resulting deployment state is
C<SUCCEEDED> and the cancellation attempt has no effect.

=back



=head2 CancelServicePipelineDeployment

=over

=item ServiceName => Str


=back

Each argument is described in detail in: L<Paws::Proton::CancelServicePipelineDeployment>

Returns: a L<Paws::Proton::CancelServicePipelineDeploymentOutput> instance

Attempts to cancel a service pipeline deployment on an
UpdateServicePipeline action, if the deployment is C<IN_PROGRESS>. For
more information, see Update a service pipeline
(https://docs.aws.amazon.com/proton/latest/userguide/ag-svc-pipeline-update.html)
in the I<Proton User guide>.

The following list includes potential cancellation scenarios.

=over

=item *

If the cancellation attempt succeeds, the resulting deployment state is
C<CANCELLED>.

=item *

If the cancellation attempt fails, the resulting deployment state is
C<FAILED>.

=item *

If the current UpdateServicePipeline action succeeds before the
cancellation attempt starts, the resulting deployment state is
C<SUCCEEDED> and the cancellation attempt has no effect.

=back



=head2 CreateComponent

=over

=item Manifest => Str

=item Name => Str

=item TemplateFile => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [EnvironmentName => Str]

=item [ServiceInstanceName => Str]

=item [ServiceName => Str]

=item [ServiceSpec => Str]

=item [Tags => ArrayRef[L<Paws::Proton::Tag>]]


=back

Each argument is described in detail in: L<Paws::Proton::CreateComponent>

Returns: a L<Paws::Proton::CreateComponentOutput> instance

Create an Proton component. A component is an infrastructure extension
for a service instance.

For more information about components, see Proton components
(https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the I<Proton User Guide>.


=head2 CreateEnvironment

=over

=item Name => Str

=item Spec => Str

=item TemplateMajorVersion => Str

=item TemplateName => Str

=item [CodebuildRoleArn => Str]

=item [ComponentRoleArn => Str]

=item [Description => Str]

=item [EnvironmentAccountConnectionId => Str]

=item [ProtonServiceRoleArn => Str]

=item [ProvisioningRepository => L<Paws::Proton::RepositoryBranchInput>]

=item [Tags => ArrayRef[L<Paws::Proton::Tag>]]

=item [TemplateMinorVersion => Str]


=back

Each argument is described in detail in: L<Paws::Proton::CreateEnvironment>

Returns: a L<Paws::Proton::CreateEnvironmentOutput> instance

Deploy a new environment. An Proton environment is created from an
environment template that defines infrastructure and resources that can
be shared across services.

B<You can provision environments using the following methods:>

=over

=item *

Amazon Web Services-managed provisioning: Proton makes direct calls to
provision your resources.

=item *

Self-managed provisioning: Proton makes pull requests on your
repository to provide compiled infrastructure as code (IaC) files that
your IaC engine uses to provision resources.

=back

For more information, see Environments
(https://docs.aws.amazon.com/proton/latest/userguide/ag-environments.html)
and Provisioning methods
(https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html)
in the I<Proton User Guide>.


=head2 CreateEnvironmentAccountConnection

=over

=item EnvironmentName => Str

=item ManagementAccountId => Str

=item [ClientToken => Str]

=item [CodebuildRoleArn => Str]

=item [ComponentRoleArn => Str]

=item [RoleArn => Str]

=item [Tags => ArrayRef[L<Paws::Proton::Tag>]]


=back

Each argument is described in detail in: L<Paws::Proton::CreateEnvironmentAccountConnection>

Returns: a L<Paws::Proton::CreateEnvironmentAccountConnectionOutput> instance

Create an environment account connection in an environment account so
that environment infrastructure resources can be provisioned in the
environment account from a management account.

An environment account connection is a secure bi-directional connection
between a I<management account> and an I<environment account> that
maintains authorization and permissions. For more information, see
Environment account connections
(https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
in the I<Proton User guide>.


=head2 CreateEnvironmentTemplate

=over

=item Name => Str

=item [Description => Str]

=item [DisplayName => Str]

=item [EncryptionKey => Str]

=item [Provisioning => Str]

=item [Tags => ArrayRef[L<Paws::Proton::Tag>]]


=back

Each argument is described in detail in: L<Paws::Proton::CreateEnvironmentTemplate>

Returns: a L<Paws::Proton::CreateEnvironmentTemplateOutput> instance

Create an environment template for Proton. For more information, see
Environment Templates
(https://docs.aws.amazon.com/proton/latest/userguide/ag-templates.html)
in the I<Proton User Guide>.

You can create an environment template in one of the two following
ways:

=over

=item *

Register and publish a I<standard> environment template that instructs
Proton to deploy and manage environment infrastructure.

=item *

Register and publish a I<customer managed> environment template that
connects Proton to your existing provisioned infrastructure that you
manage. Proton I<doesn't> manage your existing provisioned
infrastructure. To create an environment template for customer
provisioned and managed infrastructure, include the C<provisioning>
parameter and set the value to C<CUSTOMER_MANAGED>. For more
information, see Register and publish an environment template
(https://docs.aws.amazon.com/proton/latest/userguide/template-create.html)
in the I<Proton User Guide>.

=back



=head2 CreateEnvironmentTemplateVersion

=over

=item Source => L<Paws::Proton::TemplateVersionSourceInput>

=item TemplateName => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [MajorVersion => Str]

=item [Tags => ArrayRef[L<Paws::Proton::Tag>]]


=back

Each argument is described in detail in: L<Paws::Proton::CreateEnvironmentTemplateVersion>

Returns: a L<Paws::Proton::CreateEnvironmentTemplateVersionOutput> instance

Create a new major or minor version of an environment template. A major
version of an environment template is a version that I<isn't> backwards
compatible. A minor version of an environment template is a version
that's backwards compatible within its major version.


=head2 CreateRepository

=over

=item ConnectionArn => Str

=item Name => Str

=item Provider => Str

=item [EncryptionKey => Str]

=item [Tags => ArrayRef[L<Paws::Proton::Tag>]]


=back

Each argument is described in detail in: L<Paws::Proton::CreateRepository>

Returns: a L<Paws::Proton::CreateRepositoryOutput> instance

Create and register a link to a repository. Proton uses the link to
repeatedly access the repository, to either push to it (self-managed
provisioning) or pull from it (template sync). You can share a linked
repository across multiple resources (like environments using
self-managed provisioning, or synced templates). When you create a
repository link, Proton creates a service-linked role
(https://docs.aws.amazon.com/proton/latest/userguide/using-service-linked-roles.html)
for you.

For more information, see Self-managed provisioning
(https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html#ag-works-prov-methods-self),
Template bundles
(https://docs.aws.amazon.com/proton/latest/userguide/ag-template-authoring.html#ag-template-bundles),
and Template sync configurations
(https://docs.aws.amazon.com/proton/latest/userguide/ag-template-sync-configs.html)
in the I<Proton User Guide>.


=head2 CreateService

=over

=item Name => Str

=item Spec => Str

=item TemplateMajorVersion => Str

=item TemplateName => Str

=item [BranchName => Str]

=item [Description => Str]

=item [RepositoryConnectionArn => Str]

=item [RepositoryId => Str]

=item [Tags => ArrayRef[L<Paws::Proton::Tag>]]

=item [TemplateMinorVersion => Str]


=back

Each argument is described in detail in: L<Paws::Proton::CreateService>

Returns: a L<Paws::Proton::CreateServiceOutput> instance

Create an Proton service. An Proton service is an instantiation of a
service template and often includes several service instances and
pipeline. For more information, see Services
(https://docs.aws.amazon.com/proton/latest/userguide/ag-services.html)
in the I<Proton User Guide>.


=head2 CreateServiceInstance

=over

=item Name => Str

=item ServiceName => Str

=item Spec => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::Proton::Tag>]]

=item [TemplateMajorVersion => Str]

=item [TemplateMinorVersion => Str]


=back

Each argument is described in detail in: L<Paws::Proton::CreateServiceInstance>

Returns: a L<Paws::Proton::CreateServiceInstanceOutput> instance

Create a service instance.


=head2 CreateServiceSyncConfig

=over

=item Branch => Str

=item FilePath => Str

=item RepositoryName => Str

=item RepositoryProvider => Str

=item ServiceName => Str


=back

Each argument is described in detail in: L<Paws::Proton::CreateServiceSyncConfig>

Returns: a L<Paws::Proton::CreateServiceSyncConfigOutput> instance

Create the Proton Ops configuration file.


=head2 CreateServiceTemplate

=over

=item Name => Str

=item [Description => Str]

=item [DisplayName => Str]

=item [EncryptionKey => Str]

=item [PipelineProvisioning => Str]

=item [Tags => ArrayRef[L<Paws::Proton::Tag>]]


=back

Each argument is described in detail in: L<Paws::Proton::CreateServiceTemplate>

Returns: a L<Paws::Proton::CreateServiceTemplateOutput> instance

Create a service template. The administrator creates a service template
to define standardized infrastructure and an optional CI/CD service
pipeline. Developers, in turn, select the service template from Proton.
If the selected service template includes a service pipeline
definition, they provide a link to their source code repository. Proton
then deploys and manages the infrastructure defined by the selected
service template. For more information, see Proton templates
(https://docs.aws.amazon.com/proton/latest/userguide/ag-templates.html)
in the I<Proton User Guide>.


=head2 CreateServiceTemplateVersion

=over

=item CompatibleEnvironmentTemplates => ArrayRef[L<Paws::Proton::CompatibleEnvironmentTemplateInput>]

=item Source => L<Paws::Proton::TemplateVersionSourceInput>

=item TemplateName => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [MajorVersion => Str]

=item [SupportedComponentSources => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::Proton::Tag>]]


=back

Each argument is described in detail in: L<Paws::Proton::CreateServiceTemplateVersion>

Returns: a L<Paws::Proton::CreateServiceTemplateVersionOutput> instance

Create a new major or minor version of a service template. A major
version of a service template is a version that I<isn't> backward
compatible. A minor version of a service template is a version that's
backward compatible within its major version.


=head2 CreateTemplateSyncConfig

=over

=item Branch => Str

=item RepositoryName => Str

=item RepositoryProvider => Str

=item TemplateName => Str

=item TemplateType => Str

=item [Subdirectory => Str]


=back

Each argument is described in detail in: L<Paws::Proton::CreateTemplateSyncConfig>

Returns: a L<Paws::Proton::CreateTemplateSyncConfigOutput> instance

Set up a template to create new template versions automatically by
tracking a linked repository. A linked repository is a repository that
has been registered with Proton. For more information, see
CreateRepository.

When a commit is pushed to your linked repository, Proton checks for
changes to your repository template bundles. If it detects a template
bundle change, a new major or minor version of its template is created,
if the version doesnE<rsquo>t already exist. For more information, see
Template sync configurations
(https://docs.aws.amazon.com/proton/latest/userguide/ag-template-sync-configs.html)
in the I<Proton User Guide>.


=head2 DeleteComponent

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Proton::DeleteComponent>

Returns: a L<Paws::Proton::DeleteComponentOutput> instance

Delete an Proton component resource.

For more information about components, see Proton components
(https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the I<Proton User Guide>.


=head2 DeleteDeployment

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Proton::DeleteDeployment>

Returns: a L<Paws::Proton::DeleteDeploymentOutput> instance

Delete the deployment.


=head2 DeleteEnvironment

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Proton::DeleteEnvironment>

Returns: a L<Paws::Proton::DeleteEnvironmentOutput> instance

Delete an environment.


=head2 DeleteEnvironmentAccountConnection

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Proton::DeleteEnvironmentAccountConnection>

Returns: a L<Paws::Proton::DeleteEnvironmentAccountConnectionOutput> instance

In an environment account, delete an environment account connection.

After you delete an environment account connection thatE<rsquo>s in use
by an Proton environment, Proton I<canE<rsquo>t> manage the environment
infrastructure resources until a new environment account connection is
accepted for the environment account and associated environment. You're
responsible for cleaning up provisioned resources that remain without
an environment connection.

For more information, see Environment account connections
(https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
in the I<Proton User guide>.


=head2 DeleteEnvironmentTemplate

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Proton::DeleteEnvironmentTemplate>

Returns: a L<Paws::Proton::DeleteEnvironmentTemplateOutput> instance

If no other major or minor versions of an environment template exist,
delete the environment template.


=head2 DeleteEnvironmentTemplateVersion

=over

=item MajorVersion => Str

=item MinorVersion => Str

=item TemplateName => Str


=back

Each argument is described in detail in: L<Paws::Proton::DeleteEnvironmentTemplateVersion>

Returns: a L<Paws::Proton::DeleteEnvironmentTemplateVersionOutput> instance

If no other minor versions of an environment template exist, delete a
major version of the environment template if it's not the
C<Recommended> version. Delete the C<Recommended> version of the
environment template if no other major versions or minor versions of
the environment template exist. A major version of an environment
template is a version that's not backward compatible.

Delete a minor version of an environment template if it I<isn't> the
C<Recommended> version. Delete a C<Recommended> minor version of the
environment template if no other minor versions of the environment
template exist. A minor version of an environment template is a version
that's backward compatible.


=head2 DeleteRepository

=over

=item Name => Str

=item Provider => Str


=back

Each argument is described in detail in: L<Paws::Proton::DeleteRepository>

Returns: a L<Paws::Proton::DeleteRepositoryOutput> instance

De-register and unlink your repository.


=head2 DeleteService

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Proton::DeleteService>

Returns: a L<Paws::Proton::DeleteServiceOutput> instance

Delete a service, with its instances and pipeline.

You can't delete a service if it has any service instances that have
components attached to them.

For more information about components, see Proton components
(https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the I<Proton User Guide>.


=head2 DeleteServiceSyncConfig

=over

=item ServiceName => Str


=back

Each argument is described in detail in: L<Paws::Proton::DeleteServiceSyncConfig>

Returns: a L<Paws::Proton::DeleteServiceSyncConfigOutput> instance

Delete the Proton Ops file.


=head2 DeleteServiceTemplate

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Proton::DeleteServiceTemplate>

Returns: a L<Paws::Proton::DeleteServiceTemplateOutput> instance

If no other major or minor versions of the service template exist,
delete the service template.


=head2 DeleteServiceTemplateVersion

=over

=item MajorVersion => Str

=item MinorVersion => Str

=item TemplateName => Str


=back

Each argument is described in detail in: L<Paws::Proton::DeleteServiceTemplateVersion>

Returns: a L<Paws::Proton::DeleteServiceTemplateVersionOutput> instance

If no other minor versions of a service template exist, delete a major
version of the service template if it's not the C<Recommended> version.
Delete the C<Recommended> version of the service template if no other
major versions or minor versions of the service template exist. A major
version of a service template is a version that I<isn't> backwards
compatible.

Delete a minor version of a service template if it's not the
C<Recommended> version. Delete a C<Recommended> minor version of the
service template if no other minor versions of the service template
exist. A minor version of a service template is a version that's
backwards compatible.


=head2 DeleteTemplateSyncConfig

=over

=item TemplateName => Str

=item TemplateType => Str


=back

Each argument is described in detail in: L<Paws::Proton::DeleteTemplateSyncConfig>

Returns: a L<Paws::Proton::DeleteTemplateSyncConfigOutput> instance

Delete a template sync configuration.


=head2 GetAccountSettings






Each argument is described in detail in: L<Paws::Proton::GetAccountSettings>

Returns: a L<Paws::Proton::GetAccountSettingsOutput> instance

Get detail data for Proton account-wide settings.


=head2 GetComponent

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetComponent>

Returns: a L<Paws::Proton::GetComponentOutput> instance

Get detailed data for a component.

For more information about components, see Proton components
(https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the I<Proton User Guide>.


=head2 GetDeployment

=over

=item Id => Str

=item [ComponentName => Str]

=item [EnvironmentName => Str]

=item [ServiceInstanceName => Str]

=item [ServiceName => Str]


=back

Each argument is described in detail in: L<Paws::Proton::GetDeployment>

Returns: a L<Paws::Proton::GetDeploymentOutput> instance

Get detailed data for a deployment.


=head2 GetEnvironment

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetEnvironment>

Returns: a L<Paws::Proton::GetEnvironmentOutput> instance

Get detailed data for an environment.


=head2 GetEnvironmentAccountConnection

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetEnvironmentAccountConnection>

Returns: a L<Paws::Proton::GetEnvironmentAccountConnectionOutput> instance

In an environment account, get the detailed data for an environment
account connection.

For more information, see Environment account connections
(https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
in the I<Proton User guide>.


=head2 GetEnvironmentTemplate

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetEnvironmentTemplate>

Returns: a L<Paws::Proton::GetEnvironmentTemplateOutput> instance

Get detailed data for an environment template.


=head2 GetEnvironmentTemplateVersion

=over

=item MajorVersion => Str

=item MinorVersion => Str

=item TemplateName => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetEnvironmentTemplateVersion>

Returns: a L<Paws::Proton::GetEnvironmentTemplateVersionOutput> instance

Get detailed data for a major or minor version of an environment
template.


=head2 GetRepository

=over

=item Name => Str

=item Provider => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetRepository>

Returns: a L<Paws::Proton::GetRepositoryOutput> instance

Get detail data for a linked repository.


=head2 GetRepositorySyncStatus

=over

=item Branch => Str

=item RepositoryName => Str

=item RepositoryProvider => Str

=item SyncType => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetRepositorySyncStatus>

Returns: a L<Paws::Proton::GetRepositorySyncStatusOutput> instance

Get the sync status of a repository used for Proton template sync. For
more information about template sync, see .

A repository sync status isn't tied to the Proton Repository resource
(or any other Proton resource). Therefore, tags on an Proton Repository
resource have no effect on this action. Specifically, you can't use
these tags to control access to this action using Attribute-based
access control (ABAC).

For more information about ABAC, see ABAC
(https://docs.aws.amazon.com/proton/latest/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-tags)
in the I<Proton User Guide>.


=head2 GetResourcesSummary






Each argument is described in detail in: L<Paws::Proton::GetResourcesSummary>

Returns: a L<Paws::Proton::GetResourcesSummaryOutput> instance

Get counts of Proton resources.

For infrastructure-provisioning resources (environments, services,
service instances, pipelines), the action returns staleness counts. A
resource is stale when it's behind the recommended version of the
Proton template that it uses and it needs an update to become current.

The action returns staleness counts (counts of resources that are
up-to-date, behind a template major version, or behind a template minor
version), the total number of resources, and the number of resources
that are in a failed state, grouped by resource type. Components,
environments, and service templates return less information - see the
C<components>, C<environments>, and C<serviceTemplates> field
descriptions.

For context, the action also returns the total number of each type of
Proton template in the Amazon Web Services account.

For more information, see Proton dashboard
(https://docs.aws.amazon.com/proton/latest/userguide/monitoring-dashboard.html)
in the I<Proton User Guide>.


=head2 GetService

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetService>

Returns: a L<Paws::Proton::GetServiceOutput> instance

Get detailed data for a service.


=head2 GetServiceInstance

=over

=item Name => Str

=item ServiceName => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetServiceInstance>

Returns: a L<Paws::Proton::GetServiceInstanceOutput> instance

Get detailed data for a service instance. A service instance is an
instantiation of service template and it runs in a specific
environment.


=head2 GetServiceInstanceSyncStatus

=over

=item ServiceInstanceName => Str

=item ServiceName => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetServiceInstanceSyncStatus>

Returns: a L<Paws::Proton::GetServiceInstanceSyncStatusOutput> instance

Get the status of the synced service instance.


=head2 GetServiceSyncBlockerSummary

=over

=item ServiceName => Str

=item [ServiceInstanceName => Str]


=back

Each argument is described in detail in: L<Paws::Proton::GetServiceSyncBlockerSummary>

Returns: a L<Paws::Proton::GetServiceSyncBlockerSummaryOutput> instance

Get detailed data for the service sync blocker summary.


=head2 GetServiceSyncConfig

=over

=item ServiceName => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetServiceSyncConfig>

Returns: a L<Paws::Proton::GetServiceSyncConfigOutput> instance

Get detailed information for the service sync configuration.


=head2 GetServiceTemplate

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetServiceTemplate>

Returns: a L<Paws::Proton::GetServiceTemplateOutput> instance

Get detailed data for a service template.


=head2 GetServiceTemplateVersion

=over

=item MajorVersion => Str

=item MinorVersion => Str

=item TemplateName => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetServiceTemplateVersion>

Returns: a L<Paws::Proton::GetServiceTemplateVersionOutput> instance

Get detailed data for a major or minor version of a service template.


=head2 GetTemplateSyncConfig

=over

=item TemplateName => Str

=item TemplateType => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetTemplateSyncConfig>

Returns: a L<Paws::Proton::GetTemplateSyncConfigOutput> instance

Get detail data for a template sync configuration.


=head2 GetTemplateSyncStatus

=over

=item TemplateName => Str

=item TemplateType => Str

=item TemplateVersion => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetTemplateSyncStatus>

Returns: a L<Paws::Proton::GetTemplateSyncStatusOutput> instance

Get the status of a template sync.


=head2 ListComponentOutputs

=over

=item ComponentName => Str

=item [DeploymentId => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListComponentOutputs>

Returns: a L<Paws::Proton::ListComponentOutputsOutput> instance

Get a list of component Infrastructure as Code (IaC) outputs.

For more information about components, see Proton components
(https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the I<Proton User Guide>.


=head2 ListComponentProvisionedResources

=over

=item ComponentName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListComponentProvisionedResources>

Returns: a L<Paws::Proton::ListComponentProvisionedResourcesOutput> instance

List provisioned resources for a component with details.

For more information about components, see Proton components
(https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the I<Proton User Guide>.


=head2 ListComponents

=over

=item [EnvironmentName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceInstanceName => Str]

=item [ServiceName => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListComponents>

Returns: a L<Paws::Proton::ListComponentsOutput> instance

List components with summary data. You can filter the result list by
environment, service, or a single service instance.

For more information about components, see Proton components
(https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the I<Proton User Guide>.


=head2 ListDeployments

=over

=item [ComponentName => Str]

=item [EnvironmentName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceInstanceName => Str]

=item [ServiceName => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListDeployments>

Returns: a L<Paws::Proton::ListDeploymentsOutput> instance

List deployments. You can filter the result list by environment,
service, or a single service instance.


=head2 ListEnvironmentAccountConnections

=over

=item RequestedBy => Str

=item [EnvironmentName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Statuses => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Proton::ListEnvironmentAccountConnections>

Returns: a L<Paws::Proton::ListEnvironmentAccountConnectionsOutput> instance

View a list of environment account connections.

For more information, see Environment account connections
(https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
in the I<Proton User guide>.


=head2 ListEnvironmentOutputs

=over

=item EnvironmentName => Str

=item [DeploymentId => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListEnvironmentOutputs>

Returns: a L<Paws::Proton::ListEnvironmentOutputsOutput> instance

List the infrastructure as code outputs for your environment.


=head2 ListEnvironmentProvisionedResources

=over

=item EnvironmentName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListEnvironmentProvisionedResources>

Returns: a L<Paws::Proton::ListEnvironmentProvisionedResourcesOutput> instance

List the provisioned resources for your environment.


=head2 ListEnvironments

=over

=item [EnvironmentTemplates => ArrayRef[L<Paws::Proton::EnvironmentTemplateFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListEnvironments>

Returns: a L<Paws::Proton::ListEnvironmentsOutput> instance

List environments with detail data summaries.


=head2 ListEnvironmentTemplates

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListEnvironmentTemplates>

Returns: a L<Paws::Proton::ListEnvironmentTemplatesOutput> instance

List environment templates.


=head2 ListEnvironmentTemplateVersions

=over

=item TemplateName => Str

=item [MajorVersion => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListEnvironmentTemplateVersions>

Returns: a L<Paws::Proton::ListEnvironmentTemplateVersionsOutput> instance

List major or minor versions of an environment template with detail
data.


=head2 ListRepositories

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListRepositories>

Returns: a L<Paws::Proton::ListRepositoriesOutput> instance

List linked repositories with detail data.


=head2 ListRepositorySyncDefinitions

=over

=item RepositoryName => Str

=item RepositoryProvider => Str

=item SyncType => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListRepositorySyncDefinitions>

Returns: a L<Paws::Proton::ListRepositorySyncDefinitionsOutput> instance

List repository sync definitions with detail data.


=head2 ListServiceInstanceOutputs

=over

=item ServiceInstanceName => Str

=item ServiceName => Str

=item [DeploymentId => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListServiceInstanceOutputs>

Returns: a L<Paws::Proton::ListServiceInstanceOutputsOutput> instance

Get a list service of instance Infrastructure as Code (IaC) outputs.


=head2 ListServiceInstanceProvisionedResources

=over

=item ServiceInstanceName => Str

=item ServiceName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListServiceInstanceProvisionedResources>

Returns: a L<Paws::Proton::ListServiceInstanceProvisionedResourcesOutput> instance

List provisioned resources for a service instance with details.


=head2 ListServiceInstances

=over

=item [Filters => ArrayRef[L<Paws::Proton::ListServiceInstancesFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceName => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListServiceInstances>

Returns: a L<Paws::Proton::ListServiceInstancesOutput> instance

List service instances with summary data. This action lists service
instances of all services in the Amazon Web Services account.


=head2 ListServicePipelineOutputs

=over

=item ServiceName => Str

=item [DeploymentId => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListServicePipelineOutputs>

Returns: a L<Paws::Proton::ListServicePipelineOutputsOutput> instance

Get a list of service pipeline Infrastructure as Code (IaC) outputs.


=head2 ListServicePipelineProvisionedResources

=over

=item ServiceName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListServicePipelineProvisionedResources>

Returns: a L<Paws::Proton::ListServicePipelineProvisionedResourcesOutput> instance

List provisioned resources for a service and pipeline with details.


=head2 ListServices

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListServices>

Returns: a L<Paws::Proton::ListServicesOutput> instance

List services with summaries of detail data.


=head2 ListServiceTemplates

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListServiceTemplates>

Returns: a L<Paws::Proton::ListServiceTemplatesOutput> instance

List service templates with detail data.


=head2 ListServiceTemplateVersions

=over

=item TemplateName => Str

=item [MajorVersion => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListServiceTemplateVersions>

Returns: a L<Paws::Proton::ListServiceTemplateVersionsOutput> instance

List major or minor versions of a service template with detail data.


=head2 ListTagsForResource

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListTagsForResource>

Returns: a L<Paws::Proton::ListTagsForResourceOutput> instance

List tags for a resource. For more information, see Proton resources
and tagging
(https://docs.aws.amazon.com/proton/latest/userguide/resources.html) in
the I<Proton User Guide>.


=head2 NotifyResourceDeploymentStatusChange

=over

=item ResourceArn => Str

=item [DeploymentId => Str]

=item [Outputs => ArrayRef[L<Paws::Proton::Output>]]

=item [Status => Str]

=item [StatusMessage => Str]


=back

Each argument is described in detail in: L<Paws::Proton::NotifyResourceDeploymentStatusChange>

Returns: a L<Paws::Proton::NotifyResourceDeploymentStatusChangeOutput> instance

Notify Proton of status changes to a provisioned resource when you use
self-managed provisioning.

For more information, see Self-managed provisioning
(https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html#ag-works-prov-methods-self)
in the I<Proton User Guide>.


=head2 RejectEnvironmentAccountConnection

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Proton::RejectEnvironmentAccountConnection>

Returns: a L<Paws::Proton::RejectEnvironmentAccountConnectionOutput> instance

In a management account, reject an environment account connection from
another environment account.

After you reject an environment account connection request, you
I<can't> accept or use the rejected environment account connection.

You I<canE<rsquo>t> reject an environment account connection that's
connected to an environment.

For more information, see Environment account connections
(https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
in the I<Proton User guide>.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::Proton::Tag>]


=back

Each argument is described in detail in: L<Paws::Proton::TagResource>

Returns: a L<Paws::Proton::TagResourceOutput> instance

Tag a resource. A tag is a key-value pair of metadata that you
associate with an Proton resource.

For more information, see Proton resources and tagging
(https://docs.aws.amazon.com/proton/latest/userguide/resources.html) in
the I<Proton User Guide>.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Proton::UntagResource>

Returns: a L<Paws::Proton::UntagResourceOutput> instance

Remove a customer tag from a resource. A tag is a key-value pair of
metadata associated with an Proton resource.

For more information, see Proton resources and tagging
(https://docs.aws.amazon.com/proton/latest/userguide/resources.html) in
the I<Proton User Guide>.


=head2 UpdateAccountSettings

=over

=item [DeletePipelineProvisioningRepository => Bool]

=item [PipelineCodebuildRoleArn => Str]

=item [PipelineProvisioningRepository => L<Paws::Proton::RepositoryBranchInput>]

=item [PipelineServiceRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Proton::UpdateAccountSettings>

Returns: a L<Paws::Proton::UpdateAccountSettingsOutput> instance

Update Proton settings that are used for multiple services in the
Amazon Web Services account.


=head2 UpdateComponent

=over

=item DeploymentType => Str

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [ServiceInstanceName => Str]

=item [ServiceName => Str]

=item [ServiceSpec => Str]

=item [TemplateFile => Str]


=back

Each argument is described in detail in: L<Paws::Proton::UpdateComponent>

Returns: a L<Paws::Proton::UpdateComponentOutput> instance

Update a component.

There are a few modes for updating a component. The C<deploymentType>
field defines the mode.

You can't update a component while its deployment status, or the
deployment status of a service instance attached to it, is
C<IN_PROGRESS>.

For more information about components, see Proton components
(https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the I<Proton User Guide>.


=head2 UpdateEnvironment

=over

=item DeploymentType => Str

=item Name => Str

=item [CodebuildRoleArn => Str]

=item [ComponentRoleArn => Str]

=item [Description => Str]

=item [EnvironmentAccountConnectionId => Str]

=item [ProtonServiceRoleArn => Str]

=item [ProvisioningRepository => L<Paws::Proton::RepositoryBranchInput>]

=item [Spec => Str]

=item [TemplateMajorVersion => Str]

=item [TemplateMinorVersion => Str]


=back

Each argument is described in detail in: L<Paws::Proton::UpdateEnvironment>

Returns: a L<Paws::Proton::UpdateEnvironmentOutput> instance

Update an environment.

If the environment is associated with an environment account
connection, I<don't> update or include the C<protonServiceRoleArn> and
C<provisioningRepository> parameter to update or connect to an
environment account connection.

You can only update to a new environment account connection if that
connection was created in the same environment account that the current
environment account connection was created in. The account connection
must also be associated with the current environment.

If the environment I<isn't> associated with an environment account
connection, I<don't> update or include the
C<environmentAccountConnectionId> parameter. You I<can't> update or
connect the environment to an environment account connection if it
I<isn't> already associated with an environment connection.

You can update either the C<environmentAccountConnectionId> or
C<protonServiceRoleArn> parameter and value. You canE<rsquo>t update
both.

If the environment was configured for Amazon Web Services-managed
provisioning, omit the C<provisioningRepository> parameter.

If the environment was configured for self-managed provisioning,
specify the C<provisioningRepository> parameter and omit the
C<protonServiceRoleArn> and C<environmentAccountConnectionId>
parameters.

For more information, see Environments
(https://docs.aws.amazon.com/proton/latest/userguide/ag-environments.html)
and Provisioning methods
(https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html)
in the I<Proton User Guide>.

There are four modes for updating an environment. The C<deploymentType>
field defines the mode.

=over

=item C<NONE>

In this mode, a deployment I<doesn't> occur. Only the requested
metadata parameters are updated.

=item C<CURRENT_VERSION>

In this mode, the environment is deployed and updated with the new spec
that you provide. Only requested parameters are updated.
I<DonE<rsquo>t> include minor or major version parameters when you use
this C<deployment-type>.

=item C<MINOR_VERSION>

In this mode, the environment is deployed and updated with the
published, recommended (latest) minor version of the current major
version in use, by default. You can also specify a different minor
version of the current major version in use.

=item C<MAJOR_VERSION>

In this mode, the environment is deployed and updated with the
published, recommended (latest) major and minor version of the current
template, by default. You can also specify a different major version
that's higher than the major version in use and a minor version.

=back



=head2 UpdateEnvironmentAccountConnection

=over

=item Id => Str

=item [CodebuildRoleArn => Str]

=item [ComponentRoleArn => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Proton::UpdateEnvironmentAccountConnection>

Returns: a L<Paws::Proton::UpdateEnvironmentAccountConnectionOutput> instance

In an environment account, update an environment account connection to
use a new IAM role.

For more information, see Environment account connections
(https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
in the I<Proton User guide>.


=head2 UpdateEnvironmentTemplate

=over

=item Name => Str

=item [Description => Str]

=item [DisplayName => Str]


=back

Each argument is described in detail in: L<Paws::Proton::UpdateEnvironmentTemplate>

Returns: a L<Paws::Proton::UpdateEnvironmentTemplateOutput> instance

Update an environment template.


=head2 UpdateEnvironmentTemplateVersion

=over

=item MajorVersion => Str

=item MinorVersion => Str

=item TemplateName => Str

=item [Description => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Proton::UpdateEnvironmentTemplateVersion>

Returns: a L<Paws::Proton::UpdateEnvironmentTemplateVersionOutput> instance

Update a major or minor version of an environment template.


=head2 UpdateService

=over

=item Name => Str

=item [Description => Str]

=item [Spec => Str]


=back

Each argument is described in detail in: L<Paws::Proton::UpdateService>

Returns: a L<Paws::Proton::UpdateServiceOutput> instance

Edit a service description or use a spec to add and delete service
instances.

Existing service instances and the service pipeline I<can't> be edited
using this API. They can only be deleted.

Use the C<description> parameter to modify the description.

Edit the C<spec> parameter to add or delete instances.

You can't delete a service instance (remove it from the spec) if it has
an attached component.

For more information about components, see Proton components
(https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the I<Proton User Guide>.


=head2 UpdateServiceInstance

=over

=item DeploymentType => Str

=item Name => Str

=item ServiceName => Str

=item [ClientToken => Str]

=item [Spec => Str]

=item [TemplateMajorVersion => Str]

=item [TemplateMinorVersion => Str]


=back

Each argument is described in detail in: L<Paws::Proton::UpdateServiceInstance>

Returns: a L<Paws::Proton::UpdateServiceInstanceOutput> instance

Update a service instance.

There are a few modes for updating a service instance. The
C<deploymentType> field defines the mode.

You can't update a service instance while its deployment status, or the
deployment status of a component attached to it, is C<IN_PROGRESS>.

For more information about components, see Proton components
(https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the I<Proton User Guide>.


=head2 UpdateServicePipeline

=over

=item DeploymentType => Str

=item ServiceName => Str

=item Spec => Str

=item [TemplateMajorVersion => Str]

=item [TemplateMinorVersion => Str]


=back

Each argument is described in detail in: L<Paws::Proton::UpdateServicePipeline>

Returns: a L<Paws::Proton::UpdateServicePipelineOutput> instance

Update the service pipeline.

There are four modes for updating a service pipeline. The
C<deploymentType> field defines the mode.

=over

=item C<NONE>

In this mode, a deployment I<doesn't> occur. Only the requested
metadata parameters are updated.

=item C<CURRENT_VERSION>

In this mode, the service pipeline is deployed and updated with the new
spec that you provide. Only requested parameters are updated.
I<DonE<rsquo>t> include major or minor version parameters when you use
this C<deployment-type>.

=item C<MINOR_VERSION>

In this mode, the service pipeline is deployed and updated with the
published, recommended (latest) minor version of the current major
version in use, by default. You can specify a different minor version
of the current major version in use.

=item C<MAJOR_VERSION>

In this mode, the service pipeline is deployed and updated with the
published, recommended (latest) major and minor version of the current
template by default. You can specify a different major version that's
higher than the major version in use and a minor version.

=back



=head2 UpdateServiceSyncBlocker

=over

=item Id => Str

=item ResolvedReason => Str


=back

Each argument is described in detail in: L<Paws::Proton::UpdateServiceSyncBlocker>

Returns: a L<Paws::Proton::UpdateServiceSyncBlockerOutput> instance

Update the service sync blocker by resolving it.


=head2 UpdateServiceSyncConfig

=over

=item Branch => Str

=item FilePath => Str

=item RepositoryName => Str

=item RepositoryProvider => Str

=item ServiceName => Str


=back

Each argument is described in detail in: L<Paws::Proton::UpdateServiceSyncConfig>

Returns: a L<Paws::Proton::UpdateServiceSyncConfigOutput> instance

Update the Proton Ops config file.


=head2 UpdateServiceTemplate

=over

=item Name => Str

=item [Description => Str]

=item [DisplayName => Str]


=back

Each argument is described in detail in: L<Paws::Proton::UpdateServiceTemplate>

Returns: a L<Paws::Proton::UpdateServiceTemplateOutput> instance

Update a service template.


=head2 UpdateServiceTemplateVersion

=over

=item MajorVersion => Str

=item MinorVersion => Str

=item TemplateName => Str

=item [CompatibleEnvironmentTemplates => ArrayRef[L<Paws::Proton::CompatibleEnvironmentTemplateInput>]]

=item [Description => Str]

=item [Status => Str]

=item [SupportedComponentSources => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Proton::UpdateServiceTemplateVersion>

Returns: a L<Paws::Proton::UpdateServiceTemplateVersionOutput> instance

Update a major or minor version of a service template.


=head2 UpdateTemplateSyncConfig

=over

=item Branch => Str

=item RepositoryName => Str

=item RepositoryProvider => Str

=item TemplateName => Str

=item TemplateType => Str

=item [Subdirectory => Str]


=back

Each argument is described in detail in: L<Paws::Proton::UpdateTemplateSyncConfig>

Returns: a L<Paws::Proton::UpdateTemplateSyncConfigOutput> instance

Update template sync configuration parameters, except for the
C<templateName> and C<templateType>. Repository details (branch, name,
and provider) should be of a linked repository. A linked repository is
a repository that has been registered with Proton. For more
information, see CreateRepository.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllComponentOutputs(sub { },ComponentName => Str, [DeploymentId => Str, NextToken => Str])

=head2 ListAllComponentOutputs(ComponentName => Str, [DeploymentId => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - outputs, passing the object as the first parameter, and the string 'outputs' as the second parameter 

If not, it will return a a L<Paws::Proton::ListComponentOutputsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllComponentProvisionedResources(sub { },ComponentName => Str, [NextToken => Str])

=head2 ListAllComponentProvisionedResources(ComponentName => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - provisionedResources, passing the object as the first parameter, and the string 'provisionedResources' as the second parameter 

If not, it will return a a L<Paws::Proton::ListComponentProvisionedResourcesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllComponents(sub { },[EnvironmentName => Str, MaxResults => Int, NextToken => Str, ServiceInstanceName => Str, ServiceName => Str])

=head2 ListAllComponents([EnvironmentName => Str, MaxResults => Int, NextToken => Str, ServiceInstanceName => Str, ServiceName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - components, passing the object as the first parameter, and the string 'components' as the second parameter 

If not, it will return a a L<Paws::Proton::ListComponentsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDeployments(sub { },[ComponentName => Str, EnvironmentName => Str, MaxResults => Int, NextToken => Str, ServiceInstanceName => Str, ServiceName => Str])

=head2 ListAllDeployments([ComponentName => Str, EnvironmentName => Str, MaxResults => Int, NextToken => Str, ServiceInstanceName => Str, ServiceName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - deployments, passing the object as the first parameter, and the string 'deployments' as the second parameter 

If not, it will return a a L<Paws::Proton::ListDeploymentsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnvironmentAccountConnections(sub { },RequestedBy => Str, [EnvironmentName => Str, MaxResults => Int, NextToken => Str, Statuses => ArrayRef[Str|Undef]])

=head2 ListAllEnvironmentAccountConnections(RequestedBy => Str, [EnvironmentName => Str, MaxResults => Int, NextToken => Str, Statuses => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - environmentAccountConnections, passing the object as the first parameter, and the string 'environmentAccountConnections' as the second parameter 

If not, it will return a a L<Paws::Proton::ListEnvironmentAccountConnectionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnvironmentOutputs(sub { },EnvironmentName => Str, [DeploymentId => Str, NextToken => Str])

=head2 ListAllEnvironmentOutputs(EnvironmentName => Str, [DeploymentId => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - outputs, passing the object as the first parameter, and the string 'outputs' as the second parameter 

If not, it will return a a L<Paws::Proton::ListEnvironmentOutputsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnvironmentProvisionedResources(sub { },EnvironmentName => Str, [NextToken => Str])

=head2 ListAllEnvironmentProvisionedResources(EnvironmentName => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - provisionedResources, passing the object as the first parameter, and the string 'provisionedResources' as the second parameter 

If not, it will return a a L<Paws::Proton::ListEnvironmentProvisionedResourcesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnvironments(sub { },[EnvironmentTemplates => ArrayRef[L<Paws::Proton::EnvironmentTemplateFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllEnvironments([EnvironmentTemplates => ArrayRef[L<Paws::Proton::EnvironmentTemplateFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - environments, passing the object as the first parameter, and the string 'environments' as the second parameter 

If not, it will return a a L<Paws::Proton::ListEnvironmentsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnvironmentTemplates(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllEnvironmentTemplates([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - templates, passing the object as the first parameter, and the string 'templates' as the second parameter 

If not, it will return a a L<Paws::Proton::ListEnvironmentTemplatesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnvironmentTemplateVersions(sub { },TemplateName => Str, [MajorVersion => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllEnvironmentTemplateVersions(TemplateName => Str, [MajorVersion => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - templateVersions, passing the object as the first parameter, and the string 'templateVersions' as the second parameter 

If not, it will return a a L<Paws::Proton::ListEnvironmentTemplateVersionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRepositories(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllRepositories([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - repositories, passing the object as the first parameter, and the string 'repositories' as the second parameter 

If not, it will return a a L<Paws::Proton::ListRepositoriesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRepositorySyncDefinitions(sub { },RepositoryName => Str, RepositoryProvider => Str, SyncType => Str, [NextToken => Str])

=head2 ListAllRepositorySyncDefinitions(RepositoryName => Str, RepositoryProvider => Str, SyncType => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - syncDefinitions, passing the object as the first parameter, and the string 'syncDefinitions' as the second parameter 

If not, it will return a a L<Paws::Proton::ListRepositorySyncDefinitionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServiceInstanceOutputs(sub { },ServiceInstanceName => Str, ServiceName => Str, [DeploymentId => Str, NextToken => Str])

=head2 ListAllServiceInstanceOutputs(ServiceInstanceName => Str, ServiceName => Str, [DeploymentId => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - outputs, passing the object as the first parameter, and the string 'outputs' as the second parameter 

If not, it will return a a L<Paws::Proton::ListServiceInstanceOutputsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServiceInstanceProvisionedResources(sub { },ServiceInstanceName => Str, ServiceName => Str, [NextToken => Str])

=head2 ListAllServiceInstanceProvisionedResources(ServiceInstanceName => Str, ServiceName => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - provisionedResources, passing the object as the first parameter, and the string 'provisionedResources' as the second parameter 

If not, it will return a a L<Paws::Proton::ListServiceInstanceProvisionedResourcesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServiceInstances(sub { },[Filters => ArrayRef[L<Paws::Proton::ListServiceInstancesFilter>], MaxResults => Int, NextToken => Str, ServiceName => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllServiceInstances([Filters => ArrayRef[L<Paws::Proton::ListServiceInstancesFilter>], MaxResults => Int, NextToken => Str, ServiceName => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - serviceInstances, passing the object as the first parameter, and the string 'serviceInstances' as the second parameter 

If not, it will return a a L<Paws::Proton::ListServiceInstancesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServicePipelineOutputs(sub { },ServiceName => Str, [DeploymentId => Str, NextToken => Str])

=head2 ListAllServicePipelineOutputs(ServiceName => Str, [DeploymentId => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - outputs, passing the object as the first parameter, and the string 'outputs' as the second parameter 

If not, it will return a a L<Paws::Proton::ListServicePipelineOutputsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServicePipelineProvisionedResources(sub { },ServiceName => Str, [NextToken => Str])

=head2 ListAllServicePipelineProvisionedResources(ServiceName => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - provisionedResources, passing the object as the first parameter, and the string 'provisionedResources' as the second parameter 

If not, it will return a a L<Paws::Proton::ListServicePipelineProvisionedResourcesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServices(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllServices([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - services, passing the object as the first parameter, and the string 'services' as the second parameter 

If not, it will return a a L<Paws::Proton::ListServicesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServiceTemplates(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllServiceTemplates([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - templates, passing the object as the first parameter, and the string 'templates' as the second parameter 

If not, it will return a a L<Paws::Proton::ListServiceTemplatesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServiceTemplateVersions(sub { },TemplateName => Str, [MajorVersion => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllServiceTemplateVersions(TemplateName => Str, [MajorVersion => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - templateVersions, passing the object as the first parameter, and the string 'templateVersions' as the second parameter 

If not, it will return a a L<Paws::Proton::ListServiceTemplateVersionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTagsForResource(ResourceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tags, passing the object as the first parameter, and the string 'tags' as the second parameter 

If not, it will return a a L<Paws::Proton::ListTagsForResourceOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

