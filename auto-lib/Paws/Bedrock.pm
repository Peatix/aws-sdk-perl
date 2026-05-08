package Paws::Bedrock;
  use Moose;
  sub service { 'bedrock' }
  sub signing_name { 'bedrock' }
  sub version { '2023-04-20' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchDeleteEvaluationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::BatchDeleteEvaluationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEvaluationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::CreateEvaluationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGuardrail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::CreateGuardrail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGuardrailVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::CreateGuardrailVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInferenceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::CreateInferenceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMarketplaceModelEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::CreateMarketplaceModelEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModelCopyJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::CreateModelCopyJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModelCustomizationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::CreateModelCustomizationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModelImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::CreateModelImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModelInvocationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::CreateModelInvocationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePromptRouter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::CreatePromptRouter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProvisionedModelThroughput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::CreateProvisionedModelThroughput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCustomModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::DeleteCustomModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGuardrail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::DeleteGuardrail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImportedModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::DeleteImportedModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInferenceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::DeleteInferenceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMarketplaceModelEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::DeleteMarketplaceModelEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModelInvocationLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::DeleteModelInvocationLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePromptRouter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::DeletePromptRouter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProvisionedModelThroughput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::DeleteProvisionedModelThroughput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterMarketplaceModelEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::DeregisterMarketplaceModelEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCustomModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::GetCustomModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEvaluationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::GetEvaluationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFoundationModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::GetFoundationModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGuardrail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::GetGuardrail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImportedModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::GetImportedModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInferenceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::GetInferenceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMarketplaceModelEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::GetMarketplaceModelEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetModelCopyJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::GetModelCopyJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetModelCustomizationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::GetModelCustomizationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetModelImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::GetModelImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetModelInvocationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::GetModelInvocationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetModelInvocationLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::GetModelInvocationLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPromptRouter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::GetPromptRouter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProvisionedModelThroughput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::GetProvisionedModelThroughput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCustomModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::ListCustomModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEvaluationJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::ListEvaluationJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFoundationModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::ListFoundationModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGuardrails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::ListGuardrails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImportedModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::ListImportedModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInferenceProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::ListInferenceProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMarketplaceModelEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::ListMarketplaceModelEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModelCopyJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::ListModelCopyJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModelCustomizationJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::ListModelCustomizationJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModelImportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::ListModelImportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModelInvocationJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::ListModelInvocationJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPromptRouters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::ListPromptRouters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProvisionedModelThroughputs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::ListProvisionedModelThroughputs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutModelInvocationLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::PutModelInvocationLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterMarketplaceModelEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::RegisterMarketplaceModelEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopEvaluationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::StopEvaluationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopModelCustomizationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::StopModelCustomizationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopModelInvocationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::StopModelInvocationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGuardrail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::UpdateGuardrail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMarketplaceModelEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::UpdateMarketplaceModelEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProvisionedModelThroughput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Bedrock::UpdateProvisionedModelThroughput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllCustomModels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCustomModels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCustomModels(@_, nextToken => $next_result->nextToken);
        push @{ $result->modelSummaries }, @{ $next_result->modelSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'modelSummaries') foreach (@{ $result->modelSummaries });
        $result = $self->ListCustomModels(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'modelSummaries') foreach (@{ $result->modelSummaries });
    }

    return undef
  }
  sub ListAllEvaluationJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEvaluationJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEvaluationJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->jobSummaries }, @{ $next_result->jobSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'jobSummaries') foreach (@{ $result->jobSummaries });
        $result = $self->ListEvaluationJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'jobSummaries') foreach (@{ $result->jobSummaries });
    }

    return undef
  }
  sub ListAllGuardrails {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGuardrails(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListGuardrails(@_, nextToken => $next_result->nextToken);
        push @{ $result->guardrails }, @{ $next_result->guardrails };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'guardrails') foreach (@{ $result->guardrails });
        $result = $self->ListGuardrails(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'guardrails') foreach (@{ $result->guardrails });
    }

    return undef
  }
  sub ListAllImportedModels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListImportedModels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListImportedModels(@_, nextToken => $next_result->nextToken);
        push @{ $result->modelSummaries }, @{ $next_result->modelSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'modelSummaries') foreach (@{ $result->modelSummaries });
        $result = $self->ListImportedModels(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'modelSummaries') foreach (@{ $result->modelSummaries });
    }

    return undef
  }
  sub ListAllInferenceProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInferenceProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListInferenceProfiles(@_, nextToken => $next_result->nextToken);
        push @{ $result->inferenceProfileSummaries }, @{ $next_result->inferenceProfileSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'inferenceProfileSummaries') foreach (@{ $result->inferenceProfileSummaries });
        $result = $self->ListInferenceProfiles(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'inferenceProfileSummaries') foreach (@{ $result->inferenceProfileSummaries });
    }

    return undef
  }
  sub ListAllMarketplaceModelEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMarketplaceModelEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMarketplaceModelEndpoints(@_, nextToken => $next_result->nextToken);
        push @{ $result->marketplaceModelEndpoints }, @{ $next_result->marketplaceModelEndpoints };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'marketplaceModelEndpoints') foreach (@{ $result->marketplaceModelEndpoints });
        $result = $self->ListMarketplaceModelEndpoints(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'marketplaceModelEndpoints') foreach (@{ $result->marketplaceModelEndpoints });
    }

    return undef
  }
  sub ListAllModelCopyJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModelCopyJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListModelCopyJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->modelCopyJobSummaries }, @{ $next_result->modelCopyJobSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'modelCopyJobSummaries') foreach (@{ $result->modelCopyJobSummaries });
        $result = $self->ListModelCopyJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'modelCopyJobSummaries') foreach (@{ $result->modelCopyJobSummaries });
    }

    return undef
  }
  sub ListAllModelCustomizationJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModelCustomizationJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListModelCustomizationJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->modelCustomizationJobSummaries }, @{ $next_result->modelCustomizationJobSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'modelCustomizationJobSummaries') foreach (@{ $result->modelCustomizationJobSummaries });
        $result = $self->ListModelCustomizationJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'modelCustomizationJobSummaries') foreach (@{ $result->modelCustomizationJobSummaries });
    }

    return undef
  }
  sub ListAllModelImportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModelImportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListModelImportJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->modelImportJobSummaries }, @{ $next_result->modelImportJobSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'modelImportJobSummaries') foreach (@{ $result->modelImportJobSummaries });
        $result = $self->ListModelImportJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'modelImportJobSummaries') foreach (@{ $result->modelImportJobSummaries });
    }

    return undef
  }
  sub ListAllModelInvocationJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModelInvocationJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListModelInvocationJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->invocationJobSummaries }, @{ $next_result->invocationJobSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'invocationJobSummaries') foreach (@{ $result->invocationJobSummaries });
        $result = $self->ListModelInvocationJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'invocationJobSummaries') foreach (@{ $result->invocationJobSummaries });
    }

    return undef
  }
  sub ListAllPromptRouters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPromptRouters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPromptRouters(@_, nextToken => $next_result->nextToken);
        push @{ $result->promptRouterSummaries }, @{ $next_result->promptRouterSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'promptRouterSummaries') foreach (@{ $result->promptRouterSummaries });
        $result = $self->ListPromptRouters(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'promptRouterSummaries') foreach (@{ $result->promptRouterSummaries });
    }

    return undef
  }
  sub ListAllProvisionedModelThroughputs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProvisionedModelThroughputs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListProvisionedModelThroughputs(@_, nextToken => $next_result->nextToken);
        push @{ $result->provisionedModelSummaries }, @{ $next_result->provisionedModelSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'provisionedModelSummaries') foreach (@{ $result->provisionedModelSummaries });
        $result = $self->ListProvisionedModelThroughputs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'provisionedModelSummaries') foreach (@{ $result->provisionedModelSummaries });
    }

    return undef
  }


  sub operations { qw/BatchDeleteEvaluationJob CreateEvaluationJob CreateGuardrail CreateGuardrailVersion CreateInferenceProfile CreateMarketplaceModelEndpoint CreateModelCopyJob CreateModelCustomizationJob CreateModelImportJob CreateModelInvocationJob CreatePromptRouter CreateProvisionedModelThroughput DeleteCustomModel DeleteGuardrail DeleteImportedModel DeleteInferenceProfile DeleteMarketplaceModelEndpoint DeleteModelInvocationLoggingConfiguration DeletePromptRouter DeleteProvisionedModelThroughput DeregisterMarketplaceModelEndpoint GetCustomModel GetEvaluationJob GetFoundationModel GetGuardrail GetImportedModel GetInferenceProfile GetMarketplaceModelEndpoint GetModelCopyJob GetModelCustomizationJob GetModelImportJob GetModelInvocationJob GetModelInvocationLoggingConfiguration GetPromptRouter GetProvisionedModelThroughput ListCustomModels ListEvaluationJobs ListFoundationModels ListGuardrails ListImportedModels ListInferenceProfiles ListMarketplaceModelEndpoints ListModelCopyJobs ListModelCustomizationJobs ListModelImportJobs ListModelInvocationJobs ListPromptRouters ListProvisionedModelThroughputs ListTagsForResource PutModelInvocationLoggingConfiguration RegisterMarketplaceModelEndpoint StopEvaluationJob StopModelCustomizationJob StopModelInvocationJob TagResource UntagResource UpdateGuardrail UpdateMarketplaceModelEndpoint UpdateProvisionedModelThroughput / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock - Perl Interface to AWS Amazon Bedrock

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Bedrock');
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

Describes the API operations for creating, managing, fine-turning, and
evaluating Amazon Bedrock models.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20>


=head1 METHODS

=head2 BatchDeleteEvaluationJob

=over

=item JobIdentifiers => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Bedrock::BatchDeleteEvaluationJob>

Returns: a L<Paws::Bedrock::BatchDeleteEvaluationJobResponse> instance

Deletes a batch of evaluation jobs. An evaluation job can only be
deleted if it has following status C<FAILED>, C<COMPLETED>, and
C<STOPPED>. You can request up to 25 model evaluation jobs be deleted
in a single request.


=head2 CreateEvaluationJob

=over

=item EvaluationConfig => L<Paws::Bedrock::EvaluationConfig>

=item InferenceConfig => L<Paws::Bedrock::EvaluationInferenceConfig>

=item JobName => Str

=item OutputDataConfig => L<Paws::Bedrock::EvaluationOutputDataConfig>

=item RoleArn => Str

=item [ApplicationType => Str]

=item [ClientRequestToken => Str]

=item [CustomerEncryptionKeyId => Str]

=item [JobDescription => Str]

=item [JobTags => ArrayRef[L<Paws::Bedrock::Tag>]]


=back

Each argument is described in detail in: L<Paws::Bedrock::CreateEvaluationJob>

Returns: a L<Paws::Bedrock::CreateEvaluationJobResponse> instance

Creates an evaluation job.


=head2 CreateGuardrail

=over

=item BlockedInputMessaging => Str

=item BlockedOutputsMessaging => Str

=item Name => Str

=item [ClientRequestToken => Str]

=item [ContentPolicyConfig => L<Paws::Bedrock::GuardrailContentPolicyConfig>]

=item [ContextualGroundingPolicyConfig => L<Paws::Bedrock::GuardrailContextualGroundingPolicyConfig>]

=item [CrossRegionConfig => L<Paws::Bedrock::GuardrailCrossRegionConfig>]

=item [Description => Str]

=item [KmsKeyId => Str]

=item [SensitiveInformationPolicyConfig => L<Paws::Bedrock::GuardrailSensitiveInformationPolicyConfig>]

=item [Tags => ArrayRef[L<Paws::Bedrock::Tag>]]

=item [TopicPolicyConfig => L<Paws::Bedrock::GuardrailTopicPolicyConfig>]

=item [WordPolicyConfig => L<Paws::Bedrock::GuardrailWordPolicyConfig>]


=back

Each argument is described in detail in: L<Paws::Bedrock::CreateGuardrail>

Returns: a L<Paws::Bedrock::CreateGuardrailResponse> instance

Creates a guardrail to block topics and to implement safeguards for
your generative AI applications.

You can configure the following policies in a guardrail to avoid
undesirable and harmful content, filter out denied topics and words,
and remove sensitive information for privacy protection.

=over

=item *

B<Content filters> - Adjust filter strengths to block input prompts or
model responses containing harmful content.

=item *

B<Denied topics> - Define a set of topics that are undesirable in the
context of your application. These topics will be blocked if detected
in user queries or model responses.

=item *

B<Word filters> - Configure filters to block undesirable words,
phrases, and profanity. Such words can include offensive terms,
competitor names etc.

=item *

B<Sensitive information filters> - Block or mask sensitive information
such as personally identifiable information (PII) or custom regex in
user inputs and model responses.

=back

In addition to the above policies, you can also configure the messages
to be returned to the user if a user input or model response is in
violation of the policies defined in the guardrail.

For more information, see Amazon Bedrock Guardrails
(https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails.html)
in the I<Amazon Bedrock User Guide>.


=head2 CreateGuardrailVersion

=over

=item GuardrailIdentifier => Str

=item [ClientRequestToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Bedrock::CreateGuardrailVersion>

Returns: a L<Paws::Bedrock::CreateGuardrailVersionResponse> instance

Creates a version of the guardrail. Use this API to create a snapshot
of the guardrail when you are satisfied with a configuration, or to
compare the configuration with another version.


=head2 CreateInferenceProfile

=over

=item InferenceProfileName => Str

=item ModelSource => L<Paws::Bedrock::InferenceProfileModelSource>

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::Bedrock::Tag>]]


