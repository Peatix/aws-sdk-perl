package Paws::CleanRoomsML;
  use Moose;
  sub service { 'cleanrooms-ml' }
  sub signing_name { 'cleanrooms-ml' }
  sub version { '2023-09-06' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelTrainedModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::CancelTrainedModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelTrainedModelInferenceJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::CancelTrainedModelInferenceJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAudienceModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::CreateAudienceModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfiguredAudienceModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::CreateConfiguredAudienceModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfiguredModelAlgorithm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::CreateConfiguredModelAlgorithm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfiguredModelAlgorithmAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::CreateConfiguredModelAlgorithmAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMLInputChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::CreateMLInputChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrainedModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::CreateTrainedModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrainingDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::CreateTrainingDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAudienceGenerationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::DeleteAudienceGenerationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAudienceModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::DeleteAudienceModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfiguredAudienceModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::DeleteConfiguredAudienceModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfiguredAudienceModelPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::DeleteConfiguredAudienceModelPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfiguredModelAlgorithm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::DeleteConfiguredModelAlgorithm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfiguredModelAlgorithmAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::DeleteConfiguredModelAlgorithmAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMLConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::DeleteMLConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMLInputChannelData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::DeleteMLInputChannelData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrainedModelOutput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::DeleteTrainedModelOutput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrainingDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::DeleteTrainingDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAudienceGenerationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::GetAudienceGenerationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAudienceModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::GetAudienceModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCollaborationConfiguredModelAlgorithmAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::GetCollaborationConfiguredModelAlgorithmAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCollaborationMLInputChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::GetCollaborationMLInputChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCollaborationTrainedModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::GetCollaborationTrainedModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfiguredAudienceModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::GetConfiguredAudienceModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfiguredAudienceModelPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::GetConfiguredAudienceModelPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfiguredModelAlgorithm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::GetConfiguredModelAlgorithm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfiguredModelAlgorithmAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::GetConfiguredModelAlgorithmAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMLConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::GetMLConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMLInputChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::GetMLInputChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTrainedModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::GetTrainedModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTrainedModelInferenceJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::GetTrainedModelInferenceJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTrainingDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::GetTrainingDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAudienceExportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::ListAudienceExportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAudienceGenerationJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::ListAudienceGenerationJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAudienceModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::ListAudienceModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCollaborationConfiguredModelAlgorithmAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::ListCollaborationConfiguredModelAlgorithmAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCollaborationMLInputChannels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::ListCollaborationMLInputChannels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCollaborationTrainedModelExportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::ListCollaborationTrainedModelExportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCollaborationTrainedModelInferenceJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::ListCollaborationTrainedModelInferenceJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCollaborationTrainedModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::ListCollaborationTrainedModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfiguredAudienceModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::ListConfiguredAudienceModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfiguredModelAlgorithmAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::ListConfiguredModelAlgorithmAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfiguredModelAlgorithms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::ListConfiguredModelAlgorithms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMLInputChannels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::ListMLInputChannels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrainedModelInferenceJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::ListTrainedModelInferenceJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrainedModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::ListTrainedModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrainingDatasets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::ListTrainingDatasets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutConfiguredAudienceModelPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::PutConfiguredAudienceModelPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutMLConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::PutMLConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartAudienceExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::StartAudienceExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartAudienceGenerationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::StartAudienceGenerationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTrainedModelExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::StartTrainedModelExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTrainedModelInferenceJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::StartTrainedModelInferenceJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfiguredAudienceModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CleanRoomsML::UpdateConfiguredAudienceModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAudienceExportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAudienceExportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAudienceExportJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->audienceExportJobs }, @{ $next_result->audienceExportJobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'audienceExportJobs') foreach (@{ $result->audienceExportJobs });
        $result = $self->ListAudienceExportJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'audienceExportJobs') foreach (@{ $result->audienceExportJobs });
    }

    return undef
  }
  sub ListAllAudienceGenerationJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAudienceGenerationJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAudienceGenerationJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->audienceGenerationJobs }, @{ $next_result->audienceGenerationJobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'audienceGenerationJobs') foreach (@{ $result->audienceGenerationJobs });
        $result = $self->ListAudienceGenerationJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'audienceGenerationJobs') foreach (@{ $result->audienceGenerationJobs });
    }

    return undef
  }
  sub ListAllAudienceModels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAudienceModels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAudienceModels(@_, nextToken => $next_result->nextToken);
        push @{ $result->audienceModels }, @{ $next_result->audienceModels };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'audienceModels') foreach (@{ $result->audienceModels });
        $result = $self->ListAudienceModels(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'audienceModels') foreach (@{ $result->audienceModels });
    }

    return undef
  }
  sub ListAllCollaborationConfiguredModelAlgorithmAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCollaborationConfiguredModelAlgorithmAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCollaborationConfiguredModelAlgorithmAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->collaborationConfiguredModelAlgorithmAssociations }, @{ $next_result->collaborationConfiguredModelAlgorithmAssociations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'collaborationConfiguredModelAlgorithmAssociations') foreach (@{ $result->collaborationConfiguredModelAlgorithmAssociations });
        $result = $self->ListCollaborationConfiguredModelAlgorithmAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'collaborationConfiguredModelAlgorithmAssociations') foreach (@{ $result->collaborationConfiguredModelAlgorithmAssociations });
    }

    return undef
  }
  sub ListAllCollaborationMLInputChannels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCollaborationMLInputChannels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCollaborationMLInputChannels(@_, nextToken => $next_result->nextToken);
        push @{ $result->collaborationMLInputChannelsList }, @{ $next_result->collaborationMLInputChannelsList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'collaborationMLInputChannelsList') foreach (@{ $result->collaborationMLInputChannelsList });
        $result = $self->ListCollaborationMLInputChannels(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'collaborationMLInputChannelsList') foreach (@{ $result->collaborationMLInputChannelsList });
    }

    return undef
  }
  sub ListAllCollaborationTrainedModelExportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCollaborationTrainedModelExportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCollaborationTrainedModelExportJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->collaborationTrainedModelExportJobs }, @{ $next_result->collaborationTrainedModelExportJobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'collaborationTrainedModelExportJobs') foreach (@{ $result->collaborationTrainedModelExportJobs });
        $result = $self->ListCollaborationTrainedModelExportJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'collaborationTrainedModelExportJobs') foreach (@{ $result->collaborationTrainedModelExportJobs });
    }

    return undef
  }
  sub ListAllCollaborationTrainedModelInferenceJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCollaborationTrainedModelInferenceJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCollaborationTrainedModelInferenceJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->collaborationTrainedModelInferenceJobs }, @{ $next_result->collaborationTrainedModelInferenceJobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'collaborationTrainedModelInferenceJobs') foreach (@{ $result->collaborationTrainedModelInferenceJobs });
        $result = $self->ListCollaborationTrainedModelInferenceJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'collaborationTrainedModelInferenceJobs') foreach (@{ $result->collaborationTrainedModelInferenceJobs });
    }

    return undef
  }
  sub ListAllCollaborationTrainedModels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCollaborationTrainedModels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCollaborationTrainedModels(@_, nextToken => $next_result->nextToken);
        push @{ $result->collaborationTrainedModels }, @{ $next_result->collaborationTrainedModels };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'collaborationTrainedModels') foreach (@{ $result->collaborationTrainedModels });
        $result = $self->ListCollaborationTrainedModels(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'collaborationTrainedModels') foreach (@{ $result->collaborationTrainedModels });
    }

    return undef
  }
  sub ListAllConfiguredAudienceModels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConfiguredAudienceModels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListConfiguredAudienceModels(@_, nextToken => $next_result->nextToken);
        push @{ $result->configuredAudienceModels }, @{ $next_result->configuredAudienceModels };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'configuredAudienceModels') foreach (@{ $result->configuredAudienceModels });
        $result = $self->ListConfiguredAudienceModels(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'configuredAudienceModels') foreach (@{ $result->configuredAudienceModels });
    }

    return undef
  }
  sub ListAllConfiguredModelAlgorithmAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConfiguredModelAlgorithmAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListConfiguredModelAlgorithmAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->configuredModelAlgorithmAssociations }, @{ $next_result->configuredModelAlgorithmAssociations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'configuredModelAlgorithmAssociations') foreach (@{ $result->configuredModelAlgorithmAssociations });
        $result = $self->ListConfiguredModelAlgorithmAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'configuredModelAlgorithmAssociations') foreach (@{ $result->configuredModelAlgorithmAssociations });
    }

    return undef
  }
  sub ListAllConfiguredModelAlgorithms {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConfiguredModelAlgorithms(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListConfiguredModelAlgorithms(@_, nextToken => $next_result->nextToken);
        push @{ $result->configuredModelAlgorithms }, @{ $next_result->configuredModelAlgorithms };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'configuredModelAlgorithms') foreach (@{ $result->configuredModelAlgorithms });
        $result = $self->ListConfiguredModelAlgorithms(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'configuredModelAlgorithms') foreach (@{ $result->configuredModelAlgorithms });
    }

    return undef
  }
  sub ListAllMLInputChannels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMLInputChannels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMLInputChannels(@_, nextToken => $next_result->nextToken);
        push @{ $result->mlInputChannelsList }, @{ $next_result->mlInputChannelsList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'mlInputChannelsList') foreach (@{ $result->mlInputChannelsList });
        $result = $self->ListMLInputChannels(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'mlInputChannelsList') foreach (@{ $result->mlInputChannelsList });
    }

    return undef
  }
  sub ListAllTrainedModelInferenceJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTrainedModelInferenceJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTrainedModelInferenceJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->trainedModelInferenceJobs }, @{ $next_result->trainedModelInferenceJobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'trainedModelInferenceJobs') foreach (@{ $result->trainedModelInferenceJobs });
        $result = $self->ListTrainedModelInferenceJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'trainedModelInferenceJobs') foreach (@{ $result->trainedModelInferenceJobs });
    }

    return undef
  }
  sub ListAllTrainedModels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTrainedModels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTrainedModels(@_, nextToken => $next_result->nextToken);
        push @{ $result->trainedModels }, @{ $next_result->trainedModels };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'trainedModels') foreach (@{ $result->trainedModels });
        $result = $self->ListTrainedModels(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'trainedModels') foreach (@{ $result->trainedModels });
    }

    return undef
  }
  sub ListAllTrainingDatasets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTrainingDatasets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTrainingDatasets(@_, nextToken => $next_result->nextToken);
        push @{ $result->trainingDatasets }, @{ $next_result->trainingDatasets };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'trainingDatasets') foreach (@{ $result->trainingDatasets });
        $result = $self->ListTrainingDatasets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'trainingDatasets') foreach (@{ $result->trainingDatasets });
    }

    return undef
  }


  sub operations { qw/CancelTrainedModel CancelTrainedModelInferenceJob CreateAudienceModel CreateConfiguredAudienceModel CreateConfiguredModelAlgorithm CreateConfiguredModelAlgorithmAssociation CreateMLInputChannel CreateTrainedModel CreateTrainingDataset DeleteAudienceGenerationJob DeleteAudienceModel DeleteConfiguredAudienceModel DeleteConfiguredAudienceModelPolicy DeleteConfiguredModelAlgorithm DeleteConfiguredModelAlgorithmAssociation DeleteMLConfiguration DeleteMLInputChannelData DeleteTrainedModelOutput DeleteTrainingDataset GetAudienceGenerationJob GetAudienceModel GetCollaborationConfiguredModelAlgorithmAssociation GetCollaborationMLInputChannel GetCollaborationTrainedModel GetConfiguredAudienceModel GetConfiguredAudienceModelPolicy GetConfiguredModelAlgorithm GetConfiguredModelAlgorithmAssociation GetMLConfiguration GetMLInputChannel GetTrainedModel GetTrainedModelInferenceJob GetTrainingDataset ListAudienceExportJobs ListAudienceGenerationJobs ListAudienceModels ListCollaborationConfiguredModelAlgorithmAssociations ListCollaborationMLInputChannels ListCollaborationTrainedModelExportJobs ListCollaborationTrainedModelInferenceJobs ListCollaborationTrainedModels ListConfiguredAudienceModels ListConfiguredModelAlgorithmAssociations ListConfiguredModelAlgorithms ListMLInputChannels ListTagsForResource ListTrainedModelInferenceJobs ListTrainedModels ListTrainingDatasets PutConfiguredAudienceModelPolicy PutMLConfiguration StartAudienceExportJob StartAudienceGenerationJob StartTrainedModelExportJob StartTrainedModelInferenceJob TagResource UntagResource UpdateConfiguredAudienceModel / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML - Perl Interface to AWS AWS Clean Rooms ML

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CleanRoomsML');
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

Welcome to the I<Amazon Web Services Clean Rooms ML API Reference>.

Amazon Web Services Clean Rooms ML provides a privacy-enhancing method
for two parties to identify similar users in their data without the
need to share their data with each other. The first party brings the
training data to Clean Rooms so that they can create and configure an
audience model (lookalike model) and associate it with a collaboration.
The second party then brings their seed data to Clean Rooms and
generates an audience (lookalike segment) that resembles the training
data.

To learn more about Amazon Web Services Clean Rooms ML concepts,
procedures, and best practices, see the Clean Rooms User Guide
(https://docs.aws.amazon.com/clean-rooms/latest/userguide/machine-learning.html).

To learn more about SQL commands, functions, and conditions supported
in Clean Rooms, see the Clean Rooms SQL Reference
(https://docs.aws.amazon.com/clean-rooms/latest/sql-reference/sql-reference.html).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CancelTrainedModel

=over

=item MembershipIdentifier => Str

=item TrainedModelArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::CancelTrainedModel>

Returns: nothing

Submits a request to cancel the trained model job.


=head2 CancelTrainedModelInferenceJob

=over

=item MembershipIdentifier => Str

=item TrainedModelInferenceJobArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::CancelTrainedModelInferenceJob>

Returns: nothing

Submits a request to cancel a trained model inference job.


=head2 CreateAudienceModel

=over

=item Name => Str

=item TrainingDatasetArn => Str

=item [Description => Str]

=item [KmsKeyArn => Str]

=item [Tags => L<Paws::CleanRoomsML::TagMap>]

=item [TrainingDataEndTime => Str]

=item [TrainingDataStartTime => Str]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::CreateAudienceModel>

Returns: a L<Paws::CleanRoomsML::CreateAudienceModelResponse> instance

Defines the information necessary to create an audience model. An
audience model is a machine learning model that Clean Rooms ML trains
to measure similarity between users. Clean Rooms ML manages training
and storing the audience model. The audience model can be used in
multiple calls to the StartAudienceGenerationJob API.


=head2 CreateConfiguredAudienceModel

=over

=item AudienceModelArn => Str

=item Name => Str

=item OutputConfig => L<Paws::CleanRoomsML::ConfiguredAudienceModelOutputConfig>

=item SharedAudienceMetrics => ArrayRef[Str|Undef]

=item [AudienceSizeConfig => L<Paws::CleanRoomsML::AudienceSizeConfig>]

=item [ChildResourceTagOnCreatePolicy => Str]

=item [Description => Str]

=item [MinMatchingSeedSize => Int]

=item [Tags => L<Paws::CleanRoomsML::TagMap>]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::CreateConfiguredAudienceModel>

Returns: a L<Paws::CleanRoomsML::CreateConfiguredAudienceModelResponse> instance

Defines the information necessary to create a configured audience
model.


=head2 CreateConfiguredModelAlgorithm

=over

=item Name => Str

=item RoleArn => Str

=item [Description => Str]

=item [InferenceContainerConfig => L<Paws::CleanRoomsML::InferenceContainerConfig>]

=item [KmsKeyArn => Str]

=item [Tags => L<Paws::CleanRoomsML::TagMap>]

=item [TrainingContainerConfig => L<Paws::CleanRoomsML::ContainerConfig>]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::CreateConfiguredModelAlgorithm>

Returns: a L<Paws::CleanRoomsML::CreateConfiguredModelAlgorithmResponse> instance

Creates a configured model algorithm using a container image stored in
an ECR repository.


=head2 CreateConfiguredModelAlgorithmAssociation

=over

=item ConfiguredModelAlgorithmArn => Str

=item MembershipIdentifier => Str

=item Name => Str

=item [Description => Str]

=item [PrivacyConfiguration => L<Paws::CleanRoomsML::PrivacyConfiguration>]

=item [Tags => L<Paws::CleanRoomsML::TagMap>]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::CreateConfiguredModelAlgorithmAssociation>

Returns: a L<Paws::CleanRoomsML::CreateConfiguredModelAlgorithmAssociationResponse> instance

Associates a configured model algorithm to a collaboration for use by
any member of the collaboration.


=head2 CreateMLInputChannel

=over

=item ConfiguredModelAlgorithmAssociations => ArrayRef[Str|Undef]

=item InputChannel => L<Paws::CleanRoomsML::InputChannel>

=item MembershipIdentifier => Str

=item Name => Str

=item RetentionInDays => Int

=item [Description => Str]

=item [KmsKeyArn => Str]

=item [Tags => L<Paws::CleanRoomsML::TagMap>]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::CreateMLInputChannel>

Returns: a L<Paws::CleanRoomsML::CreateMLInputChannelResponse> instance

Provides the information to create an ML input channel. An ML input
channel is the result of a query that can be used for ML modeling.


=head2 CreateTrainedModel

=over

=item ConfiguredModelAlgorithmAssociationArn => Str

=item DataChannels => ArrayRef[L<Paws::CleanRoomsML::ModelTrainingDataChannel>]

=item MembershipIdentifier => Str

=item Name => Str

=item ResourceConfig => L<Paws::CleanRoomsML::ResourceConfig>

=item [Description => Str]

=item [Environment => L<Paws::CleanRoomsML::Environment>]

=item [Hyperparameters => L<Paws::CleanRoomsML::HyperParameters>]

=item [KmsKeyArn => Str]

=item [StoppingCondition => L<Paws::CleanRoomsML::StoppingCondition>]

=item [Tags => L<Paws::CleanRoomsML::TagMap>]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::CreateTrainedModel>

Returns: a L<Paws::CleanRoomsML::CreateTrainedModelResponse> instance

Creates a trained model from an associated configured model algorithm
using data from any member of the collaboration.


=head2 CreateTrainingDataset

=over

=item Name => Str

=item RoleArn => Str

=item TrainingData => ArrayRef[L<Paws::CleanRoomsML::Dataset>]

=item [Description => Str]

=item [Tags => L<Paws::CleanRoomsML::TagMap>]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::CreateTrainingDataset>

Returns: a L<Paws::CleanRoomsML::CreateTrainingDatasetResponse> instance

Defines the information necessary to create a training dataset. In
Clean Rooms ML, the C<TrainingDataset> is metadata that points to a
Glue table, which is read only during C<AudienceModel> creation.


=head2 DeleteAudienceGenerationJob

=over

=item AudienceGenerationJobArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::DeleteAudienceGenerationJob>

Returns: nothing

Deletes the specified audience generation job, and removes all data
associated with the job.


=head2 DeleteAudienceModel

=over

=item AudienceModelArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::DeleteAudienceModel>

Returns: nothing

Specifies an audience model that you want to delete. You can't delete
an audience model if there are any configured audience models that
depend on the audience model.


=head2 DeleteConfiguredAudienceModel

=over

=item ConfiguredAudienceModelArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::DeleteConfiguredAudienceModel>

Returns: nothing

Deletes the specified configured audience model. You can't delete a
configured audience model if there are any lookalike models that use
the configured audience model. If you delete a configured audience
model, it will be removed from any collaborations that it is associated
to.


=head2 DeleteConfiguredAudienceModelPolicy

=over

=item ConfiguredAudienceModelArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::DeleteConfiguredAudienceModelPolicy>

Returns: nothing

Deletes the specified configured audience model policy.


=head2 DeleteConfiguredModelAlgorithm

=over

=item ConfiguredModelAlgorithmArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::DeleteConfiguredModelAlgorithm>

Returns: nothing

Deletes a configured model algorithm.


=head2 DeleteConfiguredModelAlgorithmAssociation

=over

=item ConfiguredModelAlgorithmAssociationArn => Str

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::DeleteConfiguredModelAlgorithmAssociation>

Returns: nothing

Deletes a configured model algorithm association.


=head2 DeleteMLConfiguration

=over

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::DeleteMLConfiguration>

Returns: nothing

Deletes a ML modeling configuration.


=head2 DeleteMLInputChannelData

=over

=item MembershipIdentifier => Str

=item MlInputChannelArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::DeleteMLInputChannelData>

Returns: nothing

Provides the information necessary to delete an ML input channel.


=head2 DeleteTrainedModelOutput

=over

=item MembershipIdentifier => Str

=item TrainedModelArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::DeleteTrainedModelOutput>

Returns: nothing

Deletes the output of a trained model.


=head2 DeleteTrainingDataset

=over

=item TrainingDatasetArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::DeleteTrainingDataset>

Returns: nothing

Specifies a training dataset that you want to delete. You can't delete
a training dataset if there are any audience models that depend on the
training dataset. In Clean Rooms ML, the C<TrainingDataset> is metadata
that points to a Glue table, which is read only during C<AudienceModel>
creation. This action deletes the metadata.


=head2 GetAudienceGenerationJob

=over

=item AudienceGenerationJobArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::GetAudienceGenerationJob>

Returns: a L<Paws::CleanRoomsML::GetAudienceGenerationJobResponse> instance

Returns information about an audience generation job.


=head2 GetAudienceModel

=over

=item AudienceModelArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::GetAudienceModel>

Returns: a L<Paws::CleanRoomsML::GetAudienceModelResponse> instance

Returns information about an audience model


=head2 GetCollaborationConfiguredModelAlgorithmAssociation

=over

=item CollaborationIdentifier => Str

=item ConfiguredModelAlgorithmAssociationArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::GetCollaborationConfiguredModelAlgorithmAssociation>

Returns: a L<Paws::CleanRoomsML::GetCollaborationConfiguredModelAlgorithmAssociationResponse> instance

Returns information about the configured model algorithm association in
a collaboration.


=head2 GetCollaborationMLInputChannel

=over

=item CollaborationIdentifier => Str

=item MlInputChannelArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::GetCollaborationMLInputChannel>

Returns: a L<Paws::CleanRoomsML::GetCollaborationMLInputChannelResponse> instance

Returns information about a specific ML input channel in a
collaboration.


=head2 GetCollaborationTrainedModel

=over

=item CollaborationIdentifier => Str

=item TrainedModelArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::GetCollaborationTrainedModel>

Returns: a L<Paws::CleanRoomsML::GetCollaborationTrainedModelResponse> instance

Returns information about a trained model in a collaboration.


=head2 GetConfiguredAudienceModel

=over

=item ConfiguredAudienceModelArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::GetConfiguredAudienceModel>

Returns: a L<Paws::CleanRoomsML::GetConfiguredAudienceModelResponse> instance

Returns information about a specified configured audience model.


=head2 GetConfiguredAudienceModelPolicy

=over

=item ConfiguredAudienceModelArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::GetConfiguredAudienceModelPolicy>

Returns: a L<Paws::CleanRoomsML::GetConfiguredAudienceModelPolicyResponse> instance

Returns information about a configured audience model policy.


=head2 GetConfiguredModelAlgorithm

=over

=item ConfiguredModelAlgorithmArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::GetConfiguredModelAlgorithm>

Returns: a L<Paws::CleanRoomsML::GetConfiguredModelAlgorithmResponse> instance

Returns information about a configured model algorithm.


=head2 GetConfiguredModelAlgorithmAssociation

=over

=item ConfiguredModelAlgorithmAssociationArn => Str

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::GetConfiguredModelAlgorithmAssociation>

Returns: a L<Paws::CleanRoomsML::GetConfiguredModelAlgorithmAssociationResponse> instance

Returns information about a configured model algorithm association.


=head2 GetMLConfiguration

=over

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::GetMLConfiguration>

Returns: a L<Paws::CleanRoomsML::GetMLConfigurationResponse> instance

Returns information about a specific ML configuration.


=head2 GetMLInputChannel

=over

=item MembershipIdentifier => Str

=item MlInputChannelArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::GetMLInputChannel>

Returns: a L<Paws::CleanRoomsML::GetMLInputChannelResponse> instance

Returns information about an ML input channel.


=head2 GetTrainedModel

=over

=item MembershipIdentifier => Str

=item TrainedModelArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::GetTrainedModel>

Returns: a L<Paws::CleanRoomsML::GetTrainedModelResponse> instance

Returns information about a trained model.


=head2 GetTrainedModelInferenceJob

=over

=item MembershipIdentifier => Str

=item TrainedModelInferenceJobArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::GetTrainedModelInferenceJob>

Returns: a L<Paws::CleanRoomsML::GetTrainedModelInferenceJobResponse> instance

Returns information about a trained model inference job.


=head2 GetTrainingDataset

=over

=item TrainingDatasetArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::GetTrainingDataset>

Returns: a L<Paws::CleanRoomsML::GetTrainingDatasetResponse> instance

Returns information about a training dataset.


=head2 ListAudienceExportJobs

=over

=item [AudienceGenerationJobArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::ListAudienceExportJobs>

Returns: a L<Paws::CleanRoomsML::ListAudienceExportJobsResponse> instance

Returns a list of the audience export jobs.


=head2 ListAudienceGenerationJobs

=over

=item [CollaborationId => Str]

=item [ConfiguredAudienceModelArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::ListAudienceGenerationJobs>

Returns: a L<Paws::CleanRoomsML::ListAudienceGenerationJobsResponse> instance

Returns a list of audience generation jobs.


=head2 ListAudienceModels

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::ListAudienceModels>

Returns: a L<Paws::CleanRoomsML::ListAudienceModelsResponse> instance

Returns a list of audience models.


=head2 ListCollaborationConfiguredModelAlgorithmAssociations

=over

=item CollaborationIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::ListCollaborationConfiguredModelAlgorithmAssociations>

Returns: a L<Paws::CleanRoomsML::ListCollaborationConfiguredModelAlgorithmAssociationsResponse> instance

Returns a list of the configured model algorithm associations in a
collaboration.


=head2 ListCollaborationMLInputChannels

=over

=item CollaborationIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::ListCollaborationMLInputChannels>

Returns: a L<Paws::CleanRoomsML::ListCollaborationMLInputChannelsResponse> instance

Returns a list of the ML input channels in a collaboration.


=head2 ListCollaborationTrainedModelExportJobs

=over

=item CollaborationIdentifier => Str

=item TrainedModelArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::ListCollaborationTrainedModelExportJobs>

Returns: a L<Paws::CleanRoomsML::ListCollaborationTrainedModelExportJobsResponse> instance

Returns a list of the export jobs for a trained model in a
collaboration.


=head2 ListCollaborationTrainedModelInferenceJobs

=over

=item CollaborationIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TrainedModelArn => Str]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::ListCollaborationTrainedModelInferenceJobs>

Returns: a L<Paws::CleanRoomsML::ListCollaborationTrainedModelInferenceJobsResponse> instance

Returns a list of trained model inference jobs in a specified
collaboration.


=head2 ListCollaborationTrainedModels

=over

=item CollaborationIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::ListCollaborationTrainedModels>

Returns: a L<Paws::CleanRoomsML::ListCollaborationTrainedModelsResponse> instance

Returns a list of the trained models in a collaboration.


=head2 ListConfiguredAudienceModels

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::ListConfiguredAudienceModels>

Returns: a L<Paws::CleanRoomsML::ListConfiguredAudienceModelsResponse> instance

Returns a list of the configured audience models.


=head2 ListConfiguredModelAlgorithmAssociations

=over

=item MembershipIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::ListConfiguredModelAlgorithmAssociations>

Returns: a L<Paws::CleanRoomsML::ListConfiguredModelAlgorithmAssociationsResponse> instance

Returns a list of configured model algorithm associations.


=head2 ListConfiguredModelAlgorithms

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::ListConfiguredModelAlgorithms>

Returns: a L<Paws::CleanRoomsML::ListConfiguredModelAlgorithmsResponse> instance

Returns a list of configured model algorithms.


=head2 ListMLInputChannels

=over

=item MembershipIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::ListMLInputChannels>

Returns: a L<Paws::CleanRoomsML::ListMLInputChannelsResponse> instance

Returns a list of ML input channels.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::ListTagsForResource>

Returns: a L<Paws::CleanRoomsML::ListTagsForResourceResponse> instance

Returns a list of tags for a provided resource.


=head2 ListTrainedModelInferenceJobs

=over

=item MembershipIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TrainedModelArn => Str]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::ListTrainedModelInferenceJobs>

Returns: a L<Paws::CleanRoomsML::ListTrainedModelInferenceJobsResponse> instance

Returns a list of trained model inference jobs that match the request
parameters.


=head2 ListTrainedModels

=over

=item MembershipIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::ListTrainedModels>

Returns: a L<Paws::CleanRoomsML::ListTrainedModelsResponse> instance

Returns a list of trained models.


=head2 ListTrainingDatasets

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::ListTrainingDatasets>

Returns: a L<Paws::CleanRoomsML::ListTrainingDatasetsResponse> instance

Returns a list of training datasets.


=head2 PutConfiguredAudienceModelPolicy

=over

=item ConfiguredAudienceModelArn => Str

=item ConfiguredAudienceModelPolicy => Str

=item [PolicyExistenceCondition => Str]

=item [PreviousPolicyHash => Str]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::PutConfiguredAudienceModelPolicy>

Returns: a L<Paws::CleanRoomsML::PutConfiguredAudienceModelPolicyResponse> instance

Create or update the resource policy for a configured audience model.


=head2 PutMLConfiguration

=over

=item DefaultOutputLocation => L<Paws::CleanRoomsML::MLOutputConfiguration>

=item MembershipIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::PutMLConfiguration>

Returns: nothing

Assigns information about an ML configuration.


=head2 StartAudienceExportJob

=over

=item AudienceGenerationJobArn => Str

=item AudienceSize => L<Paws::CleanRoomsML::AudienceSize>

=item Name => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::StartAudienceExportJob>

Returns: nothing

Export an audience of a specified size after you have generated an
audience.


=head2 StartAudienceGenerationJob

=over

=item ConfiguredAudienceModelArn => Str

=item Name => Str

=item SeedAudience => L<Paws::CleanRoomsML::AudienceGenerationJobDataSource>

=item [CollaborationId => Str]

=item [Description => Str]

=item [IncludeSeedInOutput => Bool]

=item [Tags => L<Paws::CleanRoomsML::TagMap>]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::StartAudienceGenerationJob>

Returns: a L<Paws::CleanRoomsML::StartAudienceGenerationJobResponse> instance

Information necessary to start the audience generation job.


=head2 StartTrainedModelExportJob

=over

=item MembershipIdentifier => Str

=item Name => Str

=item OutputConfiguration => L<Paws::CleanRoomsML::TrainedModelExportOutputConfiguration>

=item TrainedModelArn => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::StartTrainedModelExportJob>

Returns: nothing

Provides the information necessary to start a trained model export job.


=head2 StartTrainedModelInferenceJob

=over

=item DataSource => L<Paws::CleanRoomsML::ModelInferenceDataSource>

=item MembershipIdentifier => Str

=item Name => Str

=item OutputConfiguration => L<Paws::CleanRoomsML::InferenceOutputConfiguration>

=item ResourceConfig => L<Paws::CleanRoomsML::InferenceResourceConfig>

=item TrainedModelArn => Str

=item [ConfiguredModelAlgorithmAssociationArn => Str]

=item [ContainerExecutionParameters => L<Paws::CleanRoomsML::InferenceContainerExecutionParameters>]

=item [Description => Str]

=item [Environment => L<Paws::CleanRoomsML::InferenceEnvironmentMap>]

=item [KmsKeyArn => Str]

=item [Tags => L<Paws::CleanRoomsML::TagMap>]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::StartTrainedModelInferenceJob>

Returns: a L<Paws::CleanRoomsML::StartTrainedModelInferenceJobResponse> instance

Defines the information necessary to begin a trained model inference
job.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::CleanRoomsML::TagMap>


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::TagResource>

Returns: a L<Paws::CleanRoomsML::TagResourceResponse> instance

Adds metadata tags to a specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::UntagResource>

Returns: a L<Paws::CleanRoomsML::UntagResourceResponse> instance

Removes metadata tags from a specified resource.


=head2 UpdateConfiguredAudienceModel

=over

=item ConfiguredAudienceModelArn => Str

=item [AudienceModelArn => Str]

=item [AudienceSizeConfig => L<Paws::CleanRoomsML::AudienceSizeConfig>]

=item [Description => Str]

=item [MinMatchingSeedSize => Int]

=item [OutputConfig => L<Paws::CleanRoomsML::ConfiguredAudienceModelOutputConfig>]

=item [SharedAudienceMetrics => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CleanRoomsML::UpdateConfiguredAudienceModel>

Returns: a L<Paws::CleanRoomsML::UpdateConfiguredAudienceModelResponse> instance

Provides the information necessary to update a configured audience
model. Updates that impact audience generation jobs take effect when a
new job starts, but do not impact currently running jobs.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAudienceExportJobs(sub { },[AudienceGenerationJobArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllAudienceExportJobs([AudienceGenerationJobArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - audienceExportJobs, passing the object as the first parameter, and the string 'audienceExportJobs' as the second parameter 

If not, it will return a a L<Paws::CleanRoomsML::ListAudienceExportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAudienceGenerationJobs(sub { },[CollaborationId => Str, ConfiguredAudienceModelArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllAudienceGenerationJobs([CollaborationId => Str, ConfiguredAudienceModelArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - audienceGenerationJobs, passing the object as the first parameter, and the string 'audienceGenerationJobs' as the second parameter 

If not, it will return a a L<Paws::CleanRoomsML::ListAudienceGenerationJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAudienceModels(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllAudienceModels([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - audienceModels, passing the object as the first parameter, and the string 'audienceModels' as the second parameter 

If not, it will return a a L<Paws::CleanRoomsML::ListAudienceModelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCollaborationConfiguredModelAlgorithmAssociations(sub { },CollaborationIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllCollaborationConfiguredModelAlgorithmAssociations(CollaborationIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - collaborationConfiguredModelAlgorithmAssociations, passing the object as the first parameter, and the string 'collaborationConfiguredModelAlgorithmAssociations' as the second parameter 

If not, it will return a a L<Paws::CleanRoomsML::ListCollaborationConfiguredModelAlgorithmAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCollaborationMLInputChannels(sub { },CollaborationIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllCollaborationMLInputChannels(CollaborationIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - collaborationMLInputChannelsList, passing the object as the first parameter, and the string 'collaborationMLInputChannelsList' as the second parameter 

If not, it will return a a L<Paws::CleanRoomsML::ListCollaborationMLInputChannelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCollaborationTrainedModelExportJobs(sub { },CollaborationIdentifier => Str, TrainedModelArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllCollaborationTrainedModelExportJobs(CollaborationIdentifier => Str, TrainedModelArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - collaborationTrainedModelExportJobs, passing the object as the first parameter, and the string 'collaborationTrainedModelExportJobs' as the second parameter 

If not, it will return a a L<Paws::CleanRoomsML::ListCollaborationTrainedModelExportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCollaborationTrainedModelInferenceJobs(sub { },CollaborationIdentifier => Str, [MaxResults => Int, NextToken => Str, TrainedModelArn => Str])

=head2 ListAllCollaborationTrainedModelInferenceJobs(CollaborationIdentifier => Str, [MaxResults => Int, NextToken => Str, TrainedModelArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - collaborationTrainedModelInferenceJobs, passing the object as the first parameter, and the string 'collaborationTrainedModelInferenceJobs' as the second parameter 

If not, it will return a a L<Paws::CleanRoomsML::ListCollaborationTrainedModelInferenceJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCollaborationTrainedModels(sub { },CollaborationIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllCollaborationTrainedModels(CollaborationIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - collaborationTrainedModels, passing the object as the first parameter, and the string 'collaborationTrainedModels' as the second parameter 

If not, it will return a a L<Paws::CleanRoomsML::ListCollaborationTrainedModelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConfiguredAudienceModels(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllConfiguredAudienceModels([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - configuredAudienceModels, passing the object as the first parameter, and the string 'configuredAudienceModels' as the second parameter 

If not, it will return a a L<Paws::CleanRoomsML::ListConfiguredAudienceModelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConfiguredModelAlgorithmAssociations(sub { },MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllConfiguredModelAlgorithmAssociations(MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - configuredModelAlgorithmAssociations, passing the object as the first parameter, and the string 'configuredModelAlgorithmAssociations' as the second parameter 

If not, it will return a a L<Paws::CleanRoomsML::ListConfiguredModelAlgorithmAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConfiguredModelAlgorithms(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllConfiguredModelAlgorithms([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - configuredModelAlgorithms, passing the object as the first parameter, and the string 'configuredModelAlgorithms' as the second parameter 

If not, it will return a a L<Paws::CleanRoomsML::ListConfiguredModelAlgorithmsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMLInputChannels(sub { },MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllMLInputChannels(MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - mlInputChannelsList, passing the object as the first parameter, and the string 'mlInputChannelsList' as the second parameter 

If not, it will return a a L<Paws::CleanRoomsML::ListMLInputChannelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTrainedModelInferenceJobs(sub { },MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str, TrainedModelArn => Str])

=head2 ListAllTrainedModelInferenceJobs(MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str, TrainedModelArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - trainedModelInferenceJobs, passing the object as the first parameter, and the string 'trainedModelInferenceJobs' as the second parameter 

If not, it will return a a L<Paws::CleanRoomsML::ListTrainedModelInferenceJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTrainedModels(sub { },MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTrainedModels(MembershipIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - trainedModels, passing the object as the first parameter, and the string 'trainedModels' as the second parameter 

If not, it will return a a L<Paws::CleanRoomsML::ListTrainedModelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTrainingDatasets(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllTrainingDatasets([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - trainingDatasets, passing the object as the first parameter, and the string 'trainingDatasets' as the second parameter 

If not, it will return a a L<Paws::CleanRoomsML::ListTrainingDatasetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

