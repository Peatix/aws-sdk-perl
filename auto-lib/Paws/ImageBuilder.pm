package Paws::ImageBuilder;
  use Moose;
  sub service { 'imagebuilder' }
  sub signing_name { 'imagebuilder' }
  sub version { '2019-12-02' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelImageCreation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::CancelImageCreation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelLifecycleExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::CancelLifecycleExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::CreateComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateContainerRecipe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::CreateContainerRecipe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDistributionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::CreateDistributionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::CreateImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateImagePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::CreateImagePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateImageRecipe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::CreateImageRecipe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInfrastructureConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::CreateInfrastructureConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::CreateLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::CreateWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::DeleteComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteContainerRecipe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::DeleteContainerRecipe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDistributionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::DeleteDistributionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::DeleteImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImagePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::DeleteImagePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImageRecipe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::DeleteImageRecipe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInfrastructureConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::DeleteInfrastructureConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::DeleteLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::DeleteWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComponentPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetComponentPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContainerRecipe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetContainerRecipe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContainerRecipePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetContainerRecipePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDistributionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetDistributionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImagePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetImagePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImagePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetImagePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImageRecipe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetImageRecipe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImageRecipePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetImageRecipePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInfrastructureConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetInfrastructureConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLifecycleExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetLifecycleExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMarketplaceResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetMarketplaceResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkflowExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetWorkflowExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkflowStepExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetWorkflowStepExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ImportComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportDiskImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ImportDiskImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportVmImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ImportVmImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComponentBuildVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListComponentBuildVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComponents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListComponents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContainerRecipes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListContainerRecipes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributionConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListDistributionConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImageBuildVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListImageBuildVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImagePackages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListImagePackages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImagePipelineImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListImagePipelineImages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImagePipelines {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListImagePipelines', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImageRecipes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListImageRecipes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListImages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImageScanFindingAggregations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListImageScanFindingAggregations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImageScanFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListImageScanFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInfrastructureConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListInfrastructureConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLifecycleExecutionResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListLifecycleExecutionResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLifecycleExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListLifecycleExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLifecyclePolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListLifecyclePolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWaitingWorkflowSteps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListWaitingWorkflowSteps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkflowBuildVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListWorkflowBuildVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkflowExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListWorkflowExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkflows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListWorkflows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkflowStepExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListWorkflowStepExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutComponentPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::PutComponentPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutContainerRecipePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::PutContainerRecipePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutImagePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::PutImagePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutImageRecipePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::PutImageRecipePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendWorkflowStepAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::SendWorkflowStepAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartImagePipelineExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::StartImagePipelineExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartResourceStateUpdate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::StartResourceStateUpdate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDistributionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::UpdateDistributionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateImagePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::UpdateImagePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInfrastructureConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::UpdateInfrastructureConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::UpdateLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllLifecycleExecutionResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLifecycleExecutionResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListLifecycleExecutionResources(@_, nextToken => $next_result->nextToken);
        push @{ $result->resources }, @{ $next_result->resources };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'resources') foreach (@{ $result->resources });
        $result = $self->ListLifecycleExecutionResources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'resources') foreach (@{ $result->resources });
    }

    return undef
  }
  sub ListAllLifecycleExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLifecycleExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListLifecycleExecutions(@_, nextToken => $next_result->nextToken);
        push @{ $result->lifecycleExecutions }, @{ $next_result->lifecycleExecutions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'lifecycleExecutions') foreach (@{ $result->lifecycleExecutions });
        $result = $self->ListLifecycleExecutions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'lifecycleExecutions') foreach (@{ $result->lifecycleExecutions });
    }

    return undef
  }
  sub ListAllLifecyclePolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLifecyclePolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListLifecyclePolicies(@_, nextToken => $next_result->nextToken);
        push @{ $result->lifecyclePolicySummaryList }, @{ $next_result->lifecyclePolicySummaryList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'lifecyclePolicySummaryList') foreach (@{ $result->lifecyclePolicySummaryList });
        $result = $self->ListLifecyclePolicies(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'lifecyclePolicySummaryList') foreach (@{ $result->lifecyclePolicySummaryList });
    }

    return undef
  }
  sub ListAllWaitingWorkflowSteps {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWaitingWorkflowSteps(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWaitingWorkflowSteps(@_, nextToken => $next_result->nextToken);
        push @{ $result->steps }, @{ $next_result->steps };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'steps') foreach (@{ $result->steps });
        $result = $self->ListWaitingWorkflowSteps(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'steps') foreach (@{ $result->steps });
    }

    return undef
  }
  sub ListAllWorkflowBuildVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkflowBuildVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorkflowBuildVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->workflowSummaryList }, @{ $next_result->workflowSummaryList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'workflowSummaryList') foreach (@{ $result->workflowSummaryList });
        $result = $self->ListWorkflowBuildVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'workflowSummaryList') foreach (@{ $result->workflowSummaryList });
    }

    return undef
  }
  sub ListAllWorkflows {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkflows(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorkflows(@_, nextToken => $next_result->nextToken);
        push @{ $result->workflowVersionList }, @{ $next_result->workflowVersionList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'workflowVersionList') foreach (@{ $result->workflowVersionList });
        $result = $self->ListWorkflows(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'workflowVersionList') foreach (@{ $result->workflowVersionList });
    }

    return undef
  }


  sub operations { qw/CancelImageCreation CancelLifecycleExecution CreateComponent CreateContainerRecipe CreateDistributionConfiguration CreateImage CreateImagePipeline CreateImageRecipe CreateInfrastructureConfiguration CreateLifecyclePolicy CreateWorkflow DeleteComponent DeleteContainerRecipe DeleteDistributionConfiguration DeleteImage DeleteImagePipeline DeleteImageRecipe DeleteInfrastructureConfiguration DeleteLifecyclePolicy DeleteWorkflow GetComponent GetComponentPolicy GetContainerRecipe GetContainerRecipePolicy GetDistributionConfiguration GetImage GetImagePipeline GetImagePolicy GetImageRecipe GetImageRecipePolicy GetInfrastructureConfiguration GetLifecycleExecution GetLifecyclePolicy GetMarketplaceResource GetWorkflow GetWorkflowExecution GetWorkflowStepExecution ImportComponent ImportDiskImage ImportVmImage ListComponentBuildVersions ListComponents ListContainerRecipes ListDistributionConfigurations ListImageBuildVersions ListImagePackages ListImagePipelineImages ListImagePipelines ListImageRecipes ListImages ListImageScanFindingAggregations ListImageScanFindings ListInfrastructureConfigurations ListLifecycleExecutionResources ListLifecycleExecutions ListLifecyclePolicies ListTagsForResource ListWaitingWorkflowSteps ListWorkflowBuildVersions ListWorkflowExecutions ListWorkflows ListWorkflowStepExecutions PutComponentPolicy PutContainerRecipePolicy PutImagePolicy PutImageRecipePolicy SendWorkflowStepAction StartImagePipelineExecution StartResourceStateUpdate TagResource UntagResource UpdateDistributionConfiguration UpdateImagePipeline UpdateInfrastructureConfiguration UpdateLifecyclePolicy / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder - Perl Interface to AWS EC2 Image Builder

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ImageBuilder');
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

EC2 Image Builder is a fully managed Amazon Web Services service that
makes it easier to automate the creation, management, and deployment of
customized, secure, and up-to-date "golden" server images that are
pre-installed and pre-configured with software and settings to meet
specific IT standards.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CancelImageCreation

=over

=item ClientToken => Str

=item ImageBuildVersionArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::CancelImageCreation>

Returns: a L<Paws::ImageBuilder::CancelImageCreationResponse> instance

CancelImageCreation cancels the creation of Image. This operation can
only be used on images in a non-terminal state.


=head2 CancelLifecycleExecution

=over

=item ClientToken => Str

=item LifecycleExecutionId => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::CancelLifecycleExecution>

Returns: a L<Paws::ImageBuilder::CancelLifecycleExecutionResponse> instance

Cancel a specific image lifecycle policy runtime instance.


=head2 CreateComponent

=over

=item ClientToken => Str

=item Name => Str

=item Platform => Str

=item SemanticVersion => Str

=item [ChangeDescription => Str]

=item [Data => Str]

=item [Description => Str]

=item [KmsKeyId => Str]

=item [SupportedOsVersions => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::ImageBuilder::TagMap>]

=item [Uri => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::CreateComponent>

Returns: a L<Paws::ImageBuilder::CreateComponentResponse> instance

Creates a new component that can be used to build, validate, test, and
assess your image. The component is based on a YAML document that you
specify using exactly one of the following methods:

=over

=item *

Inline, using the C<data> property in the request body.

=item *

A URL that points to a YAML document file stored in Amazon S3, using
the C<uri> property in the request body.

=back



=head2 CreateContainerRecipe

=over

=item ClientToken => Str

=item Components => ArrayRef[L<Paws::ImageBuilder::ComponentConfiguration>]

=item ContainerType => Str

=item Name => Str

=item ParentImage => Str

=item SemanticVersion => Str

=item TargetRepository => L<Paws::ImageBuilder::TargetContainerRepository>

=item [Description => Str]

=item [DockerfileTemplateData => Str]

=item [DockerfileTemplateUri => Str]

=item [ImageOsVersionOverride => Str]

=item [InstanceConfiguration => L<Paws::ImageBuilder::InstanceConfiguration>]

=item [KmsKeyId => Str]

=item [PlatformOverride => Str]

=item [Tags => L<Paws::ImageBuilder::TagMap>]

=item [WorkingDirectory => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::CreateContainerRecipe>

Returns: a L<Paws::ImageBuilder::CreateContainerRecipeResponse> instance

Creates a new container recipe. Container recipes define how images are
configured, tested, and assessed.


=head2 CreateDistributionConfiguration

=over

=item ClientToken => Str

=item Distributions => ArrayRef[L<Paws::ImageBuilder::Distribution>]

=item Name => Str

=item [Description => Str]

=item [Tags => L<Paws::ImageBuilder::TagMap>]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::CreateDistributionConfiguration>

Returns: a L<Paws::ImageBuilder::CreateDistributionConfigurationResponse> instance

Creates a new distribution configuration. Distribution configurations
define and configure the outputs of your pipeline.


=head2 CreateImage

=over

=item ClientToken => Str

=item InfrastructureConfigurationArn => Str

=item [ContainerRecipeArn => Str]

=item [DistributionConfigurationArn => Str]

=item [EnhancedImageMetadataEnabled => Bool]

=item [ExecutionRole => Str]

=item [ImageRecipeArn => Str]

=item [ImageScanningConfiguration => L<Paws::ImageBuilder::ImageScanningConfiguration>]

=item [ImageTestsConfiguration => L<Paws::ImageBuilder::ImageTestsConfiguration>]

=item [Tags => L<Paws::ImageBuilder::TagMap>]

=item [Workflows => ArrayRef[L<Paws::ImageBuilder::WorkflowConfiguration>]]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::CreateImage>

Returns: a L<Paws::ImageBuilder::CreateImageResponse> instance

Creates a new image. This request will create a new image along with
all of the configured output resources defined in the distribution
configuration. You must specify exactly one recipe for your image,
using either a ContainerRecipeArn or an ImageRecipeArn.


=head2 CreateImagePipeline

=over

=item ClientToken => Str

=item InfrastructureConfigurationArn => Str

=item Name => Str

=item [ContainerRecipeArn => Str]

=item [Description => Str]

=item [DistributionConfigurationArn => Str]

=item [EnhancedImageMetadataEnabled => Bool]

=item [ExecutionRole => Str]

=item [ImageRecipeArn => Str]

=item [ImageScanningConfiguration => L<Paws::ImageBuilder::ImageScanningConfiguration>]

=item [ImageTestsConfiguration => L<Paws::ImageBuilder::ImageTestsConfiguration>]

=item [Schedule => L<Paws::ImageBuilder::Schedule>]

=item [Status => Str]

=item [Tags => L<Paws::ImageBuilder::TagMap>]

=item [Workflows => ArrayRef[L<Paws::ImageBuilder::WorkflowConfiguration>]]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::CreateImagePipeline>

Returns: a L<Paws::ImageBuilder::CreateImagePipelineResponse> instance

Creates a new image pipeline. Image pipelines enable you to automate
the creation and distribution of images.


=head2 CreateImageRecipe

=over

=item ClientToken => Str

=item Components => ArrayRef[L<Paws::ImageBuilder::ComponentConfiguration>]

=item Name => Str

=item ParentImage => Str

=item SemanticVersion => Str

=item [AdditionalInstanceConfiguration => L<Paws::ImageBuilder::AdditionalInstanceConfiguration>]

=item [BlockDeviceMappings => ArrayRef[L<Paws::ImageBuilder::InstanceBlockDeviceMapping>]]

=item [Description => Str]

=item [Tags => L<Paws::ImageBuilder::TagMap>]

=item [WorkingDirectory => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::CreateImageRecipe>

Returns: a L<Paws::ImageBuilder::CreateImageRecipeResponse> instance

Creates a new image recipe. Image recipes define how images are
configured, tested, and assessed.


=head2 CreateInfrastructureConfiguration

=over

=item ClientToken => Str

=item InstanceProfileName => Str

=item Name => Str

=item [Description => Str]

=item [InstanceMetadataOptions => L<Paws::ImageBuilder::InstanceMetadataOptions>]

=item [InstanceTypes => ArrayRef[Str|Undef]]

=item [KeyPair => Str]

=item [Logging => L<Paws::ImageBuilder::Logging>]

=item [Placement => L<Paws::ImageBuilder::Placement>]

=item [ResourceTags => L<Paws::ImageBuilder::ResourceTagMap>]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SnsTopicArn => Str]

=item [SubnetId => Str]

=item [Tags => L<Paws::ImageBuilder::TagMap>]

=item [TerminateInstanceOnFailure => Bool]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::CreateInfrastructureConfiguration>

Returns: a L<Paws::ImageBuilder::CreateInfrastructureConfigurationResponse> instance

Creates a new infrastructure configuration. An infrastructure
configuration defines the environment in which your image will be built
and tested.


=head2 CreateLifecyclePolicy

=over

=item ClientToken => Str

=item ExecutionRole => Str

=item Name => Str

=item PolicyDetails => ArrayRef[L<Paws::ImageBuilder::LifecyclePolicyDetail>]

=item ResourceSelection => L<Paws::ImageBuilder::LifecyclePolicyResourceSelection>

=item ResourceType => Str

=item [Description => Str]

=item [Status => Str]

=item [Tags => L<Paws::ImageBuilder::TagMap>]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::CreateLifecyclePolicy>

Returns: a L<Paws::ImageBuilder::CreateLifecyclePolicyResponse> instance

Create a lifecycle policy resource.


=head2 CreateWorkflow

=over

=item ClientToken => Str

=item Name => Str

=item SemanticVersion => Str

=item Type => Str

=item [ChangeDescription => Str]

=item [Data => Str]

=item [Description => Str]

=item [KmsKeyId => Str]

=item [Tags => L<Paws::ImageBuilder::TagMap>]

=item [Uri => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::CreateWorkflow>

Returns: a L<Paws::ImageBuilder::CreateWorkflowResponse> instance

Create a new workflow or a new version of an existing workflow.


=head2 DeleteComponent

=over

=item ComponentBuildVersionArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::DeleteComponent>

Returns: a L<Paws::ImageBuilder::DeleteComponentResponse> instance

Deletes a component build version.


=head2 DeleteContainerRecipe

=over

=item ContainerRecipeArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::DeleteContainerRecipe>

Returns: a L<Paws::ImageBuilder::DeleteContainerRecipeResponse> instance

Deletes a container recipe.


=head2 DeleteDistributionConfiguration

=over

=item DistributionConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::DeleteDistributionConfiguration>

Returns: a L<Paws::ImageBuilder::DeleteDistributionConfigurationResponse> instance

Deletes a distribution configuration.


=head2 DeleteImage

=over

=item ImageBuildVersionArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::DeleteImage>

Returns: a L<Paws::ImageBuilder::DeleteImageResponse> instance

Deletes an Image Builder image resource. This does not delete any EC2
AMIs or ECR container images that are created during the image build
process. You must clean those up separately, using the appropriate
Amazon EC2 or Amazon ECR console actions, or API or CLI commands.

=over

=item *

To deregister an EC2 Linux AMI, see Deregister your Linux AMI
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/deregister-ami.html)
in the I< I<Amazon EC2 User Guide> >.

=item *

To deregister an EC2 Windows AMI, see Deregister your Windows AMI
(https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/deregister-ami.html)
in the I< I<Amazon EC2 Windows Guide> >.

=item *

To delete a container image from Amazon ECR, see Deleting an image
(https://docs.aws.amazon.com/AmazonECR/latest/userguide/delete_image.html)
in the I<Amazon ECR User Guide>.

=back



=head2 DeleteImagePipeline

=over

=item ImagePipelineArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::DeleteImagePipeline>

Returns: a L<Paws::ImageBuilder::DeleteImagePipelineResponse> instance

Deletes an image pipeline.


=head2 DeleteImageRecipe

=over

=item ImageRecipeArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::DeleteImageRecipe>

Returns: a L<Paws::ImageBuilder::DeleteImageRecipeResponse> instance

Deletes an image recipe.


=head2 DeleteInfrastructureConfiguration

=over

=item InfrastructureConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::DeleteInfrastructureConfiguration>

Returns: a L<Paws::ImageBuilder::DeleteInfrastructureConfigurationResponse> instance

Deletes an infrastructure configuration.


=head2 DeleteLifecyclePolicy

=over

=item LifecyclePolicyArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::DeleteLifecyclePolicy>

Returns: a L<Paws::ImageBuilder::DeleteLifecyclePolicyResponse> instance

Delete the specified lifecycle policy resource.


=head2 DeleteWorkflow

=over

=item WorkflowBuildVersionArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::DeleteWorkflow>

Returns: a L<Paws::ImageBuilder::DeleteWorkflowResponse> instance

Deletes a specific workflow resource.


=head2 GetComponent

=over

=item ComponentBuildVersionArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetComponent>

Returns: a L<Paws::ImageBuilder::GetComponentResponse> instance

Gets a component object.


=head2 GetComponentPolicy

=over

=item ComponentArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetComponentPolicy>

Returns: a L<Paws::ImageBuilder::GetComponentPolicyResponse> instance

Gets a component policy.


=head2 GetContainerRecipe

=over

=item ContainerRecipeArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetContainerRecipe>

Returns: a L<Paws::ImageBuilder::GetContainerRecipeResponse> instance

Retrieves a container recipe.


=head2 GetContainerRecipePolicy

=over

=item ContainerRecipeArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetContainerRecipePolicy>

Returns: a L<Paws::ImageBuilder::GetContainerRecipePolicyResponse> instance

Retrieves the policy for a container recipe.


=head2 GetDistributionConfiguration

=over

=item DistributionConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetDistributionConfiguration>

Returns: a L<Paws::ImageBuilder::GetDistributionConfigurationResponse> instance

Gets a distribution configuration.


=head2 GetImage

=over

=item ImageBuildVersionArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetImage>

Returns: a L<Paws::ImageBuilder::GetImageResponse> instance

Gets an image.


=head2 GetImagePipeline

=over

=item ImagePipelineArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetImagePipeline>

Returns: a L<Paws::ImageBuilder::GetImagePipelineResponse> instance

Gets an image pipeline.


=head2 GetImagePolicy

=over

=item ImageArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetImagePolicy>

Returns: a L<Paws::ImageBuilder::GetImagePolicyResponse> instance

Gets an image policy.


=head2 GetImageRecipe

=over

=item ImageRecipeArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetImageRecipe>

Returns: a L<Paws::ImageBuilder::GetImageRecipeResponse> instance

Gets an image recipe.


=head2 GetImageRecipePolicy

=over

=item ImageRecipeArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetImageRecipePolicy>

Returns: a L<Paws::ImageBuilder::GetImageRecipePolicyResponse> instance

Gets an image recipe policy.


=head2 GetInfrastructureConfiguration

=over

=item InfrastructureConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetInfrastructureConfiguration>

Returns: a L<Paws::ImageBuilder::GetInfrastructureConfigurationResponse> instance

Gets an infrastructure configuration.


=head2 GetLifecycleExecution

=over

=item LifecycleExecutionId => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetLifecycleExecution>

Returns: a L<Paws::ImageBuilder::GetLifecycleExecutionResponse> instance

Get the runtime information that was logged for a specific runtime
instance of the lifecycle policy.


=head2 GetLifecyclePolicy

=over

=item LifecyclePolicyArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetLifecyclePolicy>

Returns: a L<Paws::ImageBuilder::GetLifecyclePolicyResponse> instance

Get details for the specified image lifecycle policy.


=head2 GetMarketplaceResource

=over

=item ResourceArn => Str

=item ResourceType => Str

=item [ResourceLocation => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetMarketplaceResource>

Returns: a L<Paws::ImageBuilder::GetMarketplaceResourceResponse> instance

Verify the subscription and perform resource dependency checks on the
requested Amazon Web Services Marketplace resource. For Amazon Web
Services Marketplace components, the response contains fields to
download the components and their artifacts.


=head2 GetWorkflow

=over

=item WorkflowBuildVersionArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetWorkflow>

Returns: a L<Paws::ImageBuilder::GetWorkflowResponse> instance

Get a workflow resource object.


=head2 GetWorkflowExecution

=over

=item WorkflowExecutionId => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetWorkflowExecution>

Returns: a L<Paws::ImageBuilder::GetWorkflowExecutionResponse> instance

Get the runtime information that was logged for a specific runtime
instance of the workflow.


=head2 GetWorkflowStepExecution

=over

=item StepExecutionId => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetWorkflowStepExecution>

Returns: a L<Paws::ImageBuilder::GetWorkflowStepExecutionResponse> instance

Get the runtime information that was logged for a specific runtime
instance of the workflow step.


=head2 ImportComponent

=over

=item ClientToken => Str

=item Format => Str

=item Name => Str

=item Platform => Str

=item SemanticVersion => Str

=item Type => Str

=item [ChangeDescription => Str]

=item [Data => Str]

=item [Description => Str]

=item [KmsKeyId => Str]

=item [Tags => L<Paws::ImageBuilder::TagMap>]

=item [Uri => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ImportComponent>

Returns: a L<Paws::ImageBuilder::ImportComponentResponse> instance

Imports a component and transforms its data into a component document.


=head2 ImportDiskImage

=over

=item ClientToken => Str

=item InfrastructureConfigurationArn => Str

=item Name => Str

=item OsVersion => Str

=item Platform => Str

=item SemanticVersion => Str

=item Uri => Str

=item [Description => Str]

=item [ExecutionRole => Str]

=item [Tags => L<Paws::ImageBuilder::TagMap>]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ImportDiskImage>

Returns: a L<Paws::ImageBuilder::ImportDiskImageResponse> instance

Import a Windows operating system image from a verified Microsoft ISO
disk file. The following disk images are supported:

=over

=item *

Windows 11 Enterprise

=back



=head2 ImportVmImage

=over

=item ClientToken => Str

=item Name => Str

=item Platform => Str

=item SemanticVersion => Str

=item VmImportTaskId => Str

=item [Description => Str]

=item [OsVersion => Str]

=item [Tags => L<Paws::ImageBuilder::TagMap>]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ImportVmImage>

Returns: a L<Paws::ImageBuilder::ImportVmImageResponse> instance

When you export your virtual machine (VM) from its virtualization
environment, that process creates a set of one or more disk container
files that act as snapshots of your VME<rsquo>s environment, settings,
and data. The Amazon EC2 API ImportImage
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportImage.html)
action uses those files to import your VM and create an AMI. To import
using the CLI command, see import-image
(https://docs.aws.amazon.com/cli/latest/reference/ec2/import-image.html)

You can reference the task ID from the VM import to pull in the AMI
that the import created as the base image for your Image Builder
recipe.


=head2 ListComponentBuildVersions

=over

=item ComponentVersionArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListComponentBuildVersions>

Returns: a L<Paws::ImageBuilder::ListComponentBuildVersionsResponse> instance

Returns the list of component build versions for the specified
component version Amazon Resource Name (ARN).


=head2 ListComponents

=over

=item [ByName => Bool]

=item [Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Owner => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListComponents>

Returns: a L<Paws::ImageBuilder::ListComponentsResponse> instance

Returns the list of components that can be filtered by name, or by
using the listed C<filters> to streamline results. Newly created
components can take up to two minutes to appear in the ListComponents
API Results.

The semantic version has four nodes:
E<lt>majorE<gt>.E<lt>minorE<gt>.E<lt>patchE<gt>/E<lt>buildE<gt>. You
can assign values for the first three, and can filter on all of them.

B<Filtering:> With semantic versioning, you have the flexibility to use
wildcards (x) to specify the most recent versions or nodes when
selecting the base image or components for your recipe. When you use a
wildcard in any node, all nodes to the right of the first wildcard must
also be wildcards.


=head2 ListContainerRecipes

=over

=item [Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Owner => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListContainerRecipes>

Returns: a L<Paws::ImageBuilder::ListContainerRecipesResponse> instance

Returns a list of container recipes.


=head2 ListDistributionConfigurations

=over

=item [Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListDistributionConfigurations>

Returns: a L<Paws::ImageBuilder::ListDistributionConfigurationsResponse> instance

Returns a list of distribution configurations.


=head2 ListImageBuildVersions

=over

=item ImageVersionArn => Str

=item [Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListImageBuildVersions>

Returns: a L<Paws::ImageBuilder::ListImageBuildVersionsResponse> instance

Returns a list of image build versions.


=head2 ListImagePackages

=over

=item ImageBuildVersionArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListImagePackages>

Returns: a L<Paws::ImageBuilder::ListImagePackagesResponse> instance

List the Packages that are associated with an Image Build Version, as
determined by Amazon Web Services Systems Manager Inventory at build
time.


=head2 ListImagePipelineImages

=over

=item ImagePipelineArn => Str

=item [Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListImagePipelineImages>

Returns: a L<Paws::ImageBuilder::ListImagePipelineImagesResponse> instance

Returns a list of images created by the specified pipeline.


=head2 ListImagePipelines

=over

=item [Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListImagePipelines>

Returns: a L<Paws::ImageBuilder::ListImagePipelinesResponse> instance

Returns a list of image pipelines.


=head2 ListImageRecipes

=over

=item [Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Owner => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListImageRecipes>

Returns: a L<Paws::ImageBuilder::ListImageRecipesResponse> instance

Returns a list of image recipes.


=head2 ListImages

=over

=item [ByName => Bool]

=item [Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]]

=item [IncludeDeprecated => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Owner => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListImages>

Returns: a L<Paws::ImageBuilder::ListImagesResponse> instance

Returns the list of images that you have access to. Newly created
images can take up to two minutes to appear in the ListImages API
Results.


=head2 ListImageScanFindingAggregations

=over

=item [Filter => L<Paws::ImageBuilder::Filter>]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListImageScanFindingAggregations>

Returns: a L<Paws::ImageBuilder::ListImageScanFindingAggregationsResponse> instance

Returns a list of image scan aggregations for your account. You can
filter by the type of key that Image Builder uses to group results. For
example, if you want to get a list of findings by severity level for
one of your pipelines, you might specify your pipeline with the
C<imagePipelineArn> filter. If you don't specify a filter, Image
Builder returns an aggregation for your account.

To streamline results, you can use the following filters in your
request:

=over

=item *

C<accountId>

=item *

C<imageBuildVersionArn>

=item *

C<imagePipelineArn>

=item *

C<vulnerabilityId>

=back



=head2 ListImageScanFindings

=over

=item [Filters => ArrayRef[L<Paws::ImageBuilder::ImageScanFindingsFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListImageScanFindings>

Returns: a L<Paws::ImageBuilder::ListImageScanFindingsResponse> instance

Returns a list of image scan findings for your account.


=head2 ListInfrastructureConfigurations

=over

=item [Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListInfrastructureConfigurations>

Returns: a L<Paws::ImageBuilder::ListInfrastructureConfigurationsResponse> instance

Returns a list of infrastructure configurations.


=head2 ListLifecycleExecutionResources

=over

=item LifecycleExecutionId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ParentResourceId => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListLifecycleExecutionResources>

Returns: a L<Paws::ImageBuilder::ListLifecycleExecutionResourcesResponse> instance

List resources that the runtime instance of the image lifecycle
identified for lifecycle actions.


=head2 ListLifecycleExecutions

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListLifecycleExecutions>

Returns: a L<Paws::ImageBuilder::ListLifecycleExecutionsResponse> instance

Get the lifecycle runtime history for the specified resource.


=head2 ListLifecyclePolicies

=over

=item [Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListLifecyclePolicies>

Returns: a L<Paws::ImageBuilder::ListLifecyclePoliciesResponse> instance

Get a list of lifecycle policies in your Amazon Web Services account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListTagsForResource>

Returns: a L<Paws::ImageBuilder::ListTagsForResourceResponse> instance

Returns the list of tags for the specified resource.


=head2 ListWaitingWorkflowSteps

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListWaitingWorkflowSteps>

Returns: a L<Paws::ImageBuilder::ListWaitingWorkflowStepsResponse> instance

Get a list of workflow steps that are waiting for action for workflows
in your Amazon Web Services account.


=head2 ListWorkflowBuildVersions

=over

=item WorkflowVersionArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListWorkflowBuildVersions>

Returns: a L<Paws::ImageBuilder::ListWorkflowBuildVersionsResponse> instance

Returns a list of build versions for a specific workflow resource.


=head2 ListWorkflowExecutions

=over

=item ImageBuildVersionArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListWorkflowExecutions>

Returns: a L<Paws::ImageBuilder::ListWorkflowExecutionsResponse> instance

Returns a list of workflow runtime instance metadata objects for a
specific image build version.


=head2 ListWorkflows

=over

=item [ByName => Bool]

=item [Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Owner => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListWorkflows>

Returns: a L<Paws::ImageBuilder::ListWorkflowsResponse> instance

Lists workflow build versions based on filtering parameters.


=head2 ListWorkflowStepExecutions

=over

=item WorkflowExecutionId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListWorkflowStepExecutions>

Returns: a L<Paws::ImageBuilder::ListWorkflowStepExecutionsResponse> instance

Returns runtime data for each step in a runtime instance of the
workflow that you specify in the request.


=head2 PutComponentPolicy

=over

=item ComponentArn => Str

=item Policy => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::PutComponentPolicy>

Returns: a L<Paws::ImageBuilder::PutComponentPolicyResponse> instance

Applies a policy to a component. We recommend that you call the RAM API
CreateResourceShare
(https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html)
to share resources. If you call the Image Builder API
C<PutComponentPolicy>, you must also call the RAM API
PromoteResourceShareCreatedFromPolicy
(https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
in order for the resource to be visible to all principals with whom the
resource is shared.


=head2 PutContainerRecipePolicy

=over

=item ContainerRecipeArn => Str

=item Policy => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::PutContainerRecipePolicy>

Returns: a L<Paws::ImageBuilder::PutContainerRecipePolicyResponse> instance

Applies a policy to a container image. We recommend that you call the
RAM API CreateResourceShare
(https://docs.aws.amazon.com//ram/latest/APIReference/API_CreateResourceShare.html)
to share resources. If you call the Image Builder API
C<PutContainerImagePolicy>, you must also call the RAM API
PromoteResourceShareCreatedFromPolicy
(https://docs.aws.amazon.com//ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
in order for the resource to be visible to all principals with whom the
resource is shared.


=head2 PutImagePolicy

=over

=item ImageArn => Str

=item Policy => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::PutImagePolicy>

Returns: a L<Paws::ImageBuilder::PutImagePolicyResponse> instance

Applies a policy to an image. We recommend that you call the RAM API
CreateResourceShare
(https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html)
to share resources. If you call the Image Builder API
C<PutImagePolicy>, you must also call the RAM API
PromoteResourceShareCreatedFromPolicy
(https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
in order for the resource to be visible to all principals with whom the
resource is shared.


=head2 PutImageRecipePolicy

=over

=item ImageRecipeArn => Str

=item Policy => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::PutImageRecipePolicy>

Returns: a L<Paws::ImageBuilder::PutImageRecipePolicyResponse> instance

Applies a policy to an image recipe. We recommend that you call the RAM
API CreateResourceShare
(https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html)
to share resources. If you call the Image Builder API
C<PutImageRecipePolicy>, you must also call the RAM API
PromoteResourceShareCreatedFromPolicy
(https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
in order for the resource to be visible to all principals with whom the
resource is shared.


=head2 SendWorkflowStepAction

=over

=item Action => Str

=item ClientToken => Str

=item ImageBuildVersionArn => Str

=item StepExecutionId => Str

=item [Reason => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::SendWorkflowStepAction>

Returns: a L<Paws::ImageBuilder::SendWorkflowStepActionResponse> instance

Pauses or resumes image creation when the associated workflow runs a
C<WaitForAction> step.


=head2 StartImagePipelineExecution

=over

=item ClientToken => Str

=item ImagePipelineArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::StartImagePipelineExecution>

Returns: a L<Paws::ImageBuilder::StartImagePipelineExecutionResponse> instance

Manually triggers a pipeline to create an image.


=head2 StartResourceStateUpdate

=over

=item ClientToken => Str

=item ResourceArn => Str

=item State => L<Paws::ImageBuilder::ResourceState>

=item [ExclusionRules => L<Paws::ImageBuilder::ResourceStateUpdateExclusionRules>]

=item [ExecutionRole => Str]

=item [IncludeResources => L<Paws::ImageBuilder::ResourceStateUpdateIncludeResources>]

=item [UpdateAt => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::StartResourceStateUpdate>

Returns: a L<Paws::ImageBuilder::StartResourceStateUpdateResponse> instance

Begin asynchronous resource state update for lifecycle changes to the
specified image resources.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::ImageBuilder::TagMap>


=back

Each argument is described in detail in: L<Paws::ImageBuilder::TagResource>

Returns: a L<Paws::ImageBuilder::TagResourceResponse> instance

Adds a tag to a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::UntagResource>

Returns: a L<Paws::ImageBuilder::UntagResourceResponse> instance

Removes a tag from a resource.


=head2 UpdateDistributionConfiguration

=over

=item ClientToken => Str

=item DistributionConfigurationArn => Str

=item Distributions => ArrayRef[L<Paws::ImageBuilder::Distribution>]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::UpdateDistributionConfiguration>

Returns: a L<Paws::ImageBuilder::UpdateDistributionConfigurationResponse> instance

Updates a new distribution configuration. Distribution configurations
define and configure the outputs of your pipeline.


=head2 UpdateImagePipeline

=over

=item ClientToken => Str

=item ImagePipelineArn => Str

=item InfrastructureConfigurationArn => Str

=item [ContainerRecipeArn => Str]

=item [Description => Str]

=item [DistributionConfigurationArn => Str]

=item [EnhancedImageMetadataEnabled => Bool]

=item [ExecutionRole => Str]

=item [ImageRecipeArn => Str]

=item [ImageScanningConfiguration => L<Paws::ImageBuilder::ImageScanningConfiguration>]

=item [ImageTestsConfiguration => L<Paws::ImageBuilder::ImageTestsConfiguration>]

=item [Schedule => L<Paws::ImageBuilder::Schedule>]

=item [Status => Str]

=item [Workflows => ArrayRef[L<Paws::ImageBuilder::WorkflowConfiguration>]]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::UpdateImagePipeline>

Returns: a L<Paws::ImageBuilder::UpdateImagePipelineResponse> instance

Updates an image pipeline. Image pipelines enable you to automate the
creation and distribution of images. You must specify exactly one
recipe for your image, using either a C<containerRecipeArn> or an
C<imageRecipeArn>.

UpdateImagePipeline does not support selective updates for the
pipeline. You must specify all of the required properties in the update
request, not just the properties that have changed.


=head2 UpdateInfrastructureConfiguration

=over

=item ClientToken => Str

=item InfrastructureConfigurationArn => Str

=item InstanceProfileName => Str

=item [Description => Str]

=item [InstanceMetadataOptions => L<Paws::ImageBuilder::InstanceMetadataOptions>]

=item [InstanceTypes => ArrayRef[Str|Undef]]

=item [KeyPair => Str]

=item [Logging => L<Paws::ImageBuilder::Logging>]

=item [Placement => L<Paws::ImageBuilder::Placement>]

=item [ResourceTags => L<Paws::ImageBuilder::ResourceTagMap>]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SnsTopicArn => Str]

=item [SubnetId => Str]

=item [TerminateInstanceOnFailure => Bool]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::UpdateInfrastructureConfiguration>

Returns: a L<Paws::ImageBuilder::UpdateInfrastructureConfigurationResponse> instance

Updates a new infrastructure configuration. An infrastructure
configuration defines the environment in which your image will be built
and tested.


=head2 UpdateLifecyclePolicy

=over

=item ClientToken => Str

=item ExecutionRole => Str

=item LifecyclePolicyArn => Str

=item PolicyDetails => ArrayRef[L<Paws::ImageBuilder::LifecyclePolicyDetail>]

=item ResourceSelection => L<Paws::ImageBuilder::LifecyclePolicyResourceSelection>

=item ResourceType => Str

=item [Description => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::UpdateLifecyclePolicy>

Returns: a L<Paws::ImageBuilder::UpdateLifecyclePolicyResponse> instance

Update the specified lifecycle policy.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllLifecycleExecutionResources(sub { },LifecycleExecutionId => Str, [MaxResults => Int, NextToken => Str, ParentResourceId => Str])

=head2 ListAllLifecycleExecutionResources(LifecycleExecutionId => Str, [MaxResults => Int, NextToken => Str, ParentResourceId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - resources, passing the object as the first parameter, and the string 'resources' as the second parameter 

If not, it will return a a L<Paws::ImageBuilder::ListLifecycleExecutionResourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLifecycleExecutions(sub { },ResourceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllLifecycleExecutions(ResourceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - lifecycleExecutions, passing the object as the first parameter, and the string 'lifecycleExecutions' as the second parameter 

If not, it will return a a L<Paws::ImageBuilder::ListLifecycleExecutionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLifecyclePolicies(sub { },[Filters => ArrayRef[L<Paws::ImageBuilder::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllLifecyclePolicies([Filters => ArrayRef[L<Paws::ImageBuilder::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - lifecyclePolicySummaryList, passing the object as the first parameter, and the string 'lifecyclePolicySummaryList' as the second parameter 

If not, it will return a a L<Paws::ImageBuilder::ListLifecyclePoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWaitingWorkflowSteps(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllWaitingWorkflowSteps([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - steps, passing the object as the first parameter, and the string 'steps' as the second parameter 

If not, it will return a a L<Paws::ImageBuilder::ListWaitingWorkflowStepsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkflowBuildVersions(sub { },WorkflowVersionArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllWorkflowBuildVersions(WorkflowVersionArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - workflowSummaryList, passing the object as the first parameter, and the string 'workflowSummaryList' as the second parameter 

If not, it will return a a L<Paws::ImageBuilder::ListWorkflowBuildVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkflows(sub { },[ByName => Bool, Filters => ArrayRef[L<Paws::ImageBuilder::Filter>], MaxResults => Int, NextToken => Str, Owner => Str])

=head2 ListAllWorkflows([ByName => Bool, Filters => ArrayRef[L<Paws::ImageBuilder::Filter>], MaxResults => Int, NextToken => Str, Owner => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - workflowVersionList, passing the object as the first parameter, and the string 'workflowVersionList' as the second parameter 

If not, it will return a a L<Paws::ImageBuilder::ListWorkflowsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