=back

Each argument is described in detail in: L<Paws::Bedrock::CreateInferenceProfile>

Returns: a L<Paws::Bedrock::CreateInferenceProfileResponse> instance

Creates an application inference profile to track metrics and costs
when invoking a model. To create an application inference profile for a
foundation model in one region, specify the ARN of the model in that
region. To create an application inference profile for a foundation
model across multiple regions, specify the ARN of the system-defined
inference profile that contains the regions that you want to route
requests to. For more information, see Increase throughput and
resilience with cross-region inference in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html).
in the Amazon Bedrock User Guide.


=head2 CreateMarketplaceModelEndpoint

=over

=item EndpointConfig => L<Paws::Bedrock::EndpointConfig>

=item EndpointName => Str

=item ModelSourceIdentifier => Str

=item [AcceptEula => Bool]

=item [ClientRequestToken => Str]

=item [Tags => ArrayRef[L<Paws::Bedrock::Tag>]]


=back

Each argument is described in detail in: L<Paws::Bedrock::CreateMarketplaceModelEndpoint>

Returns: a L<Paws::Bedrock::CreateMarketplaceModelEndpointResponse> instance

Creates an endpoint for a model from Amazon Bedrock Marketplace. The
endpoint is hosted by Amazon SageMaker.


=head2 CreateModelCopyJob

