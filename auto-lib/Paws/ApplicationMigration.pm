package Paws::ApplicationMigration;
  use Moose;
  sub service { 'mgn' }
  sub signing_name { 'mgn' }
  sub version { '2020-02-26' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub ArchiveApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::ArchiveApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ArchiveWave {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::ArchiveWave', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::AssociateApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateSourceServers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::AssociateSourceServers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ChangeServerLifeCycleState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::ChangeServerLifeCycleState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::CreateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::CreateConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLaunchConfigurationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::CreateLaunchConfigurationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReplicationConfigurationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::CreateReplicationConfigurationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWave {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::CreateWave', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DeleteApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DeleteConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DeleteJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLaunchConfigurationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DeleteLaunchConfigurationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReplicationConfigurationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DeleteReplicationConfigurationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSourceServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DeleteSourceServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVcenterClient {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DeleteVcenterClient', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWave {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DeleteWave', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeJobLogItems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DescribeJobLogItems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DescribeJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLaunchConfigurationTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DescribeLaunchConfigurationTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationConfigurationTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DescribeReplicationConfigurationTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSourceServers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DescribeSourceServers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVcenterClients {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DescribeVcenterClients', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DisassociateApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateSourceServers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DisassociateSourceServers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisconnectFromService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DisconnectFromService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub FinalizeCutover {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::FinalizeCutover', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLaunchConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::GetLaunchConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReplicationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::GetReplicationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InitializeService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::InitializeService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::ListApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConnectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::ListConnectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExportErrors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::ListExportErrors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::ListExports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImportErrors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::ListImportErrors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::ListImports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListManagedAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::ListManagedAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSourceServerActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::ListSourceServerActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTemplateActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::ListTemplateActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWaves {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::ListWaves', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MarkAsArchived {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::MarkAsArchived', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PauseReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::PauseReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSourceServerAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::PutSourceServerAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutTemplateAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::PutTemplateAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveSourceServerAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::RemoveSourceServerAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTemplateAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::RemoveTemplateAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResumeReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::ResumeReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RetryDataReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::RetryDataReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCutover {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::StartCutover', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::StartExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartImport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::StartImport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::StartReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::StartTest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::StopReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateTargetInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::TerminateTargetInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnarchiveApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::UnarchiveApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnarchiveWave {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::UnarchiveWave', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::UpdateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::UpdateConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLaunchConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::UpdateLaunchConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLaunchConfigurationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::UpdateLaunchConfigurationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateReplicationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::UpdateReplicationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateReplicationConfigurationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::UpdateReplicationConfigurationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSourceServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::UpdateSourceServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSourceServerReplicationType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::UpdateSourceServerReplicationType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWave {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::UpdateWave', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllJobLogItems {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeJobLogItems(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeJobLogItems(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->DescribeJobLogItems(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub DescribeAllJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->DescribeJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub DescribeAllLaunchConfigurationTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLaunchConfigurationTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeLaunchConfigurationTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->DescribeLaunchConfigurationTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub DescribeAllReplicationConfigurationTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReplicationConfigurationTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeReplicationConfigurationTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->DescribeReplicationConfigurationTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub DescribeAllSourceServers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSourceServers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeSourceServers(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->DescribeSourceServers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub DescribeAllVcenterClients {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVcenterClients(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeVcenterClients(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->DescribeVcenterClients(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllApplications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListApplications(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListApplications(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllConnectors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConnectors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListConnectors(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListConnectors(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllExportErrors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExportErrors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListExportErrors(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListExportErrors(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllExports {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExports(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListExports(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListExports(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllImportErrors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListImportErrors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListImportErrors(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListImportErrors(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllImports {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListImports(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListImports(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListImports(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllManagedAccounts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListManagedAccounts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListManagedAccounts(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListManagedAccounts(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllSourceServerActions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSourceServerActions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSourceServerActions(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListSourceServerActions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllTemplateActions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTemplateActions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTemplateActions(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListTemplateActions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllWaves {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWaves(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWaves(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListWaves(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }


  sub operations { qw/ArchiveApplication ArchiveWave AssociateApplications AssociateSourceServers ChangeServerLifeCycleState CreateApplication CreateConnector CreateLaunchConfigurationTemplate CreateReplicationConfigurationTemplate CreateWave DeleteApplication DeleteConnector DeleteJob DeleteLaunchConfigurationTemplate DeleteReplicationConfigurationTemplate DeleteSourceServer DeleteVcenterClient DeleteWave DescribeJobLogItems DescribeJobs DescribeLaunchConfigurationTemplates DescribeReplicationConfigurationTemplates DescribeSourceServers DescribeVcenterClients DisassociateApplications DisassociateSourceServers DisconnectFromService FinalizeCutover GetLaunchConfiguration GetReplicationConfiguration InitializeService ListApplications ListConnectors ListExportErrors ListExports ListImportErrors ListImports ListManagedAccounts ListSourceServerActions ListTagsForResource ListTemplateActions ListWaves MarkAsArchived PauseReplication PutSourceServerAction PutTemplateAction RemoveSourceServerAction RemoveTemplateAction ResumeReplication RetryDataReplication StartCutover StartExport StartImport StartReplication StartTest StopReplication TagResource TerminateTargetInstances UnarchiveApplication UnarchiveWave UntagResource UpdateApplication UpdateConnector UpdateLaunchConfiguration UpdateLaunchConfigurationTemplate UpdateReplicationConfiguration UpdateReplicationConfigurationTemplate UpdateSourceServer UpdateSourceServerReplicationType UpdateWave / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration - Perl Interface to AWS Application Migration Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ApplicationMigration');
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

The Application Migration Service service.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26>


=head1 METHODS

=head2 ArchiveApplication

=over

=item ApplicationID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::ArchiveApplication>

Returns: a L<Paws::ApplicationMigration::Application> instance

Archive application.


=head2 ArchiveWave

=over

=item WaveID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::ArchiveWave>

Returns: a L<Paws::ApplicationMigration::Wave> instance

Archive wave.


=head2 AssociateApplications

=over

=item ApplicationIDs => ArrayRef[Str|Undef]

=item WaveID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::AssociateApplications>

Returns: a L<Paws::ApplicationMigration::AssociateApplicationsResponse> instance

Associate applications to wave.


=head2 AssociateSourceServers

=over

=item ApplicationID => Str

=item SourceServerIDs => ArrayRef[Str|Undef]

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::AssociateSourceServers>

Returns: a L<Paws::ApplicationMigration::AssociateSourceServersResponse> instance

Associate source servers to application.


=head2 ChangeServerLifeCycleState

=over

=item LifeCycle => L<Paws::ApplicationMigration::ChangeServerLifeCycleStateSourceServerLifecycle>

=item SourceServerID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::ChangeServerLifeCycleState>

Returns: a L<Paws::ApplicationMigration::SourceServer> instance

Allows the user to set the SourceServer.LifeCycle.state property for
specific Source Server IDs to one of the following: READY_FOR_TEST or
READY_FOR_CUTOVER. This command only works if the Source Server is
already launchable (dataReplicationInfo.lagDuration is not null.)


=head2 CreateApplication

=over

=item Name => Str

=item [AccountID => Str]

=item [Description => Str]

=item [Tags => L<Paws::ApplicationMigration::TagsMap>]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::CreateApplication>

Returns: a L<Paws::ApplicationMigration::Application> instance

Create application.


=head2 CreateConnector

=over

=item Name => Str

=item SsmInstanceID => Str

=item [SsmCommandConfig => L<Paws::ApplicationMigration::ConnectorSsmCommandConfig>]

=item [Tags => L<Paws::ApplicationMigration::TagsMap>]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::CreateConnector>

Returns: a L<Paws::ApplicationMigration::Connector> instance

Create Connector.


=head2 CreateLaunchConfigurationTemplate

=over

=item [AssociatePublicIpAddress => Bool]

=item [BootMode => Str]

=item [CopyPrivateIp => Bool]

=item [CopyTags => Bool]

=item [EnableMapAutoTagging => Bool]

=item [LargeVolumeConf => L<Paws::ApplicationMigration::LaunchTemplateDiskConf>]

=item [LaunchDisposition => Str]

=item [Licensing => L<Paws::ApplicationMigration::Licensing>]

=item [MapAutoTaggingMpeID => Str]

=item [PostLaunchActions => L<Paws::ApplicationMigration::PostLaunchActions>]

=item [SmallVolumeConf => L<Paws::ApplicationMigration::LaunchTemplateDiskConf>]

=item [SmallVolumeMaxSize => Int]

=item [Tags => L<Paws::ApplicationMigration::TagsMap>]

=item [TargetInstanceTypeRightSizingMethod => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::CreateLaunchConfigurationTemplate>

Returns: a L<Paws::ApplicationMigration::LaunchConfigurationTemplate> instance

Creates a new Launch Configuration Template.


=head2 CreateReplicationConfigurationTemplate

=over

=item AssociateDefaultSecurityGroup => Bool

=item BandwidthThrottling => Int

=item CreatePublicIP => Bool

=item DataPlaneRouting => Str

=item DefaultLargeStagingDiskType => Str

=item EbsEncryption => Str

=item ReplicationServerInstanceType => Str

=item ReplicationServersSecurityGroupsIDs => ArrayRef[Str|Undef]

=item StagingAreaSubnetId => Str

=item StagingAreaTags => L<Paws::ApplicationMigration::TagsMap>

=item UseDedicatedReplicationServer => Bool

=item [EbsEncryptionKeyArn => Str]

=item [Tags => L<Paws::ApplicationMigration::TagsMap>]

=item [UseFipsEndpoint => Bool]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::CreateReplicationConfigurationTemplate>

Returns: a L<Paws::ApplicationMigration::ReplicationConfigurationTemplate> instance

Creates a new ReplicationConfigurationTemplate.


=head2 CreateWave

=over

=item Name => Str

=item [AccountID => Str]

=item [Description => Str]

=item [Tags => L<Paws::ApplicationMigration::TagsMap>]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::CreateWave>

Returns: a L<Paws::ApplicationMigration::Wave> instance

Create wave.


=head2 DeleteApplication

=over

=item ApplicationID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DeleteApplication>

Returns: a L<Paws::ApplicationMigration::DeleteApplicationResponse> instance

Delete application.


=head2 DeleteConnector

=over

=item ConnectorID => Str


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DeleteConnector>

Returns: nothing

Delete Connector.


=head2 DeleteJob

=over

=item JobID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DeleteJob>

Returns: a L<Paws::ApplicationMigration::DeleteJobResponse> instance

Deletes a single Job by ID.


=head2 DeleteLaunchConfigurationTemplate

=over

=item LaunchConfigurationTemplateID => Str


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DeleteLaunchConfigurationTemplate>

Returns: a L<Paws::ApplicationMigration::DeleteLaunchConfigurationTemplateResponse> instance

Deletes a single Launch Configuration Template by ID.


=head2 DeleteReplicationConfigurationTemplate

=over

=item ReplicationConfigurationTemplateID => Str


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DeleteReplicationConfigurationTemplate>

Returns: a L<Paws::ApplicationMigration::DeleteReplicationConfigurationTemplateResponse> instance

Deletes a single Replication Configuration Template by ID


=head2 DeleteSourceServer

=over

=item SourceServerID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DeleteSourceServer>

Returns: a L<Paws::ApplicationMigration::DeleteSourceServerResponse> instance

Deletes a single source server by ID.


=head2 DeleteVcenterClient

=over

=item VcenterClientID => Str


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DeleteVcenterClient>

Returns: nothing

Deletes a given vCenter client by ID.


=head2 DeleteWave

=over

=item WaveID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DeleteWave>

Returns: a L<Paws::ApplicationMigration::DeleteWaveResponse> instance

Delete wave.


=head2 DescribeJobLogItems

=over

=item JobID => Str

=item [AccountID => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DescribeJobLogItems>

Returns: a L<Paws::ApplicationMigration::DescribeJobLogItemsResponse> instance

Retrieves detailed job log items with paging.


=head2 DescribeJobs

=over

=item [AccountID => Str]

=item [Filters => L<Paws::ApplicationMigration::DescribeJobsRequestFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DescribeJobs>

Returns: a L<Paws::ApplicationMigration::DescribeJobsResponse> instance

Returns a list of Jobs. Use the JobsID and fromDate and toData filters
to limit which jobs are returned. The response is sorted by
creationDataTime - latest date first. Jobs are normally created by the
StartTest, StartCutover, and TerminateTargetInstances APIs. Jobs are
also created by DiagnosticLaunch and TerminateDiagnosticInstances,
which are APIs available only to *Support* and only used in response to
relevant support tickets.


=head2 DescribeLaunchConfigurationTemplates

=over

=item [LaunchConfigurationTemplateIDs => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DescribeLaunchConfigurationTemplates>

Returns: a L<Paws::ApplicationMigration::DescribeLaunchConfigurationTemplatesResponse> instance

Lists all Launch Configuration Templates, filtered by Launch
Configuration Template IDs


=head2 DescribeReplicationConfigurationTemplates

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ReplicationConfigurationTemplateIDs => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DescribeReplicationConfigurationTemplates>

Returns: a L<Paws::ApplicationMigration::DescribeReplicationConfigurationTemplatesResponse> instance

Lists all ReplicationConfigurationTemplates, filtered by Source Server
IDs.


=head2 DescribeSourceServers

=over

=item [AccountID => Str]

=item [Filters => L<Paws::ApplicationMigration::DescribeSourceServersRequestFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DescribeSourceServers>

Returns: a L<Paws::ApplicationMigration::DescribeSourceServersResponse> instance

Retrieves all SourceServers or multiple SourceServers by ID.


=head2 DescribeVcenterClients

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DescribeVcenterClients>

Returns: a L<Paws::ApplicationMigration::DescribeVcenterClientsResponse> instance

Returns a list of the installed vCenter clients.


=head2 DisassociateApplications

=over

=item ApplicationIDs => ArrayRef[Str|Undef]

=item WaveID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DisassociateApplications>

Returns: a L<Paws::ApplicationMigration::DisassociateApplicationsResponse> instance

Disassociate applications from wave.


=head2 DisassociateSourceServers

=over

=item ApplicationID => Str

=item SourceServerIDs => ArrayRef[Str|Undef]

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DisassociateSourceServers>

Returns: a L<Paws::ApplicationMigration::DisassociateSourceServersResponse> instance

Disassociate source servers from application.


=head2 DisconnectFromService

=over

=item SourceServerID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DisconnectFromService>

Returns: a L<Paws::ApplicationMigration::SourceServer> instance

Disconnects specific Source Servers from Application Migration Service.
Data replication is stopped immediately. All AWS resources created by
Application Migration Service for enabling the replication of these
source servers will be terminated / deleted within 90 minutes. Launched
Test or Cutover instances will NOT be terminated. If the agent on the
source server has not been prevented from communicating with the
Application Migration Service service, then it will receive a command
to uninstall itself (within approximately 10 minutes). The following
properties of the SourceServer will be changed immediately:
dataReplicationInfo.dataReplicationState will be set to DISCONNECTED;
The totalStorageBytes property for each of
dataReplicationInfo.replicatedDisks will be set to zero;
dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration
will be nullified.


=head2 FinalizeCutover

=over

=item SourceServerID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::FinalizeCutover>

Returns: a L<Paws::ApplicationMigration::SourceServer> instance

Finalizes the cutover immediately for specific Source Servers. All AWS
resources created by Application Migration Service for enabling the
replication of these source servers will be terminated / deleted within
90 minutes. Launched Test or Cutover instances will NOT be terminated.
The AWS Replication Agent will receive a command to uninstall itself
(within 10 minutes). The following properties of the SourceServer will
be changed immediately: dataReplicationInfo.dataReplicationState will
be changed to DISCONNECTED; The SourceServer.lifeCycle.state will be
changed to CUTOVER; The totalStorageBytes property fo each of
dataReplicationInfo.replicatedDisks will be set to zero;
dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration
will be nullified.


=head2 GetLaunchConfiguration

=over

=item SourceServerID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::GetLaunchConfiguration>

Returns: a L<Paws::ApplicationMigration::LaunchConfiguration> instance

Lists all LaunchConfigurations available, filtered by Source Server
IDs.


=head2 GetReplicationConfiguration

=over

=item SourceServerID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::GetReplicationConfiguration>

Returns: a L<Paws::ApplicationMigration::ReplicationConfiguration> instance

Lists all ReplicationConfigurations, filtered by Source Server ID.


=head2 InitializeService






Each argument is described in detail in: L<Paws::ApplicationMigration::InitializeService>

Returns: a L<Paws::ApplicationMigration::InitializeServiceResponse> instance

Initialize Application Migration Service.


=head2 ListApplications

=over

=item [AccountID => Str]

=item [Filters => L<Paws::ApplicationMigration::ListApplicationsRequestFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::ListApplications>

Returns: a L<Paws::ApplicationMigration::ListApplicationsResponse> instance

Retrieves all applications or multiple applications by ID.


=head2 ListConnectors

=over

=item [Filters => L<Paws::ApplicationMigration::ListConnectorsRequestFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::ListConnectors>

Returns: a L<Paws::ApplicationMigration::ListConnectorsResponse> instance

List Connectors.


=head2 ListExportErrors

=over

=item ExportID => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::ListExportErrors>

Returns: a L<Paws::ApplicationMigration::ListExportErrorsResponse> instance

List export errors.


=head2 ListExports

=over

=item [Filters => L<Paws::ApplicationMigration::ListExportsRequestFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::ListExports>

Returns: a L<Paws::ApplicationMigration::ListExportsResponse> instance

List exports.


=head2 ListImportErrors

=over

=item ImportID => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::ListImportErrors>

Returns: a L<Paws::ApplicationMigration::ListImportErrorsResponse> instance

List import errors.


=head2 ListImports

=over

=item [Filters => L<Paws::ApplicationMigration::ListImportsRequestFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::ListImports>

Returns: a L<Paws::ApplicationMigration::ListImportsResponse> instance

List imports.


=head2 ListManagedAccounts

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::ListManagedAccounts>

Returns: a L<Paws::ApplicationMigration::ListManagedAccountsResponse> instance

List Managed Accounts.


=head2 ListSourceServerActions

=over

=item SourceServerID => Str

=item [AccountID => Str]

=item [Filters => L<Paws::ApplicationMigration::SourceServerActionsRequestFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::ListSourceServerActions>

Returns: a L<Paws::ApplicationMigration::ListSourceServerActionsResponse> instance

List source server post migration custom actions.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::ListTagsForResource>

Returns: a L<Paws::ApplicationMigration::ListTagsForResourceResponse> instance

List all tags for your Application Migration Service resources.


=head2 ListTemplateActions

=over

=item LaunchConfigurationTemplateID => Str

=item [Filters => L<Paws::ApplicationMigration::TemplateActionsRequestFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::ListTemplateActions>

Returns: a L<Paws::ApplicationMigration::ListTemplateActionsResponse> instance

List template post migration custom actions.


=head2 ListWaves

=over

=item [AccountID => Str]

=item [Filters => L<Paws::ApplicationMigration::ListWavesRequestFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::ListWaves>

Returns: a L<Paws::ApplicationMigration::ListWavesResponse> instance

Retrieves all waves or multiple waves by ID.


=head2 MarkAsArchived

=over

=item SourceServerID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::MarkAsArchived>

Returns: a L<Paws::ApplicationMigration::SourceServer> instance

Archives specific Source Servers by setting the SourceServer.isArchived
property to true for specified SourceServers by ID. This command only
works for SourceServers with a lifecycle. state which equals
DISCONNECTED or CUTOVER.


=head2 PauseReplication

=over

=item SourceServerID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::PauseReplication>

Returns: a L<Paws::ApplicationMigration::SourceServer> instance

Pause Replication.


=head2 PutSourceServerAction

=over

=item ActionID => Str

=item ActionName => Str

=item DocumentIdentifier => Str

=item Order => Int

=item SourceServerID => Str

=item [AccountID => Str]

=item [Active => Bool]

=item [Category => Str]

=item [Description => Str]

=item [DocumentVersion => Str]

=item [ExternalParameters => L<Paws::ApplicationMigration::SsmDocumentExternalParameters>]

=item [MustSucceedForCutover => Bool]

=item [Parameters => L<Paws::ApplicationMigration::SsmDocumentParameters>]

=item [TimeoutSeconds => Int]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::PutSourceServerAction>

Returns: a L<Paws::ApplicationMigration::SourceServerActionDocument> instance

Put source server post migration custom action.


=head2 PutTemplateAction

=over

=item ActionID => Str

=item ActionName => Str

=item DocumentIdentifier => Str

=item LaunchConfigurationTemplateID => Str

=item Order => Int

=item [Active => Bool]

=item [Category => Str]

=item [Description => Str]

=item [DocumentVersion => Str]

=item [ExternalParameters => L<Paws::ApplicationMigration::SsmDocumentExternalParameters>]

=item [MustSucceedForCutover => Bool]

=item [OperatingSystem => Str]

=item [Parameters => L<Paws::ApplicationMigration::SsmDocumentParameters>]

=item [TimeoutSeconds => Int]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::PutTemplateAction>

Returns: a L<Paws::ApplicationMigration::TemplateActionDocument> instance

Put template post migration custom action.


=head2 RemoveSourceServerAction

=over

=item ActionID => Str

=item SourceServerID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::RemoveSourceServerAction>

Returns: a L<Paws::ApplicationMigration::RemoveSourceServerActionResponse> instance

Remove source server post migration custom action.


=head2 RemoveTemplateAction

=over

=item ActionID => Str

=item LaunchConfigurationTemplateID => Str


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::RemoveTemplateAction>

Returns: a L<Paws::ApplicationMigration::RemoveTemplateActionResponse> instance

Remove template post migration custom action.


=head2 ResumeReplication

=over

=item SourceServerID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::ResumeReplication>

Returns: a L<Paws::ApplicationMigration::SourceServer> instance

Resume Replication.


=head2 RetryDataReplication

=over

=item SourceServerID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::RetryDataReplication>

Returns: a L<Paws::ApplicationMigration::SourceServer> instance

Causes the data replication initiation sequence to begin immediately
upon next Handshake for specified SourceServer IDs, regardless of when
the previous initiation started. This command will not work if the
SourceServer is not stalled or is in a DISCONNECTED or STOPPED state.


=head2 StartCutover

=over

=item SourceServerIDs => ArrayRef[Str|Undef]

=item [AccountID => Str]

=item [Tags => L<Paws::ApplicationMigration::TagsMap>]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::StartCutover>

Returns: a L<Paws::ApplicationMigration::StartCutoverResponse> instance

Launches a Cutover Instance for specific Source Servers. This command
starts a LAUNCH job whose initiatedBy property is StartCutover and
changes the SourceServer.lifeCycle.state property to CUTTING_OVER.


=head2 StartExport

=over

=item S3Bucket => Str

=item S3Key => Str

=item [S3BucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::StartExport>

Returns: a L<Paws::ApplicationMigration::StartExportResponse> instance

Start export.


=head2 StartImport

=over

=item S3BucketSource => L<Paws::ApplicationMigration::S3BucketSource>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::StartImport>

Returns: a L<Paws::ApplicationMigration::StartImportResponse> instance

Start import.


=head2 StartReplication

=over

=item SourceServerID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::StartReplication>

Returns: a L<Paws::ApplicationMigration::SourceServer> instance

Starts replication for SNAPSHOT_SHIPPING agents.


=head2 StartTest

=over

=item SourceServerIDs => ArrayRef[Str|Undef]

=item [AccountID => Str]

=item [Tags => L<Paws::ApplicationMigration::TagsMap>]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::StartTest>

Returns: a L<Paws::ApplicationMigration::StartTestResponse> instance

Launches a Test Instance for specific Source Servers. This command
starts a LAUNCH job whose initiatedBy property is StartTest and changes
the SourceServer.lifeCycle.state property to TESTING.


=head2 StopReplication

=over

=item SourceServerID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::StopReplication>

Returns: a L<Paws::ApplicationMigration::SourceServer> instance

Stop Replication.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::ApplicationMigration::TagsMap>


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::TagResource>

Returns: nothing

Adds or overwrites only the specified tags for the specified
Application Migration Service resource or resources. When you specify
an existing tag key, the value is overwritten with the new value. Each
resource can have a maximum of 50 tags. Each tag consists of a key and
optional value.


=head2 TerminateTargetInstances

=over

=item SourceServerIDs => ArrayRef[Str|Undef]

=item [AccountID => Str]

=item [Tags => L<Paws::ApplicationMigration::TagsMap>]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::TerminateTargetInstances>

Returns: a L<Paws::ApplicationMigration::TerminateTargetInstancesResponse> instance

Starts a job that terminates specific launched EC2 Test and Cutover
instances. This command will not work for any Source Server with a
lifecycle.state of TESTING, CUTTING_OVER, or CUTOVER.


=head2 UnarchiveApplication

=over

=item ApplicationID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::UnarchiveApplication>

Returns: a L<Paws::ApplicationMigration::Application> instance

Unarchive application.


=head2 UnarchiveWave

=over

=item WaveID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::UnarchiveWave>

Returns: a L<Paws::ApplicationMigration::Wave> instance

Unarchive wave.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::UntagResource>

Returns: nothing

Deletes the specified set of tags from the specified set of Application
Migration Service resources.


=head2 UpdateApplication

=over

=item ApplicationID => Str

=item [AccountID => Str]

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::UpdateApplication>

Returns: a L<Paws::ApplicationMigration::Application> instance

Update application.


=head2 UpdateConnector

=over

=item ConnectorID => Str

=item [Name => Str]

=item [SsmCommandConfig => L<Paws::ApplicationMigration::ConnectorSsmCommandConfig>]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::UpdateConnector>

Returns: a L<Paws::ApplicationMigration::Connector> instance

Update Connector.


=head2 UpdateLaunchConfiguration

=over

=item SourceServerID => Str

=item [AccountID => Str]

=item [BootMode => Str]

=item [CopyPrivateIp => Bool]

=item [CopyTags => Bool]

=item [EnableMapAutoTagging => Bool]

=item [LaunchDisposition => Str]

=item [Licensing => L<Paws::ApplicationMigration::Licensing>]

=item [MapAutoTaggingMpeID => Str]

=item [Name => Str]

=item [PostLaunchActions => L<Paws::ApplicationMigration::PostLaunchActions>]

=item [TargetInstanceTypeRightSizingMethod => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::UpdateLaunchConfiguration>

Returns: a L<Paws::ApplicationMigration::LaunchConfiguration> instance

Updates multiple LaunchConfigurations by Source Server ID.

bootMode valid values are C<LEGACY_BIOS | UEFI>


=head2 UpdateLaunchConfigurationTemplate

=over

=item LaunchConfigurationTemplateID => Str

=item [AssociatePublicIpAddress => Bool]

=item [BootMode => Str]

=item [CopyPrivateIp => Bool]

=item [CopyTags => Bool]

=item [EnableMapAutoTagging => Bool]

=item [LargeVolumeConf => L<Paws::ApplicationMigration::LaunchTemplateDiskConf>]

=item [LaunchDisposition => Str]

=item [Licensing => L<Paws::ApplicationMigration::Licensing>]

=item [MapAutoTaggingMpeID => Str]

=item [PostLaunchActions => L<Paws::ApplicationMigration::PostLaunchActions>]

=item [SmallVolumeConf => L<Paws::ApplicationMigration::LaunchTemplateDiskConf>]

=item [SmallVolumeMaxSize => Int]

=item [TargetInstanceTypeRightSizingMethod => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::UpdateLaunchConfigurationTemplate>

Returns: a L<Paws::ApplicationMigration::LaunchConfigurationTemplate> instance

Updates an existing Launch Configuration Template by ID.


=head2 UpdateReplicationConfiguration

=over

=item SourceServerID => Str

=item [AccountID => Str]

=item [AssociateDefaultSecurityGroup => Bool]

=item [BandwidthThrottling => Int]

=item [CreatePublicIP => Bool]

=item [DataPlaneRouting => Str]

=item [DefaultLargeStagingDiskType => Str]

=item [EbsEncryption => Str]

=item [EbsEncryptionKeyArn => Str]

=item [Name => Str]

=item [ReplicatedDisks => ArrayRef[L<Paws::ApplicationMigration::ReplicationConfigurationReplicatedDisk>]]

=item [ReplicationServerInstanceType => Str]

=item [ReplicationServersSecurityGroupsIDs => ArrayRef[Str|Undef]]

=item [StagingAreaSubnetId => Str]

=item [StagingAreaTags => L<Paws::ApplicationMigration::TagsMap>]

=item [UseDedicatedReplicationServer => Bool]

=item [UseFipsEndpoint => Bool]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::UpdateReplicationConfiguration>

Returns: a L<Paws::ApplicationMigration::ReplicationConfiguration> instance

Allows you to update multiple ReplicationConfigurations by Source
Server ID.


=head2 UpdateReplicationConfigurationTemplate

=over

=item ReplicationConfigurationTemplateID => Str

=item [Arn => Str]

=item [AssociateDefaultSecurityGroup => Bool]

=item [BandwidthThrottling => Int]

=item [CreatePublicIP => Bool]

=item [DataPlaneRouting => Str]

=item [DefaultLargeStagingDiskType => Str]

=item [EbsEncryption => Str]

=item [EbsEncryptionKeyArn => Str]

=item [ReplicationServerInstanceType => Str]

=item [ReplicationServersSecurityGroupsIDs => ArrayRef[Str|Undef]]

=item [StagingAreaSubnetId => Str]

=item [StagingAreaTags => L<Paws::ApplicationMigration::TagsMap>]

=item [UseDedicatedReplicationServer => Bool]

=item [UseFipsEndpoint => Bool]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::UpdateReplicationConfigurationTemplate>

Returns: a L<Paws::ApplicationMigration::ReplicationConfigurationTemplate> instance

Updates multiple ReplicationConfigurationTemplates by ID.


=head2 UpdateSourceServer

=over

=item SourceServerID => Str

=item [AccountID => Str]

=item [ConnectorAction => L<Paws::ApplicationMigration::SourceServerConnectorAction>]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::UpdateSourceServer>

Returns: a L<Paws::ApplicationMigration::SourceServer> instance

Update Source Server.


=head2 UpdateSourceServerReplicationType

=over

=item ReplicationType => Str

=item SourceServerID => Str

=item [AccountID => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::UpdateSourceServerReplicationType>

Returns: a L<Paws::ApplicationMigration::SourceServer> instance

Allows you to change between the AGENT_BASED replication type and the
SNAPSHOT_SHIPPING replication type.


=head2 UpdateWave

=over

=item WaveID => Str

=item [AccountID => Str]

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::UpdateWave>

Returns: a L<Paws::ApplicationMigration::Wave> instance

Update wave.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllJobLogItems(sub { },JobID => Str, [AccountID => Str, MaxResults => Int, NextToken => Str])

=head2 DescribeAllJobLogItems(JobID => Str, [AccountID => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApplicationMigration::DescribeJobLogItemsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllJobs(sub { },[AccountID => Str, Filters => L<Paws::ApplicationMigration::DescribeJobsRequestFilters>, MaxResults => Int, NextToken => Str])

=head2 DescribeAllJobs([AccountID => Str, Filters => L<Paws::ApplicationMigration::DescribeJobsRequestFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApplicationMigration::DescribeJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLaunchConfigurationTemplates(sub { },[LaunchConfigurationTemplateIDs => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllLaunchConfigurationTemplates([LaunchConfigurationTemplateIDs => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApplicationMigration::DescribeLaunchConfigurationTemplatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReplicationConfigurationTemplates(sub { },[MaxResults => Int, NextToken => Str, ReplicationConfigurationTemplateIDs => ArrayRef[Str|Undef]])

=head2 DescribeAllReplicationConfigurationTemplates([MaxResults => Int, NextToken => Str, ReplicationConfigurationTemplateIDs => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApplicationMigration::DescribeReplicationConfigurationTemplatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSourceServers(sub { },[AccountID => Str, Filters => L<Paws::ApplicationMigration::DescribeSourceServersRequestFilters>, MaxResults => Int, NextToken => Str])

=head2 DescribeAllSourceServers([AccountID => Str, Filters => L<Paws::ApplicationMigration::DescribeSourceServersRequestFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApplicationMigration::DescribeSourceServersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVcenterClients(sub { },[MaxResults => Int, NextToken => Str])

=head2 DescribeAllVcenterClients([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApplicationMigration::DescribeVcenterClientsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApplications(sub { },[AccountID => Str, Filters => L<Paws::ApplicationMigration::ListApplicationsRequestFilters>, MaxResults => Int, NextToken => Str])

=head2 ListAllApplications([AccountID => Str, Filters => L<Paws::ApplicationMigration::ListApplicationsRequestFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApplicationMigration::ListApplicationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConnectors(sub { },[Filters => L<Paws::ApplicationMigration::ListConnectorsRequestFilters>, MaxResults => Int, NextToken => Str])

=head2 ListAllConnectors([Filters => L<Paws::ApplicationMigration::ListConnectorsRequestFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApplicationMigration::ListConnectorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllExportErrors(sub { },ExportID => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllExportErrors(ExportID => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApplicationMigration::ListExportErrorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllExports(sub { },[Filters => L<Paws::ApplicationMigration::ListExportsRequestFilters>, MaxResults => Int, NextToken => Str])

=head2 ListAllExports([Filters => L<Paws::ApplicationMigration::ListExportsRequestFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApplicationMigration::ListExportsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllImportErrors(sub { },ImportID => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllImportErrors(ImportID => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApplicationMigration::ListImportErrorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllImports(sub { },[Filters => L<Paws::ApplicationMigration::ListImportsRequestFilters>, MaxResults => Int, NextToken => Str])

=head2 ListAllImports([Filters => L<Paws::ApplicationMigration::ListImportsRequestFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApplicationMigration::ListImportsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllManagedAccounts(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllManagedAccounts([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApplicationMigration::ListManagedAccountsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSourceServerActions(sub { },SourceServerID => Str, [AccountID => Str, Filters => L<Paws::ApplicationMigration::SourceServerActionsRequestFilters>, MaxResults => Int, NextToken => Str])

=head2 ListAllSourceServerActions(SourceServerID => Str, [AccountID => Str, Filters => L<Paws::ApplicationMigration::SourceServerActionsRequestFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApplicationMigration::ListSourceServerActionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTemplateActions(sub { },LaunchConfigurationTemplateID => Str, [Filters => L<Paws::ApplicationMigration::TemplateActionsRequestFilters>, MaxResults => Int, NextToken => Str])

=head2 ListAllTemplateActions(LaunchConfigurationTemplateID => Str, [Filters => L<Paws::ApplicationMigration::TemplateActionsRequestFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApplicationMigration::ListTemplateActionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWaves(sub { },[AccountID => Str, Filters => L<Paws::ApplicationMigration::ListWavesRequestFilters>, MaxResults => Int, NextToken => Str])

=head2 ListAllWaves([AccountID => Str, Filters => L<Paws::ApplicationMigration::ListWavesRequestFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApplicationMigration::ListWavesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

