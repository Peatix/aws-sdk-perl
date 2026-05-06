package Paws::RedshiftServerless;
  use Moose;
  sub service { 'redshift-serverless' }
  sub signing_name { 'redshift-serverless' }
  sub version { '2021-04-21' }
  sub target_prefix { 'RedshiftServerless' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub ConvertRecoveryPointToSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::ConvertRecoveryPointToSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCustomDomainAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::CreateCustomDomainAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEndpointAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::CreateEndpointAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::CreateNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::CreateReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateScheduledAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::CreateScheduledAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::CreateSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSnapshotCopyConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::CreateSnapshotCopyConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUsageLimit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::CreateUsageLimit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkgroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::CreateWorkgroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCustomDomainAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::DeleteCustomDomainAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEndpointAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::DeleteEndpointAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::DeleteNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteScheduledAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::DeleteScheduledAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::DeleteSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSnapshotCopyConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::DeleteSnapshotCopyConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUsageLimit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::DeleteUsageLimit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkgroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::DeleteWorkgroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::GetCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCustomDomainAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::GetCustomDomainAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEndpointAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::GetEndpointAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::GetNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecoveryPoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::GetRecoveryPoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::GetReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReservationOffering {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::GetReservationOffering', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::GetResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetScheduledAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::GetScheduledAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::GetSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTableRestoreStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::GetTableRestoreStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTrack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::GetTrack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUsageLimit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::GetUsageLimit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkgroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::GetWorkgroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCustomDomainAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::ListCustomDomainAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEndpointAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::ListEndpointAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListManagedWorkgroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::ListManagedWorkgroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNamespaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::ListNamespaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecoveryPoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::ListRecoveryPoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReservationOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::ListReservationOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReservations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::ListReservations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListScheduledActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::ListScheduledActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSnapshotCopyConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::ListSnapshotCopyConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::ListSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTableRestoreStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::ListTableRestoreStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTracks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::ListTracks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsageLimits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::ListUsageLimits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkgroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::ListWorkgroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreFromRecoveryPoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::RestoreFromRecoveryPoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreFromSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::RestoreFromSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreTableFromRecoveryPoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::RestoreTableFromRecoveryPoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreTableFromSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::RestoreTableFromSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCustomDomainAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::UpdateCustomDomainAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEndpointAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::UpdateEndpointAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::UpdateNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateScheduledAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::UpdateScheduledAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::UpdateSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSnapshotCopyConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::UpdateSnapshotCopyConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUsageLimit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::UpdateUsageLimit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkgroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftServerless::UpdateWorkgroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllCustomDomainAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCustomDomainAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCustomDomainAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->associations }, @{ $next_result->associations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'associations') foreach (@{ $result->associations });
        $result = $self->ListCustomDomainAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'associations') foreach (@{ $result->associations });
    }

    return undef
  }
  sub ListAllEndpointAccess {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEndpointAccess(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEndpointAccess(@_, nextToken => $next_result->nextToken);
        push @{ $result->endpoints }, @{ $next_result->endpoints };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'endpoints') foreach (@{ $result->endpoints });
        $result = $self->ListEndpointAccess(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'endpoints') foreach (@{ $result->endpoints });
    }

    return undef
  }
  sub ListAllManagedWorkgroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListManagedWorkgroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListManagedWorkgroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->managedWorkgroups }, @{ $next_result->managedWorkgroups };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'managedWorkgroups') foreach (@{ $result->managedWorkgroups });
        $result = $self->ListManagedWorkgroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'managedWorkgroups') foreach (@{ $result->managedWorkgroups });
    }

    return undef
  }
  sub ListAllNamespaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNamespaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListNamespaces(@_, nextToken => $next_result->nextToken);
        push @{ $result->namespaces }, @{ $next_result->namespaces };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'namespaces') foreach (@{ $result->namespaces });
        $result = $self->ListNamespaces(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'namespaces') foreach (@{ $result->namespaces });
    }

    return undef
  }
  sub ListAllRecoveryPoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRecoveryPoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRecoveryPoints(@_, nextToken => $next_result->nextToken);
        push @{ $result->recoveryPoints }, @{ $next_result->recoveryPoints };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'recoveryPoints') foreach (@{ $result->recoveryPoints });
        $result = $self->ListRecoveryPoints(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'recoveryPoints') foreach (@{ $result->recoveryPoints });
    }

    return undef
  }
  sub ListAllReservationOfferings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReservationOfferings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListReservationOfferings(@_, nextToken => $next_result->nextToken);
        push @{ $result->reservationOfferingsList }, @{ $next_result->reservationOfferingsList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'reservationOfferingsList') foreach (@{ $result->reservationOfferingsList });
        $result = $self->ListReservationOfferings(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'reservationOfferingsList') foreach (@{ $result->reservationOfferingsList });
    }

    return undef
  }
  sub ListAllReservations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReservations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListReservations(@_, nextToken => $next_result->nextToken);
        push @{ $result->reservationsList }, @{ $next_result->reservationsList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'reservationsList') foreach (@{ $result->reservationsList });
        $result = $self->ListReservations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'reservationsList') foreach (@{ $result->reservationsList });
    }

    return undef
  }
  sub ListAllScheduledActions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListScheduledActions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListScheduledActions(@_, nextToken => $next_result->nextToken);
        push @{ $result->scheduledActions }, @{ $next_result->scheduledActions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'scheduledActions') foreach (@{ $result->scheduledActions });
        $result = $self->ListScheduledActions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'scheduledActions') foreach (@{ $result->scheduledActions });
    }

    return undef
  }
  sub ListAllSnapshotCopyConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSnapshotCopyConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSnapshotCopyConfigurations(@_, nextToken => $next_result->nextToken);
        push @{ $result->snapshotCopyConfigurations }, @{ $next_result->snapshotCopyConfigurations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'snapshotCopyConfigurations') foreach (@{ $result->snapshotCopyConfigurations });
        $result = $self->ListSnapshotCopyConfigurations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'snapshotCopyConfigurations') foreach (@{ $result->snapshotCopyConfigurations });
    }

    return undef
  }
  sub ListAllSnapshots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSnapshots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSnapshots(@_, nextToken => $next_result->nextToken);
        push @{ $result->snapshots }, @{ $next_result->snapshots };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'snapshots') foreach (@{ $result->snapshots });
        $result = $self->ListSnapshots(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'snapshots') foreach (@{ $result->snapshots });
    }

    return undef
  }
  sub ListAllTableRestoreStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTableRestoreStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTableRestoreStatus(@_, nextToken => $next_result->nextToken);
        push @{ $result->tableRestoreStatuses }, @{ $next_result->tableRestoreStatuses };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'tableRestoreStatuses') foreach (@{ $result->tableRestoreStatuses });
        $result = $self->ListTableRestoreStatus(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'tableRestoreStatuses') foreach (@{ $result->tableRestoreStatuses });
    }

    return undef
  }
  sub ListAllTracks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTracks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTracks(@_, nextToken => $next_result->nextToken);
        push @{ $result->tracks }, @{ $next_result->tracks };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'tracks') foreach (@{ $result->tracks });
        $result = $self->ListTracks(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'tracks') foreach (@{ $result->tracks });
    }

    return undef
  }
  sub ListAllUsageLimits {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUsageLimits(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListUsageLimits(@_, nextToken => $next_result->nextToken);
        push @{ $result->usageLimits }, @{ $next_result->usageLimits };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'usageLimits') foreach (@{ $result->usageLimits });
        $result = $self->ListUsageLimits(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'usageLimits') foreach (@{ $result->usageLimits });
    }

    return undef
  }
  sub ListAllWorkgroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkgroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorkgroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->workgroups }, @{ $next_result->workgroups };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'workgroups') foreach (@{ $result->workgroups });
        $result = $self->ListWorkgroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'workgroups') foreach (@{ $result->workgroups });
    }

    return undef
  }


  sub operations { qw/ConvertRecoveryPointToSnapshot CreateCustomDomainAssociation CreateEndpointAccess CreateNamespace CreateReservation CreateScheduledAction CreateSnapshot CreateSnapshotCopyConfiguration CreateUsageLimit CreateWorkgroup DeleteCustomDomainAssociation DeleteEndpointAccess DeleteNamespace DeleteResourcePolicy DeleteScheduledAction DeleteSnapshot DeleteSnapshotCopyConfiguration DeleteUsageLimit DeleteWorkgroup GetCredentials GetCustomDomainAssociation GetEndpointAccess GetNamespace GetRecoveryPoint GetReservation GetReservationOffering GetResourcePolicy GetScheduledAction GetSnapshot GetTableRestoreStatus GetTrack GetUsageLimit GetWorkgroup ListCustomDomainAssociations ListEndpointAccess ListManagedWorkgroups ListNamespaces ListRecoveryPoints ListReservationOfferings ListReservations ListScheduledActions ListSnapshotCopyConfigurations ListSnapshots ListTableRestoreStatus ListTagsForResource ListTracks ListUsageLimits ListWorkgroups PutResourcePolicy RestoreFromRecoveryPoint RestoreFromSnapshot RestoreTableFromRecoveryPoint RestoreTableFromSnapshot TagResource UntagResource UpdateCustomDomainAssociation UpdateEndpointAccess UpdateNamespace UpdateScheduledAction UpdateSnapshot UpdateSnapshotCopyConfiguration UpdateUsageLimit UpdateWorkgroup / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless - Perl Interface to AWS Redshift Serverless

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('RedshiftServerless');
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

This is an interface reference for Amazon Redshift Serverless. It
contains documentation for one of the programming or command line
interfaces you can use to manage Amazon Redshift Serverless.

Amazon Redshift Serverless automatically provisions data warehouse
capacity and intelligently scales the underlying resources based on
workload demands. Amazon Redshift Serverless adjusts capacity in
seconds to deliver consistently high performance and simplified
operations for even the most demanding and volatile workloads. Amazon
Redshift Serverless lets you focus on using your data to acquire new
insights for your business and customers.

To learn more about Amazon Redshift Serverless, see What is Amazon
Redshift Serverless?
(https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-whatis.html).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 ConvertRecoveryPointToSnapshot

=over

=item RecoveryPointId => Str

=item SnapshotName => Str

=item [RetentionPeriod => Int]

=item [Tags => ArrayRef[L<Paws::RedshiftServerless::Tag>]]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::ConvertRecoveryPointToSnapshot>

Returns: a L<Paws::RedshiftServerless::ConvertRecoveryPointToSnapshotResponse> instance

Converts a recovery point to a snapshot. For more information about
recovery points and snapshots, see Working with snapshots and recovery
points
(https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-snapshots-recovery-points.html).


=head2 CreateCustomDomainAssociation

=over

=item CustomDomainCertificateArn => Str

=item CustomDomainName => Str

=item WorkgroupName => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::CreateCustomDomainAssociation>

Returns: a L<Paws::RedshiftServerless::CreateCustomDomainAssociationResponse> instance

Creates a custom domain association for Amazon Redshift Serverless.


=head2 CreateEndpointAccess

=over

=item EndpointName => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item WorkgroupName => Str

=item [OwnerAccount => Str]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::CreateEndpointAccess>

Returns: a L<Paws::RedshiftServerless::CreateEndpointAccessResponse> instance

Creates an Amazon Redshift Serverless managed VPC endpoint.


=head2 CreateNamespace

=over

=item NamespaceName => Str

=item [AdminPasswordSecretKmsKeyId => Str]

=item [AdminUsername => Str]

=item [AdminUserPassword => Str]

=item [DbName => Str]

=item [DefaultIamRoleArn => Str]

=item [IamRoles => ArrayRef[Str|Undef]]

=item [KmsKeyId => Str]

=item [LogExports => ArrayRef[Str|Undef]]

=item [ManageAdminPassword => Bool]

=item [RedshiftIdcApplicationArn => Str]

=item [Tags => ArrayRef[L<Paws::RedshiftServerless::Tag>]]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::CreateNamespace>

Returns: a L<Paws::RedshiftServerless::CreateNamespaceResponse> instance

Creates a namespace in Amazon Redshift Serverless.


=head2 CreateReservation

=over

=item Capacity => Int

=item OfferingId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::CreateReservation>

Returns: a L<Paws::RedshiftServerless::CreateReservationResponse> instance

Creates an Amazon Redshift Serverless reservation, which gives you the
option to commit to a specified number of Redshift Processing Units
(RPUs) for a year at a discount from Serverless on-demand (OD) rates.


=head2 CreateScheduledAction

=over

=item NamespaceName => Str

=item RoleArn => Str

=item Schedule => L<Paws::RedshiftServerless::Schedule>

=item ScheduledActionName => Str

=item TargetAction => L<Paws::RedshiftServerless::TargetAction>

=item [Enabled => Bool]

=item [EndTime => Str]

=item [ScheduledActionDescription => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::CreateScheduledAction>

Returns: a L<Paws::RedshiftServerless::CreateScheduledActionResponse> instance

Creates a scheduled action. A scheduled action contains a schedule and
an Amazon Redshift API action. For example, you can create a schedule
of when to run the C<CreateSnapshot> API operation.


=head2 CreateSnapshot

=over

=item NamespaceName => Str

=item SnapshotName => Str

=item [RetentionPeriod => Int]

=item [Tags => ArrayRef[L<Paws::RedshiftServerless::Tag>]]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::CreateSnapshot>

Returns: a L<Paws::RedshiftServerless::CreateSnapshotResponse> instance

Creates a snapshot of all databases in a namespace. For more
information about snapshots, see Working with snapshots and recovery
points
(https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-snapshots-recovery-points.html).


=head2 CreateSnapshotCopyConfiguration

=over

=item DestinationRegion => Str

=item NamespaceName => Str

=item [DestinationKmsKeyId => Str]

=item [SnapshotRetentionPeriod => Int]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::CreateSnapshotCopyConfiguration>

Returns: a L<Paws::RedshiftServerless::CreateSnapshotCopyConfigurationResponse> instance

Creates a snapshot copy configuration that lets you copy snapshots to
another Amazon Web Services Region.


=head2 CreateUsageLimit

=over

=item Amount => Int

=item ResourceArn => Str

=item UsageType => Str

=item [BreachAction => Str]

=item [Period => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::CreateUsageLimit>

Returns: a L<Paws::RedshiftServerless::CreateUsageLimitResponse> instance

Creates a usage limit for a specified Amazon Redshift Serverless usage
type. The usage limit is identified by the returned usage limit
identifier.


=head2 CreateWorkgroup

=over

=item NamespaceName => Str

=item WorkgroupName => Str

=item [BaseCapacity => Int]

=item [ConfigParameters => ArrayRef[L<Paws::RedshiftServerless::ConfigParameter>]]

=item [EnhancedVpcRouting => Bool]

=item [IpAddressType => Str]

=item [MaxCapacity => Int]

=item [Port => Int]

=item [PricePerformanceTarget => L<Paws::RedshiftServerless::PerformanceTarget>]

=item [PubliclyAccessible => Bool]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SubnetIds => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::RedshiftServerless::Tag>]]

=item [TrackName => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::CreateWorkgroup>

Returns: a L<Paws::RedshiftServerless::CreateWorkgroupResponse> instance

Creates an workgroup in Amazon Redshift Serverless.

VPC Block Public Access (BPA) enables you to block resources in VPCs
and subnets that you own in a Region from reaching or being reached
from the internet through internet gateways and egress-only internet
gateways. If a workgroup is in an account with VPC BPA turned on, the
following capabilities are blocked:

=over

=item *

Creating a public access workgroup

=item *

Modifying a private workgroup to public

=item *

Adding a subnet with VPC BPA turned on to the workgroup when the
workgroup is public

=back

For more information about VPC BPA, see Block public access to VPCs and
subnets
(https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html)
in the I<Amazon VPC User Guide>.


=head2 DeleteCustomDomainAssociation

=over

=item CustomDomainName => Str

=item WorkgroupName => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::DeleteCustomDomainAssociation>

Returns: a L<Paws::RedshiftServerless::DeleteCustomDomainAssociationResponse> instance

Deletes a custom domain association for Amazon Redshift Serverless.


=head2 DeleteEndpointAccess

=over

=item EndpointName => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::DeleteEndpointAccess>

Returns: a L<Paws::RedshiftServerless::DeleteEndpointAccessResponse> instance

Deletes an Amazon Redshift Serverless managed VPC endpoint.


=head2 DeleteNamespace

=over

=item NamespaceName => Str

=item [FinalSnapshotName => Str]

=item [FinalSnapshotRetentionPeriod => Int]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::DeleteNamespace>

Returns: a L<Paws::RedshiftServerless::DeleteNamespaceResponse> instance

Deletes a namespace from Amazon Redshift Serverless. Before you delete
the namespace, you can create a final snapshot that has all of the data
within the namespace.


=head2 DeleteResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::DeleteResourcePolicy>

Returns: a L<Paws::RedshiftServerless::DeleteResourcePolicyResponse> instance

Deletes the specified resource policy.


=head2 DeleteScheduledAction

=over

=item ScheduledActionName => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::DeleteScheduledAction>

Returns: a L<Paws::RedshiftServerless::DeleteScheduledActionResponse> instance

Deletes a scheduled action.


=head2 DeleteSnapshot

=over

=item SnapshotName => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::DeleteSnapshot>

Returns: a L<Paws::RedshiftServerless::DeleteSnapshotResponse> instance

Deletes a snapshot from Amazon Redshift Serverless.


=head2 DeleteSnapshotCopyConfiguration

=over

=item SnapshotCopyConfigurationId => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::DeleteSnapshotCopyConfiguration>

Returns: a L<Paws::RedshiftServerless::DeleteSnapshotCopyConfigurationResponse> instance

Deletes a snapshot copy configuration


=head2 DeleteUsageLimit

=over

=item UsageLimitId => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::DeleteUsageLimit>

Returns: a L<Paws::RedshiftServerless::DeleteUsageLimitResponse> instance

Deletes a usage limit from Amazon Redshift Serverless.


=head2 DeleteWorkgroup

=over

=item WorkgroupName => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::DeleteWorkgroup>

Returns: a L<Paws::RedshiftServerless::DeleteWorkgroupResponse> instance

Deletes a workgroup.


=head2 GetCredentials

=over

=item [CustomDomainName => Str]

=item [DbName => Str]

=item [DurationSeconds => Int]

=item [WorkgroupName => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::GetCredentials>

Returns: a L<Paws::RedshiftServerless::GetCredentialsResponse> instance

Returns a database user name and temporary password with temporary
authorization to log in to Amazon Redshift Serverless.

By default, the temporary credentials expire in 900 seconds. You can
optionally specify a duration between 900 seconds (15 minutes) and 3600
seconds (60 minutes).

The Identity and Access Management (IAM) user or role that runs
GetCredentials must have an IAM policy attached that allows access to
all necessary actions and resources.

If the C<DbName> parameter is specified, the IAM policy must allow
access to the resource dbname for the specified database name.


=head2 GetCustomDomainAssociation

=over

=item CustomDomainName => Str

=item WorkgroupName => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::GetCustomDomainAssociation>

Returns: a L<Paws::RedshiftServerless::GetCustomDomainAssociationResponse> instance

Gets information about a specific custom domain association.


=head2 GetEndpointAccess

=over

=item EndpointName => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::GetEndpointAccess>

Returns: a L<Paws::RedshiftServerless::GetEndpointAccessResponse> instance

Returns information, such as the name, about a VPC endpoint.


=head2 GetNamespace

=over

=item NamespaceName => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::GetNamespace>

Returns: a L<Paws::RedshiftServerless::GetNamespaceResponse> instance

Returns information about a namespace in Amazon Redshift Serverless.


=head2 GetRecoveryPoint

=over

=item RecoveryPointId => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::GetRecoveryPoint>

Returns: a L<Paws::RedshiftServerless::GetRecoveryPointResponse> instance

Returns information about a recovery point.


=head2 GetReservation

=over

=item ReservationId => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::GetReservation>

Returns: a L<Paws::RedshiftServerless::GetReservationResponse> instance

Gets an Amazon Redshift Serverless reservation. A reservation gives you
the option to commit to a specified number of Redshift Processing Units
(RPUs) for a year at a discount from Serverless on-demand (OD) rates.


=head2 GetReservationOffering

=over

=item OfferingId => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::GetReservationOffering>

Returns: a L<Paws::RedshiftServerless::GetReservationOfferingResponse> instance

Returns the reservation offering. The offering determines the payment
schedule for the reservation.


=head2 GetResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::GetResourcePolicy>

Returns: a L<Paws::RedshiftServerless::GetResourcePolicyResponse> instance

Returns a resource policy.


=head2 GetScheduledAction

=over

=item ScheduledActionName => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::GetScheduledAction>

Returns: a L<Paws::RedshiftServerless::GetScheduledActionResponse> instance

Returns information about a scheduled action.


=head2 GetSnapshot

=over

=item [OwnerAccount => Str]

=item [SnapshotArn => Str]

=item [SnapshotName => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::GetSnapshot>

Returns: a L<Paws::RedshiftServerless::GetSnapshotResponse> instance

Returns information about a specific snapshot.


=head2 GetTableRestoreStatus

=over

=item TableRestoreRequestId => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::GetTableRestoreStatus>

Returns: a L<Paws::RedshiftServerless::GetTableRestoreStatusResponse> instance

Returns information about a C<TableRestoreStatus> object.


=head2 GetTrack

=over

=item TrackName => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::GetTrack>

Returns: a L<Paws::RedshiftServerless::GetTrackResponse> instance

Get the Redshift Serverless version for a specified track.


=head2 GetUsageLimit

=over

=item UsageLimitId => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::GetUsageLimit>

Returns: a L<Paws::RedshiftServerless::GetUsageLimitResponse> instance

Returns information about a usage limit.


=head2 GetWorkgroup

=over

=item WorkgroupName => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::GetWorkgroup>

Returns: a L<Paws::RedshiftServerless::GetWorkgroupResponse> instance

Returns information about a specific workgroup.


=head2 ListCustomDomainAssociations

=over

=item [CustomDomainCertificateArn => Str]

=item [CustomDomainName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::ListCustomDomainAssociations>

Returns: a L<Paws::RedshiftServerless::ListCustomDomainAssociationsResponse> instance

Lists custom domain associations for Amazon Redshift Serverless.


=head2 ListEndpointAccess

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OwnerAccount => Str]

=item [VpcId => Str]

=item [WorkgroupName => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::ListEndpointAccess>

Returns: a L<Paws::RedshiftServerless::ListEndpointAccessResponse> instance

Returns an array of C<EndpointAccess> objects and relevant information.


=head2 ListManagedWorkgroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SourceArn => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::ListManagedWorkgroups>

Returns: a L<Paws::RedshiftServerless::ListManagedWorkgroupsResponse> instance

Returns information about a list of specified managed workgroups in
your account.


=head2 ListNamespaces

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::ListNamespaces>

Returns: a L<Paws::RedshiftServerless::ListNamespacesResponse> instance

Returns information about a list of specified namespaces.


=head2 ListRecoveryPoints

=over

=item [EndTime => Str]

=item [MaxResults => Int]

=item [NamespaceArn => Str]

=item [NamespaceName => Str]

=item [NextToken => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::ListRecoveryPoints>

Returns: a L<Paws::RedshiftServerless::ListRecoveryPointsResponse> instance

Returns an array of recovery points.


=head2 ListReservationOfferings

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::ListReservationOfferings>

Returns: a L<Paws::RedshiftServerless::ListReservationOfferingsResponse> instance

Returns the current reservation offerings in your account.


=head2 ListReservations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::ListReservations>

Returns: a L<Paws::RedshiftServerless::ListReservationsResponse> instance

Returns a list of Reservation objects.


=head2 ListScheduledActions

=over

=item [MaxResults => Int]

=item [NamespaceName => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::ListScheduledActions>

Returns: a L<Paws::RedshiftServerless::ListScheduledActionsResponse> instance

Returns a list of scheduled actions. You can use the flags to filter
the list of returned scheduled actions.


=head2 ListSnapshotCopyConfigurations

=over

=item [MaxResults => Int]

=item [NamespaceName => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::ListSnapshotCopyConfigurations>

Returns: a L<Paws::RedshiftServerless::ListSnapshotCopyConfigurationsResponse> instance

Returns a list of snapshot copy configurations.


=head2 ListSnapshots

=over

=item [EndTime => Str]

=item [MaxResults => Int]

=item [NamespaceArn => Str]

=item [NamespaceName => Str]

=item [NextToken => Str]

=item [OwnerAccount => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::ListSnapshots>

Returns: a L<Paws::RedshiftServerless::ListSnapshotsResponse> instance

Returns a list of snapshots.


=head2 ListTableRestoreStatus

=over

=item [MaxResults => Int]

=item [NamespaceName => Str]

=item [NextToken => Str]

=item [WorkgroupName => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::ListTableRestoreStatus>

Returns: a L<Paws::RedshiftServerless::ListTableRestoreStatusResponse> instance

Returns information about an array of C<TableRestoreStatus> objects.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::ListTagsForResource>

Returns: a L<Paws::RedshiftServerless::ListTagsForResourceResponse> instance

Lists the tags assigned to a resource.


=head2 ListTracks

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::ListTracks>

Returns: a L<Paws::RedshiftServerless::ListTracksResponse> instance

List the Amazon Redshift Serverless versions.


=head2 ListUsageLimits

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceArn => Str]

=item [UsageType => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::ListUsageLimits>

Returns: a L<Paws::RedshiftServerless::ListUsageLimitsResponse> instance

Lists all usage limits within Amazon Redshift Serverless.


=head2 ListWorkgroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OwnerAccount => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::ListWorkgroups>

Returns: a L<Paws::RedshiftServerless::ListWorkgroupsResponse> instance

Returns information about a list of specified workgroups.


=head2 PutResourcePolicy

=over

=item Policy => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::PutResourcePolicy>

Returns: a L<Paws::RedshiftServerless::PutResourcePolicyResponse> instance

Creates or updates a resource policy. Currently, you can use policies
to share snapshots across Amazon Web Services accounts.


=head2 RestoreFromRecoveryPoint

=over

=item NamespaceName => Str

=item RecoveryPointId => Str

=item WorkgroupName => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::RestoreFromRecoveryPoint>

Returns: a L<Paws::RedshiftServerless::RestoreFromRecoveryPointResponse> instance

Restore the data from a recovery point.


=head2 RestoreFromSnapshot

=over

=item NamespaceName => Str

=item WorkgroupName => Str

=item [AdminPasswordSecretKmsKeyId => Str]

=item [ManageAdminPassword => Bool]

=item [OwnerAccount => Str]

=item [SnapshotArn => Str]

=item [SnapshotName => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::RestoreFromSnapshot>

Returns: a L<Paws::RedshiftServerless::RestoreFromSnapshotResponse> instance

Restores a namespace from a snapshot.


=head2 RestoreTableFromRecoveryPoint

=over

=item NamespaceName => Str

=item NewTableName => Str

=item RecoveryPointId => Str

=item SourceDatabaseName => Str

=item SourceTableName => Str

=item WorkgroupName => Str

=item [ActivateCaseSensitiveIdentifier => Bool]

=item [SourceSchemaName => Str]

=item [TargetDatabaseName => Str]

=item [TargetSchemaName => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::RestoreTableFromRecoveryPoint>

Returns: a L<Paws::RedshiftServerless::RestoreTableFromRecoveryPointResponse> instance

Restores a table from a recovery point to your Amazon Redshift
Serverless instance. You can't use this operation to restore tables
with interleaved sort keys.


=head2 RestoreTableFromSnapshot

=over

=item NamespaceName => Str

=item NewTableName => Str

=item SnapshotName => Str

=item SourceDatabaseName => Str

=item SourceTableName => Str

=item WorkgroupName => Str

=item [ActivateCaseSensitiveIdentifier => Bool]

=item [SourceSchemaName => Str]

=item [TargetDatabaseName => Str]

=item [TargetSchemaName => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::RestoreTableFromSnapshot>

Returns: a L<Paws::RedshiftServerless::RestoreTableFromSnapshotResponse> instance

Restores a table from a snapshot to your Amazon Redshift Serverless
instance. You can't use this operation to restore tables with
interleaved sort keys
(https://docs.aws.amazon.com/redshift/latest/dg/t_Sorting_data.html#t_Sorting_data-interleaved).


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::RedshiftServerless::Tag>]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::TagResource>

Returns: a L<Paws::RedshiftServerless::TagResourceResponse> instance

Assigns one or more tags to a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::UntagResource>

Returns: a L<Paws::RedshiftServerless::UntagResourceResponse> instance

Removes a tag or set of tags from a resource.


=head2 UpdateCustomDomainAssociation

=over

=item CustomDomainCertificateArn => Str

=item CustomDomainName => Str

=item WorkgroupName => Str


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::UpdateCustomDomainAssociation>

Returns: a L<Paws::RedshiftServerless::UpdateCustomDomainAssociationResponse> instance

Updates an Amazon Redshift Serverless certificate associated with a
custom domain.


=head2 UpdateEndpointAccess

=over

=item EndpointName => Str

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::UpdateEndpointAccess>

Returns: a L<Paws::RedshiftServerless::UpdateEndpointAccessResponse> instance

Updates an Amazon Redshift Serverless managed endpoint.


=head2 UpdateNamespace

=over

=item NamespaceName => Str

=item [AdminPasswordSecretKmsKeyId => Str]

=item [AdminUsername => Str]

=item [AdminUserPassword => Str]

=item [DefaultIamRoleArn => Str]

=item [IamRoles => ArrayRef[Str|Undef]]

=item [KmsKeyId => Str]

=item [LogExports => ArrayRef[Str|Undef]]

=item [ManageAdminPassword => Bool]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::UpdateNamespace>

Returns: a L<Paws::RedshiftServerless::UpdateNamespaceResponse> instance

Updates a namespace with the specified settings. Unless required, you
can't update multiple parameters in one request. For example, you must
specify both C<adminUsername> and C<adminUserPassword> to update either
field, but you can't update both C<kmsKeyId> and C<logExports> in a
single request.


=head2 UpdateScheduledAction

=over

=item ScheduledActionName => Str

=item [Enabled => Bool]

=item [EndTime => Str]

=item [RoleArn => Str]

=item [Schedule => L<Paws::RedshiftServerless::Schedule>]

=item [ScheduledActionDescription => Str]

=item [StartTime => Str]

=item [TargetAction => L<Paws::RedshiftServerless::TargetAction>]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::UpdateScheduledAction>

Returns: a L<Paws::RedshiftServerless::UpdateScheduledActionResponse> instance

Updates a scheduled action.


=head2 UpdateSnapshot

=over

=item SnapshotName => Str

=item [RetentionPeriod => Int]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::UpdateSnapshot>

Returns: a L<Paws::RedshiftServerless::UpdateSnapshotResponse> instance

Updates a snapshot.


=head2 UpdateSnapshotCopyConfiguration

=over

=item SnapshotCopyConfigurationId => Str

=item [SnapshotRetentionPeriod => Int]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::UpdateSnapshotCopyConfiguration>

Returns: a L<Paws::RedshiftServerless::UpdateSnapshotCopyConfigurationResponse> instance

Updates a snapshot copy configuration.


=head2 UpdateUsageLimit

=over

=item UsageLimitId => Str

=item [Amount => Int]

=item [BreachAction => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::UpdateUsageLimit>

Returns: a L<Paws::RedshiftServerless::UpdateUsageLimitResponse> instance

Update a usage limit in Amazon Redshift Serverless. You can't update
the usage type or period of a usage limit.


=head2 UpdateWorkgroup

=over

=item WorkgroupName => Str

=item [BaseCapacity => Int]

=item [ConfigParameters => ArrayRef[L<Paws::RedshiftServerless::ConfigParameter>]]

=item [EnhancedVpcRouting => Bool]

=item [IpAddressType => Str]

=item [MaxCapacity => Int]

=item [Port => Int]

=item [PricePerformanceTarget => L<Paws::RedshiftServerless::PerformanceTarget>]

=item [PubliclyAccessible => Bool]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SubnetIds => ArrayRef[Str|Undef]]

=item [TrackName => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftServerless::UpdateWorkgroup>

Returns: a L<Paws::RedshiftServerless::UpdateWorkgroupResponse> instance

Updates a workgroup with the specified configuration settings. You
can't update multiple parameters in one request. For example, you can
update C<baseCapacity> or C<port> in a single request, but you can't
update both in the same request.

VPC Block Public Access (BPA) enables you to block resources in VPCs
and subnets that you own in a Region from reaching or being reached
from the internet through internet gateways and egress-only internet
gateways. If a workgroup is in an account with VPC BPA turned on, the
following capabilities are blocked:

=over

=item *

Creating a public access workgroup

=item *

Modifying a private workgroup to public

=item *

Adding a subnet with VPC BPA turned on to the workgroup when the
workgroup is public

=back

For more information about VPC BPA, see Block public access to VPCs and
subnets
(https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html)
in the I<Amazon VPC User Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllCustomDomainAssociations(sub { },[CustomDomainCertificateArn => Str, CustomDomainName => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllCustomDomainAssociations([CustomDomainCertificateArn => Str, CustomDomainName => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - associations, passing the object as the first parameter, and the string 'associations' as the second parameter 

If not, it will return a a L<Paws::RedshiftServerless::ListCustomDomainAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEndpointAccess(sub { },[MaxResults => Int, NextToken => Str, OwnerAccount => Str, VpcId => Str, WorkgroupName => Str])

=head2 ListAllEndpointAccess([MaxResults => Int, NextToken => Str, OwnerAccount => Str, VpcId => Str, WorkgroupName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - endpoints, passing the object as the first parameter, and the string 'endpoints' as the second parameter 

If not, it will return a a L<Paws::RedshiftServerless::ListEndpointAccessResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllManagedWorkgroups(sub { },[MaxResults => Int, NextToken => Str, SourceArn => Str])

=head2 ListAllManagedWorkgroups([MaxResults => Int, NextToken => Str, SourceArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - managedWorkgroups, passing the object as the first parameter, and the string 'managedWorkgroups' as the second parameter 

If not, it will return a a L<Paws::RedshiftServerless::ListManagedWorkgroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNamespaces(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllNamespaces([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - namespaces, passing the object as the first parameter, and the string 'namespaces' as the second parameter 

If not, it will return a a L<Paws::RedshiftServerless::ListNamespacesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRecoveryPoints(sub { },[EndTime => Str, MaxResults => Int, NamespaceArn => Str, NamespaceName => Str, NextToken => Str, StartTime => Str])

=head2 ListAllRecoveryPoints([EndTime => Str, MaxResults => Int, NamespaceArn => Str, NamespaceName => Str, NextToken => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - recoveryPoints, passing the object as the first parameter, and the string 'recoveryPoints' as the second parameter 

If not, it will return a a L<Paws::RedshiftServerless::ListRecoveryPointsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReservationOfferings(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllReservationOfferings([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - reservationOfferingsList, passing the object as the first parameter, and the string 'reservationOfferingsList' as the second parameter 

If not, it will return a a L<Paws::RedshiftServerless::ListReservationOfferingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReservations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllReservations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - reservationsList, passing the object as the first parameter, and the string 'reservationsList' as the second parameter 

If not, it will return a a L<Paws::RedshiftServerless::ListReservationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllScheduledActions(sub { },[MaxResults => Int, NamespaceName => Str, NextToken => Str])

=head2 ListAllScheduledActions([MaxResults => Int, NamespaceName => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - scheduledActions, passing the object as the first parameter, and the string 'scheduledActions' as the second parameter 

If not, it will return a a L<Paws::RedshiftServerless::ListScheduledActionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSnapshotCopyConfigurations(sub { },[MaxResults => Int, NamespaceName => Str, NextToken => Str])

=head2 ListAllSnapshotCopyConfigurations([MaxResults => Int, NamespaceName => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - snapshotCopyConfigurations, passing the object as the first parameter, and the string 'snapshotCopyConfigurations' as the second parameter 

If not, it will return a a L<Paws::RedshiftServerless::ListSnapshotCopyConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSnapshots(sub { },[EndTime => Str, MaxResults => Int, NamespaceArn => Str, NamespaceName => Str, NextToken => Str, OwnerAccount => Str, StartTime => Str])

=head2 ListAllSnapshots([EndTime => Str, MaxResults => Int, NamespaceArn => Str, NamespaceName => Str, NextToken => Str, OwnerAccount => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - snapshots, passing the object as the first parameter, and the string 'snapshots' as the second parameter 

If not, it will return a a L<Paws::RedshiftServerless::ListSnapshotsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTableRestoreStatus(sub { },[MaxResults => Int, NamespaceName => Str, NextToken => Str, WorkgroupName => Str])

=head2 ListAllTableRestoreStatus([MaxResults => Int, NamespaceName => Str, NextToken => Str, WorkgroupName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tableRestoreStatuses, passing the object as the first parameter, and the string 'tableRestoreStatuses' as the second parameter 

If not, it will return a a L<Paws::RedshiftServerless::ListTableRestoreStatusResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTracks(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllTracks([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tracks, passing the object as the first parameter, and the string 'tracks' as the second parameter 

If not, it will return a a L<Paws::RedshiftServerless::ListTracksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUsageLimits(sub { },[MaxResults => Int, NextToken => Str, ResourceArn => Str, UsageType => Str])

=head2 ListAllUsageLimits([MaxResults => Int, NextToken => Str, ResourceArn => Str, UsageType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - usageLimits, passing the object as the first parameter, and the string 'usageLimits' as the second parameter 

If not, it will return a a L<Paws::RedshiftServerless::ListUsageLimitsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkgroups(sub { },[MaxResults => Int, NextToken => Str, OwnerAccount => Str])

=head2 ListAllWorkgroups([MaxResults => Int, NextToken => Str, OwnerAccount => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - workgroups, passing the object as the first parameter, and the string 'workgroups' as the second parameter 

If not, it will return a a L<Paws::RedshiftServerless::ListWorkgroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