=over

=item SourceModelArn => Str

=item TargetModelName => Str

=item [ClientRequestToken => Str]

=item [ModelKmsKeyId => Str]

=item [TargetModelTags => ArrayRef[L<Paws::Bedrock::Tag>]]


=back

Each argument is described in detail in: L<Paws::Bedrock::CreateModelCopyJob>

Returns: a L<Paws::Bedrock::CreateModelCopyJobResponse> instance

Copies a model to another region so that it can be used there. For more
information, see Copy models to be used in other regions
(https://docs.aws.amazon.com/bedrock/latest/userguide/copy-model.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 CreateModelCustomizationJob

=over

=item BaseModelIdentifier => Str

=item CustomModelName => Str

=item JobName => Str

=item OutputDataConfig => L<Paws::Bedrock::OutputDataConfig>

=item RoleArn => Str

=item TrainingDataConfig => L<Paws::Bedrock::TrainingDataConfig>

=item [ClientRequestToken => Str]

=item [CustomizationConfig => L<Paws::Bedrock::CustomizationConfig>]

=item [CustomizationType => Str]

=item [CustomModelKmsKeyId => Str]

=item [CustomModelTags => ArrayRef[L<Paws::Bedrock::Tag>]]

=item [HyperParameters => L<Paws::Bedrock::ModelCustomizationHyperParameters>]

=item [JobTags => ArrayRef[L<Paws::Bedrock::Tag>]]

=item [ValidationDataConfig => L<Paws::Bedrock::ValidationDataConfig>]

=item [VpcConfig => L<Paws::Bedrock::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::Bedrock::CreateModelCustomizationJob>

Returns: a L<Paws::Bedrock::CreateModelCustomizationJobResponse> instance

Creates a fine-tuning job to customize a base model.

You specify the base foundation model and the location of the training
data. After the model-customization job completes successfully, your
custom model resource will be ready to use. Amazon Bedrock returns
validation loss metrics and output generations after the job completes.

For information on the format of training and validation data, see
Prepare the datasets
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-prepare.html).

Model-customization jobs are asynchronous and the completion time
depends on the base model and the training/validation data size. To
monitor a job, use the C<GetModelCustomizationJob> operation to
retrieve the job status.

For more information, see Custom models
(https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 CreateModelImportJob

=over

=item ImportedModelName => Str

=item JobName => Str

=item ModelDataSource => L<Paws::Bedrock::ModelDataSource>

=item RoleArn => Str

=item [ClientRequestToken => Str]

=item [ImportedModelKmsKeyId => Str]

=item [ImportedModelTags => ArrayRef[L<Paws::Bedrock::Tag>]]

=item [JobTags => ArrayRef[L<Paws::Bedrock::Tag>]]

=item [VpcConfig => L<Paws::Bedrock::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::Bedrock::CreateModelImportJob>

Returns: a L<Paws::Bedrock::CreateModelImportJobResponse> instance

Creates a model import job to import model that you have customized in
other environments, such as Amazon SageMaker. For more information, see
Import a customized model
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html)


=head2 CreateModelInvocationJob

=over

=item InputDataConfig => L<Paws::Bedrock::ModelInvocationJobInputDataConfig>

=item JobName => Str

=item ModelId => Str

=item OutputDataConfig => L<Paws::Bedrock::ModelInvocationJobOutputDataConfig>

=item RoleArn => Str

=item [ClientRequestToken => Str]

=item [Tags => ArrayRef[L<Paws::Bedrock::Tag>]]

=item [TimeoutDurationInHours => Int]

=item [VpcConfig => L<Paws::Bedrock::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::Bedrock::CreateModelInvocationJob>

Returns: a L<Paws::Bedrock::CreateModelInvocationJobResponse> instance

Creates a batch inference job to invoke a model on multiple prompts.
Format your data according to Format your inference data
(https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-data)
and upload it to an Amazon S3 bucket. For more information, see Process
multiple prompts with batch inference
(https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference.html).

The response returns a C<jobArn> that you can use to stop or get
details about the job.


=head2 CreatePromptRouter

=over

=item FallbackModel => L<Paws::Bedrock::PromptRouterTargetModel>

=item Models => ArrayRef[L<Paws::Bedrock::PromptRouterTargetModel>]

=item PromptRouterName => Str

=item RoutingCriteria => L<Paws::Bedrock::RoutingCriteria>

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::Bedrock::Tag>]]


=back

Each argument is described in detail in: L<Paws::Bedrock::CreatePromptRouter>

Returns: a L<Paws::Bedrock::CreatePromptRouterResponse> instance

Creates a prompt router that manages the routing of requests between
multiple foundation models based on the routing criteria.


=head2 CreateProvisionedModelThroughput

=over

=item ModelId => Str

=item ModelUnits => Int

=item ProvisionedModelName => Str

=item [ClientRequestToken => Str]

=item [CommitmentDuration => Str]

=item [Tags => ArrayRef[L<Paws::Bedrock::Tag>]]


=back

Each argument is described in detail in: L<Paws::Bedrock::CreateProvisionedModelThroughput>

Returns: a L<Paws::Bedrock::CreateProvisionedModelThroughputResponse> instance

Creates dedicated throughput for a base or custom model with the model
units and for the duration that you specify. For pricing details, see
Amazon Bedrock Pricing (http://aws.amazon.com/bedrock/pricing/). For
more information, see Provisioned Throughput
(https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 DeleteCustomModel

=over

=item ModelIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::DeleteCustomModel>

Returns: a L<Paws::Bedrock::DeleteCustomModelResponse> instance

Deletes a custom model that you created earlier. For more information,
see Custom models
(https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 DeleteGuardrail

=over

=item GuardrailIdentifier => Str

=item [GuardrailVersion => Str]


=back

Each argument is described in detail in: L<Paws::Bedrock::DeleteGuardrail>

Returns: a L<Paws::Bedrock::DeleteGuardrailResponse> instance

Deletes a guardrail.

=over

=item *

To delete a guardrail, only specify the ARN of the guardrail in the
C<guardrailIdentifier> field. If you delete a guardrail, all of its
versions will be deleted.

=item *

To delete a version of a guardrail, specify the ARN of the guardrail in
the C<guardrailIdentifier> field and the version in the
C<guardrailVersion> field.

=back



=head2 DeleteImportedModel

=over

=item ModelIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::DeleteImportedModel>

Returns: a L<Paws::Bedrock::DeleteImportedModelResponse> instance

Deletes a custom model that you imported earlier. For more information,
see Import a customized model
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 DeleteInferenceProfile

=over

=item InferenceProfileIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::DeleteInferenceProfile>

Returns: a L<Paws::Bedrock::DeleteInferenceProfileResponse> instance

Deletes an application inference profile. For more information, see
Increase throughput and resilience with cross-region inference in
Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html).
in the Amazon Bedrock User Guide.


=head2 DeleteMarketplaceModelEndpoint

=over

=item EndpointArn => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::DeleteMarketplaceModelEndpoint>

Returns: a L<Paws::Bedrock::DeleteMarketplaceModelEndpointResponse> instance

Deletes an endpoint for a model from Amazon Bedrock Marketplace.


=head2 DeleteModelInvocationLoggingConfiguration






Each argument is described in detail in: L<Paws::Bedrock::DeleteModelInvocationLoggingConfiguration>

Returns: a L<Paws::Bedrock::DeleteModelInvocationLoggingConfigurationResponse> instance

Delete the invocation logging.


=head2 DeletePromptRouter

=over

=item PromptRouterArn => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::DeletePromptRouter>

Returns: a L<Paws::Bedrock::DeletePromptRouterResponse> instance

Deletes a specified prompt router. This action cannot be undone.


=head2 DeleteProvisionedModelThroughput

=over

=item ProvisionedModelId => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::DeleteProvisionedModelThroughput>

Returns: a L<Paws::Bedrock::DeleteProvisionedModelThroughputResponse> instance

Deletes a Provisioned Throughput. You can't delete a Provisioned
Throughput before the commitment term is over. For more information,
see Provisioned Throughput
(https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 DeregisterMarketplaceModelEndpoint

=over

=item EndpointArn => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::DeregisterMarketplaceModelEndpoint>

Returns: a L<Paws::Bedrock::DeregisterMarketplaceModelEndpointResponse> instance

Deregisters an endpoint for a model from Amazon Bedrock Marketplace.
This operation removes the endpoint's association with Amazon Bedrock
but does not delete the underlying Amazon SageMaker endpoint.


=head2 GetCustomModel

=over

=item ModelIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::GetCustomModel>

Returns: a L<Paws::Bedrock::GetCustomModelResponse> instance

Get the properties associated with a Amazon Bedrock custom model that
you have created.For more information, see Custom models
(https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 GetEvaluationJob

=over

=item JobIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::GetEvaluationJob>

Returns: a L<Paws::Bedrock::GetEvaluationJobResponse> instance

Gets information about an evaluation job, such as the status of the
job.


=head2 GetFoundationModel

=over

=item ModelIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::GetFoundationModel>

Returns: a L<Paws::Bedrock::GetFoundationModelResponse> instance

Get details about a Amazon Bedrock foundation model.


=head2 GetGuardrail

=over

=item GuardrailIdentifier => Str

=item [GuardrailVersion => Str]


=back

Each argument is described in detail in: L<Paws::Bedrock::GetGuardrail>

Returns: a L<Paws::Bedrock::GetGuardrailResponse> instance

Gets details about a guardrail. If you don't specify a version, the
response returns details for the C<DRAFT> version.


=head2 GetImportedModel

=over

=item ModelIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::GetImportedModel>

Returns: a L<Paws::Bedrock::GetImportedModelResponse> instance

Gets properties associated with a customized model you imported.


=head2 GetInferenceProfile

=over

=item InferenceProfileIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::GetInferenceProfile>

Returns: a L<Paws::Bedrock::GetInferenceProfileResponse> instance

Gets information about an inference profile. For more information, see
Increase throughput and resilience with cross-region inference in
Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html).
in the Amazon Bedrock User Guide.


=head2 GetMarketplaceModelEndpoint

=over

=item EndpointArn => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::GetMarketplaceModelEndpoint>

Returns: a L<Paws::Bedrock::GetMarketplaceModelEndpointResponse> instance

Retrieves details about a specific endpoint for a model from Amazon
Bedrock Marketplace.


=head2 GetModelCopyJob

=over

=item JobArn => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::GetModelCopyJob>

Returns: a L<Paws::Bedrock::GetModelCopyJobResponse> instance

Retrieves information about a model copy job. For more information, see
Copy models to be used in other regions
(https://docs.aws.amazon.com/bedrock/latest/userguide/copy-model.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 GetModelCustomizationJob

=over

=item JobIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::GetModelCustomizationJob>

Returns: a L<Paws::Bedrock::GetModelCustomizationJobResponse> instance

Retrieves the properties associated with a model-customization job,
including the status of the job. For more information, see Custom
models
(https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 GetModelImportJob

=over

=item JobIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::GetModelImportJob>

Returns: a L<Paws::Bedrock::GetModelImportJobResponse> instance

Retrieves the properties associated with import model job, including
the status of the job. For more information, see Import a customized
model
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 GetModelInvocationJob

=over

=item JobIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::GetModelInvocationJob>

Returns: a L<Paws::Bedrock::GetModelInvocationJobResponse> instance

Gets details about a batch inference job. For more information, see
Monitor batch inference jobs
(https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-monitor)


=head2 GetModelInvocationLoggingConfiguration






Each argument is described in detail in: L<Paws::Bedrock::GetModelInvocationLoggingConfiguration>

Returns: a L<Paws::Bedrock::GetModelInvocationLoggingConfigurationResponse> instance

Get the current configuration values for model invocation logging.


=head2 GetPromptRouter

=over

=item PromptRouterArn => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::GetPromptRouter>

Returns: a L<Paws::Bedrock::GetPromptRouterResponse> instance

Retrieves details about a prompt router.


=head2 GetProvisionedModelThroughput

=over

=item ProvisionedModelId => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::GetProvisionedModelThroughput>

Returns: a L<Paws::Bedrock::GetProvisionedModelThroughputResponse> instance

Returns details for a Provisioned Throughput. For more information, see
Provisioned Throughput
(https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 ListCustomModels

=over

=item [BaseModelArnEquals => Str]

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [FoundationModelArnEquals => Str]

=item [IsOwned => Bool]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::Bedrock::ListCustomModels>

Returns: a L<Paws::Bedrock::ListCustomModelsResponse> instance

Returns a list of the custom models that you have created with the
C<CreateModelCustomizationJob> operation.

For more information, see Custom models
(https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 ListEvaluationJobs

=over

=item [ApplicationTypeEquals => Str]

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::Bedrock::ListEvaluationJobs>

Returns: a L<Paws::Bedrock::ListEvaluationJobsResponse> instance

Lists all existing evaluation jobs.


=head2 ListFoundationModels

=over

=item [ByCustomizationType => Str]

=item [ByInferenceType => Str]

=item [ByOutputModality => Str]

=item [ByProvider => Str]


=back

Each argument is described in detail in: L<Paws::Bedrock::ListFoundationModels>

Returns: a L<Paws::Bedrock::ListFoundationModelsResponse> instance

Lists Amazon Bedrock foundation models that you can use. You can filter
the results with the request parameters. For more information, see
Foundation models
(https://docs.aws.amazon.com/bedrock/latest/userguide/foundation-models.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 ListGuardrails

=over

=item [GuardrailIdentifier => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Bedrock::ListGuardrails>

Returns: a L<Paws::Bedrock::ListGuardrailsResponse> instance

Lists details about all the guardrails in an account. To list the
C<DRAFT> version of all your guardrails, don't specify the
C<guardrailIdentifier> field. To list all versions of a guardrail,
specify the ARN of the guardrail in the C<guardrailIdentifier> field.

You can set the maximum number of results to return in a response in
the C<maxResults> field. If there are more results than the number you
set, the response returns a C<nextToken> that you can send in another
C<ListGuardrails> request to see the next batch of results.


=head2 ListImportedModels

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::Bedrock::ListImportedModels>

Returns: a L<Paws::Bedrock::ListImportedModelsResponse> instance

Returns a list of models you've imported. You can filter the results to
return based on one or more criteria. For more information, see Import
a customized model
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 ListInferenceProfiles

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TypeEquals => Str]


=back

Each argument is described in detail in: L<Paws::Bedrock::ListInferenceProfiles>

Returns: a L<Paws::Bedrock::ListInferenceProfilesResponse> instance

Returns a list of inference profiles that you can use. For more
information, see Increase throughput and resilience with cross-region
inference in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html).
in the Amazon Bedrock User Guide.


=head2 ListMarketplaceModelEndpoints

=over

=item [MaxResults => Int]

=item [ModelSourceEquals => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Bedrock::ListMarketplaceModelEndpoints>

Returns: a L<Paws::Bedrock::ListMarketplaceModelEndpointsResponse> instance

Lists the endpoints for models from Amazon Bedrock Marketplace in your
Amazon Web Services account.


=head2 ListModelCopyJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [SourceAccountEquals => Str]

=item [SourceModelArnEquals => Str]

=item [StatusEquals => Str]

=item [TargetModelNameContains => Str]


=back

Each argument is described in detail in: L<Paws::Bedrock::ListModelCopyJobs>

Returns: a L<Paws::Bedrock::ListModelCopyJobsResponse> instance

Returns a list of model copy jobs that you have submitted. You can
filter the jobs to return based on one or more criteria. For more
information, see Copy models to be used in other regions
(https://docs.aws.amazon.com/bedrock/latest/userguide/copy-model.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 ListModelCustomizationJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::Bedrock::ListModelCustomizationJobs>

Returns: a L<Paws::Bedrock::ListModelCustomizationJobsResponse> instance

Returns a list of model customization jobs that you have submitted. You
can filter the jobs to return based on one or more criteria.

For more information, see Custom models
(https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 ListModelImportJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::Bedrock::ListModelImportJobs>

Returns: a L<Paws::Bedrock::ListModelImportJobsResponse> instance

Returns a list of import jobs you've submitted. You can filter the
results to return based on one or more criteria. For more information,
see Import a customized model
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 ListModelInvocationJobs

=over

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]

=item [SubmitTimeAfter => Str]

=item [SubmitTimeBefore => Str]


=back

Each argument is described in detail in: L<Paws::Bedrock::ListModelInvocationJobs>

Returns: a L<Paws::Bedrock::ListModelInvocationJobsResponse> instance

Lists all batch inference jobs in the account. For more information,
see View details about a batch inference job
(https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-view.html).


=head2 ListPromptRouters

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::Bedrock::ListPromptRouters>

Returns: a L<Paws::Bedrock::ListPromptRoutersResponse> instance

Retrieves a list of prompt routers.


=head2 ListProvisionedModelThroughputs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [ModelArnEquals => Str]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::Bedrock::ListProvisionedModelThroughputs>

Returns: a L<Paws::Bedrock::ListProvisionedModelThroughputsResponse> instance

Lists the Provisioned Throughputs in the account. For more information,
see Provisioned Throughput
(https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::ListTagsForResource>

Returns: a L<Paws::Bedrock::ListTagsForResourceResponse> instance

List the tags associated with the specified resource.

For more information, see Tagging resources
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 PutModelInvocationLoggingConfiguration

=over

=item LoggingConfig => L<Paws::Bedrock::LoggingConfig>


=back

Each argument is described in detail in: L<Paws::Bedrock::PutModelInvocationLoggingConfiguration>

Returns: a L<Paws::Bedrock::PutModelInvocationLoggingConfigurationResponse> instance

Set the configuration values for model invocation logging.


=head2 RegisterMarketplaceModelEndpoint

=over

=item EndpointIdentifier => Str

=item ModelSourceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::RegisterMarketplaceModelEndpoint>

Returns: a L<Paws::Bedrock::RegisterMarketplaceModelEndpointResponse> instance

Registers an existing Amazon SageMaker endpoint with Amazon Bedrock
Marketplace, allowing it to be used with Amazon Bedrock APIs.


=head2 StopEvaluationJob

=over

=item JobIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::StopEvaluationJob>

Returns: a L<Paws::Bedrock::StopEvaluationJobResponse> instance

Stops an evaluation job that is current being created or running.


=head2 StopModelCustomizationJob

=over

=item JobIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::StopModelCustomizationJob>

Returns: a L<Paws::Bedrock::StopModelCustomizationJobResponse> instance

Stops an active model customization job. For more information, see
Custom models
(https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 StopModelInvocationJob

=over

=item JobIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Bedrock::StopModelInvocationJob>

Returns: a L<Paws::Bedrock::StopModelInvocationJobResponse> instance

Stops a batch inference job. You're only charged for tokens that were
already processed. For more information, see Stop a batch inference job
(https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-stop.html).


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::Bedrock::Tag>]


=back

Each argument is described in detail in: L<Paws::Bedrock::TagResource>

Returns: a L<Paws::Bedrock::TagResourceResponse> instance

Associate tags with a resource. For more information, see Tagging
resources
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Bedrock::UntagResource>

Returns: a L<Paws::Bedrock::UntagResourceResponse> instance

Remove one or more tags from a resource. For more information, see
Tagging resources
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).


=head2 UpdateGuardrail

=over

=item BlockedInputMessaging => Str

=item BlockedOutputsMessaging => Str

=item GuardrailIdentifier => Str

=item Name => Str

=item [ContentPolicyConfig => L<Paws::Bedrock::GuardrailContentPolicyConfig>]

=item [ContextualGroundingPolicyConfig => L<Paws::Bedrock::GuardrailContextualGroundingPolicyConfig>]

=item [CrossRegionConfig => L<Paws::Bedrock::GuardrailCrossRegionConfig>]

=item [Description => Str]

=item [KmsKeyId => Str]

=item [SensitiveInformationPolicyConfig => L<Paws::Bedrock::GuardrailSensitiveInformationPolicyConfig>]

=item [TopicPolicyConfig => L<Paws::Bedrock::GuardrailTopicPolicyConfig>]

=item [WordPolicyConfig => L<Paws::Bedrock::GuardrailWordPolicyConfig>]


=back

Each argument is described in detail in: L<Paws::Bedrock::UpdateGuardrail>

Returns: a L<Paws::Bedrock::UpdateGuardrailResponse> instance

Updates a guardrail with the values you specify.

=over

=item *

Specify a C<name> and optional C<description>.

=item *

Specify messages for when the guardrail successfully blocks a prompt or
a model response in the C<blockedInputMessaging> and
C<blockedOutputsMessaging> fields.

=item *

Specify topics for the guardrail to deny in the C<topicPolicyConfig>
object. Each GuardrailTopicConfig
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GuardrailTopicConfig.html)
object in the C<topicsConfig> list pertains to one topic.

=over

=item *

Give a C<name> and C<description> so that the guardrail can properly
identify the topic.

=item *

Specify C<DENY> in the C<type> field.

=item *

(Optional) Provide up to five prompts that you would categorize as
belonging to the topic in the C<examples> list.

=back

=item *

Specify filter strengths for the harmful categories defined in Amazon
Bedrock in the C<contentPolicyConfig> object. Each
GuardrailContentFilterConfig
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GuardrailContentFilterConfig.html)
object in the C<filtersConfig> list pertains to a harmful category. For
more information, see Content filters
(https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-content-filters).
For more information about the fields in a content filter, see
GuardrailContentFilterConfig
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GuardrailContentFilterConfig.html).

=over

=item *

Specify the category in the C<type> field.

=item *

Specify the strength of the filter for prompts in the C<inputStrength>
field and for model responses in the C<strength> field of the
GuardrailContentFilterConfig
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GuardrailContentFilterConfig.html).

=back

=item *

(Optional) For security, include the ARN of a KMS key in the
C<kmsKeyId> field.

=back



=head2 UpdateMarketplaceModelEndpoint

=over

=item EndpointArn => Str

=item EndpointConfig => L<Paws::Bedrock::EndpointConfig>

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::Bedrock::UpdateMarketplaceModelEndpoint>

Returns: a L<Paws::Bedrock::UpdateMarketplaceModelEndpointResponse> instance

Updates the configuration of an existing endpoint for a model from
Amazon Bedrock Marketplace.


=head2 UpdateProvisionedModelThroughput

=over

=item ProvisionedModelId => Str

=item [DesiredModelId => Str]

=item [DesiredProvisionedModelName => Str]


=back

Each argument is described in detail in: L<Paws::Bedrock::UpdateProvisionedModelThroughput>

Returns: a L<Paws::Bedrock::UpdateProvisionedModelThroughputResponse> instance

Updates the name or associated model for a Provisioned Throughput. For
more information, see Provisioned Throughput
(https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllCustomModels(sub { },[BaseModelArnEquals => Str, CreationTimeAfter => Str, CreationTimeBefore => Str, FoundationModelArnEquals => Str, IsOwned => Bool, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllCustomModels([BaseModelArnEquals => Str, CreationTimeAfter => Str, CreationTimeBefore => Str, FoundationModelArnEquals => Str, IsOwned => Bool, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - modelSummaries, passing the object as the first parameter, and the string 'modelSummaries' as the second parameter 

If not, it will return a a L<Paws::Bedrock::ListCustomModelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEvaluationJobs(sub { },[ApplicationTypeEquals => Str, CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllEvaluationJobs([ApplicationTypeEquals => Str, CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - jobSummaries, passing the object as the first parameter, and the string 'jobSummaries' as the second parameter 

If not, it will return a a L<Paws::Bedrock::ListEvaluationJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGuardrails(sub { },[GuardrailIdentifier => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllGuardrails([GuardrailIdentifier => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - guardrails, passing the object as the first parameter, and the string 'guardrails' as the second parameter 

If not, it will return a a L<Paws::Bedrock::ListGuardrailsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllImportedModels(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllImportedModels([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - modelSummaries, passing the object as the first parameter, and the string 'modelSummaries' as the second parameter 

If not, it will return a a L<Paws::Bedrock::ListImportedModelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInferenceProfiles(sub { },[MaxResults => Int, NextToken => Str, TypeEquals => Str])

=head2 ListAllInferenceProfiles([MaxResults => Int, NextToken => Str, TypeEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - inferenceProfileSummaries, passing the object as the first parameter, and the string 'inferenceProfileSummaries' as the second parameter 

If not, it will return a a L<Paws::Bedrock::ListInferenceProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMarketplaceModelEndpoints(sub { },[MaxResults => Int, ModelSourceEquals => Str, NextToken => Str])

=head2 ListAllMarketplaceModelEndpoints([MaxResults => Int, ModelSourceEquals => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - marketplaceModelEndpoints, passing the object as the first parameter, and the string 'marketplaceModelEndpoints' as the second parameter 

If not, it will return a a L<Paws::Bedrock::ListMarketplaceModelEndpointsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModelCopyJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceAccountEquals => Str, SourceModelArnEquals => Str, StatusEquals => Str, TargetModelNameContains => Str])

=head2 ListAllModelCopyJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceAccountEquals => Str, SourceModelArnEquals => Str, StatusEquals => Str, TargetModelNameContains => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - modelCopyJobSummaries, passing the object as the first parameter, and the string 'modelCopyJobSummaries' as the second parameter 

If not, it will return a a L<Paws::Bedrock::ListModelCopyJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModelCustomizationJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllModelCustomizationJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - modelCustomizationJobSummaries, passing the object as the first parameter, and the string 'modelCustomizationJobSummaries' as the second parameter 

If not, it will return a a L<Paws::Bedrock::ListModelCustomizationJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModelImportJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllModelImportJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - modelImportJobSummaries, passing the object as the first parameter, and the string 'modelImportJobSummaries' as the second parameter 

If not, it will return a a L<Paws::Bedrock::ListModelImportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModelInvocationJobs(sub { },[MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str, SubmitTimeAfter => Str, SubmitTimeBefore => Str])

=head2 ListAllModelInvocationJobs([MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str, SubmitTimeAfter => Str, SubmitTimeBefore => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - invocationJobSummaries, passing the object as the first parameter, and the string 'invocationJobSummaries' as the second parameter 

If not, it will return a a L<Paws::Bedrock::ListModelInvocationJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPromptRouters(sub { },[MaxResults => Int, NextToken => Str, Type => Str])

=head2 ListAllPromptRouters([MaxResults => Int, NextToken => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - promptRouterSummaries, passing the object as the first parameter, and the string 'promptRouterSummaries' as the second parameter 

If not, it will return a a L<Paws::Bedrock::ListPromptRoutersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProvisionedModelThroughputs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, ModelArnEquals => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllProvisionedModelThroughputs([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, ModelArnEquals => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - provisionedModelSummaries, passing the object as the first parameter, and the string 'provisionedModelSummaries' as the second parameter 

If not, it will return a a L<Paws::Bedrock::ListProvisionedModelThroughputsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

