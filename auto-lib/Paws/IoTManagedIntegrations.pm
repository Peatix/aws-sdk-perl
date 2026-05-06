package Paws::IoTManagedIntegrations;
  use Moose;
  sub service { 'api.iotmanagedintegrations' }
  sub signing_name { 'iotmanagedintegrations' }
  sub version { '2025-03-03' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateCredentialLocker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::CreateCredentialLocker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::CreateDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventLogConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::CreateEventLogConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateManagedThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::CreateManagedThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNotificationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::CreateNotificationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOtaTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::CreateOtaTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOtaTaskConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::CreateOtaTaskConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProvisioningProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::CreateProvisioningProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCredentialLocker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::DeleteCredentialLocker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::DeleteDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventLogConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::DeleteEventLogConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteManagedThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::DeleteManagedThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNotificationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::DeleteNotificationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOtaTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::DeleteOtaTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOtaTaskConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::DeleteOtaTaskConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProvisioningProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::DeleteProvisioningProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCredentialLocker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::GetCredentialLocker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCustomEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::GetCustomEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDefaultEncryptionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::GetDefaultEncryptionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::GetDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeviceDiscovery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::GetDeviceDiscovery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEventLogConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::GetEventLogConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetHubConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::GetHubConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetManagedThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::GetManagedThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetManagedThingCapabilities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::GetManagedThingCapabilities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetManagedThingConnectivityData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::GetManagedThingConnectivityData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetManagedThingMetaData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::GetManagedThingMetaData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetManagedThingState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::GetManagedThingState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNotificationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::GetNotificationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOtaTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::GetOtaTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOtaTaskConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::GetOtaTaskConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProvisioningProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::GetProvisioningProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRuntimeLogConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::GetRuntimeLogConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSchemaVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::GetSchemaVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCredentialLockers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::ListCredentialLockers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDestinations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::ListDestinations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventLogConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::ListEventLogConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListManagedThings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::ListManagedThings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListManagedThingSchemas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::ListManagedThingSchemas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNotificationConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::ListNotificationConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOtaTaskConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::ListOtaTaskConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOtaTaskExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::ListOtaTaskExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOtaTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::ListOtaTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProvisioningProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::ListProvisioningProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSchemaVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::ListSchemaVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDefaultEncryptionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::PutDefaultEncryptionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutHubConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::PutHubConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRuntimeLogConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::PutRuntimeLogConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterCustomEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::RegisterCustomEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetRuntimeLogConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::ResetRuntimeLogConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendManagedThingCommand {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::SendManagedThingCommand', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDeviceDiscovery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::StartDeviceDiscovery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::UpdateDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEventLogConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::UpdateEventLogConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateManagedThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::UpdateManagedThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNotificationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::UpdateNotificationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateOtaTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTManagedIntegrations::UpdateOtaTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllCredentialLockers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCredentialLockers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCredentialLockers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListCredentialLockers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllDestinations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDestinations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDestinations(@_, NextToken => $next_result->NextToken);
        push @{ $result->DestinationList }, @{ $next_result->DestinationList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DestinationList') foreach (@{ $result->DestinationList });
        $result = $self->ListDestinations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DestinationList') foreach (@{ $result->DestinationList });
    }

    return undef
  }
  sub ListAllEventLogConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEventLogConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEventLogConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->EventLogConfigurationList }, @{ $next_result->EventLogConfigurationList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EventLogConfigurationList') foreach (@{ $result->EventLogConfigurationList });
        $result = $self->ListEventLogConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EventLogConfigurationList') foreach (@{ $result->EventLogConfigurationList });
    }

    return undef
  }
  sub ListAllManagedThings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListManagedThings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListManagedThings(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListManagedThings(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllManagedThingSchemas {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListManagedThingSchemas(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListManagedThingSchemas(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListManagedThingSchemas(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllNotificationConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNotificationConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListNotificationConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->NotificationConfigurationList }, @{ $next_result->NotificationConfigurationList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NotificationConfigurationList') foreach (@{ $result->NotificationConfigurationList });
        $result = $self->ListNotificationConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NotificationConfigurationList') foreach (@{ $result->NotificationConfigurationList });
    }

    return undef
  }
  sub ListAllOtaTaskConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOtaTaskConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListOtaTaskConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListOtaTaskConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllOtaTaskExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOtaTaskExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListOtaTaskExecutions(@_, NextToken => $next_result->NextToken);
        push @{ $result->ExecutionSummaries }, @{ $next_result->ExecutionSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ExecutionSummaries') foreach (@{ $result->ExecutionSummaries });
        $result = $self->ListOtaTaskExecutions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ExecutionSummaries') foreach (@{ $result->ExecutionSummaries });
    }

    return undef
  }
  sub ListAllOtaTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOtaTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListOtaTasks(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tasks }, @{ $next_result->Tasks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tasks') foreach (@{ $result->Tasks });
        $result = $self->ListOtaTasks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tasks') foreach (@{ $result->Tasks });
    }

    return undef
  }
  sub ListAllProvisioningProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProvisioningProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListProvisioningProfiles(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListProvisioningProfiles(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllSchemaVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSchemaVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSchemaVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListSchemaVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }


  sub operations { qw/CreateCredentialLocker CreateDestination CreateEventLogConfiguration CreateManagedThing CreateNotificationConfiguration CreateOtaTask CreateOtaTaskConfiguration CreateProvisioningProfile DeleteCredentialLocker DeleteDestination DeleteEventLogConfiguration DeleteManagedThing DeleteNotificationConfiguration DeleteOtaTask DeleteOtaTaskConfiguration DeleteProvisioningProfile GetCredentialLocker GetCustomEndpoint GetDefaultEncryptionConfiguration GetDestination GetDeviceDiscovery GetEventLogConfiguration GetHubConfiguration GetManagedThing GetManagedThingCapabilities GetManagedThingConnectivityData GetManagedThingMetaData GetManagedThingState GetNotificationConfiguration GetOtaTask GetOtaTaskConfiguration GetProvisioningProfile GetRuntimeLogConfiguration GetSchemaVersion ListCredentialLockers ListDestinations ListEventLogConfigurations ListManagedThings ListManagedThingSchemas ListNotificationConfigurations ListOtaTaskConfigurations ListOtaTaskExecutions ListOtaTasks ListProvisioningProfiles ListSchemaVersions PutDefaultEncryptionConfiguration PutHubConfiguration PutRuntimeLogConfiguration RegisterCustomEndpoint ResetRuntimeLogConfiguration SendManagedThingCommand StartDeviceDiscovery UpdateDestination UpdateEventLogConfiguration UpdateManagedThing UpdateNotificationConfiguration UpdateOtaTask / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations - Perl Interface to AWS Managed integrations for AWS IoT Device Management

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoTManagedIntegrations');
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

Managed integrations is a feature of AWS IoT Device Management that
enables developers to quickly build innovative IoT solutions. Customers
can use managed integrations to automate device setup workflows and
support interoperability across many devices, regardless of device
vendor or connectivity protocol. This allows developers to use a single
user-interface to control, manage, and operate a range of devices.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateCredentialLocker

=over

=item [ClientToken => Str]

=item [Name => Str]

=item [Tags => L<Paws::IoTManagedIntegrations::TagsMap>]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::CreateCredentialLocker>

Returns: a L<Paws::IoTManagedIntegrations::CreateCredentialLockerResponse> instance

Create a product credential locker. This operation will trigger the
creation of all the manufacturing resources including the Wi-Fi setup
key pair and device certificate.


=head2 CreateDestination

=over

=item DeliveryDestinationArn => Str

=item DeliveryDestinationType => Str

=item Name => Str

=item RoleArn => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => L<Paws::IoTManagedIntegrations::TagsMap>]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::CreateDestination>

Returns: a L<Paws::IoTManagedIntegrations::CreateDestinationResponse> instance

Create a destination. IoT managed integrations uses the destination to
determine where to deliver notifications for a device.


=head2 CreateEventLogConfiguration

=over

=item EventLogLevel => Str

=item ResourceType => Str

=item [ClientToken => Str]

=item [ResourceId => Str]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::CreateEventLogConfiguration>

Returns: a L<Paws::IoTManagedIntegrations::CreateEventLogConfigurationResponse> instance

Set the event log configuration for the account, resource type, or
specific resource.


=head2 CreateManagedThing

=over

=item AuthenticationMaterial => Str

=item AuthenticationMaterialType => Str

=item Role => Str

=item [Brand => Str]

=item [Capabilities => Str]

=item [CapabilityReport => L<Paws::IoTManagedIntegrations::CapabilityReport>]

=item [Classification => Str]

=item [ClientToken => Str]

=item [CredentialLockerId => Str]

=item [MetaData => L<Paws::IoTManagedIntegrations::MetaData>]

=item [Model => Str]

=item [Name => Str]

=item [Owner => Str]

=item [SerialNumber => Str]

=item [Tags => L<Paws::IoTManagedIntegrations::TagsMap>]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::CreateManagedThing>

Returns: a L<Paws::IoTManagedIntegrations::CreateManagedThingResponse> instance

Creates a managed thing. A managed thing contains the device
identifier, protocol supported, and capabilities of the device in a
protocol-specific format.


=head2 CreateNotificationConfiguration

=over

=item DestinationName => Str

=item EventType => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::IoTManagedIntegrations::TagsMap>]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::CreateNotificationConfiguration>

Returns: a L<Paws::IoTManagedIntegrations::CreateNotificationConfigurationResponse> instance

Creates a notification configuration. A configuration is a connection
between an event type and a destination that you have already created.


=head2 CreateOtaTask

=over

=item OtaType => Str

=item S3Url => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [OtaMechanism => Str]

=item [OtaSchedulingConfig => L<Paws::IoTManagedIntegrations::OtaTaskSchedulingConfig>]

=item [OtaTargetQueryString => Str]

=item [OtaTaskExecutionRetryConfig => L<Paws::IoTManagedIntegrations::OtaTaskExecutionRetryConfig>]

=item [Protocol => Str]

=item [Tags => L<Paws::IoTManagedIntegrations::TagsMap>]

=item [Target => ArrayRef[Str|Undef]]

=item [TaskConfigurationId => Str]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::CreateOtaTask>

Returns: a L<Paws::IoTManagedIntegrations::CreateOtaTaskResponse> instance

Create an over-the-air (OTA) task to update a device.


=head2 CreateOtaTaskConfiguration

=over

=item [ClientToken => Str]

=item [Description => Str]

=item [Name => Str]

=item [PushConfig => L<Paws::IoTManagedIntegrations::PushConfig>]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::CreateOtaTaskConfiguration>

Returns: a L<Paws::IoTManagedIntegrations::CreateOtaTaskConfigurationResponse> instance

Create a configuraiton for the over-the-air (OTA) task.


=head2 CreateProvisioningProfile

=over

=item ProvisioningType => Str

=item [CaCertificate => Str]

=item [ClientToken => Str]

=item [Name => Str]

=item [Tags => L<Paws::IoTManagedIntegrations::TagsMap>]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::CreateProvisioningProfile>

Returns: a L<Paws::IoTManagedIntegrations::CreateProvisioningProfileResponse> instance

Create a provisioning profile for a device to execute the provisioning
flows using a provisioning template. The provisioning template is a
document that defines the set of resources and policies applied to a
device during the provisioning process.


=head2 DeleteCredentialLocker

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::DeleteCredentialLocker>

Returns: nothing

Delete a credential locker.

This operation can't be undone and any existing device won't be able to
use IoT managed integrations.


=head2 DeleteDestination

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::DeleteDestination>

Returns: nothing

Deletes a customer-managed destination specified by id.


=head2 DeleteEventLogConfiguration

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::DeleteEventLogConfiguration>

Returns: nothing

Delete an event log configuration.


=head2 DeleteManagedThing

=over

=item Identifier => Str

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::DeleteManagedThing>

Returns: nothing

Delete a managed thing. If a controller is deleted, all of the devices
connected to it will have their status changed to C<PENDING>. It is not
possible to remove a cloud device.


=head2 DeleteNotificationConfiguration

=over

=item EventType => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::DeleteNotificationConfiguration>

Returns: nothing

Deletes a notification configuration.


=head2 DeleteOtaTask

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::DeleteOtaTask>

Returns: nothing

Delete the over-the-air (OTA) task.


=head2 DeleteOtaTaskConfiguration

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::DeleteOtaTaskConfiguration>

Returns: nothing

Delete the over-the-air (OTA) task configuration.


=head2 DeleteProvisioningProfile

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::DeleteProvisioningProfile>

Returns: nothing

Delete a provisioning profile.


=head2 GetCredentialLocker

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::GetCredentialLocker>

Returns: a L<Paws::IoTManagedIntegrations::GetCredentialLockerResponse> instance

Get information on an existing credential locker


=head2 GetCustomEndpoint






Each argument is described in detail in: L<Paws::IoTManagedIntegrations::GetCustomEndpoint>

Returns: a L<Paws::IoTManagedIntegrations::GetCustomEndpointResponse> instance

Returns the IoT managed integrations custom endpoint.


=head2 GetDefaultEncryptionConfiguration






Each argument is described in detail in: L<Paws::IoTManagedIntegrations::GetDefaultEncryptionConfiguration>

Returns: a L<Paws::IoTManagedIntegrations::GetDefaultEncryptionConfigurationResponse> instance

Retrieves information about the default encryption configuration for
the Amazon Web Services account in the default or specified region. For
more information, see Key management
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html)
in the I<AWS IoT SiteWise User Guide>.


=head2 GetDestination

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::GetDestination>

Returns: a L<Paws::IoTManagedIntegrations::GetDestinationResponse> instance

Gets a destination by ID.


=head2 GetDeviceDiscovery

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::GetDeviceDiscovery>

Returns: a L<Paws::IoTManagedIntegrations::GetDeviceDiscoveryResponse> instance

Get the current state of a device discovery.


=head2 GetEventLogConfiguration

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::GetEventLogConfiguration>

Returns: a L<Paws::IoTManagedIntegrations::GetEventLogConfigurationResponse> instance

Get an event log configuration.


=head2 GetHubConfiguration






Each argument is described in detail in: L<Paws::IoTManagedIntegrations::GetHubConfiguration>

Returns: a L<Paws::IoTManagedIntegrations::GetHubConfigurationResponse> instance

Get a hub configuration.


=head2 GetManagedThing

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::GetManagedThing>

Returns: a L<Paws::IoTManagedIntegrations::GetManagedThingResponse> instance

Get the attributes and capabilities associated with a managed thing.


=head2 GetManagedThingCapabilities

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::GetManagedThingCapabilities>

Returns: a L<Paws::IoTManagedIntegrations::GetManagedThingCapabilitiesResponse> instance

Get the capabilities for a managed thing using the device ID.


=head2 GetManagedThingConnectivityData

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::GetManagedThingConnectivityData>

Returns: a L<Paws::IoTManagedIntegrations::GetManagedThingConnectivityDataResponse> instance

Get the connectivity status of a managed thing.


=head2 GetManagedThingMetaData

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::GetManagedThingMetaData>

Returns: a L<Paws::IoTManagedIntegrations::GetManagedThingMetaDataResponse> instance

Get the metadata information for a managed thing.


=head2 GetManagedThingState

=over

=item ManagedThingId => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::GetManagedThingState>

Returns: a L<Paws::IoTManagedIntegrations::GetManagedThingStateResponse> instance

Returns the managed thing state for the given device Id.


=head2 GetNotificationConfiguration

=over

=item EventType => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::GetNotificationConfiguration>

Returns: a L<Paws::IoTManagedIntegrations::GetNotificationConfigurationResponse> instance

Get a notification configuration.


=head2 GetOtaTask

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::GetOtaTask>

Returns: a L<Paws::IoTManagedIntegrations::GetOtaTaskResponse> instance

Get the over-the-air (OTA) task.


=head2 GetOtaTaskConfiguration

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::GetOtaTaskConfiguration>

Returns: a L<Paws::IoTManagedIntegrations::GetOtaTaskConfigurationResponse> instance

Get a configuraiton for the over-the-air (OTA) task.


=head2 GetProvisioningProfile

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::GetProvisioningProfile>

Returns: a L<Paws::IoTManagedIntegrations::GetProvisioningProfileResponse> instance

Get a provisioning profile by template name.


=head2 GetRuntimeLogConfiguration

=over

=item ManagedThingId => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::GetRuntimeLogConfiguration>

Returns: a L<Paws::IoTManagedIntegrations::GetRuntimeLogConfigurationResponse> instance

Get the runtime log configuration for a specific managed thing or for
all managed things as a group.


=head2 GetSchemaVersion

=over

=item SchemaVersionedId => Str

=item Type => Str

=item [Format => Str]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::GetSchemaVersion>

Returns: a L<Paws::IoTManagedIntegrations::GetSchemaVersionResponse> instance

Gets a schema version with the provided information.


=head2 ListCredentialLockers

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::ListCredentialLockers>

Returns: a L<Paws::IoTManagedIntegrations::ListCredentialLockersResponse> instance

List information on an existing credential locker.


=head2 ListDestinations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::ListDestinations>

Returns: a L<Paws::IoTManagedIntegrations::ListDestinationsResponse> instance

List all destination names under one Amazon Web Services account.


=head2 ListEventLogConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::ListEventLogConfigurations>

Returns: a L<Paws::IoTManagedIntegrations::ListEventLogConfigurationsResponse> instance

List all event log configurations for an account.


=head2 ListManagedThings

=over

=item [ConnectorPolicyIdFilter => Str]

=item [CredentialLockerFilter => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OwnerFilter => Str]

=item [ParentControllerIdentifierFilter => Str]

=item [ProvisioningStatusFilter => Str]

=item [RoleFilter => Str]

=item [SerialNumberFilter => Str]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::ListManagedThings>

Returns: a L<Paws::IoTManagedIntegrations::ListManagedThingsResponse> instance

List all of the associations and statuses for a managed thing by its
owner.


=head2 ListManagedThingSchemas

=over

=item Identifier => Str

=item [CapabilityIdFilter => Str]

=item [EndpointIdFilter => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::ListManagedThingSchemas>

Returns: a L<Paws::IoTManagedIntegrations::ListManagedThingSchemasResponse> instance

List schemas associated with a managed thing.


=head2 ListNotificationConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::ListNotificationConfigurations>

Returns: a L<Paws::IoTManagedIntegrations::ListNotificationConfigurationsResponse> instance

List all notification configurations.


=head2 ListOtaTaskConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::ListOtaTaskConfigurations>

Returns: a L<Paws::IoTManagedIntegrations::ListOtaTaskConfigurationsResponse> instance

List all of the over-the-air (OTA) task configurations.


=head2 ListOtaTaskExecutions

=over

=item Identifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::ListOtaTaskExecutions>

Returns: a L<Paws::IoTManagedIntegrations::ListOtaTaskExecutionsResponse> instance

List all of the over-the-air (OTA) task executions.


=head2 ListOtaTasks

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::ListOtaTasks>

Returns: a L<Paws::IoTManagedIntegrations::ListOtaTasksResponse> instance

List all of the over-the-air (OTA) tasks.


=head2 ListProvisioningProfiles

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::ListProvisioningProfiles>

Returns: a L<Paws::IoTManagedIntegrations::ListProvisioningProfilesResponse> instance

List the provisioning profiles within the Amazon Web Services account.


=head2 ListSchemaVersions

=over

=item Type => Str

=item [MaxResults => Int]

=item [Namespace => Str]

=item [NextToken => Str]

=item [SchemaId => Str]

=item [SemanticVersion => Str]

=item [Visibility => Str]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::ListSchemaVersions>

Returns: a L<Paws::IoTManagedIntegrations::ListSchemaVersionsResponse> instance

Lists schema versions with the provided information.


=head2 PutDefaultEncryptionConfiguration

=over

=item EncryptionType => Str

=item [KmsKeyArn => Str]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::PutDefaultEncryptionConfiguration>

Returns: a L<Paws::IoTManagedIntegrations::PutDefaultEncryptionConfigurationResponse> instance

Sets the default encryption configuration for the Amazon Web Services
account. For more information, see Key management
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html)
in the AWS IoT SiteWise User Guide.


=head2 PutHubConfiguration

=over

=item HubTokenTimerExpirySettingInSeconds => Int


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::PutHubConfiguration>

Returns: a L<Paws::IoTManagedIntegrations::PutHubConfigurationResponse> instance

Update a hub configuration.


=head2 PutRuntimeLogConfiguration

=over

=item ManagedThingId => Str

=item RuntimeLogConfigurations => L<Paws::IoTManagedIntegrations::RuntimeLogConfigurations>


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::PutRuntimeLogConfiguration>

Returns: nothing

Set the runtime log configuration for a specific managed thing or for
all managed things as a group.


=head2 RegisterCustomEndpoint






Each argument is described in detail in: L<Paws::IoTManagedIntegrations::RegisterCustomEndpoint>

Returns: a L<Paws::IoTManagedIntegrations::RegisterCustomEndpointResponse> instance

Customers can request IoT managed integrations to manage the server
trust for them or bring their own external server trusts for the custom
domain. Returns an IoT managed integrations endpoint.


=head2 ResetRuntimeLogConfiguration

=over

=item ManagedThingId => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::ResetRuntimeLogConfiguration>

Returns: nothing

Reset a runtime log configuration for a specific managed thing or for
all managed things as a group.


=head2 SendManagedThingCommand

=over

=item Endpoints => ArrayRef[L<Paws::IoTManagedIntegrations::CommandEndpoint>]

=item ManagedThingId => Str

=item [ConnectorAssociationId => Str]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::SendManagedThingCommand>

Returns: a L<Paws::IoTManagedIntegrations::SendManagedThingCommandResponse> instance

Send the command to the device represented by the managed thing.


=head2 StartDeviceDiscovery

=over

=item DiscoveryType => Str

=item [AuthenticationMaterial => Str]

=item [AuthenticationMaterialType => Str]

=item [ClientToken => Str]

=item [ConnectorAssociationIdentifier => Str]

=item [ControllerIdentifier => Str]

=item [Tags => L<Paws::IoTManagedIntegrations::TagsMap>]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::StartDeviceDiscovery>

Returns: a L<Paws::IoTManagedIntegrations::StartDeviceDiscoveryResponse> instance

During user-guided setup, this is used to start device discovery. The
authentication material (install code) is passed as a message to the
controller telling it to start the discovery.


=head2 UpdateDestination

=over

=item Name => Str

=item [DeliveryDestinationArn => Str]

=item [DeliveryDestinationType => Str]

=item [Description => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::UpdateDestination>

Returns: nothing

Update a destination specified by id.


=head2 UpdateEventLogConfiguration

=over

=item EventLogLevel => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::UpdateEventLogConfiguration>

Returns: nothing

Update an event log configuration by log configuration ID.


=head2 UpdateManagedThing

=over

=item Identifier => Str

=item [Brand => Str]

=item [Capabilities => Str]

=item [CapabilityReport => L<Paws::IoTManagedIntegrations::CapabilityReport>]

=item [Classification => Str]

=item [CredentialLockerId => Str]

=item [HubNetworkMode => Str]

=item [MetaData => L<Paws::IoTManagedIntegrations::MetaData>]

=item [Model => Str]

=item [Name => Str]

=item [Owner => Str]

=item [SerialNumber => Str]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::UpdateManagedThing>

Returns: nothing

Update the attributes and capabilities associated with a managed thing.


=head2 UpdateNotificationConfiguration

=over

=item DestinationName => Str

=item EventType => Str


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::UpdateNotificationConfiguration>

Returns: nothing

Update a notification configuration.


=head2 UpdateOtaTask

=over

=item Identifier => Str

=item [Description => Str]

=item [TaskConfigurationId => Str]


=back

Each argument is described in detail in: L<Paws::IoTManagedIntegrations::UpdateOtaTask>

Returns: nothing

Update an over-the-air (OTA) task.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllCredentialLockers(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllCredentialLockers([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::IoTManagedIntegrations::ListCredentialLockersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDestinations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDestinations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DestinationList, passing the object as the first parameter, and the string 'DestinationList' as the second parameter 

If not, it will return a a L<Paws::IoTManagedIntegrations::ListDestinationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEventLogConfigurations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllEventLogConfigurations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EventLogConfigurationList, passing the object as the first parameter, and the string 'EventLogConfigurationList' as the second parameter 

If not, it will return a a L<Paws::IoTManagedIntegrations::ListEventLogConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllManagedThings(sub { },[ConnectorPolicyIdFilter => Str, CredentialLockerFilter => Str, MaxResults => Int, NextToken => Str, OwnerFilter => Str, ParentControllerIdentifierFilter => Str, ProvisioningStatusFilter => Str, RoleFilter => Str, SerialNumberFilter => Str])

=head2 ListAllManagedThings([ConnectorPolicyIdFilter => Str, CredentialLockerFilter => Str, MaxResults => Int, NextToken => Str, OwnerFilter => Str, ParentControllerIdentifierFilter => Str, ProvisioningStatusFilter => Str, RoleFilter => Str, SerialNumberFilter => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::IoTManagedIntegrations::ListManagedThingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllManagedThingSchemas(sub { },Identifier => Str, [CapabilityIdFilter => Str, EndpointIdFilter => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllManagedThingSchemas(Identifier => Str, [CapabilityIdFilter => Str, EndpointIdFilter => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::IoTManagedIntegrations::ListManagedThingSchemasResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNotificationConfigurations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllNotificationConfigurations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NotificationConfigurationList, passing the object as the first parameter, and the string 'NotificationConfigurationList' as the second parameter 

If not, it will return a a L<Paws::IoTManagedIntegrations::ListNotificationConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOtaTaskConfigurations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllOtaTaskConfigurations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::IoTManagedIntegrations::ListOtaTaskConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOtaTaskExecutions(sub { },Identifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllOtaTaskExecutions(Identifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ExecutionSummaries, passing the object as the first parameter, and the string 'ExecutionSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTManagedIntegrations::ListOtaTaskExecutionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOtaTasks(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllOtaTasks([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tasks, passing the object as the first parameter, and the string 'Tasks' as the second parameter 

If not, it will return a a L<Paws::IoTManagedIntegrations::ListOtaTasksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProvisioningProfiles(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllProvisioningProfiles([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::IoTManagedIntegrations::ListProvisioningProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSchemaVersions(sub { },Type => Str, [MaxResults => Int, Namespace => Str, NextToken => Str, SchemaId => Str, SemanticVersion => Str, Visibility => Str])

=head2 ListAllSchemaVersions(Type => Str, [MaxResults => Int, Namespace => Str, NextToken => Str, SchemaId => Str, SemanticVersion => Str, Visibility => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::IoTManagedIntegrations::ListSchemaVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

