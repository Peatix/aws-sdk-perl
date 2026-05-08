package Paws::Backup;
  use Moose;
  sub service { 'backup' }
  sub signing_name { 'backup' }
  sub version { '2018-11-15' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelLegalHold {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::CancelLegalHold', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBackupPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::CreateBackupPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBackupSelection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::CreateBackupSelection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBackupVault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::CreateBackupVault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFramework {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::CreateFramework', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLegalHold {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::CreateLegalHold', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLogicallyAirGappedBackupVault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::CreateLogicallyAirGappedBackupVault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReportPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::CreateReportPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRestoreTestingPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::CreateRestoreTestingPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRestoreTestingSelection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::CreateRestoreTestingSelection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBackupPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DeleteBackupPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBackupSelection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DeleteBackupSelection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBackupVault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DeleteBackupVault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBackupVaultAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DeleteBackupVaultAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBackupVaultLockConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DeleteBackupVaultLockConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBackupVaultNotifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DeleteBackupVaultNotifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFramework {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DeleteFramework', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRecoveryPoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DeleteRecoveryPoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReportPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DeleteReportPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRestoreTestingPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DeleteRestoreTestingPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRestoreTestingSelection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DeleteRestoreTestingSelection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBackupJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DescribeBackupJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBackupVault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DescribeBackupVault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCopyJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DescribeCopyJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFramework {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DescribeFramework', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGlobalSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DescribeGlobalSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProtectedResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DescribeProtectedResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRecoveryPoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DescribeRecoveryPoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRegionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DescribeRegionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DescribeReportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReportPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DescribeReportPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRestoreJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DescribeRestoreJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateRecoveryPoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DisassociateRecoveryPoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateRecoveryPointFromParent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DisassociateRecoveryPointFromParent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportBackupPlanTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ExportBackupPlanTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBackupPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetBackupPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBackupPlanFromJSON {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetBackupPlanFromJSON', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBackupPlanFromTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetBackupPlanFromTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBackupSelection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetBackupSelection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBackupVaultAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetBackupVaultAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBackupVaultNotifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetBackupVaultNotifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLegalHold {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetLegalHold', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecoveryPointIndexDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetRecoveryPointIndexDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecoveryPointRestoreMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetRecoveryPointRestoreMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRestoreJobMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetRestoreJobMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRestoreTestingInferredMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetRestoreTestingInferredMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRestoreTestingPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetRestoreTestingPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRestoreTestingSelection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetRestoreTestingSelection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSupportedResourceTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetSupportedResourceTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBackupJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListBackupJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBackupJobSummaries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListBackupJobSummaries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBackupPlans {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListBackupPlans', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBackupPlanTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListBackupPlanTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBackupPlanVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListBackupPlanVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBackupSelections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListBackupSelections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBackupVaults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListBackupVaults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCopyJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListCopyJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCopyJobSummaries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListCopyJobSummaries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFrameworks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListFrameworks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIndexedRecoveryPoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListIndexedRecoveryPoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLegalHolds {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListLegalHolds', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProtectedResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListProtectedResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProtectedResourcesByBackupVault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListProtectedResourcesByBackupVault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecoveryPointsByBackupVault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListRecoveryPointsByBackupVault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecoveryPointsByLegalHold {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListRecoveryPointsByLegalHold', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecoveryPointsByResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListRecoveryPointsByResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListReportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReportPlans {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListReportPlans', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRestoreJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListRestoreJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRestoreJobsByProtectedResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListRestoreJobsByProtectedResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRestoreJobSummaries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListRestoreJobSummaries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRestoreTestingPlans {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListRestoreTestingPlans', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRestoreTestingSelections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListRestoreTestingSelections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBackupVaultAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::PutBackupVaultAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBackupVaultLockConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::PutBackupVaultLockConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBackupVaultNotifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::PutBackupVaultNotifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRestoreValidationResult {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::PutRestoreValidationResult', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartBackupJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::StartBackupJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCopyJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::StartCopyJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartReportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::StartReportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartRestoreJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::StartRestoreJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopBackupJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::StopBackupJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBackupPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::UpdateBackupPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFramework {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::UpdateFramework', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGlobalSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::UpdateGlobalSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRecoveryPointIndexSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::UpdateRecoveryPointIndexSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRecoveryPointLifecycle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::UpdateRecoveryPointLifecycle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRegionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::UpdateRegionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateReportPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::UpdateReportPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRestoreTestingPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::UpdateRestoreTestingPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRestoreTestingSelection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::UpdateRestoreTestingSelection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllBackupJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBackupJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListBackupJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->BackupJobs }, @{ $next_result->BackupJobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'BackupJobs') foreach (@{ $result->BackupJobs });
        $result = $self->ListBackupJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'BackupJobs') foreach (@{ $result->BackupJobs });
    }

    return undef
  }
  sub ListAllBackupPlans {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBackupPlans(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListBackupPlans(@_, NextToken => $next_result->NextToken);
        push @{ $result->BackupPlansList }, @{ $next_result->BackupPlansList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'BackupPlansList') foreach (@{ $result->BackupPlansList });
        $result = $self->ListBackupPlans(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'BackupPlansList') foreach (@{ $result->BackupPlansList });
    }

    return undef
  }
  sub ListAllBackupPlanTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBackupPlanTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListBackupPlanTemplates(@_, NextToken => $next_result->NextToken);
        push @{ $result->BackupPlanTemplatesList }, @{ $next_result->BackupPlanTemplatesList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'BackupPlanTemplatesList') foreach (@{ $result->BackupPlanTemplatesList });
        $result = $self->ListBackupPlanTemplates(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'BackupPlanTemplatesList') foreach (@{ $result->BackupPlanTemplatesList });
    }

    return undef
  }
  sub ListAllBackupPlanVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBackupPlanVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListBackupPlanVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->BackupPlanVersionsList }, @{ $next_result->BackupPlanVersionsList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'BackupPlanVersionsList') foreach (@{ $result->BackupPlanVersionsList });
        $result = $self->ListBackupPlanVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'BackupPlanVersionsList') foreach (@{ $result->BackupPlanVersionsList });
    }

    return undef
  }
  sub ListAllBackupSelections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBackupSelections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListBackupSelections(@_, NextToken => $next_result->NextToken);
        push @{ $result->BackupSelectionsList }, @{ $next_result->BackupSelectionsList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'BackupSelectionsList') foreach (@{ $result->BackupSelectionsList });
        $result = $self->ListBackupSelections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'BackupSelectionsList') foreach (@{ $result->BackupSelectionsList });
    }

    return undef
  }
  sub ListAllBackupVaults {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBackupVaults(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListBackupVaults(@_, NextToken => $next_result->NextToken);
        push @{ $result->BackupVaultList }, @{ $next_result->BackupVaultList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'BackupVaultList') foreach (@{ $result->BackupVaultList });
        $result = $self->ListBackupVaults(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'BackupVaultList') foreach (@{ $result->BackupVaultList });
    }

    return undef
  }
  sub ListAllCopyJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCopyJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCopyJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->CopyJobs }, @{ $next_result->CopyJobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CopyJobs') foreach (@{ $result->CopyJobs });
        $result = $self->ListCopyJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CopyJobs') foreach (@{ $result->CopyJobs });
    }

    return undef
  }
  sub ListAllIndexedRecoveryPoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIndexedRecoveryPoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListIndexedRecoveryPoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->IndexedRecoveryPoints }, @{ $next_result->IndexedRecoveryPoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IndexedRecoveryPoints') foreach (@{ $result->IndexedRecoveryPoints });
        $result = $self->ListIndexedRecoveryPoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IndexedRecoveryPoints') foreach (@{ $result->IndexedRecoveryPoints });
    }

    return undef
  }
  sub ListAllLegalHolds {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLegalHolds(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLegalHolds(@_, NextToken => $next_result->NextToken);
        push @{ $result->LegalHolds }, @{ $next_result->LegalHolds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LegalHolds') foreach (@{ $result->LegalHolds });
        $result = $self->ListLegalHolds(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LegalHolds') foreach (@{ $result->LegalHolds });
    }

    return undef
  }
  sub ListAllProtectedResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProtectedResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListProtectedResources(@_, NextToken => $next_result->NextToken);
        push @{ $result->Results }, @{ $next_result->Results };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Results') foreach (@{ $result->Results });
        $result = $self->ListProtectedResources(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Results') foreach (@{ $result->Results });
    }

    return undef
  }
  sub ListAllProtectedResourcesByBackupVault {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProtectedResourcesByBackupVault(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListProtectedResourcesByBackupVault(@_, NextToken => $next_result->NextToken);
        push @{ $result->Results }, @{ $next_result->Results };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Results') foreach (@{ $result->Results });
        $result = $self->ListProtectedResourcesByBackupVault(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Results') foreach (@{ $result->Results });
    }

    return undef
  }
  sub ListAllRecoveryPointsByBackupVault {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRecoveryPointsByBackupVault(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRecoveryPointsByBackupVault(@_, NextToken => $next_result->NextToken);
        push @{ $result->RecoveryPoints }, @{ $next_result->RecoveryPoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RecoveryPoints') foreach (@{ $result->RecoveryPoints });
        $result = $self->ListRecoveryPointsByBackupVault(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RecoveryPoints') foreach (@{ $result->RecoveryPoints });
    }

    return undef
  }
  sub ListAllRecoveryPointsByLegalHold {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRecoveryPointsByLegalHold(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRecoveryPointsByLegalHold(@_, NextToken => $next_result->NextToken);
        push @{ $result->RecoveryPoints }, @{ $next_result->RecoveryPoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RecoveryPoints') foreach (@{ $result->RecoveryPoints });
        $result = $self->ListRecoveryPointsByLegalHold(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RecoveryPoints') foreach (@{ $result->RecoveryPoints });
    }

    return undef
  }
  sub ListAllRecoveryPointsByResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRecoveryPointsByResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRecoveryPointsByResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->RecoveryPoints }, @{ $next_result->RecoveryPoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RecoveryPoints') foreach (@{ $result->RecoveryPoints });
        $result = $self->ListRecoveryPointsByResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RecoveryPoints') foreach (@{ $result->RecoveryPoints });
    }

    return undef
  }
  sub ListAllRestoreJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRestoreJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRestoreJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->RestoreJobs }, @{ $next_result->RestoreJobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RestoreJobs') foreach (@{ $result->RestoreJobs });
        $result = $self->ListRestoreJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RestoreJobs') foreach (@{ $result->RestoreJobs });
    }

    return undef
  }
  sub ListAllRestoreJobsByProtectedResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRestoreJobsByProtectedResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRestoreJobsByProtectedResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->RestoreJobs }, @{ $next_result->RestoreJobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RestoreJobs') foreach (@{ $result->RestoreJobs });
        $result = $self->ListRestoreJobsByProtectedResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RestoreJobs') foreach (@{ $result->RestoreJobs });
    }

    return undef
  }
  sub ListAllRestoreTestingPlans {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRestoreTestingPlans(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRestoreTestingPlans(@_, NextToken => $next_result->NextToken);
        push @{ $result->RestoreTestingPlans }, @{ $next_result->RestoreTestingPlans };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RestoreTestingPlans') foreach (@{ $result->RestoreTestingPlans });
        $result = $self->ListRestoreTestingPlans(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RestoreTestingPlans') foreach (@{ $result->RestoreTestingPlans });
    }

    return undef
  }
  sub ListAllRestoreTestingSelections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRestoreTestingSelections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRestoreTestingSelections(@_, NextToken => $next_result->NextToken);
        push @{ $result->RestoreTestingSelections }, @{ $next_result->RestoreTestingSelections };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RestoreTestingSelections') foreach (@{ $result->RestoreTestingSelections });
        $result = $self->ListRestoreTestingSelections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RestoreTestingSelections') foreach (@{ $result->RestoreTestingSelections });
    }

    return undef
  }


  sub operations { qw/CancelLegalHold CreateBackupPlan CreateBackupSelection CreateBackupVault CreateFramework CreateLegalHold CreateLogicallyAirGappedBackupVault CreateReportPlan CreateRestoreTestingPlan CreateRestoreTestingSelection DeleteBackupPlan DeleteBackupSelection DeleteBackupVault DeleteBackupVaultAccessPolicy DeleteBackupVaultLockConfiguration DeleteBackupVaultNotifications DeleteFramework DeleteRecoveryPoint DeleteReportPlan DeleteRestoreTestingPlan DeleteRestoreTestingSelection DescribeBackupJob DescribeBackupVault DescribeCopyJob DescribeFramework DescribeGlobalSettings DescribeProtectedResource DescribeRecoveryPoint DescribeRegionSettings DescribeReportJob DescribeReportPlan DescribeRestoreJob DisassociateRecoveryPoint DisassociateRecoveryPointFromParent ExportBackupPlanTemplate GetBackupPlan GetBackupPlanFromJSON GetBackupPlanFromTemplate GetBackupSelection GetBackupVaultAccessPolicy GetBackupVaultNotifications GetLegalHold GetRecoveryPointIndexDetails GetRecoveryPointRestoreMetadata GetRestoreJobMetadata GetRestoreTestingInferredMetadata GetRestoreTestingPlan GetRestoreTestingSelection GetSupportedResourceTypes ListBackupJobs ListBackupJobSummaries ListBackupPlans ListBackupPlanTemplates ListBackupPlanVersions ListBackupSelections ListBackupVaults ListCopyJobs ListCopyJobSummaries ListFrameworks ListIndexedRecoveryPoints ListLegalHolds ListProtectedResources ListProtectedResourcesByBackupVault ListRecoveryPointsByBackupVault ListRecoveryPointsByLegalHold ListRecoveryPointsByResource ListReportJobs ListReportPlans ListRestoreJobs ListRestoreJobsByProtectedResource ListRestoreJobSummaries ListRestoreTestingPlans ListRestoreTestingSelections ListTags PutBackupVaultAccessPolicy PutBackupVaultLockConfiguration PutBackupVaultNotifications PutRestoreValidationResult StartBackupJob StartCopyJob StartReportJob StartRestoreJob StopBackupJob TagResource UntagResource UpdateBackupPlan UpdateFramework UpdateGlobalSettings UpdateRecoveryPointIndexSettings UpdateRecoveryPointLifecycle UpdateRegionSettings UpdateReportPlan UpdateRestoreTestingPlan UpdateRestoreTestingSelection / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup - Perl Interface to AWS AWS Backup

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Backup');
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

Backup

Backup is a unified backup service designed to protect Amazon Web
Services services and their associated data. Backup simplifies the
creation, migration, restoration, and deletion of backups, while also
providing reporting and auditing.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CancelLegalHold

=over

=item CancelDescription => Str

=item LegalHoldId => Str

=item [RetainRecordInDays => Int]


=back

Each argument is described in detail in: L<Paws::Backup::CancelLegalHold>

Returns: a L<Paws::Backup::CancelLegalHoldOutput> instance

Removes the specified legal hold on a recovery point. This action can
only be performed by a user with sufficient permissions.


=head2 CreateBackupPlan

=over

=item BackupPlan => L<Paws::Backup::BackupPlanInput>

=item [BackupPlanTags => L<Paws::Backup::Tags>]

=item [CreatorRequestId => Str]


=back

Each argument is described in detail in: L<Paws::Backup::CreateBackupPlan>

Returns: a L<Paws::Backup::CreateBackupPlanOutput> instance

Creates a backup plan using a backup plan name and backup rules. A
backup plan is a document that contains information that Backup uses to
schedule tasks that create recovery points for resources.

If you call C<CreateBackupPlan> with a plan that already exists, you
receive an C<AlreadyExistsException> exception.


=head2 CreateBackupSelection

=over

=item BackupPlanId => Str

=item BackupSelection => L<Paws::Backup::BackupSelection>

=item [CreatorRequestId => Str]


=back

Each argument is described in detail in: L<Paws::Backup::CreateBackupSelection>

Returns: a L<Paws::Backup::CreateBackupSelectionOutput> instance

Creates a JSON document that specifies a set of resources to assign to
a backup plan. For examples, see Assigning resources programmatically
(https://docs.aws.amazon.com/aws-backup/latest/devguide/assigning-resources.html#assigning-resources-json).


=head2 CreateBackupVault

=over

=item BackupVaultName => Str

=item [BackupVaultTags => L<Paws::Backup::Tags>]

=item [CreatorRequestId => Str]

=item [EncryptionKeyArn => Str]


=back

Each argument is described in detail in: L<Paws::Backup::CreateBackupVault>

Returns: a L<Paws::Backup::CreateBackupVaultOutput> instance

Creates a logical container where backups are stored. A
C<CreateBackupVault> request includes a name, optionally one or more
resource tags, an encryption key, and a request ID.

Do not include sensitive data, such as passport numbers, in the name of
a backup vault.


=head2 CreateFramework

=over

=item FrameworkControls => ArrayRef[L<Paws::Backup::FrameworkControl>]

=item FrameworkName => Str

=item [FrameworkDescription => Str]

=item [FrameworkTags => L<Paws::Backup::StringMap>]

=item [IdempotencyToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::CreateFramework>

Returns: a L<Paws::Backup::CreateFrameworkOutput> instance

Creates a framework with one or more controls. A framework is a
collection of controls that you can use to evaluate your backup
practices. By using pre-built customizable controls to define your
policies, you can evaluate whether your backup practices comply with
your policies and which resources are not yet in compliance.


=head2 CreateLegalHold

=over

=item Description => Str

=item Title => Str

=item [IdempotencyToken => Str]

=item [RecoveryPointSelection => L<Paws::Backup::RecoveryPointSelection>]

=item [Tags => L<Paws::Backup::Tags>]


=back

Each argument is described in detail in: L<Paws::Backup::CreateLegalHold>

Returns: a L<Paws::Backup::CreateLegalHoldOutput> instance

Creates a legal hold on a recovery point (backup). A legal hold is a
restraint on altering or deleting a backup until an authorized user
cancels the legal hold. Any actions to delete or disassociate a
recovery point will fail with an error if one or more active legal
holds are on the recovery point.


=head2 CreateLogicallyAirGappedBackupVault

=over

=item BackupVaultName => Str

=item MaxRetentionDays => Int

=item MinRetentionDays => Int

=item [BackupVaultTags => L<Paws::Backup::Tags>]

=item [CreatorRequestId => Str]


=back

Each argument is described in detail in: L<Paws::Backup::CreateLogicallyAirGappedBackupVault>

Returns: a L<Paws::Backup::CreateLogicallyAirGappedBackupVaultOutput> instance

Creates a logical container to where backups may be copied.

This request includes a name, the Region, the maximum number of
retention days, the minimum number of retention days, and optionally
can include tags and a creator request ID.

Do not include sensitive data, such as passport numbers, in the name of
a backup vault.


=head2 CreateReportPlan

=over

=item ReportDeliveryChannel => L<Paws::Backup::ReportDeliveryChannel>

=item ReportPlanName => Str

=item ReportSetting => L<Paws::Backup::ReportSetting>

=item [IdempotencyToken => Str]

=item [ReportPlanDescription => Str]

=item [ReportPlanTags => L<Paws::Backup::StringMap>]


=back

Each argument is described in detail in: L<Paws::Backup::CreateReportPlan>

Returns: a L<Paws::Backup::CreateReportPlanOutput> instance

Creates a report plan. A report plan is a document that contains
information about the contents of the report and where Backup will
deliver it.

If you call C<CreateReportPlan> with a plan that already exists, you
receive an C<AlreadyExistsException> exception.


=head2 CreateRestoreTestingPlan

=over

=item RestoreTestingPlan => L<Paws::Backup::RestoreTestingPlanForCreate>

=item [CreatorRequestId => Str]

=item [Tags => L<Paws::Backup::SensitiveStringMap>]


=back

Each argument is described in detail in: L<Paws::Backup::CreateRestoreTestingPlan>

Returns: a L<Paws::Backup::CreateRestoreTestingPlanOutput> instance

Creates a restore testing plan.

The first of two steps to create a restore testing plan. After this
request is successful, finish the procedure using
CreateRestoreTestingSelection.


=head2 CreateRestoreTestingSelection

=over

=item RestoreTestingPlanName => Str

=item RestoreTestingSelection => L<Paws::Backup::RestoreTestingSelectionForCreate>

=item [CreatorRequestId => Str]


=back

Each argument is described in detail in: L<Paws::Backup::CreateRestoreTestingSelection>

Returns: a L<Paws::Backup::CreateRestoreTestingSelectionOutput> instance

This request can be sent after CreateRestoreTestingPlan request returns
successfully. This is the second part of creating a resource testing
plan, and it must be completed sequentially.

This consists of C<RestoreTestingSelectionName>,
C<ProtectedResourceType>, and one of the following:

=over

=item *

C<ProtectedResourceArns>

=item *

C<ProtectedResourceConditions>

=back

Each protected resource type can have one single value.

A restore testing selection can include a wildcard value ("*") for
C<ProtectedResourceArns> along with C<ProtectedResourceConditions>.
Alternatively, you can include up to 30 specific protected resource
ARNs in C<ProtectedResourceArns>.

Cannot select by both protected resource types AND specific ARNs.
Request will fail if both are included.


=head2 DeleteBackupPlan

=over

=item BackupPlanId => Str


=back

Each argument is described in detail in: L<Paws::Backup::DeleteBackupPlan>

Returns: a L<Paws::Backup::DeleteBackupPlanOutput> instance

Deletes a backup plan. A backup plan can only be deleted after all
associated selections of resources have been deleted. Deleting a backup
plan deletes the current version of a backup plan. Previous versions,
if any, will still exist.


=head2 DeleteBackupSelection

=over

=item BackupPlanId => Str

=item SelectionId => Str


=back

Each argument is described in detail in: L<Paws::Backup::DeleteBackupSelection>

Returns: nothing

Deletes the resource selection associated with a backup plan that is
specified by the C<SelectionId>.


=head2 DeleteBackupVault

=over

=item BackupVaultName => Str


=back

Each argument is described in detail in: L<Paws::Backup::DeleteBackupVault>

Returns: nothing

Deletes the backup vault identified by its name. A vault can be deleted
only if it is empty.


=head2 DeleteBackupVaultAccessPolicy

=over

=item BackupVaultName => Str


=back

Each argument is described in detail in: L<Paws::Backup::DeleteBackupVaultAccessPolicy>

Returns: nothing

Deletes the policy document that manages permissions on a backup vault.


=head2 DeleteBackupVaultLockConfiguration

=over

=item BackupVaultName => Str


=back

Each argument is described in detail in: L<Paws::Backup::DeleteBackupVaultLockConfiguration>

Returns: nothing

Deletes Backup Vault Lock from a backup vault specified by a backup
vault name.

If the Vault Lock configuration is immutable, then you cannot delete
Vault Lock using API operations, and you will receive an
C<InvalidRequestException> if you attempt to do so. For more
information, see Vault Lock
(https://docs.aws.amazon.com/aws-backup/latest/devguide/vault-lock.html)
in the I<Backup Developer Guide>.


=head2 DeleteBackupVaultNotifications

=over

=item BackupVaultName => Str


=back

Each argument is described in detail in: L<Paws::Backup::DeleteBackupVaultNotifications>

Returns: nothing

Deletes event notifications for the specified backup vault.


=head2 DeleteFramework

=over

=item FrameworkName => Str


=back

Each argument is described in detail in: L<Paws::Backup::DeleteFramework>

Returns: nothing

Deletes the framework specified by a framework name.


=head2 DeleteRecoveryPoint

=over

=item BackupVaultName => Str

=item RecoveryPointArn => Str


=back

Each argument is described in detail in: L<Paws::Backup::DeleteRecoveryPoint>

Returns: nothing

Deletes the recovery point specified by a recovery point ID.

If the recovery point ID belongs to a continuous backup, calling this
endpoint deletes the existing continuous backup and stops future
continuous backup.

When an IAM role's permissions are insufficient to call this API, the
service sends back an HTTP 200 response with an empty HTTP body, but
the recovery point is not deleted. Instead, it enters an C<EXPIRED>
state.

C<EXPIRED> recovery points can be deleted with this API once the IAM
role has the C<iam:CreateServiceLinkedRole> action. To learn more about
adding this role, see Troubleshooting manual deletions
(https://docs.aws.amazon.com/aws-backup/latest/devguide/deleting-backups.html#deleting-backups-troubleshooting).

If the user or role is deleted or the permission within the role is
removed, the deletion will not be successful and will enter an
C<EXPIRED> state.


=head2 DeleteReportPlan

=over

=item ReportPlanName => Str


=back

Each argument is described in detail in: L<Paws::Backup::DeleteReportPlan>

Returns: nothing

Deletes the report plan specified by a report plan name.


=head2 DeleteRestoreTestingPlan

=over

=item RestoreTestingPlanName => Str


=back

Each argument is described in detail in: L<Paws::Backup::DeleteRestoreTestingPlan>

Returns: nothing

This request deletes the specified restore testing plan.

Deletion can only successfully occur if all associated restore testing
selections are deleted first.


=head2 DeleteRestoreTestingSelection

=over

=item RestoreTestingPlanName => Str

=item RestoreTestingSelectionName => Str


=back

Each argument is described in detail in: L<Paws::Backup::DeleteRestoreTestingSelection>

Returns: nothing

Input the Restore Testing Plan name and Restore Testing Selection name.

All testing selections associated with a restore testing plan must be
deleted before the restore testing plan can be deleted.


=head2 DescribeBackupJob

=over

=item BackupJobId => Str


=back

Each argument is described in detail in: L<Paws::Backup::DescribeBackupJob>

Returns: a L<Paws::Backup::DescribeBackupJobOutput> instance

Returns backup job details for the specified C<BackupJobId>.


=head2 DescribeBackupVault

=over

=item BackupVaultName => Str

=item [BackupVaultAccountId => Str]


=back

Each argument is described in detail in: L<Paws::Backup::DescribeBackupVault>

Returns: a L<Paws::Backup::DescribeBackupVaultOutput> instance

Returns metadata about a backup vault specified by its name.


=head2 DescribeCopyJob

=over

=item CopyJobId => Str


=back

Each argument is described in detail in: L<Paws::Backup::DescribeCopyJob>

Returns: a L<Paws::Backup::DescribeCopyJobOutput> instance

Returns metadata associated with creating a copy of a resource.


=head2 DescribeFramework

=over

=item FrameworkName => Str


=back

Each argument is described in detail in: L<Paws::Backup::DescribeFramework>

Returns: a L<Paws::Backup::DescribeFrameworkOutput> instance

Returns the framework details for the specified C<FrameworkName>.


=head2 DescribeGlobalSettings






Each argument is described in detail in: L<Paws::Backup::DescribeGlobalSettings>

Returns: a L<Paws::Backup::DescribeGlobalSettingsOutput> instance

Describes whether the Amazon Web Services account is opted in to
cross-account backup. Returns an error if the account is not a member
of an Organizations organization. Example: C<describe-global-settings
--region us-west-2>


=head2 DescribeProtectedResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Backup::DescribeProtectedResource>

Returns: a L<Paws::Backup::DescribeProtectedResourceOutput> instance

Returns information about a saved resource, including the last time it
was backed up, its Amazon Resource Name (ARN), and the Amazon Web
Services service type of the saved resource.


=head2 DescribeRecoveryPoint

=over

=item BackupVaultName => Str

=item RecoveryPointArn => Str

=item [BackupVaultAccountId => Str]


=back

Each argument is described in detail in: L<Paws::Backup::DescribeRecoveryPoint>

Returns: a L<Paws::Backup::DescribeRecoveryPointOutput> instance

Returns metadata associated with a recovery point, including ID,
status, encryption, and lifecycle.


=head2 DescribeRegionSettings






Each argument is described in detail in: L<Paws::Backup::DescribeRegionSettings>

Returns: a L<Paws::Backup::DescribeRegionSettingsOutput> instance

Returns the current service opt-in settings for the Region. If service
opt-in is enabled for a service, Backup tries to protect that service's
resources in this Region, when the resource is included in an on-demand
backup or scheduled backup plan. Otherwise, Backup does not try to
protect that service's resources in this Region.


=head2 DescribeReportJob

=over

=item ReportJobId => Str


=back

Each argument is described in detail in: L<Paws::Backup::DescribeReportJob>

Returns: a L<Paws::Backup::DescribeReportJobOutput> instance

Returns the details associated with creating a report as specified by
its C<ReportJobId>.


=head2 DescribeReportPlan

=over

=item ReportPlanName => Str


=back

Each argument is described in detail in: L<Paws::Backup::DescribeReportPlan>

Returns: a L<Paws::Backup::DescribeReportPlanOutput> instance

Returns a list of all report plans for an Amazon Web Services account
and Amazon Web Services Region.


=head2 DescribeRestoreJob

=over

=item RestoreJobId => Str


=back

Each argument is described in detail in: L<Paws::Backup::DescribeRestoreJob>

Returns: a L<Paws::Backup::DescribeRestoreJobOutput> instance

Returns metadata associated with a restore job that is specified by a
job ID.


=head2 DisassociateRecoveryPoint

=over

=item BackupVaultName => Str

=item RecoveryPointArn => Str


=back

Each argument is described in detail in: L<Paws::Backup::DisassociateRecoveryPoint>

Returns: nothing

Deletes the specified continuous backup recovery point from Backup and
releases control of that continuous backup to the source service, such
as Amazon RDS. The source service will continue to create and retain
continuous backups using the lifecycle that you specified in your
original backup plan.

Does not support snapshot backup recovery points.


=head2 DisassociateRecoveryPointFromParent

=over

=item BackupVaultName => Str

=item RecoveryPointArn => Str


=back

Each argument is described in detail in: L<Paws::Backup::DisassociateRecoveryPointFromParent>

Returns: nothing

This action to a specific child (nested) recovery point removes the
relationship between the specified recovery point and its parent
(composite) recovery point.


=head2 ExportBackupPlanTemplate

=over

=item BackupPlanId => Str


=back

Each argument is described in detail in: L<Paws::Backup::ExportBackupPlanTemplate>

Returns: a L<Paws::Backup::ExportBackupPlanTemplateOutput> instance

Returns the backup plan that is specified by the plan ID as a backup
template.


=head2 GetBackupPlan

=over

=item BackupPlanId => Str

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::Backup::GetBackupPlan>

Returns: a L<Paws::Backup::GetBackupPlanOutput> instance

Returns C<BackupPlan> details for the specified C<BackupPlanId>. The
details are the body of a backup plan in JSON format, in addition to
plan metadata.


=head2 GetBackupPlanFromJSON

=over

=item BackupPlanTemplateJson => Str


=back

Each argument is described in detail in: L<Paws::Backup::GetBackupPlanFromJSON>

Returns: a L<Paws::Backup::GetBackupPlanFromJSONOutput> instance

Returns a valid JSON document specifying a backup plan or an error.


=head2 GetBackupPlanFromTemplate

=over

=item BackupPlanTemplateId => Str


=back

Each argument is described in detail in: L<Paws::Backup::GetBackupPlanFromTemplate>

Returns: a L<Paws::Backup::GetBackupPlanFromTemplateOutput> instance

Returns the template specified by its C<templateId> as a backup plan.


=head2 GetBackupSelection

=over

=item BackupPlanId => Str

=item SelectionId => Str


=back

Each argument is described in detail in: L<Paws::Backup::GetBackupSelection>

Returns: a L<Paws::Backup::GetBackupSelectionOutput> instance

Returns selection metadata and a document in JSON format that specifies
a list of resources that are associated with a backup plan.


=head2 GetBackupVaultAccessPolicy

=over

=item BackupVaultName => Str


=back

Each argument is described in detail in: L<Paws::Backup::GetBackupVaultAccessPolicy>

Returns: a L<Paws::Backup::GetBackupVaultAccessPolicyOutput> instance

Returns the access policy document that is associated with the named
backup vault.


=head2 GetBackupVaultNotifications

=over

=item BackupVaultName => Str


=back

Each argument is described in detail in: L<Paws::Backup::GetBackupVaultNotifications>

Returns: a L<Paws::Backup::GetBackupVaultNotificationsOutput> instance

Returns event notifications for the specified backup vault.


=head2 GetLegalHold

=over

=item LegalHoldId => Str


=back

Each argument is described in detail in: L<Paws::Backup::GetLegalHold>

Returns: a L<Paws::Backup::GetLegalHoldOutput> instance

This action returns details for a specified legal hold. The details are
the body of a legal hold in JSON format, in addition to metadata.


=head2 GetRecoveryPointIndexDetails

=over

=item BackupVaultName => Str

=item RecoveryPointArn => Str


=back

Each argument is described in detail in: L<Paws::Backup::GetRecoveryPointIndexDetails>

Returns: a L<Paws::Backup::GetRecoveryPointIndexDetailsOutput> instance

This operation returns the metadata and details specific to the backup
index associated with the specified recovery point.


=head2 GetRecoveryPointRestoreMetadata

=over

=item BackupVaultName => Str

=item RecoveryPointArn => Str

=item [BackupVaultAccountId => Str]


=back

Each argument is described in detail in: L<Paws::Backup::GetRecoveryPointRestoreMetadata>

Returns: a L<Paws::Backup::GetRecoveryPointRestoreMetadataOutput> instance

Returns a set of metadata key-value pairs that were used to create the
backup.


=head2 GetRestoreJobMetadata

=over

=item RestoreJobId => Str


=back

Each argument is described in detail in: L<Paws::Backup::GetRestoreJobMetadata>

Returns: a L<Paws::Backup::GetRestoreJobMetadataOutput> instance

This request returns the metadata for the specified restore job.


=head2 GetRestoreTestingInferredMetadata

=over

=item BackupVaultName => Str

=item RecoveryPointArn => Str

=item [BackupVaultAccountId => Str]


=back

Each argument is described in detail in: L<Paws::Backup::GetRestoreTestingInferredMetadata>

Returns: a L<Paws::Backup::GetRestoreTestingInferredMetadataOutput> instance

This request returns the minimal required set of metadata needed to
start a restore job with secure default settings. C<BackupVaultName>
and C<RecoveryPointArn> are required parameters.
C<BackupVaultAccountId> is an optional parameter.


=head2 GetRestoreTestingPlan

=over

=item RestoreTestingPlanName => Str


=back

Each argument is described in detail in: L<Paws::Backup::GetRestoreTestingPlan>

Returns: a L<Paws::Backup::GetRestoreTestingPlanOutput> instance

Returns C<RestoreTestingPlan> details for the specified
C<RestoreTestingPlanName>. The details are the body of a restore
testing plan in JSON format, in addition to plan metadata.


=head2 GetRestoreTestingSelection

=over

=item RestoreTestingPlanName => Str

=item RestoreTestingSelectionName => Str


=back

Each argument is described in detail in: L<Paws::Backup::GetRestoreTestingSelection>

Returns: a L<Paws::Backup::GetRestoreTestingSelectionOutput> instance

Returns RestoreTestingSelection, which displays resources and elements
of the restore testing plan.


=head2 GetSupportedResourceTypes

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Backup::GetSupportedResourceTypes>

Returns: a L<Paws::Backup::GetSupportedResourceTypesOutput> instance

Returns the Amazon Web Services resource types supported by Backup.


=head2 ListBackupJobs

=over

=item [ByAccountId => Str]

=item [ByBackupVaultName => Str]

=item [ByCompleteAfter => Str]

=item [ByCompleteBefore => Str]

=item [ByCreatedAfter => Str]

=item [ByCreatedBefore => Str]

=item [ByMessageCategory => Str]

=item [ByParentJobId => Str]

=item [ByResourceArn => Str]

=item [ByResourceType => Str]

=item [ByState => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListBackupJobs>

Returns: a L<Paws::Backup::ListBackupJobsOutput> instance

Returns a list of existing backup jobs for an authenticated account for
the last 30 days. For a longer period of time, consider using these
monitoring tools
(https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html).


=head2 ListBackupJobSummaries

=over

=item [AccountId => Str]

=item [AggregationPeriod => Str]

=item [MaxResults => Int]

=item [MessageCategory => Str]

=item [NextToken => Str]

=item [ResourceType => Str]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListBackupJobSummaries>

Returns: a L<Paws::Backup::ListBackupJobSummariesOutput> instance

This is a request for a summary of backup jobs created or running
within the most recent 30 days. You can include parameters AccountID,
State, ResourceType, MessageCategory, AggregationPeriod, MaxResults, or
NextToken to filter results.

This request returns a summary that contains Region, Account, State,
ResourceType, MessageCategory, StartTime, EndTime, and Count of
included jobs.


=head2 ListBackupPlans

=over

=item [IncludeDeleted => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListBackupPlans>

Returns: a L<Paws::Backup::ListBackupPlansOutput> instance

Lists the active backup plans for the account.


=head2 ListBackupPlanTemplates

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListBackupPlanTemplates>

Returns: a L<Paws::Backup::ListBackupPlanTemplatesOutput> instance

Lists the backup plan templates.


=head2 ListBackupPlanVersions

=over

=item BackupPlanId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListBackupPlanVersions>

Returns: a L<Paws::Backup::ListBackupPlanVersionsOutput> instance

Returns version metadata of your backup plans, including Amazon
Resource Names (ARNs), backup plan IDs, creation and deletion dates,
plan names, and version IDs.


=head2 ListBackupSelections

=over

=item BackupPlanId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListBackupSelections>

Returns: a L<Paws::Backup::ListBackupSelectionsOutput> instance

Returns an array containing metadata of the resources associated with
the target backup plan.


=head2 ListBackupVaults

=over

=item [ByShared => Bool]

=item [ByVaultType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListBackupVaults>

Returns: a L<Paws::Backup::ListBackupVaultsOutput> instance

Returns a list of recovery point storage containers along with
information about them.


=head2 ListCopyJobs

=over

=item [ByAccountId => Str]

=item [ByCompleteAfter => Str]

=item [ByCompleteBefore => Str]

=item [ByCreatedAfter => Str]

=item [ByCreatedBefore => Str]

=item [ByDestinationVaultArn => Str]

=item [ByMessageCategory => Str]

=item [ByParentJobId => Str]

=item [ByResourceArn => Str]

=item [ByResourceType => Str]

=item [ByState => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListCopyJobs>

Returns: a L<Paws::Backup::ListCopyJobsOutput> instance

Returns metadata about your copy jobs.


=head2 ListCopyJobSummaries

=over

=item [AccountId => Str]

=item [AggregationPeriod => Str]

=item [MaxResults => Int]

=item [MessageCategory => Str]

=item [NextToken => Str]

=item [ResourceType => Str]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListCopyJobSummaries>

Returns: a L<Paws::Backup::ListCopyJobSummariesOutput> instance

This request obtains a list of copy jobs created or running within the
the most recent 30 days. You can include parameters AccountID, State,
ResourceType, MessageCategory, AggregationPeriod, MaxResults, or
NextToken to filter results.

This request returns a summary that contains Region, Account, State,
RestourceType, MessageCategory, StartTime, EndTime, and Count of
included jobs.


=head2 ListFrameworks

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListFrameworks>

Returns: a L<Paws::Backup::ListFrameworksOutput> instance

Returns a list of all frameworks for an Amazon Web Services account and
Amazon Web Services Region.


=head2 ListIndexedRecoveryPoints

=over

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [IndexStatus => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceType => Str]

=item [SourceResourceArn => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListIndexedRecoveryPoints>

Returns: a L<Paws::Backup::ListIndexedRecoveryPointsOutput> instance

This operation returns a list of recovery points that have an
associated index, belonging to the specified account.

Optional parameters you can include are: MaxResults; NextToken;
SourceResourceArns; CreatedBefore; CreatedAfter; and ResourceType.


=head2 ListLegalHolds

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListLegalHolds>

Returns: a L<Paws::Backup::ListLegalHoldsOutput> instance

This action returns metadata about active and previous legal holds.


=head2 ListProtectedResources

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListProtectedResources>

Returns: a L<Paws::Backup::ListProtectedResourcesOutput> instance

Returns an array of resources successfully backed up by Backup,
including the time the resource was saved, an Amazon Resource Name
(ARN) of the resource, and a resource type.


=head2 ListProtectedResourcesByBackupVault

=over

=item BackupVaultName => Str

=item [BackupVaultAccountId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListProtectedResourcesByBackupVault>

Returns: a L<Paws::Backup::ListProtectedResourcesByBackupVaultOutput> instance

This request lists the protected resources corresponding to each backup
vault.


=head2 ListRecoveryPointsByBackupVault

=over

=item BackupVaultName => Str

=item [BackupVaultAccountId => Str]

=item [ByBackupPlanId => Str]

=item [ByCreatedAfter => Str]

=item [ByCreatedBefore => Str]

=item [ByParentRecoveryPointArn => Str]

=item [ByResourceArn => Str]

=item [ByResourceType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListRecoveryPointsByBackupVault>

Returns: a L<Paws::Backup::ListRecoveryPointsByBackupVaultOutput> instance

Returns detailed information about the recovery points stored in a
backup vault.


=head2 ListRecoveryPointsByLegalHold

=over

=item LegalHoldId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListRecoveryPointsByLegalHold>

Returns: a L<Paws::Backup::ListRecoveryPointsByLegalHoldOutput> instance

This action returns recovery point ARNs (Amazon Resource Names) of the
specified legal hold.


=head2 ListRecoveryPointsByResource

=over

=item ResourceArn => Str

=item [ManagedByAWSBackupOnly => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListRecoveryPointsByResource>

Returns: a L<Paws::Backup::ListRecoveryPointsByResourceOutput> instance

The information about the recovery points of the type specified by a
resource Amazon Resource Name (ARN).

For Amazon EFS and Amazon EC2, this action only lists recovery points
created by Backup.


=head2 ListReportJobs

=over

=item [ByCreationAfter => Str]

=item [ByCreationBefore => Str]

=item [ByReportPlanName => Str]

=item [ByStatus => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListReportJobs>

Returns: a L<Paws::Backup::ListReportJobsOutput> instance

Returns details about your report jobs.


=head2 ListReportPlans

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListReportPlans>

Returns: a L<Paws::Backup::ListReportPlansOutput> instance

Returns a list of your report plans. For detailed information about a
single report plan, use C<DescribeReportPlan>.


=head2 ListRestoreJobs

=over

=item [ByAccountId => Str]

=item [ByCompleteAfter => Str]

=item [ByCompleteBefore => Str]

=item [ByCreatedAfter => Str]

=item [ByCreatedBefore => Str]

=item [ByResourceType => Str]

=item [ByRestoreTestingPlanArn => Str]

=item [ByStatus => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListRestoreJobs>

Returns: a L<Paws::Backup::ListRestoreJobsOutput> instance

Returns a list of jobs that Backup initiated to restore a saved
resource, including details about the recovery process.


=head2 ListRestoreJobsByProtectedResource

=over

=item ResourceArn => Str

=item [ByRecoveryPointCreationDateAfter => Str]

=item [ByRecoveryPointCreationDateBefore => Str]

=item [ByStatus => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListRestoreJobsByProtectedResource>

Returns: a L<Paws::Backup::ListRestoreJobsByProtectedResourceOutput> instance

This returns restore jobs that contain the specified protected
resource.

You must include C<ResourceArn>. You can optionally include
C<NextToken>, C<ByStatus>, C<MaxResults>,
C<ByRecoveryPointCreationDateAfter> , and
C<ByRecoveryPointCreationDateBefore>.


=head2 ListRestoreJobSummaries

=over

=item [AccountId => Str]

=item [AggregationPeriod => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceType => Str]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListRestoreJobSummaries>

Returns: a L<Paws::Backup::ListRestoreJobSummariesOutput> instance

This request obtains a summary of restore jobs created or running
within the the most recent 30 days. You can include parameters
AccountID, State, ResourceType, AggregationPeriod, MaxResults, or
NextToken to filter results.

This request returns a summary that contains Region, Account, State,
RestourceType, MessageCategory, StartTime, EndTime, and Count of
included jobs.


=head2 ListRestoreTestingPlans

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListRestoreTestingPlans>

Returns: a L<Paws::Backup::ListRestoreTestingPlansOutput> instance

Returns a list of restore testing plans.


=head2 ListRestoreTestingSelections

=over

=item RestoreTestingPlanName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListRestoreTestingSelections>

Returns: a L<Paws::Backup::ListRestoreTestingSelectionsOutput> instance

Returns a list of restore testing selections. Can be filtered by
C<MaxResults> and C<RestoreTestingPlanName>.


=head2 ListTags

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListTags>

Returns: a L<Paws::Backup::ListTagsOutput> instance

Returns the tags assigned to the resource, such as a target recovery
point, backup plan, or backup vault.


=head2 PutBackupVaultAccessPolicy

=over

=item BackupVaultName => Str

=item [Policy => Str]


=back

Each argument is described in detail in: L<Paws::Backup::PutBackupVaultAccessPolicy>

Returns: nothing

Sets a resource-based policy that is used to manage access permissions
on the target backup vault. Requires a backup vault name and an access
policy document in JSON format.


=head2 PutBackupVaultLockConfiguration

=over

=item BackupVaultName => Str

=item [ChangeableForDays => Int]

=item [MaxRetentionDays => Int]

=item [MinRetentionDays => Int]


=back

Each argument is described in detail in: L<Paws::Backup::PutBackupVaultLockConfiguration>

Returns: nothing

Applies Backup Vault Lock to a backup vault, preventing attempts to
delete any recovery point stored in or created in a backup vault. Vault
Lock also prevents attempts to update the lifecycle policy that
controls the retention period of any recovery point currently stored in
a backup vault. If specified, Vault Lock enforces a minimum and maximum
retention period for future backup and copy jobs that target a backup
vault.

Backup Vault Lock has been assessed by Cohasset Associates for use in
environments that are subject to SEC 17a-4, CFTC, and FINRA
regulations. For more information about how Backup Vault Lock relates
to these regulations, see the Cohasset Associates Compliance
Assessment.
(https://docs.aws.amazon.com/aws-backup/latest/devguide/samples/cohassetreport.zip)

For more information, see Backup Vault Lock
(https://docs.aws.amazon.com/aws-backup/latest/devguide/vault-lock.html).


=head2 PutBackupVaultNotifications

=over

=item BackupVaultEvents => ArrayRef[Str|Undef]

=item BackupVaultName => Str

=item SNSTopicArn => Str


=back

Each argument is described in detail in: L<Paws::Backup::PutBackupVaultNotifications>

Returns: nothing

Turns on notifications on a backup vault for the specified topic and
events.


=head2 PutRestoreValidationResult

=over

=item RestoreJobId => Str

=item ValidationStatus => Str

=item [ValidationStatusMessage => Str]


=back

Each argument is described in detail in: L<Paws::Backup::PutRestoreValidationResult>

Returns: nothing

This request allows you to send your independent self-run restore test
validation results. C<RestoreJobId> and C<ValidationStatus> are
required. Optionally, you can input a C<ValidationStatusMessage>.


=head2 StartBackupJob

=over

=item BackupVaultName => Str

=item IamRoleArn => Str

=item ResourceArn => Str

=item [BackupOptions => L<Paws::Backup::BackupOptions>]

=item [CompleteWindowMinutes => Int]

=item [IdempotencyToken => Str]

=item [Index => Str]

=item [Lifecycle => L<Paws::Backup::Lifecycle>]

=item [RecoveryPointTags => L<Paws::Backup::Tags>]

=item [StartWindowMinutes => Int]


=back

Each argument is described in detail in: L<Paws::Backup::StartBackupJob>

Returns: a L<Paws::Backup::StartBackupJobOutput> instance

Starts an on-demand backup job for the specified resource.


=head2 StartCopyJob

=over

=item DestinationBackupVaultArn => Str

=item IamRoleArn => Str

=item RecoveryPointArn => Str

=item SourceBackupVaultName => Str

=item [IdempotencyToken => Str]

=item [Lifecycle => L<Paws::Backup::Lifecycle>]


=back

Each argument is described in detail in: L<Paws::Backup::StartCopyJob>

Returns: a L<Paws::Backup::StartCopyJobOutput> instance

Starts a job to create a one-time copy of the specified resource.

Does not support continuous backups.


=head2 StartReportJob

=over

=item ReportPlanName => Str

=item [IdempotencyToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::StartReportJob>

Returns: a L<Paws::Backup::StartReportJobOutput> instance

Starts an on-demand report job for the specified report plan.


=head2 StartRestoreJob

=over

=item Metadata => L<Paws::Backup::Metadata>

=item RecoveryPointArn => Str

=item [CopySourceTagsToRestoredResource => Bool]

=item [IamRoleArn => Str]

=item [IdempotencyToken => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::Backup::StartRestoreJob>

Returns: a L<Paws::Backup::StartRestoreJobOutput> instance

Recovers the saved resource identified by an Amazon Resource Name
(ARN).


=head2 StopBackupJob

=over

=item BackupJobId => Str


=back

Each argument is described in detail in: L<Paws::Backup::StopBackupJob>

Returns: nothing

Attempts to cancel a job to create a one-time backup of a resource.

This action is not supported for the following services: Amazon FSx for
Windows File Server, Amazon FSx for Lustre, Amazon FSx for NetApp
ONTAP, Amazon FSx for OpenZFS, Amazon DocumentDB (with MongoDB
compatibility), Amazon RDS, Amazon Aurora, and Amazon Neptune.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Backup::Tags>


=back

Each argument is described in detail in: L<Paws::Backup::TagResource>

Returns: nothing

Assigns a set of key-value pairs to a recovery point, backup plan, or
backup vault identified by an Amazon Resource Name (ARN).

This API is supported for recovery points for resource types including
Aurora, Amazon DocumentDB. Amazon EBS, Amazon FSx, Neptune, and Amazon
RDS.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeyList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Backup::UntagResource>

Returns: nothing

Removes a set of key-value pairs from a recovery point, backup plan, or
backup vault identified by an Amazon Resource Name (ARN)

This API is not supported for recovery points for resource types
including Aurora, Amazon DocumentDB. Amazon EBS, Amazon FSx, Neptune,
and Amazon RDS.


=head2 UpdateBackupPlan

=over

=item BackupPlan => L<Paws::Backup::BackupPlanInput>

=item BackupPlanId => Str


=back

Each argument is described in detail in: L<Paws::Backup::UpdateBackupPlan>

Returns: a L<Paws::Backup::UpdateBackupPlanOutput> instance

Updates the specified backup plan. The new version is uniquely
identified by its ID.


=head2 UpdateFramework

=over

=item FrameworkName => Str

=item [FrameworkControls => ArrayRef[L<Paws::Backup::FrameworkControl>]]

=item [FrameworkDescription => Str]

=item [IdempotencyToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::UpdateFramework>

Returns: a L<Paws::Backup::UpdateFrameworkOutput> instance

Updates the specified framework.


=head2 UpdateGlobalSettings

=over

=item [GlobalSettings => L<Paws::Backup::GlobalSettings>]


=back

Each argument is described in detail in: L<Paws::Backup::UpdateGlobalSettings>

Returns: nothing

Updates whether the Amazon Web Services account is opted in to
cross-account backup. Returns an error if the account is not an
Organizations management account. Use the C<DescribeGlobalSettings> API
to determine the current settings.


=head2 UpdateRecoveryPointIndexSettings

=over

=item BackupVaultName => Str

=item Index => Str

=item RecoveryPointArn => Str

=item [IamRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Backup::UpdateRecoveryPointIndexSettings>

Returns: a L<Paws::Backup::UpdateRecoveryPointIndexSettingsOutput> instance

This operation updates the settings of a recovery point index.

Required: BackupVaultName, RecoveryPointArn, and IAMRoleArn


=head2 UpdateRecoveryPointLifecycle

=over

=item BackupVaultName => Str

=item RecoveryPointArn => Str

=item [Lifecycle => L<Paws::Backup::Lifecycle>]


=back

Each argument is described in detail in: L<Paws::Backup::UpdateRecoveryPointLifecycle>

Returns: a L<Paws::Backup::UpdateRecoveryPointLifecycleOutput> instance

Sets the transition lifecycle of a recovery point.

The lifecycle defines when a protected resource is transitioned to cold
storage and when it expires. Backup transitions and expires backups
automatically according to the lifecycle that you define.

Resource types that can transition to cold storage are listed in the
Feature availability by resource
(https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource)
table. Backup ignores this expression for other resource types.

Backups transitioned to cold storage must be stored in cold storage for
a minimum of 90 days. Therefore, the E<ldquo>retentionE<rdquo> setting
must be 90 days greater than the E<ldquo>transition to cold after
daysE<rdquo> setting. The E<ldquo>transition to cold after daysE<rdquo>
setting cannot be changed after a backup has been transitioned to cold.

If your lifecycle currently uses the parameters C<DeleteAfterDays> and
C<MoveToColdStorageAfterDays>, include these parameters and their
values when you call this operation. Not including them may result in
your plan updating with null values.

This operation does not support continuous backups.


=head2 UpdateRegionSettings

=over

=item [ResourceTypeManagementPreference => L<Paws::Backup::ResourceTypeManagementPreference>]

=item [ResourceTypeOptInPreference => L<Paws::Backup::ResourceTypeOptInPreference>]


=back

Each argument is described in detail in: L<Paws::Backup::UpdateRegionSettings>

Returns: nothing

Updates the current service opt-in settings for the Region.

Use the C<DescribeRegionSettings> API to determine the resource types
that are supported.


=head2 UpdateReportPlan

=over

=item ReportPlanName => Str

=item [IdempotencyToken => Str]

=item [ReportDeliveryChannel => L<Paws::Backup::ReportDeliveryChannel>]

=item [ReportPlanDescription => Str]

=item [ReportSetting => L<Paws::Backup::ReportSetting>]


=back

Each argument is described in detail in: L<Paws::Backup::UpdateReportPlan>

Returns: a L<Paws::Backup::UpdateReportPlanOutput> instance

Updates the specified report plan.


=head2 UpdateRestoreTestingPlan

=over

=item RestoreTestingPlan => L<Paws::Backup::RestoreTestingPlanForUpdate>

=item RestoreTestingPlanName => Str


=back

Each argument is described in detail in: L<Paws::Backup::UpdateRestoreTestingPlan>

Returns: a L<Paws::Backup::UpdateRestoreTestingPlanOutput> instance

This request will send changes to your specified restore testing plan.
C<RestoreTestingPlanName> cannot be updated after it is created.

C<RecoveryPointSelection> can contain:

=over

=item *

C<Algorithm>

=item *

C<ExcludeVaults>

=item *

C<IncludeVaults>

=item *

C<RecoveryPointTypes>

=item *

C<SelectionWindowDays>

=back



=head2 UpdateRestoreTestingSelection

=over

=item RestoreTestingPlanName => Str

=item RestoreTestingSelection => L<Paws::Backup::RestoreTestingSelectionForUpdate>

=item RestoreTestingSelectionName => Str


=back

Each argument is described in detail in: L<Paws::Backup::UpdateRestoreTestingSelection>

Returns: a L<Paws::Backup::UpdateRestoreTestingSelectionOutput> instance

Updates the specified restore testing selection.

Most elements except the C<RestoreTestingSelectionName> can be updated
with this request.

You can use either protected resource ARNs or conditions, but not both.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllBackupJobs(sub { },[ByAccountId => Str, ByBackupVaultName => Str, ByCompleteAfter => Str, ByCompleteBefore => Str, ByCreatedAfter => Str, ByCreatedBefore => Str, ByMessageCategory => Str, ByParentJobId => Str, ByResourceArn => Str, ByResourceType => Str, ByState => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllBackupJobs([ByAccountId => Str, ByBackupVaultName => Str, ByCompleteAfter => Str, ByCompleteBefore => Str, ByCreatedAfter => Str, ByCreatedBefore => Str, ByMessageCategory => Str, ByParentJobId => Str, ByResourceArn => Str, ByResourceType => Str, ByState => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - BackupJobs, passing the object as the first parameter, and the string 'BackupJobs' as the second parameter 

If not, it will return a a L<Paws::Backup::ListBackupJobsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBackupPlans(sub { },[IncludeDeleted => Bool, MaxResults => Int, NextToken => Str])

=head2 ListAllBackupPlans([IncludeDeleted => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - BackupPlansList, passing the object as the first parameter, and the string 'BackupPlansList' as the second parameter 

If not, it will return a a L<Paws::Backup::ListBackupPlansOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBackupPlanTemplates(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllBackupPlanTemplates([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - BackupPlanTemplatesList, passing the object as the first parameter, and the string 'BackupPlanTemplatesList' as the second parameter 

If not, it will return a a L<Paws::Backup::ListBackupPlanTemplatesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBackupPlanVersions(sub { },BackupPlanId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllBackupPlanVersions(BackupPlanId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - BackupPlanVersionsList, passing the object as the first parameter, and the string 'BackupPlanVersionsList' as the second parameter 

If not, it will return a a L<Paws::Backup::ListBackupPlanVersionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBackupSelections(sub { },BackupPlanId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllBackupSelections(BackupPlanId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - BackupSelectionsList, passing the object as the first parameter, and the string 'BackupSelectionsList' as the second parameter 

If not, it will return a a L<Paws::Backup::ListBackupSelectionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBackupVaults(sub { },[ByShared => Bool, ByVaultType => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllBackupVaults([ByShared => Bool, ByVaultType => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - BackupVaultList, passing the object as the first parameter, and the string 'BackupVaultList' as the second parameter 

If not, it will return a a L<Paws::Backup::ListBackupVaultsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCopyJobs(sub { },[ByAccountId => Str, ByCompleteAfter => Str, ByCompleteBefore => Str, ByCreatedAfter => Str, ByCreatedBefore => Str, ByDestinationVaultArn => Str, ByMessageCategory => Str, ByParentJobId => Str, ByResourceArn => Str, ByResourceType => Str, ByState => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllCopyJobs([ByAccountId => Str, ByCompleteAfter => Str, ByCompleteBefore => Str, ByCreatedAfter => Str, ByCreatedBefore => Str, ByDestinationVaultArn => Str, ByMessageCategory => Str, ByParentJobId => Str, ByResourceArn => Str, ByResourceType => Str, ByState => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CopyJobs, passing the object as the first parameter, and the string 'CopyJobs' as the second parameter 

If not, it will return a a L<Paws::Backup::ListCopyJobsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIndexedRecoveryPoints(sub { },[CreatedAfter => Str, CreatedBefore => Str, IndexStatus => Str, MaxResults => Int, NextToken => Str, ResourceType => Str, SourceResourceArn => Str])

=head2 ListAllIndexedRecoveryPoints([CreatedAfter => Str, CreatedBefore => Str, IndexStatus => Str, MaxResults => Int, NextToken => Str, ResourceType => Str, SourceResourceArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IndexedRecoveryPoints, passing the object as the first parameter, and the string 'IndexedRecoveryPoints' as the second parameter 

If not, it will return a a L<Paws::Backup::ListIndexedRecoveryPointsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLegalHolds(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllLegalHolds([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LegalHolds, passing the object as the first parameter, and the string 'LegalHolds' as the second parameter 

If not, it will return a a L<Paws::Backup::ListLegalHoldsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProtectedResources(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllProtectedResources([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Results, passing the object as the first parameter, and the string 'Results' as the second parameter 

If not, it will return a a L<Paws::Backup::ListProtectedResourcesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProtectedResourcesByBackupVault(sub { },BackupVaultName => Str, [BackupVaultAccountId => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllProtectedResourcesByBackupVault(BackupVaultName => Str, [BackupVaultAccountId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Results, passing the object as the first parameter, and the string 'Results' as the second parameter 

If not, it will return a a L<Paws::Backup::ListProtectedResourcesByBackupVaultOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRecoveryPointsByBackupVault(sub { },BackupVaultName => Str, [BackupVaultAccountId => Str, ByBackupPlanId => Str, ByCreatedAfter => Str, ByCreatedBefore => Str, ByParentRecoveryPointArn => Str, ByResourceArn => Str, ByResourceType => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllRecoveryPointsByBackupVault(BackupVaultName => Str, [BackupVaultAccountId => Str, ByBackupPlanId => Str, ByCreatedAfter => Str, ByCreatedBefore => Str, ByParentRecoveryPointArn => Str, ByResourceArn => Str, ByResourceType => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RecoveryPoints, passing the object as the first parameter, and the string 'RecoveryPoints' as the second parameter 

If not, it will return a a L<Paws::Backup::ListRecoveryPointsByBackupVaultOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRecoveryPointsByLegalHold(sub { },LegalHoldId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllRecoveryPointsByLegalHold(LegalHoldId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RecoveryPoints, passing the object as the first parameter, and the string 'RecoveryPoints' as the second parameter 

If not, it will return a a L<Paws::Backup::ListRecoveryPointsByLegalHoldOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRecoveryPointsByResource(sub { },ResourceArn => Str, [ManagedByAWSBackupOnly => Bool, MaxResults => Int, NextToken => Str])

=head2 ListAllRecoveryPointsByResource(ResourceArn => Str, [ManagedByAWSBackupOnly => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RecoveryPoints, passing the object as the first parameter, and the string 'RecoveryPoints' as the second parameter 

If not, it will return a a L<Paws::Backup::ListRecoveryPointsByResourceOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRestoreJobs(sub { },[ByAccountId => Str, ByCompleteAfter => Str, ByCompleteBefore => Str, ByCreatedAfter => Str, ByCreatedBefore => Str, ByResourceType => Str, ByRestoreTestingPlanArn => Str, ByStatus => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllRestoreJobs([ByAccountId => Str, ByCompleteAfter => Str, ByCompleteBefore => Str, ByCreatedAfter => Str, ByCreatedBefore => Str, ByResourceType => Str, ByRestoreTestingPlanArn => Str, ByStatus => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RestoreJobs, passing the object as the first parameter, and the string 'RestoreJobs' as the second parameter 

If not, it will return a a L<Paws::Backup::ListRestoreJobsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRestoreJobsByProtectedResource(sub { },ResourceArn => Str, [ByRecoveryPointCreationDateAfter => Str, ByRecoveryPointCreationDateBefore => Str, ByStatus => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllRestoreJobsByProtectedResource(ResourceArn => Str, [ByRecoveryPointCreationDateAfter => Str, ByRecoveryPointCreationDateBefore => Str, ByStatus => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RestoreJobs, passing the object as the first parameter, and the string 'RestoreJobs' as the second parameter 

If not, it will return a a L<Paws::Backup::ListRestoreJobsByProtectedResourceOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRestoreTestingPlans(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllRestoreTestingPlans([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RestoreTestingPlans, passing the object as the first parameter, and the string 'RestoreTestingPlans' as the second parameter 

If not, it will return a a L<Paws::Backup::ListRestoreTestingPlansOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRestoreTestingSelections(sub { },RestoreTestingPlanName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllRestoreTestingSelections(RestoreTestingPlanName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RestoreTestingSelections, passing the object as the first parameter, and the string 'RestoreTestingSelections' as the second parameter 

If not, it will return a a L<Paws::Backup::ListRestoreTestingSelectionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

