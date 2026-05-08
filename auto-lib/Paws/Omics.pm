package Paws::Omics;
  use Moose;
  sub service { 'omics' }
  sub signing_name { 'omics' }
  sub version { '2022-11-28' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AbortMultipartReadSetUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::AbortMultipartReadSetUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AcceptShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::AcceptShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteReadSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::BatchDeleteReadSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelAnnotationImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::CancelAnnotationImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::CancelRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelVariantImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::CancelVariantImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CompleteMultipartReadSetUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::CompleteMultipartReadSetUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAnnotationStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::CreateAnnotationStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAnnotationStoreVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::CreateAnnotationStoreVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMultipartReadSetUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::CreateMultipartReadSetUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReferenceStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::CreateReferenceStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRunCache {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::CreateRunCache', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRunGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::CreateRunGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSequenceStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::CreateSequenceStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::CreateShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVariantStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::CreateVariantStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::CreateWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkflowVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::CreateWorkflowVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAnnotationStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::DeleteAnnotationStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAnnotationStoreVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::DeleteAnnotationStoreVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReference {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::DeleteReference', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReferenceStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::DeleteReferenceStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::DeleteRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRunCache {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::DeleteRunCache', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRunGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::DeleteRunGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteS3AccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::DeleteS3AccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSequenceStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::DeleteSequenceStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::DeleteShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVariantStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::DeleteVariantStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::DeleteWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkflowVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::DeleteWorkflowVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAnnotationImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetAnnotationImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAnnotationStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetAnnotationStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAnnotationStoreVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetAnnotationStoreVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReadSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetReadSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReadSetActivationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetReadSetActivationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReadSetExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetReadSetExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReadSetImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetReadSetImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReadSetMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetReadSetMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReference {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetReference', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReferenceImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetReferenceImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReferenceMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetReferenceMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReferenceStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetReferenceStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRunCache {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetRunCache', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRunGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetRunGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRunTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetRunTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetS3AccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetS3AccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSequenceStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetSequenceStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVariantImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetVariantImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVariantStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetVariantStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkflowVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::GetWorkflowVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAnnotationImportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListAnnotationImportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAnnotationStores {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListAnnotationStores', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAnnotationStoreVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListAnnotationStoreVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMultipartReadSetUploads {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListMultipartReadSetUploads', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReadSetActivationJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListReadSetActivationJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReadSetExportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListReadSetExportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReadSetImportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListReadSetImportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReadSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListReadSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReadSetUploadParts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListReadSetUploadParts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReferenceImportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListReferenceImportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListReferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReferenceStores {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListReferenceStores', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRunCaches {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListRunCaches', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRunGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListRunGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRunTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListRunTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSequenceStores {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListSequenceStores', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListShares {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListShares', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVariantImportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListVariantImportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVariantStores {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListVariantStores', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkflows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListWorkflows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkflowVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::ListWorkflowVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutS3AccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::PutS3AccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartAnnotationImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::StartAnnotationImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartReadSetActivationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::StartReadSetActivationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartReadSetExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::StartReadSetExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartReadSetImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::StartReadSetImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartReferenceImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::StartReferenceImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::StartRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartVariantImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::StartVariantImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAnnotationStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::UpdateAnnotationStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAnnotationStoreVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::UpdateAnnotationStoreVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRunCache {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::UpdateRunCache', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRunGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::UpdateRunGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSequenceStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::UpdateSequenceStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVariantStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::UpdateVariantStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::UpdateWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkflowVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::UpdateWorkflowVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UploadReadSetPart {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Omics::UploadReadSetPart', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAnnotationImportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAnnotationImportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAnnotationImportJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->annotationImportJobs }, @{ $next_result->annotationImportJobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'annotationImportJobs') foreach (@{ $result->annotationImportJobs });
        $result = $self->ListAnnotationImportJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'annotationImportJobs') foreach (@{ $result->annotationImportJobs });
    }

    return undef
  }
  sub ListAllAnnotationStores {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAnnotationStores(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAnnotationStores(@_, nextToken => $next_result->nextToken);
        push @{ $result->annotationStores }, @{ $next_result->annotationStores };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'annotationStores') foreach (@{ $result->annotationStores });
        $result = $self->ListAnnotationStores(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'annotationStores') foreach (@{ $result->annotationStores });
    }

    return undef
  }
  sub ListAllAnnotationStoreVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAnnotationStoreVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAnnotationStoreVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->annotationStoreVersions }, @{ $next_result->annotationStoreVersions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'annotationStoreVersions') foreach (@{ $result->annotationStoreVersions });
        $result = $self->ListAnnotationStoreVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'annotationStoreVersions') foreach (@{ $result->annotationStoreVersions });
    }

    return undef
  }
  sub ListAllMultipartReadSetUploads {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMultipartReadSetUploads(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMultipartReadSetUploads(@_, nextToken => $next_result->nextToken);
        push @{ $result->uploads }, @{ $next_result->uploads };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'uploads') foreach (@{ $result->uploads });
        $result = $self->ListMultipartReadSetUploads(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'uploads') foreach (@{ $result->uploads });
    }

    return undef
  }
  sub ListAllReadSetActivationJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReadSetActivationJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListReadSetActivationJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->activationJobs }, @{ $next_result->activationJobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'activationJobs') foreach (@{ $result->activationJobs });
        $result = $self->ListReadSetActivationJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'activationJobs') foreach (@{ $result->activationJobs });
    }

    return undef
  }
  sub ListAllReadSetExportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReadSetExportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListReadSetExportJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->exportJobs }, @{ $next_result->exportJobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'exportJobs') foreach (@{ $result->exportJobs });
        $result = $self->ListReadSetExportJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'exportJobs') foreach (@{ $result->exportJobs });
    }

    return undef
  }
  sub ListAllReadSetImportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReadSetImportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListReadSetImportJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->importJobs }, @{ $next_result->importJobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'importJobs') foreach (@{ $result->importJobs });
        $result = $self->ListReadSetImportJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'importJobs') foreach (@{ $result->importJobs });
    }

    return undef
  }
  sub ListAllReadSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReadSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListReadSets(@_, nextToken => $next_result->nextToken);
        push @{ $result->readSets }, @{ $next_result->readSets };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'readSets') foreach (@{ $result->readSets });
        $result = $self->ListReadSets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'readSets') foreach (@{ $result->readSets });
    }

    return undef
  }
  sub ListAllReadSetUploadParts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReadSetUploadParts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListReadSetUploadParts(@_, nextToken => $next_result->nextToken);
        push @{ $result->parts }, @{ $next_result->parts };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'parts') foreach (@{ $result->parts });
        $result = $self->ListReadSetUploadParts(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'parts') foreach (@{ $result->parts });
    }

    return undef
  }
  sub ListAllReferenceImportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReferenceImportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListReferenceImportJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->importJobs }, @{ $next_result->importJobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'importJobs') foreach (@{ $result->importJobs });
        $result = $self->ListReferenceImportJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'importJobs') foreach (@{ $result->importJobs });
    }

    return undef
  }
  sub ListAllReferences {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReferences(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListReferences(@_, nextToken => $next_result->nextToken);
        push @{ $result->references }, @{ $next_result->references };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'references') foreach (@{ $result->references });
        $result = $self->ListReferences(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'references') foreach (@{ $result->references });
    }

    return undef
  }
  sub ListAllReferenceStores {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReferenceStores(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListReferenceStores(@_, nextToken => $next_result->nextToken);
        push @{ $result->referenceStores }, @{ $next_result->referenceStores };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'referenceStores') foreach (@{ $result->referenceStores });
        $result = $self->ListReferenceStores(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'referenceStores') foreach (@{ $result->referenceStores });
    }

    return undef
  }
  sub ListAllRunCaches {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRunCaches(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRunCaches(@_, startingToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListRunCaches(@_, startingToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllRunGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRunGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRunGroups(@_, startingToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListRunGroups(@_, startingToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllRuns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRuns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRuns(@_, startingToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListRuns(@_, startingToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllRunTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRunTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRunTasks(@_, startingToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListRunTasks(@_, startingToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllSequenceStores {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSequenceStores(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSequenceStores(@_, nextToken => $next_result->nextToken);
        push @{ $result->sequenceStores }, @{ $next_result->sequenceStores };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'sequenceStores') foreach (@{ $result->sequenceStores });
        $result = $self->ListSequenceStores(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'sequenceStores') foreach (@{ $result->sequenceStores });
    }

    return undef
  }
  sub ListAllShares {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListShares(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListShares(@_, nextToken => $next_result->nextToken);
        push @{ $result->shares }, @{ $next_result->shares };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'shares') foreach (@{ $result->shares });
        $result = $self->ListShares(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'shares') foreach (@{ $result->shares });
    }

    return undef
  }
  sub ListAllVariantImportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListVariantImportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListVariantImportJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->variantImportJobs }, @{ $next_result->variantImportJobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'variantImportJobs') foreach (@{ $result->variantImportJobs });
        $result = $self->ListVariantImportJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'variantImportJobs') foreach (@{ $result->variantImportJobs });
    }

    return undef
  }
  sub ListAllVariantStores {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListVariantStores(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListVariantStores(@_, nextToken => $next_result->nextToken);
        push @{ $result->variantStores }, @{ $next_result->variantStores };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'variantStores') foreach (@{ $result->variantStores });
        $result = $self->ListVariantStores(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'variantStores') foreach (@{ $result->variantStores });
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
        $next_result = $self->ListWorkflows(@_, startingToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListWorkflows(@_, startingToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllWorkflowVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkflowVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorkflowVersions(@_, startingToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListWorkflowVersions(@_, startingToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }


  sub operations { qw/AbortMultipartReadSetUpload AcceptShare BatchDeleteReadSet CancelAnnotationImportJob CancelRun CancelVariantImportJob CompleteMultipartReadSetUpload CreateAnnotationStore CreateAnnotationStoreVersion CreateMultipartReadSetUpload CreateReferenceStore CreateRunCache CreateRunGroup CreateSequenceStore CreateShare CreateVariantStore CreateWorkflow CreateWorkflowVersion DeleteAnnotationStore DeleteAnnotationStoreVersions DeleteReference DeleteReferenceStore DeleteRun DeleteRunCache DeleteRunGroup DeleteS3AccessPolicy DeleteSequenceStore DeleteShare DeleteVariantStore DeleteWorkflow DeleteWorkflowVersion GetAnnotationImportJob GetAnnotationStore GetAnnotationStoreVersion GetReadSet GetReadSetActivationJob GetReadSetExportJob GetReadSetImportJob GetReadSetMetadata GetReference GetReferenceImportJob GetReferenceMetadata GetReferenceStore GetRun GetRunCache GetRunGroup GetRunTask GetS3AccessPolicy GetSequenceStore GetShare GetVariantImportJob GetVariantStore GetWorkflow GetWorkflowVersion ListAnnotationImportJobs ListAnnotationStores ListAnnotationStoreVersions ListMultipartReadSetUploads ListReadSetActivationJobs ListReadSetExportJobs ListReadSetImportJobs ListReadSets ListReadSetUploadParts ListReferenceImportJobs ListReferences ListReferenceStores ListRunCaches ListRunGroups ListRuns ListRunTasks ListSequenceStores ListShares ListTagsForResource ListVariantImportJobs ListVariantStores ListWorkflows ListWorkflowVersions PutS3AccessPolicy StartAnnotationImportJob StartReadSetActivationJob StartReadSetExportJob StartReadSetImportJob StartReferenceImportJob StartRun StartVariantImportJob TagResource UntagResource UpdateAnnotationStore UpdateAnnotationStoreVersion UpdateRunCache UpdateRunGroup UpdateSequenceStore UpdateVariantStore UpdateWorkflow UpdateWorkflowVersion UploadReadSetPart / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics - Perl Interface to AWS Amazon Omics

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Omics');
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

This is the I<AWS HealthOmics API Reference>. For an introduction to
the service, see What is AWS HealthOmics?
(https://docs.aws.amazon.com/omics/latest/dev/) in the I<AWS
HealthOmics User Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28>


=head1 METHODS

=head2 AbortMultipartReadSetUpload

=over

=item SequenceStoreId => Str

=item UploadId => Str


=back

Each argument is described in detail in: L<Paws::Omics::AbortMultipartReadSetUpload>

Returns: a L<Paws::Omics::AbortMultipartReadSetUploadResponse> instance

Stops a multipart upload.


=head2 AcceptShare

=over

=item ShareId => Str


=back

Each argument is described in detail in: L<Paws::Omics::AcceptShare>

Returns: a L<Paws::Omics::AcceptShareResponse> instance

Accept a resource share request.


=head2 BatchDeleteReadSet

=over

=item Ids => ArrayRef[Str|Undef]

=item SequenceStoreId => Str


=back

Each argument is described in detail in: L<Paws::Omics::BatchDeleteReadSet>

Returns: a L<Paws::Omics::BatchDeleteReadSetResponse> instance

Deletes one or more read sets.


=head2 CancelAnnotationImportJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Omics::CancelAnnotationImportJob>

Returns: a L<Paws::Omics::CancelAnnotationImportResponse> instance

Cancels an annotation import job.


=head2 CancelRun

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Omics::CancelRun>

Returns: nothing

Cancels a run.


=head2 CancelVariantImportJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Omics::CancelVariantImportJob>

Returns: a L<Paws::Omics::CancelVariantImportResponse> instance

Cancels a variant import job.


=head2 CompleteMultipartReadSetUpload

=over

=item Parts => ArrayRef[L<Paws::Omics::CompleteReadSetUploadPartListItem>]

=item SequenceStoreId => Str

=item UploadId => Str


=back

Each argument is described in detail in: L<Paws::Omics::CompleteMultipartReadSetUpload>

Returns: a L<Paws::Omics::CompleteMultipartReadSetUploadResponse> instance

Concludes a multipart upload once you have uploaded all the components.


=head2 CreateAnnotationStore

=over

=item StoreFormat => Str

=item [Description => Str]

=item [Name => Str]

=item [Reference => L<Paws::Omics::ReferenceItem>]

=item [SseConfig => L<Paws::Omics::SseConfig>]

=item [StoreOptions => L<Paws::Omics::StoreOptions>]

=item [Tags => L<Paws::Omics::TagMap>]

=item [VersionName => Str]


=back

Each argument is described in detail in: L<Paws::Omics::CreateAnnotationStore>

Returns: a L<Paws::Omics::CreateAnnotationStoreResponse> instance

Creates an annotation store.


=head2 CreateAnnotationStoreVersion

=over

=item Name => Str

=item VersionName => Str

=item [Description => Str]

=item [Tags => L<Paws::Omics::TagMap>]

=item [VersionOptions => L<Paws::Omics::VersionOptions>]


=back

Each argument is described in detail in: L<Paws::Omics::CreateAnnotationStoreVersion>

Returns: a L<Paws::Omics::CreateAnnotationStoreVersionResponse> instance

Creates a new version of an annotation store.


=head2 CreateMultipartReadSetUpload

=over

=item Name => Str

=item SampleId => Str

=item SequenceStoreId => Str

=item SourceFileType => Str

=item SubjectId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [GeneratedFrom => Str]

=item [ReferenceArn => Str]

=item [Tags => L<Paws::Omics::TagMap>]


=back

Each argument is described in detail in: L<Paws::Omics::CreateMultipartReadSetUpload>

Returns: a L<Paws::Omics::CreateMultipartReadSetUploadResponse> instance

Begins a multipart read set upload.


=head2 CreateReferenceStore

=over

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [SseConfig => L<Paws::Omics::SseConfig>]

=item [Tags => L<Paws::Omics::TagMap>]


=back

Each argument is described in detail in: L<Paws::Omics::CreateReferenceStore>

Returns: a L<Paws::Omics::CreateReferenceStoreResponse> instance

Creates a reference store.


=head2 CreateRunCache

=over

=item CacheS3Location => Str

=item RequestId => Str

=item [CacheBehavior => Str]

=item [CacheBucketOwnerId => Str]

=item [Description => Str]

=item [Name => Str]

=item [Tags => L<Paws::Omics::TagMap>]


=back

Each argument is described in detail in: L<Paws::Omics::CreateRunCache>

Returns: a L<Paws::Omics::CreateRunCacheResponse> instance

You can create a run cache to save the task outputs from completed
tasks in a run for a private workflow. Subsequent runs use the task
outputs from the cache, rather than computing the task outputs again.
You specify an Amazon S3 location where Amazon Web Services HealthOmics
saves the cached data. This data must be immediately accessible (not in
an archived state).

For more information, see Creating a run cache
(https://docs.aws.amazon.com/omics/latest/dev/workflow-cache-create.html)
in the Amazon Web Services HealthOmics User Guide.


=head2 CreateRunGroup

=over

=item RequestId => Str

=item [MaxCpus => Int]

=item [MaxDuration => Int]

=item [MaxGpus => Int]

=item [MaxRuns => Int]

=item [Name => Str]

=item [Tags => L<Paws::Omics::TagMap>]


=back

Each argument is described in detail in: L<Paws::Omics::CreateRunGroup>

Returns: a L<Paws::Omics::CreateRunGroupResponse> instance

You can optionally create a run group to limit the compute resources
for the runs that you add to the group.


=head2 CreateSequenceStore

=over

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [ETagAlgorithmFamily => Str]

=item [FallbackLocation => Str]

=item [PropagatedSetLevelTags => ArrayRef[Str|Undef]]

=item [S3AccessConfig => L<Paws::Omics::S3AccessConfig>]

=item [SseConfig => L<Paws::Omics::SseConfig>]

=item [Tags => L<Paws::Omics::TagMap>]


=back

Each argument is described in detail in: L<Paws::Omics::CreateSequenceStore>

Returns: a L<Paws::Omics::CreateSequenceStoreResponse> instance

Creates a sequence store.


=head2 CreateShare

=over

=item PrincipalSubscriber => Str

=item ResourceArn => Str

=item [ShareName => Str]


=back

Each argument is described in detail in: L<Paws::Omics::CreateShare>

Returns: a L<Paws::Omics::CreateShareResponse> instance

Creates a cross-account shared resource. The resource owner makes an
offer to share the resource with the principal subscriber (an AWS user
with a different account than the resource owner).

The following resources support cross-account sharing:

=over

=item *

HealthOmics variant stores

=item *

HealthOmics annotation stores

=item *

Private workflows

=back



=head2 CreateVariantStore

=over

=item Reference => L<Paws::Omics::ReferenceItem>

=item [Description => Str]

=item [Name => Str]

=item [SseConfig => L<Paws::Omics::SseConfig>]

=item [Tags => L<Paws::Omics::TagMap>]


=back

Each argument is described in detail in: L<Paws::Omics::CreateVariantStore>

Returns: a L<Paws::Omics::CreateVariantStoreResponse> instance

Creates a variant store.


=head2 CreateWorkflow

=over

=item RequestId => Str

=item [Accelerators => Str]

=item [DefinitionUri => Str]

=item [DefinitionZip => Str]

=item [Description => Str]

=item [Engine => Str]

=item [Main => Str]

=item [Name => Str]

=item [ParameterTemplate => L<Paws::Omics::WorkflowParameterTemplate>]

=item [StorageCapacity => Int]

=item [StorageType => Str]

=item [Tags => L<Paws::Omics::TagMap>]


=back

Each argument is described in detail in: L<Paws::Omics::CreateWorkflow>

Returns: a L<Paws::Omics::CreateWorkflowResponse> instance

Creates a private workflow.Private workflows depend on a variety of
resources that you create and configure before creating the workflow:

=over

=item *

I<Input data>: Input data for the workflow, stored in an S3 bucket or a
Amazon Web Services HealthOmics sequence store.

=item *

I<Workflow definition files>: Define your workflow in one or more
workflow definition files, written in WDL, Nextflow, or CWL. The
workflow definition specifies the inputs and outputs for runs that use
the workflow. It also includes specifications for the runs and run
tasks for your workflow, including compute and memory requirements.

=item *

I<Parameter template files>: Define run parameters using a parameter
template file (written in JSON).

=item *

I<ECR container images>: Create one or more container images for the
workflow. Store the images in a private ECR repository.

=item *

(Optional) I<Sentieon licenses>: Request a Sentieon license if you plan
to use Sentieon software in a private workflow.

=back

For more information, see Creating or updating a private workflow in
Amazon Web Services HealthOmics
(https://docs.aws.amazon.com/omics/latest/dev/creating-private-workflows.html)
in the Amazon Web Services HealthOmics User Guide.


=head2 CreateWorkflowVersion

=over

=item RequestId => Str

=item VersionName => Str

=item WorkflowId => Str

=item [Accelerators => Str]

=item [DefinitionUri => Str]

=item [DefinitionZip => Str]

=item [Description => Str]

=item [Engine => Str]

=item [Main => Str]

=item [ParameterTemplate => L<Paws::Omics::WorkflowParameterTemplate>]

=item [StorageCapacity => Int]

=item [StorageType => Str]

=item [Tags => L<Paws::Omics::TagMap>]

=item [WorkflowBucketOwnerId => Str]


=back

Each argument is described in detail in: L<Paws::Omics::CreateWorkflowVersion>

Returns: a L<Paws::Omics::CreateWorkflowVersionResponse> instance

Creates a new workflow version for the workflow that you specify with
the C<workflowId> parameter.

When you create a new version of a workflow, you need to specify the
configuration for the new version. It doesn't inherit any configuration
values from the workflow.

Provide a version name that is unique for this workflow. You cannot
change the name after HealthOmics creates the version.

DonE<rsquo>t include any personally identifiable information (PII) in
the version name. Version names appear in the workflow version ARN.

For more information, see Workflow versioning in Amazon Web Services
HealthOmics
(https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html)
in the Amazon Web Services HealthOmics User Guide.


=head2 DeleteAnnotationStore

=over

=item Name => Str

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::Omics::DeleteAnnotationStore>

Returns: a L<Paws::Omics::DeleteAnnotationStoreResponse> instance

Deletes an annotation store.


=head2 DeleteAnnotationStoreVersions

=over

=item Name => Str

=item Versions => ArrayRef[Str|Undef]

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::Omics::DeleteAnnotationStoreVersions>

Returns: a L<Paws::Omics::DeleteAnnotationStoreVersionsResponse> instance

Deletes one or multiple versions of an annotation store.


=head2 DeleteReference

=over

=item Id => Str

=item ReferenceStoreId => Str


=back

Each argument is described in detail in: L<Paws::Omics::DeleteReference>

Returns: a L<Paws::Omics::DeleteReferenceResponse> instance

Deletes a genome reference.


=head2 DeleteReferenceStore

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Omics::DeleteReferenceStore>

Returns: a L<Paws::Omics::DeleteReferenceStoreResponse> instance

Deletes a genome reference store.


=head2 DeleteRun

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Omics::DeleteRun>

Returns: nothing

Deletes a workflow run.


=head2 DeleteRunCache

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Omics::DeleteRunCache>

Returns: nothing

Delete a run cache. This action removes the cache metadata stored in
the service account, but doesn't delete the data in Amazon S3. You can
access the cache data in Amazon S3, for inspection or to troubleshoot
issues. You can remove old cache data using standard S3 C<Delete>
operations.

For more information, see Deleting a run cache
(https://docs.aws.amazon.com/omics/latest/dev/workflow-cache-delete.html)
in the Amazon Web Services HealthOmics User Guide.


=head2 DeleteRunGroup

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Omics::DeleteRunGroup>

Returns: nothing

Deletes a workflow run group.


=head2 DeleteS3AccessPolicy

=over

=item S3AccessPointArn => Str


=back

Each argument is described in detail in: L<Paws::Omics::DeleteS3AccessPolicy>

Returns: a L<Paws::Omics::DeleteS3AccessPolicyResponse> instance

Deletes an access policy for the specified store.


=head2 DeleteSequenceStore

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Omics::DeleteSequenceStore>

Returns: a L<Paws::Omics::DeleteSequenceStoreResponse> instance

Deletes a sequence store.


=head2 DeleteShare

=over

=item ShareId => Str


=back

Each argument is described in detail in: L<Paws::Omics::DeleteShare>

Returns: a L<Paws::Omics::DeleteShareResponse> instance

Deletes a resource share. If you are the resource owner, the subscriber
will no longer have access to the shared resource. If you are the
subscriber, this operation deletes your access to the share.


=head2 DeleteVariantStore

=over

=item Name => Str

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::Omics::DeleteVariantStore>

Returns: a L<Paws::Omics::DeleteVariantStoreResponse> instance

Deletes a variant store.


=head2 DeleteWorkflow

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Omics::DeleteWorkflow>

Returns: nothing

Deletes a workflow.


=head2 DeleteWorkflowVersion

=over

=item VersionName => Str

=item WorkflowId => Str


=back

Each argument is described in detail in: L<Paws::Omics::DeleteWorkflowVersion>

Returns: nothing

Deletes a workflow version. Deleting a workflow version doesn't affect
any ongoing runs that are using the workflow version.

For more information, see Workflow versioning in Amazon Web Services
HealthOmics
(https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html)
in the Amazon Web Services HealthOmics User Guide.


=head2 GetAnnotationImportJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Omics::GetAnnotationImportJob>

Returns: a L<Paws::Omics::GetAnnotationImportResponse> instance

Gets information about an annotation import job.


=head2 GetAnnotationStore

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Omics::GetAnnotationStore>

Returns: a L<Paws::Omics::GetAnnotationStoreResponse> instance

Gets information about an annotation store.


=head2 GetAnnotationStoreVersion

=over

=item Name => Str

=item VersionName => Str


=back

Each argument is described in detail in: L<Paws::Omics::GetAnnotationStoreVersion>

Returns: a L<Paws::Omics::GetAnnotationStoreVersionResponse> instance

Retrieves the metadata for an annotation store version.


=head2 GetReadSet

=over

=item Id => Str

=item PartNumber => Int

=item SequenceStoreId => Str

=item [File => Str]


=back

Each argument is described in detail in: L<Paws::Omics::GetReadSet>

Returns: a L<Paws::Omics::GetReadSetResponse> instance

Gets a file from a read set.


=head2 GetReadSetActivationJob

=over

=item Id => Str

=item SequenceStoreId => Str


=back

Each argument is described in detail in: L<Paws::Omics::GetReadSetActivationJob>

Returns: a L<Paws::Omics::GetReadSetActivationJobResponse> instance

Gets information about a read set activation job.


=head2 GetReadSetExportJob

=over

=item Id => Str

=item SequenceStoreId => Str


=back

Each argument is described in detail in: L<Paws::Omics::GetReadSetExportJob>

Returns: a L<Paws::Omics::GetReadSetExportJobResponse> instance

Gets information about a read set export job.


=head2 GetReadSetImportJob

=over

=item Id => Str

=item SequenceStoreId => Str


=back

Each argument is described in detail in: L<Paws::Omics::GetReadSetImportJob>

Returns: a L<Paws::Omics::GetReadSetImportJobResponse> instance

Gets information about a read set import job.


=head2 GetReadSetMetadata

=over

=item Id => Str

=item SequenceStoreId => Str


=back

Each argument is described in detail in: L<Paws::Omics::GetReadSetMetadata>

Returns: a L<Paws::Omics::GetReadSetMetadataResponse> instance

Gets details about a read set.


=head2 GetReference

=over

=item Id => Str

=item PartNumber => Int

=item ReferenceStoreId => Str

=item [File => Str]

=item [Range => Str]


=back

Each argument is described in detail in: L<Paws::Omics::GetReference>

Returns: a L<Paws::Omics::GetReferenceResponse> instance

Gets a reference file.


=head2 GetReferenceImportJob

=over

=item Id => Str

=item ReferenceStoreId => Str


=back

Each argument is described in detail in: L<Paws::Omics::GetReferenceImportJob>

Returns: a L<Paws::Omics::GetReferenceImportJobResponse> instance

Gets information about a reference import job.


=head2 GetReferenceMetadata

=over

=item Id => Str

=item ReferenceStoreId => Str


=back

Each argument is described in detail in: L<Paws::Omics::GetReferenceMetadata>

Returns: a L<Paws::Omics::GetReferenceMetadataResponse> instance

Gets information about a genome reference's metadata.


=head2 GetReferenceStore

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Omics::GetReferenceStore>

Returns: a L<Paws::Omics::GetReferenceStoreResponse> instance

Gets information about a reference store.


=head2 GetRun

=over

=item Id => Str

=item [Export => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Omics::GetRun>

Returns: a L<Paws::Omics::GetRunResponse> instance

Gets information about a workflow run.

If a workflow is shared with you, you cannot export information about
the run.

Amazon Web Services HealthOmics stores a fixed number of runs that are
available to the console and API. If GetRun doesn't return the
requested run, you can find run logs for all runs in the CloudWatch
logs. For more information about viewing the run logs, see CloudWatch
logs
(https://docs.aws.amazon.com/omics/latest/dev/cloudwatch-logs.html) in
the I<in the Amazon Web Services HealthOmics User Guide>.


=head2 GetRunCache

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Omics::GetRunCache>

Returns: a L<Paws::Omics::GetRunCacheResponse> instance

Retrieve the details for the specified run cache.

For more information, see Call caching for Amazon Web Services
HealthOmics runs
(https://docs.aws.amazon.com/omics/latest/dev/workflow-call-caching.html)
in the Amazon Web Services HealthOmics User Guide.


=head2 GetRunGroup

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Omics::GetRunGroup>

Returns: a L<Paws::Omics::GetRunGroupResponse> instance

Gets information about a workflow run group.


=head2 GetRunTask

=over

=item Id => Str

=item TaskId => Str


=back

Each argument is described in detail in: L<Paws::Omics::GetRunTask>

Returns: a L<Paws::Omics::GetRunTaskResponse> instance

Gets information about a workflow run task.


=head2 GetS3AccessPolicy

=over

=item S3AccessPointArn => Str


=back

Each argument is described in detail in: L<Paws::Omics::GetS3AccessPolicy>

Returns: a L<Paws::Omics::GetS3AccessPolicyResponse> instance

Retrieves details about an access policy on a given store.


=head2 GetSequenceStore

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Omics::GetSequenceStore>

Returns: a L<Paws::Omics::GetSequenceStoreResponse> instance

Gets information about a sequence store.


=head2 GetShare

=over

=item ShareId => Str


=back

Each argument is described in detail in: L<Paws::Omics::GetShare>

Returns: a L<Paws::Omics::GetShareResponse> instance

Retrieves the metadata for the specified resource share.


=head2 GetVariantImportJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Omics::GetVariantImportJob>

Returns: a L<Paws::Omics::GetVariantImportResponse> instance

Gets information about a variant import job.


=head2 GetVariantStore

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Omics::GetVariantStore>

Returns: a L<Paws::Omics::GetVariantStoreResponse> instance

Gets information about a variant store.


=head2 GetWorkflow

=over

=item Id => Str

=item [Export => ArrayRef[Str|Undef]]

=item [Type => Str]

=item [WorkflowOwnerId => Str]


=back

Each argument is described in detail in: L<Paws::Omics::GetWorkflow>

Returns: a L<Paws::Omics::GetWorkflowResponse> instance

Gets information about a workflow.

If a workflow is shared with you, you cannot export the workflow.


=head2 GetWorkflowVersion

=over

=item VersionName => Str

=item WorkflowId => Str

=item [Export => ArrayRef[Str|Undef]]

=item [Type => Str]

=item [WorkflowOwnerId => Str]


=back

Each argument is described in detail in: L<Paws::Omics::GetWorkflowVersion>

Returns: a L<Paws::Omics::GetWorkflowVersionResponse> instance

Gets information about a workflow version. For more information, see
Workflow versioning in Amazon Web Services HealthOmics
(https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html)
in the Amazon Web Services HealthOmics User Guide.


=head2 ListAnnotationImportJobs

=over

=item [Filter => L<Paws::Omics::ListAnnotationImportJobsFilter>]

=item [Ids => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListAnnotationImportJobs>

Returns: a L<Paws::Omics::ListAnnotationImportJobsResponse> instance

Retrieves a list of annotation import jobs.


=head2 ListAnnotationStores

=over

=item [Filter => L<Paws::Omics::ListAnnotationStoresFilter>]

=item [Ids => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListAnnotationStores>

Returns: a L<Paws::Omics::ListAnnotationStoresResponse> instance

Retrieves a list of annotation stores.


=head2 ListAnnotationStoreVersions

=over

=item Name => Str

=item [Filter => L<Paws::Omics::ListAnnotationStoreVersionsFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListAnnotationStoreVersions>

Returns: a L<Paws::Omics::ListAnnotationStoreVersionsResponse> instance

Lists the versions of an annotation store.


=head2 ListMultipartReadSetUploads

=over

=item SequenceStoreId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListMultipartReadSetUploads>

Returns: a L<Paws::Omics::ListMultipartReadSetUploadsResponse> instance

Lists multipart read set uploads and for in progress uploads. Once the
upload is completed, a read set is created and the upload will no
longer be returned in the response.


=head2 ListReadSetActivationJobs

=over

=item SequenceStoreId => Str

=item [Filter => L<Paws::Omics::ActivateReadSetFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListReadSetActivationJobs>

Returns: a L<Paws::Omics::ListReadSetActivationJobsResponse> instance

Retrieves a list of read set activation jobs.


=head2 ListReadSetExportJobs

=over

=item SequenceStoreId => Str

=item [Filter => L<Paws::Omics::ExportReadSetFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListReadSetExportJobs>

Returns: a L<Paws::Omics::ListReadSetExportJobsResponse> instance

Retrieves a list of read set export jobs.


=head2 ListReadSetImportJobs

=over

=item SequenceStoreId => Str

=item [Filter => L<Paws::Omics::ImportReadSetFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListReadSetImportJobs>

Returns: a L<Paws::Omics::ListReadSetImportJobsResponse> instance

Retrieves a list of read set import jobs.


=head2 ListReadSets

=over

=item SequenceStoreId => Str

=item [Filter => L<Paws::Omics::ReadSetFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListReadSets>

Returns: a L<Paws::Omics::ListReadSetsResponse> instance

Retrieves a list of read sets.


=head2 ListReadSetUploadParts

=over

=item PartSource => Str

=item SequenceStoreId => Str

=item UploadId => Str

=item [Filter => L<Paws::Omics::ReadSetUploadPartListFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListReadSetUploadParts>

Returns: a L<Paws::Omics::ListReadSetUploadPartsResponse> instance

This operation will list all parts in a requested multipart upload for
a sequence store.


=head2 ListReferenceImportJobs

=over

=item ReferenceStoreId => Str

=item [Filter => L<Paws::Omics::ImportReferenceFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListReferenceImportJobs>

Returns: a L<Paws::Omics::ListReferenceImportJobsResponse> instance

Retrieves a list of reference import jobs.


=head2 ListReferences

=over

=item ReferenceStoreId => Str

=item [Filter => L<Paws::Omics::ReferenceFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListReferences>

Returns: a L<Paws::Omics::ListReferencesResponse> instance

Retrieves a list of references.


=head2 ListReferenceStores

=over

=item [Filter => L<Paws::Omics::ReferenceStoreFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListReferenceStores>

Returns: a L<Paws::Omics::ListReferenceStoresResponse> instance

Retrieves a list of reference stores.


=head2 ListRunCaches

=over

=item [MaxResults => Int]

=item [StartingToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListRunCaches>

Returns: a L<Paws::Omics::ListRunCachesResponse> instance

Retrieves a list of your run caches.


=head2 ListRunGroups

=over

=item [MaxResults => Int]

=item [Name => Str]

=item [StartingToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListRunGroups>

Returns: a L<Paws::Omics::ListRunGroupsResponse> instance

Retrieves a list of run groups.


=head2 ListRuns

=over

=item [MaxResults => Int]

=item [Name => Str]

=item [RunGroupId => Str]

=item [StartingToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListRuns>

Returns: a L<Paws::Omics::ListRunsResponse> instance

Retrieves a list of runs.

Amazon Web Services HealthOmics stores a fixed number of runs that are
available to the console and API. If the ListRuns response doesn't
include specific runs that you expected, you can find run logs for all
runs in the CloudWatch logs. For more information about viewing the run
logs, see CloudWatch logs
(https://docs.aws.amazon.com/omics/latest/dev/cloudwatch-logs.html) in
the I<Amazon Web Services HealthOmics User Guide>.


=head2 ListRunTasks

=over

=item Id => Str

=item [MaxResults => Int]

=item [StartingToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListRunTasks>

Returns: a L<Paws::Omics::ListRunTasksResponse> instance

Retrieves a list of tasks for a run.


=head2 ListSequenceStores

=over

=item [Filter => L<Paws::Omics::SequenceStoreFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListSequenceStores>

Returns: a L<Paws::Omics::ListSequenceStoresResponse> instance

Retrieves a list of sequence stores.


=head2 ListShares

=over

=item ResourceOwner => Str

=item [Filter => L<Paws::Omics::Filter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListShares>

Returns: a L<Paws::Omics::ListSharesResponse> instance

Retrieves the resource shares associated with an account. Use the
filter parameter to retrieve a specific subset of the shares.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Omics::ListTagsForResource>

Returns: a L<Paws::Omics::ListTagsForResourceResponse> instance

Retrieves a list of tags for a resource.


=head2 ListVariantImportJobs

=over

=item [Filter => L<Paws::Omics::ListVariantImportJobsFilter>]

=item [Ids => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListVariantImportJobs>

Returns: a L<Paws::Omics::ListVariantImportJobsResponse> instance

Retrieves a list of variant import jobs.


=head2 ListVariantStores

=over

=item [Filter => L<Paws::Omics::ListVariantStoresFilter>]

=item [Ids => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListVariantStores>

Returns: a L<Paws::Omics::ListVariantStoresResponse> instance

Retrieves a list of variant stores.


=head2 ListWorkflows

=over

=item [MaxResults => Int]

=item [Name => Str]

=item [StartingToken => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListWorkflows>

Returns: a L<Paws::Omics::ListWorkflowsResponse> instance

Retrieves a list of workflows.


=head2 ListWorkflowVersions

=over

=item WorkflowId => Str

=item [MaxResults => Int]

=item [StartingToken => Str]

=item [Type => Str]

=item [WorkflowOwnerId => Str]


=back

Each argument is described in detail in: L<Paws::Omics::ListWorkflowVersions>

Returns: a L<Paws::Omics::ListWorkflowVersionsResponse> instance

Lists the workflow versions for the specified workflow. For more
information, see Workflow versioning in Amazon Web Services HealthOmics
(https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html)
in the Amazon Web Services HealthOmics User Guide.


=head2 PutS3AccessPolicy

=over

=item S3AccessPointArn => Str

=item S3AccessPolicy => Str


=back

Each argument is described in detail in: L<Paws::Omics::PutS3AccessPolicy>

Returns: a L<Paws::Omics::PutS3AccessPolicyResponse> instance

Adds an access policy to the specified store.


=head2 StartAnnotationImportJob

=over

=item DestinationName => Str

=item Items => ArrayRef[L<Paws::Omics::AnnotationImportItemSource>]

=item RoleArn => Str

=item [AnnotationFields => L<Paws::Omics::AnnotationFieldMap>]

=item [FormatOptions => L<Paws::Omics::FormatOptions>]

=item [RunLeftNormalization => Bool]

=item [VersionName => Str]


=back

Each argument is described in detail in: L<Paws::Omics::StartAnnotationImportJob>

Returns: a L<Paws::Omics::StartAnnotationImportResponse> instance

Starts an annotation import job.


=head2 StartReadSetActivationJob

=over

=item SequenceStoreId => Str

=item Sources => ArrayRef[L<Paws::Omics::StartReadSetActivationJobSourceItem>]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::StartReadSetActivationJob>

Returns: a L<Paws::Omics::StartReadSetActivationJobResponse> instance

Activates an archived read set. To reduce storage charges, Amazon Omics
archives unused read sets after 30 days.


=head2 StartReadSetExportJob

=over

=item Destination => Str

=item RoleArn => Str

=item SequenceStoreId => Str

=item Sources => ArrayRef[L<Paws::Omics::ExportReadSet>]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::StartReadSetExportJob>

Returns: a L<Paws::Omics::StartReadSetExportJobResponse> instance

Exports a read set to Amazon S3.


=head2 StartReadSetImportJob

=over

=item RoleArn => Str

=item SequenceStoreId => Str

=item Sources => ArrayRef[L<Paws::Omics::StartReadSetImportJobSourceItem>]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::StartReadSetImportJob>

Returns: a L<Paws::Omics::StartReadSetImportJobResponse> instance

Starts a read set import job.


=head2 StartReferenceImportJob

=over

=item ReferenceStoreId => Str

=item RoleArn => Str

=item Sources => ArrayRef[L<Paws::Omics::StartReferenceImportJobSourceItem>]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Omics::StartReferenceImportJob>

Returns: a L<Paws::Omics::StartReferenceImportJobResponse> instance

Starts a reference import job.


=head2 StartRun

=over

=item RequestId => Str

=item RoleArn => Str

=item [CacheBehavior => Str]

=item [CacheId => Str]

=item [LogLevel => Str]

=item [Name => Str]

=item [OutputUri => Str]

=item [Parameters => L<Paws::Omics::RunParameters>]

=item [Priority => Int]

=item [RetentionMode => Str]

=item [RunGroupId => Str]

=item [RunId => Str]

=item [StorageCapacity => Int]

=item [StorageType => Str]

=item [Tags => L<Paws::Omics::TagMap>]

=item [WorkflowId => Str]

=item [WorkflowOwnerId => Str]

=item [WorkflowType => Str]

=item [WorkflowVersionName => Str]


=back

Each argument is described in detail in: L<Paws::Omics::StartRun>

Returns: a L<Paws::Omics::StartRunResponse> instance

Starts a new run or duplicates an existing run.

For a new run, specify a unique C<requestId>, the C<workflowId>, and a
role ARN. If you're using static run storage (the default), specify the
required C<storageCapacity>.

You duplicate a run by specifing a unique C<requestId>, the C<runID> of
the run to duplicate, and a role ARN.

For more information about the optional parameters in the StartRun
request, see Starting a run
(https://docs.aws.amazon.com/omics/latest/dev/starting-a-run.html) in
the I<Amazon Web Services HealthOmics User Guide>.


=head2 StartVariantImportJob

=over

=item DestinationName => Str

=item Items => ArrayRef[L<Paws::Omics::VariantImportItemSource>]

=item RoleArn => Str

=item [AnnotationFields => L<Paws::Omics::AnnotationFieldMap>]

=item [RunLeftNormalization => Bool]


=back

Each argument is described in detail in: L<Paws::Omics::StartVariantImportJob>

Returns: a L<Paws::Omics::StartVariantImportResponse> instance

Starts a variant import job.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Omics::TagResourceRequestTagsMap>


=back

Each argument is described in detail in: L<Paws::Omics::TagResource>

Returns: a L<Paws::Omics::TagResourceResponse> instance

Tags a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Omics::UntagResource>

Returns: a L<Paws::Omics::UntagResourceResponse> instance

Removes tags from a resource.


=head2 UpdateAnnotationStore

=over

=item Name => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Omics::UpdateAnnotationStore>

Returns: a L<Paws::Omics::UpdateAnnotationStoreResponse> instance

Updates an annotation store.


=head2 UpdateAnnotationStoreVersion

=over

=item Name => Str

=item VersionName => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Omics::UpdateAnnotationStoreVersion>

Returns: a L<Paws::Omics::UpdateAnnotationStoreVersionResponse> instance

Updates the description of an annotation store version.


=head2 UpdateRunCache

=over

=item Id => Str

=item [CacheBehavior => Str]

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Omics::UpdateRunCache>

Returns: nothing

Update a run cache.


=head2 UpdateRunGroup

=over

=item Id => Str

=item [MaxCpus => Int]

=item [MaxDuration => Int]

=item [MaxGpus => Int]

=item [MaxRuns => Int]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Omics::UpdateRunGroup>

Returns: nothing

Updates a run group.


=head2 UpdateSequenceStore

=over

=item Id => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [FallbackLocation => Str]

=item [Name => Str]

=item [PropagatedSetLevelTags => ArrayRef[Str|Undef]]

=item [S3AccessConfig => L<Paws::Omics::S3AccessConfig>]


=back

Each argument is described in detail in: L<Paws::Omics::UpdateSequenceStore>

Returns: a L<Paws::Omics::UpdateSequenceStoreResponse> instance

Update one or more parameters for the sequence store.


=head2 UpdateVariantStore

=over

=item Name => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Omics::UpdateVariantStore>

Returns: a L<Paws::Omics::UpdateVariantStoreResponse> instance

Updates a variant store.


=head2 UpdateWorkflow

=over

=item Id => Str

=item [Description => Str]

=item [Name => Str]

=item [StorageCapacity => Int]

=item [StorageType => Str]


=back

Each argument is described in detail in: L<Paws::Omics::UpdateWorkflow>

Returns: nothing

Updates information about a workflow. For more information, see Update
a private workflow
(https://docs.aws.amazon.com/omics/latest/dev/update-private-workflow.html)
in the Amazon Web Services HealthOmics User Guide.


=head2 UpdateWorkflowVersion

=over

=item VersionName => Str

=item WorkflowId => Str

=item [Description => Str]

=item [StorageCapacity => Int]

=item [StorageType => Str]


=back

Each argument is described in detail in: L<Paws::Omics::UpdateWorkflowVersion>

Returns: nothing

Updates information about the workflow version. For more information,
see Workflow versioning in Amazon Web Services HealthOmics
(https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html)
in the Amazon Web Services HealthOmics User Guide.


=head2 UploadReadSetPart

=over

=item PartNumber => Int

=item PartSource => Str

=item Payload => Str

=item SequenceStoreId => Str

=item UploadId => Str


=back

Each argument is described in detail in: L<Paws::Omics::UploadReadSetPart>

Returns: a L<Paws::Omics::UploadReadSetPartResponse> instance

This operation uploads a specific part of a read set. If you upload a
new part using a previously used part number, the previously uploaded
part will be overwritten.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAnnotationImportJobs(sub { },[Filter => L<Paws::Omics::ListAnnotationImportJobsFilter>, Ids => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllAnnotationImportJobs([Filter => L<Paws::Omics::ListAnnotationImportJobsFilter>, Ids => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - annotationImportJobs, passing the object as the first parameter, and the string 'annotationImportJobs' as the second parameter 

If not, it will return a a L<Paws::Omics::ListAnnotationImportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAnnotationStores(sub { },[Filter => L<Paws::Omics::ListAnnotationStoresFilter>, Ids => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllAnnotationStores([Filter => L<Paws::Omics::ListAnnotationStoresFilter>, Ids => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - annotationStores, passing the object as the first parameter, and the string 'annotationStores' as the second parameter 

If not, it will return a a L<Paws::Omics::ListAnnotationStoresResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAnnotationStoreVersions(sub { },Name => Str, [Filter => L<Paws::Omics::ListAnnotationStoreVersionsFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllAnnotationStoreVersions(Name => Str, [Filter => L<Paws::Omics::ListAnnotationStoreVersionsFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - annotationStoreVersions, passing the object as the first parameter, and the string 'annotationStoreVersions' as the second parameter 

If not, it will return a a L<Paws::Omics::ListAnnotationStoreVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMultipartReadSetUploads(sub { },SequenceStoreId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllMultipartReadSetUploads(SequenceStoreId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - uploads, passing the object as the first parameter, and the string 'uploads' as the second parameter 

If not, it will return a a L<Paws::Omics::ListMultipartReadSetUploadsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReadSetActivationJobs(sub { },SequenceStoreId => Str, [Filter => L<Paws::Omics::ActivateReadSetFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllReadSetActivationJobs(SequenceStoreId => Str, [Filter => L<Paws::Omics::ActivateReadSetFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - activationJobs, passing the object as the first parameter, and the string 'activationJobs' as the second parameter 

If not, it will return a a L<Paws::Omics::ListReadSetActivationJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReadSetExportJobs(sub { },SequenceStoreId => Str, [Filter => L<Paws::Omics::ExportReadSetFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllReadSetExportJobs(SequenceStoreId => Str, [Filter => L<Paws::Omics::ExportReadSetFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - exportJobs, passing the object as the first parameter, and the string 'exportJobs' as the second parameter 

If not, it will return a a L<Paws::Omics::ListReadSetExportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReadSetImportJobs(sub { },SequenceStoreId => Str, [Filter => L<Paws::Omics::ImportReadSetFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllReadSetImportJobs(SequenceStoreId => Str, [Filter => L<Paws::Omics::ImportReadSetFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - importJobs, passing the object as the first parameter, and the string 'importJobs' as the second parameter 

If not, it will return a a L<Paws::Omics::ListReadSetImportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReadSets(sub { },SequenceStoreId => Str, [Filter => L<Paws::Omics::ReadSetFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllReadSets(SequenceStoreId => Str, [Filter => L<Paws::Omics::ReadSetFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - readSets, passing the object as the first parameter, and the string 'readSets' as the second parameter 

If not, it will return a a L<Paws::Omics::ListReadSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReadSetUploadParts(sub { },PartSource => Str, SequenceStoreId => Str, UploadId => Str, [Filter => L<Paws::Omics::ReadSetUploadPartListFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllReadSetUploadParts(PartSource => Str, SequenceStoreId => Str, UploadId => Str, [Filter => L<Paws::Omics::ReadSetUploadPartListFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - parts, passing the object as the first parameter, and the string 'parts' as the second parameter 

If not, it will return a a L<Paws::Omics::ListReadSetUploadPartsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReferenceImportJobs(sub { },ReferenceStoreId => Str, [Filter => L<Paws::Omics::ImportReferenceFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllReferenceImportJobs(ReferenceStoreId => Str, [Filter => L<Paws::Omics::ImportReferenceFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - importJobs, passing the object as the first parameter, and the string 'importJobs' as the second parameter 

If not, it will return a a L<Paws::Omics::ListReferenceImportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReferences(sub { },ReferenceStoreId => Str, [Filter => L<Paws::Omics::ReferenceFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllReferences(ReferenceStoreId => Str, [Filter => L<Paws::Omics::ReferenceFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - references, passing the object as the first parameter, and the string 'references' as the second parameter 

If not, it will return a a L<Paws::Omics::ListReferencesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReferenceStores(sub { },[Filter => L<Paws::Omics::ReferenceStoreFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllReferenceStores([Filter => L<Paws::Omics::ReferenceStoreFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - referenceStores, passing the object as the first parameter, and the string 'referenceStores' as the second parameter 

If not, it will return a a L<Paws::Omics::ListReferenceStoresResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRunCaches(sub { },[MaxResults => Int, StartingToken => Str])

=head2 ListAllRunCaches([MaxResults => Int, StartingToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::Omics::ListRunCachesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRunGroups(sub { },[MaxResults => Int, Name => Str, StartingToken => Str])

=head2 ListAllRunGroups([MaxResults => Int, Name => Str, StartingToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::Omics::ListRunGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRuns(sub { },[MaxResults => Int, Name => Str, RunGroupId => Str, StartingToken => Str, Status => Str])

=head2 ListAllRuns([MaxResults => Int, Name => Str, RunGroupId => Str, StartingToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::Omics::ListRunsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRunTasks(sub { },Id => Str, [MaxResults => Int, StartingToken => Str, Status => Str])

=head2 ListAllRunTasks(Id => Str, [MaxResults => Int, StartingToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::Omics::ListRunTasksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSequenceStores(sub { },[Filter => L<Paws::Omics::SequenceStoreFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllSequenceStores([Filter => L<Paws::Omics::SequenceStoreFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - sequenceStores, passing the object as the first parameter, and the string 'sequenceStores' as the second parameter 

If not, it will return a a L<Paws::Omics::ListSequenceStoresResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllShares(sub { },ResourceOwner => Str, [Filter => L<Paws::Omics::Filter>, MaxResults => Int, NextToken => Str])

=head2 ListAllShares(ResourceOwner => Str, [Filter => L<Paws::Omics::Filter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - shares, passing the object as the first parameter, and the string 'shares' as the second parameter 

If not, it will return a a L<Paws::Omics::ListSharesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVariantImportJobs(sub { },[Filter => L<Paws::Omics::ListVariantImportJobsFilter>, Ids => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllVariantImportJobs([Filter => L<Paws::Omics::ListVariantImportJobsFilter>, Ids => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - variantImportJobs, passing the object as the first parameter, and the string 'variantImportJobs' as the second parameter 

If not, it will return a a L<Paws::Omics::ListVariantImportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVariantStores(sub { },[Filter => L<Paws::Omics::ListVariantStoresFilter>, Ids => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllVariantStores([Filter => L<Paws::Omics::ListVariantStoresFilter>, Ids => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - variantStores, passing the object as the first parameter, and the string 'variantStores' as the second parameter 

If not, it will return a a L<Paws::Omics::ListVariantStoresResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkflows(sub { },[MaxResults => Int, Name => Str, StartingToken => Str, Type => Str])

=head2 ListAllWorkflows([MaxResults => Int, Name => Str, StartingToken => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::Omics::ListWorkflowsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkflowVersions(sub { },WorkflowId => Str, [MaxResults => Int, StartingToken => Str, Type => Str, WorkflowOwnerId => Str])

=head2 ListAllWorkflowVersions(WorkflowId => Str, [MaxResults => Int, StartingToken => Str, Type => Str, WorkflowOwnerId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::Omics::ListWorkflowVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

