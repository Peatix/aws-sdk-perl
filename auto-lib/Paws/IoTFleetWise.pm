package Paws::IoTFleetWise;
  use Moose;
  sub service { 'iotfleetwise' }
  sub signing_name { 'iotfleetwise' }
  sub version { '2021-06-17' }
  sub target_prefix { 'IoTAutobahnControlPlane' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateVehicleFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::AssociateVehicleFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchCreateVehicle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::BatchCreateVehicle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdateVehicle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::BatchUpdateVehicle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::CreateCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDecoderManifest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::CreateDecoderManifest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::CreateFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModelManifest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::CreateModelManifest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSignalCatalog {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::CreateSignalCatalog', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStateTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::CreateStateTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVehicle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::CreateVehicle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::DeleteCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDecoderManifest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::DeleteDecoderManifest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::DeleteFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModelManifest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::DeleteModelManifest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSignalCatalog {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::DeleteSignalCatalog', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStateTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::DeleteStateTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVehicle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::DeleteVehicle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateVehicleFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::DisassociateVehicleFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::GetCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDecoderManifest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::GetDecoderManifest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEncryptionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::GetEncryptionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::GetFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLoggingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::GetLoggingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetModelManifest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::GetModelManifest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRegisterAccountStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::GetRegisterAccountStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSignalCatalog {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::GetSignalCatalog', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStateTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::GetStateTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVehicle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::GetVehicle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVehicleStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::GetVehicleStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportDecoderManifest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::ImportDecoderManifest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportSignalCatalog {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::ImportSignalCatalog', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCampaigns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::ListCampaigns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDecoderManifestNetworkInterfaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::ListDecoderManifestNetworkInterfaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDecoderManifests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::ListDecoderManifests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDecoderManifestSignals {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::ListDecoderManifestSignals', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFleets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::ListFleets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFleetsForVehicle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::ListFleetsForVehicle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModelManifestNodes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::ListModelManifestNodes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModelManifests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::ListModelManifests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSignalCatalogNodes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::ListSignalCatalogNodes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSignalCatalogs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::ListSignalCatalogs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStateTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::ListStateTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVehicles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::ListVehicles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVehiclesInFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::ListVehiclesInFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEncryptionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::PutEncryptionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutLoggingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::PutLoggingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::RegisterAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::UpdateCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDecoderManifest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::UpdateDecoderManifest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::UpdateFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateModelManifest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::UpdateModelManifest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSignalCatalog {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::UpdateSignalCatalog', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStateTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::UpdateStateTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVehicle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetWise::UpdateVehicle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllVehicleStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetVehicleStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetVehicleStatus(@_, nextToken => $next_result->nextToken);
        push @{ $result->campaigns }, @{ $next_result->campaigns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'campaigns') foreach (@{ $result->campaigns });
        $result = $self->GetVehicleStatus(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'campaigns') foreach (@{ $result->campaigns });
    }

    return undef
  }
  sub ListAllCampaigns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCampaigns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCampaigns(@_, nextToken => $next_result->nextToken);
        push @{ $result->campaignSummaries }, @{ $next_result->campaignSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'campaignSummaries') foreach (@{ $result->campaignSummaries });
        $result = $self->ListCampaigns(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'campaignSummaries') foreach (@{ $result->campaignSummaries });
    }

    return undef
  }
  sub ListAllDecoderManifestNetworkInterfaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDecoderManifestNetworkInterfaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDecoderManifestNetworkInterfaces(@_, nextToken => $next_result->nextToken);
        push @{ $result->networkInterfaces }, @{ $next_result->networkInterfaces };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'networkInterfaces') foreach (@{ $result->networkInterfaces });
        $result = $self->ListDecoderManifestNetworkInterfaces(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'networkInterfaces') foreach (@{ $result->networkInterfaces });
    }

    return undef
  }
  sub ListAllDecoderManifests {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDecoderManifests(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDecoderManifests(@_, nextToken => $next_result->nextToken);
        push @{ $result->summaries }, @{ $next_result->summaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'summaries') foreach (@{ $result->summaries });
        $result = $self->ListDecoderManifests(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'summaries') foreach (@{ $result->summaries });
    }

    return undef
  }
  sub ListAllDecoderManifestSignals {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDecoderManifestSignals(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDecoderManifestSignals(@_, nextToken => $next_result->nextToken);
        push @{ $result->signalDecoders }, @{ $next_result->signalDecoders };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'signalDecoders') foreach (@{ $result->signalDecoders });
        $result = $self->ListDecoderManifestSignals(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'signalDecoders') foreach (@{ $result->signalDecoders });
    }

    return undef
  }
  sub ListAllFleets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFleets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFleets(@_, nextToken => $next_result->nextToken);
        push @{ $result->fleetSummaries }, @{ $next_result->fleetSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'fleetSummaries') foreach (@{ $result->fleetSummaries });
        $result = $self->ListFleets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'fleetSummaries') foreach (@{ $result->fleetSummaries });
    }

    return undef
  }
  sub ListAllFleetsForVehicle {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFleetsForVehicle(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFleetsForVehicle(@_, nextToken => $next_result->nextToken);
        push @{ $result->fleets }, @{ $next_result->fleets };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'fleets') foreach (@{ $result->fleets });
        $result = $self->ListFleetsForVehicle(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'fleets') foreach (@{ $result->fleets });
    }

    return undef
  }
  sub ListAllModelManifestNodes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModelManifestNodes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListModelManifestNodes(@_, nextToken => $next_result->nextToken);
        push @{ $result->nodes }, @{ $next_result->nodes };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'nodes') foreach (@{ $result->nodes });
        $result = $self->ListModelManifestNodes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'nodes') foreach (@{ $result->nodes });
    }

    return undef
  }
  sub ListAllModelManifests {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModelManifests(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListModelManifests(@_, nextToken => $next_result->nextToken);
        push @{ $result->summaries }, @{ $next_result->summaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'summaries') foreach (@{ $result->summaries });
        $result = $self->ListModelManifests(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'summaries') foreach (@{ $result->summaries });
    }

    return undef
  }
  sub ListAllSignalCatalogNodes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSignalCatalogNodes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSignalCatalogNodes(@_, nextToken => $next_result->nextToken);
        push @{ $result->nodes }, @{ $next_result->nodes };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'nodes') foreach (@{ $result->nodes });
        $result = $self->ListSignalCatalogNodes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'nodes') foreach (@{ $result->nodes });
    }

    return undef
  }
  sub ListAllSignalCatalogs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSignalCatalogs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSignalCatalogs(@_, nextToken => $next_result->nextToken);
        push @{ $result->summaries }, @{ $next_result->summaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'summaries') foreach (@{ $result->summaries });
        $result = $self->ListSignalCatalogs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'summaries') foreach (@{ $result->summaries });
    }

    return undef
  }
  sub ListAllStateTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStateTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListStateTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->summaries }, @{ $next_result->summaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'summaries') foreach (@{ $result->summaries });
        $result = $self->ListStateTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'summaries') foreach (@{ $result->summaries });
    }

    return undef
  }
  sub ListAllVehicles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListVehicles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListVehicles(@_, nextToken => $next_result->nextToken);
        push @{ $result->vehicleSummaries }, @{ $next_result->vehicleSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'vehicleSummaries') foreach (@{ $result->vehicleSummaries });
        $result = $self->ListVehicles(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'vehicleSummaries') foreach (@{ $result->vehicleSummaries });
    }

    return undef
  }
  sub ListAllVehiclesInFleet {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListVehiclesInFleet(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListVehiclesInFleet(@_, nextToken => $next_result->nextToken);
        push @{ $result->vehicles }, @{ $next_result->vehicles };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'vehicles') foreach (@{ $result->vehicles });
        $result = $self->ListVehiclesInFleet(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'vehicles') foreach (@{ $result->vehicles });
    }

    return undef
  }


  sub operations { qw/AssociateVehicleFleet BatchCreateVehicle BatchUpdateVehicle CreateCampaign CreateDecoderManifest CreateFleet CreateModelManifest CreateSignalCatalog CreateStateTemplate CreateVehicle DeleteCampaign DeleteDecoderManifest DeleteFleet DeleteModelManifest DeleteSignalCatalog DeleteStateTemplate DeleteVehicle DisassociateVehicleFleet GetCampaign GetDecoderManifest GetEncryptionConfiguration GetFleet GetLoggingOptions GetModelManifest GetRegisterAccountStatus GetSignalCatalog GetStateTemplate GetVehicle GetVehicleStatus ImportDecoderManifest ImportSignalCatalog ListCampaigns ListDecoderManifestNetworkInterfaces ListDecoderManifests ListDecoderManifestSignals ListFleets ListFleetsForVehicle ListModelManifestNodes ListModelManifests ListSignalCatalogNodes ListSignalCatalogs ListStateTemplates ListTagsForResource ListVehicles ListVehiclesInFleet PutEncryptionConfiguration PutLoggingOptions RegisterAccount TagResource UntagResource UpdateCampaign UpdateDecoderManifest UpdateFleet UpdateModelManifest UpdateSignalCatalog UpdateStateTemplate UpdateVehicle / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise - Perl Interface to AWS AWS IoT FleetWise

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoTFleetWise');
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

Amazon Web Services IoT FleetWise is a fully managed service that you
can use to collect, model, and transfer vehicle data to the Amazon Web
Services cloud at scale. With Amazon Web Services IoT FleetWise, you
can standardize all of your vehicle data models, independent of the
in-vehicle communication architecture, and define data collection rules
to transfer only high-value data to the cloud.

For more information, see What is Amazon Web Services IoT FleetWise?
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/) in
the I<Amazon Web Services IoT FleetWise Developer Guide>.

Access to certain Amazon Web Services IoT FleetWise features is
currently gated. For more information, see Amazon Web Services Region
and feature availability
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html)
in the I<Amazon Web Services IoT FleetWise Developer Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise-2021-06-17>


=head1 METHODS

=head2 AssociateVehicleFleet

=over

=item FleetId => Str

=item VehicleName => Str


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::AssociateVehicleFleet>

Returns: a L<Paws::IoTFleetWise::AssociateVehicleFleetResponse> instance

Adds, or associates, a vehicle with a fleet.


=head2 BatchCreateVehicle

=over

=item Vehicles => ArrayRef[L<Paws::IoTFleetWise::CreateVehicleRequestItem>]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::BatchCreateVehicle>

Returns: a L<Paws::IoTFleetWise::BatchCreateVehicleResponse> instance

Creates a group, or batch, of vehicles.

You must specify a decoder manifest and a vehicle model (model
manifest) for each vehicle.

For more information, see Create multiple vehicles (AWS CLI)
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/create-vehicles-cli.html)
in the I<Amazon Web Services IoT FleetWise Developer Guide>.


=head2 BatchUpdateVehicle

=over

=item Vehicles => ArrayRef[L<Paws::IoTFleetWise::UpdateVehicleRequestItem>]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::BatchUpdateVehicle>

Returns: a L<Paws::IoTFleetWise::BatchUpdateVehicleResponse> instance

Updates a group, or batch, of vehicles.

You must specify a decoder manifest and a vehicle model (model
manifest) for each vehicle.

For more information, see Update multiple vehicles (AWS CLI)
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/update-vehicles-cli.html)
in the I<Amazon Web Services IoT FleetWise Developer Guide>.


=head2 CreateCampaign

=over

=item CollectionScheme => L<Paws::IoTFleetWise::CollectionScheme>

=item Name => Str

=item SignalCatalogArn => Str

=item TargetArn => Str

=item [Compression => Str]

=item [DataDestinationConfigs => ArrayRef[L<Paws::IoTFleetWise::DataDestinationConfig>]]

=item [DataExtraDimensions => ArrayRef[Str|Undef]]

=item [DataPartitions => ArrayRef[L<Paws::IoTFleetWise::DataPartition>]]

=item [Description => Str]

=item [DiagnosticsMode => Str]

=item [ExpiryTime => Str]

=item [PostTriggerCollectionDuration => Int]

=item [Priority => Int]

=item [SignalsToCollect => ArrayRef[L<Paws::IoTFleetWise::SignalInformation>]]

=item [SignalsToFetch => ArrayRef[L<Paws::IoTFleetWise::SignalFetchInformation>]]

=item [SpoolingMode => Str]

=item [StartTime => Str]

=item [Tags => ArrayRef[L<Paws::IoTFleetWise::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::CreateCampaign>

Returns: a L<Paws::IoTFleetWise::CreateCampaignResponse> instance

Creates an orchestration of data collection rules. The Amazon Web
Services IoT FleetWise Edge Agent software running in vehicles uses
campaigns to decide how to collect and transfer data to the cloud. You
create campaigns in the cloud. After you or your team approve
campaigns, Amazon Web Services IoT FleetWise automatically deploys them
to vehicles.

For more information, see Collect and transfer data with campaigns
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/campaigns.html)
in the I<Amazon Web Services IoT FleetWise Developer Guide>.

Access to certain Amazon Web Services IoT FleetWise features is
currently gated. For more information, see Amazon Web Services Region
and feature availability
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html)
in the I<Amazon Web Services IoT FleetWise Developer Guide>.


=head2 CreateDecoderManifest

=over

=item ModelManifestArn => Str

=item Name => Str

=item [DefaultForUnmappedSignals => Str]

=item [Description => Str]

=item [NetworkInterfaces => ArrayRef[L<Paws::IoTFleetWise::NetworkInterface>]]

=item [SignalDecoders => ArrayRef[L<Paws::IoTFleetWise::SignalDecoder>]]

=item [Tags => ArrayRef[L<Paws::IoTFleetWise::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::CreateDecoderManifest>

Returns: a L<Paws::IoTFleetWise::CreateDecoderManifestResponse> instance

Creates the decoder manifest associated with a model manifest. To
create a decoder manifest, the following must be true:

=over

=item *

Every signal decoder has a unique name.

=item *

Each signal decoder is associated with a network interface.

=item *

Each network interface has a unique ID.

=item *

The signal decoders are specified in the model manifest.

=back



=head2 CreateFleet

=over

=item FleetId => Str

=item SignalCatalogArn => Str

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::IoTFleetWise::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::CreateFleet>

Returns: a L<Paws::IoTFleetWise::CreateFleetResponse> instance

Creates a fleet that represents a group of vehicles.

You must create both a signal catalog and vehicles before you can
create a fleet.

For more information, see Fleets
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleets.html)
in the I<Amazon Web Services IoT FleetWise Developer Guide>.


=head2 CreateModelManifest

=over

=item Name => Str

=item Nodes => ArrayRef[Str|Undef]

=item SignalCatalogArn => Str

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::IoTFleetWise::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::CreateModelManifest>

Returns: a L<Paws::IoTFleetWise::CreateModelManifestResponse> instance

Creates a vehicle model (model manifest) that specifies signals
(attributes, branches, sensors, and actuators).

For more information, see Vehicle models
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/vehicle-models.html)
in the I<Amazon Web Services IoT FleetWise Developer Guide>.


=head2 CreateSignalCatalog

=over

=item Name => Str

=item [Description => Str]

=item [Nodes => ArrayRef[L<Paws::IoTFleetWise::Node>]]

=item [Tags => ArrayRef[L<Paws::IoTFleetWise::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::CreateSignalCatalog>

Returns: a L<Paws::IoTFleetWise::CreateSignalCatalogResponse> instance

Creates a collection of standardized signals that can be reused to
create vehicle models.


=head2 CreateStateTemplate

=over

=item Name => Str

=item SignalCatalogArn => Str

=item StateTemplateProperties => ArrayRef[Str|Undef]

=item [DataExtraDimensions => ArrayRef[Str|Undef]]

=item [Description => Str]

=item [MetadataExtraDimensions => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::IoTFleetWise::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::CreateStateTemplate>

Returns: a L<Paws::IoTFleetWise::CreateStateTemplateResponse> instance

Creates a state template. State templates contain state properties,
which are signals that belong to a signal catalog that is synchronized
between the Amazon Web Services IoT FleetWise Edge and the Amazon Web
Services Cloud.

Access to certain Amazon Web Services IoT FleetWise features is
currently gated. For more information, see Amazon Web Services Region
and feature availability
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html)
in the I<Amazon Web Services IoT FleetWise Developer Guide>.


=head2 CreateVehicle

=over

=item DecoderManifestArn => Str

=item ModelManifestArn => Str

=item VehicleName => Str

=item [AssociationBehavior => Str]

=item [Attributes => L<Paws::IoTFleetWise::AttributesMap>]

=item [StateTemplates => ArrayRef[L<Paws::IoTFleetWise::StateTemplateAssociation>]]

=item [Tags => ArrayRef[L<Paws::IoTFleetWise::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::CreateVehicle>

Returns: a L<Paws::IoTFleetWise::CreateVehicleResponse> instance

Creates a vehicle, which is an instance of a vehicle model (model
manifest). Vehicles created from the same vehicle model consist of the
same signals inherited from the vehicle model.

If you have an existing Amazon Web Services IoT thing, you can use
Amazon Web Services IoT FleetWise to create a vehicle and collect data
from your thing.

For more information, see Create a vehicle (AWS CLI)
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/create-vehicle-cli.html)
in the I<Amazon Web Services IoT FleetWise Developer Guide>.


=head2 DeleteCampaign

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::DeleteCampaign>

Returns: a L<Paws::IoTFleetWise::DeleteCampaignResponse> instance

Deletes a data collection campaign. Deleting a campaign suspends all
data collection and removes it from any vehicles.


=head2 DeleteDecoderManifest

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::DeleteDecoderManifest>

Returns: a L<Paws::IoTFleetWise::DeleteDecoderManifestResponse> instance

Deletes a decoder manifest. You can't delete a decoder manifest if it
has vehicles associated with it.


=head2 DeleteFleet

=over

=item FleetId => Str


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::DeleteFleet>

Returns: a L<Paws::IoTFleetWise::DeleteFleetResponse> instance

Deletes a fleet. Before you delete a fleet, all vehicles must be
dissociated from the fleet. For more information, see Delete a fleet
(AWS CLI)
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/delete-fleet-cli.html)
in the I<Amazon Web Services IoT FleetWise Developer Guide>.


=head2 DeleteModelManifest

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::DeleteModelManifest>

Returns: a L<Paws::IoTFleetWise::DeleteModelManifestResponse> instance

Deletes a vehicle model (model manifest).


=head2 DeleteSignalCatalog

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::DeleteSignalCatalog>

Returns: a L<Paws::IoTFleetWise::DeleteSignalCatalogResponse> instance

Deletes a signal catalog.


=head2 DeleteStateTemplate

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::DeleteStateTemplate>

Returns: a L<Paws::IoTFleetWise::DeleteStateTemplateResponse> instance

Deletes a state template.


=head2 DeleteVehicle

=over

=item VehicleName => Str


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::DeleteVehicle>

Returns: a L<Paws::IoTFleetWise::DeleteVehicleResponse> instance

Deletes a vehicle and removes it from any campaigns.


=head2 DisassociateVehicleFleet

=over

=item FleetId => Str

=item VehicleName => Str


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::DisassociateVehicleFleet>

Returns: a L<Paws::IoTFleetWise::DisassociateVehicleFleetResponse> instance

Removes, or disassociates, a vehicle from a fleet. Disassociating a
vehicle from a fleet doesn't delete the vehicle.


=head2 GetCampaign

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::GetCampaign>

Returns: a L<Paws::IoTFleetWise::GetCampaignResponse> instance

Retrieves information about a campaign.

Access to certain Amazon Web Services IoT FleetWise features is
currently gated. For more information, see Amazon Web Services Region
and feature availability
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html)
in the I<Amazon Web Services IoT FleetWise Developer Guide>.


=head2 GetDecoderManifest

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::GetDecoderManifest>

Returns: a L<Paws::IoTFleetWise::GetDecoderManifestResponse> instance

Retrieves information about a created decoder manifest.


=head2 GetEncryptionConfiguration






Each argument is described in detail in: L<Paws::IoTFleetWise::GetEncryptionConfiguration>

Returns: a L<Paws::IoTFleetWise::GetEncryptionConfigurationResponse> instance

Retrieves the encryption configuration for resources and data in Amazon
Web Services IoT FleetWise.


=head2 GetFleet

=over

=item FleetId => Str


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::GetFleet>

Returns: a L<Paws::IoTFleetWise::GetFleetResponse> instance

Retrieves information about a fleet.


=head2 GetLoggingOptions






Each argument is described in detail in: L<Paws::IoTFleetWise::GetLoggingOptions>

Returns: a L<Paws::IoTFleetWise::GetLoggingOptionsResponse> instance

Retrieves the logging options.


=head2 GetModelManifest

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::GetModelManifest>

Returns: a L<Paws::IoTFleetWise::GetModelManifestResponse> instance

Retrieves information about a vehicle model (model manifest).


=head2 GetRegisterAccountStatus






Each argument is described in detail in: L<Paws::IoTFleetWise::GetRegisterAccountStatus>

Returns: a L<Paws::IoTFleetWise::GetRegisterAccountStatusResponse> instance

Retrieves information about the status of registering your Amazon Web
Services account, IAM, and Amazon Timestream resources so that Amazon
Web Services IoT FleetWise can transfer your vehicle data to the Amazon
Web Services Cloud.

For more information, including step-by-step procedures, see Setting up
Amazon Web Services IoT FleetWise
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/setting-up.html).

This API operation doesn't require input parameters.


=head2 GetSignalCatalog

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::GetSignalCatalog>

Returns: a L<Paws::IoTFleetWise::GetSignalCatalogResponse> instance

Retrieves information about a signal catalog.


=head2 GetStateTemplate

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::GetStateTemplate>

Returns: a L<Paws::IoTFleetWise::GetStateTemplateResponse> instance

Retrieves information about a state template.

Access to certain Amazon Web Services IoT FleetWise features is
currently gated. For more information, see Amazon Web Services Region
and feature availability
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html)
in the I<Amazon Web Services IoT FleetWise Developer Guide>.


=head2 GetVehicle

=over

=item VehicleName => Str


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::GetVehicle>

Returns: a L<Paws::IoTFleetWise::GetVehicleResponse> instance

Retrieves information about a vehicle.


=head2 GetVehicleStatus

=over

=item VehicleName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::GetVehicleStatus>

Returns: a L<Paws::IoTFleetWise::GetVehicleStatusResponse> instance

Retrieves information about the status of campaigns, decoder manifests,
or state templates associated with a vehicle.


=head2 ImportDecoderManifest

=over

=item Name => Str

=item NetworkFileDefinitions => ArrayRef[L<Paws::IoTFleetWise::NetworkFileDefinition>]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::ImportDecoderManifest>

Returns: a L<Paws::IoTFleetWise::ImportDecoderManifestResponse> instance

Creates a decoder manifest using your existing CAN DBC file from your
local device.

The CAN signal name must be unique and not repeated across CAN message
definitions in a .dbc file.


=head2 ImportSignalCatalog

=over

=item Name => Str

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::IoTFleetWise::Tag>]]

=item [Vss => L<Paws::IoTFleetWise::FormattedVss>]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::ImportSignalCatalog>

Returns: a L<Paws::IoTFleetWise::ImportSignalCatalogResponse> instance

Creates a signal catalog using your existing VSS formatted content from
your local device.


=head2 ListCampaigns

=over

=item [ListResponseScope => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::ListCampaigns>

Returns: a L<Paws::IoTFleetWise::ListCampaignsResponse> instance

Lists information about created campaigns.

This API operation uses pagination. Specify the C<nextToken> parameter
in the request to return more results.


=head2 ListDecoderManifestNetworkInterfaces

=over

=item Name => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::ListDecoderManifestNetworkInterfaces>

Returns: a L<Paws::IoTFleetWise::ListDecoderManifestNetworkInterfacesResponse> instance

Lists the network interfaces specified in a decoder manifest.

This API operation uses pagination. Specify the C<nextToken> parameter
in the request to return more results.


=head2 ListDecoderManifests

=over

=item [ListResponseScope => Str]

=item [MaxResults => Int]

=item [ModelManifestArn => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::ListDecoderManifests>

Returns: a L<Paws::IoTFleetWise::ListDecoderManifestsResponse> instance

Lists decoder manifests.

This API operation uses pagination. Specify the C<nextToken> parameter
in the request to return more results.


=head2 ListDecoderManifestSignals

=over

=item Name => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::ListDecoderManifestSignals>

Returns: a L<Paws::IoTFleetWise::ListDecoderManifestSignalsResponse> instance

A list of information about signal decoders specified in a decoder
manifest.

This API operation uses pagination. Specify the C<nextToken> parameter
in the request to return more results.


=head2 ListFleets

=over

=item [ListResponseScope => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::ListFleets>

Returns: a L<Paws::IoTFleetWise::ListFleetsResponse> instance

Retrieves information for each created fleet in an Amazon Web Services
account.

This API operation uses pagination. Specify the C<nextToken> parameter
in the request to return more results.


=head2 ListFleetsForVehicle

=over

=item VehicleName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::ListFleetsForVehicle>

Returns: a L<Paws::IoTFleetWise::ListFleetsForVehicleResponse> instance

Retrieves a list of IDs for all fleets that the vehicle is associated
with.

This API operation uses pagination. Specify the C<nextToken> parameter
in the request to return more results.


=head2 ListModelManifestNodes

=over

=item Name => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::ListModelManifestNodes>

Returns: a L<Paws::IoTFleetWise::ListModelManifestNodesResponse> instance

Lists information about nodes specified in a vehicle model (model
manifest).

This API operation uses pagination. Specify the C<nextToken> parameter
in the request to return more results.


=head2 ListModelManifests

=over

=item [ListResponseScope => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SignalCatalogArn => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::ListModelManifests>

Returns: a L<Paws::IoTFleetWise::ListModelManifestsResponse> instance

Retrieves a list of vehicle models (model manifests).

This API operation uses pagination. Specify the C<nextToken> parameter
in the request to return more results.


=head2 ListSignalCatalogNodes

=over

=item Name => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SignalNodeType => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::ListSignalCatalogNodes>

Returns: a L<Paws::IoTFleetWise::ListSignalCatalogNodesResponse> instance

Lists of information about the signals (nodes) specified in a signal
catalog.

This API operation uses pagination. Specify the C<nextToken> parameter
in the request to return more results.


=head2 ListSignalCatalogs

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::ListSignalCatalogs>

Returns: a L<Paws::IoTFleetWise::ListSignalCatalogsResponse> instance

Lists all the created signal catalogs in an Amazon Web Services
account.

You can use to list information about each signal (node) specified in a
signal catalog.

This API operation uses pagination. Specify the C<nextToken> parameter
in the request to return more results.


=head2 ListStateTemplates

=over

=item [ListResponseScope => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::ListStateTemplates>

Returns: a L<Paws::IoTFleetWise::ListStateTemplatesResponse> instance

Lists information about created state templates.

Access to certain Amazon Web Services IoT FleetWise features is
currently gated. For more information, see Amazon Web Services Region
and feature availability
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html)
in the I<Amazon Web Services IoT FleetWise Developer Guide>.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::ListTagsForResource>

Returns: a L<Paws::IoTFleetWise::ListTagsForResourceResponse> instance

Lists the tags (metadata) you have assigned to the resource.


=head2 ListVehicles

=over

=item [AttributeNames => ArrayRef[Str|Undef]]

=item [AttributeValues => ArrayRef[Str|Undef]]

=item [ListResponseScope => Str]

=item [MaxResults => Int]

=item [ModelManifestArn => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::ListVehicles>

Returns: a L<Paws::IoTFleetWise::ListVehiclesResponse> instance

Retrieves a list of summaries of created vehicles.

This API operation uses pagination. Specify the C<nextToken> parameter
in the request to return more results.


=head2 ListVehiclesInFleet

=over

=item FleetId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::ListVehiclesInFleet>

Returns: a L<Paws::IoTFleetWise::ListVehiclesInFleetResponse> instance

Retrieves a list of summaries of all vehicles associated with a fleet.

This API operation uses pagination. Specify the C<nextToken> parameter
in the request to return more results.


=head2 PutEncryptionConfiguration

=over

=item EncryptionType => Str

=item [KmsKeyId => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::PutEncryptionConfiguration>

Returns: a L<Paws::IoTFleetWise::PutEncryptionConfigurationResponse> instance

Creates or updates the encryption configuration. Amazon Web Services
IoT FleetWise can encrypt your data and resources using an Amazon Web
Services managed key. Or, you can use a KMS key that you own and
manage. For more information, see Data encryption
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/data-encryption.html)
in the I<Amazon Web Services IoT FleetWise Developer Guide>.


=head2 PutLoggingOptions

=over

=item CloudWatchLogDelivery => L<Paws::IoTFleetWise::CloudWatchLogDeliveryOptions>


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::PutLoggingOptions>

Returns: a L<Paws::IoTFleetWise::PutLoggingOptionsResponse> instance

Creates or updates the logging option.


=head2 RegisterAccount

=over

=item [IamResources => L<Paws::IoTFleetWise::IamResources>]

=item [TimestreamResources => L<Paws::IoTFleetWise::TimestreamResources>]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::RegisterAccount>

Returns: a L<Paws::IoTFleetWise::RegisterAccountResponse> instance

This API operation contains deprecated parameters. Register your
account again without the Timestream resources parameter so that Amazon
Web Services IoT FleetWise can remove the Timestream metadata stored.
You should then pass the data destination into the CreateCampaign
(https://docs.aws.amazon.com/iot-fleetwise/latest/APIReference/API_CreateCampaign.html)
API operation.

You must delete any existing campaigns that include an empty data
destination before you register your account again. For more
information, see the DeleteCampaign
(https://docs.aws.amazon.com/iot-fleetwise/latest/APIReference/API_DeleteCampaign.html)
API operation.

If you want to delete the Timestream inline policy from the
service-linked role, such as to mitigate an overly permissive policy,
you must first delete any existing campaigns. Then delete the
service-linked role and register your account again to enable
CloudWatch metrics. For more information, see DeleteServiceLinkedRole
(https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteServiceLinkedRole.html)
in the I<Identity and Access Management API Reference>.

Registers your Amazon Web Services account, IAM, and Amazon Timestream
resources so Amazon Web Services IoT FleetWise can transfer your
vehicle data to the Amazon Web Services Cloud. For more information,
including step-by-step procedures, see Setting up Amazon Web Services
IoT FleetWise
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/setting-up.html).

An Amazon Web Services account is B<not> the same thing as a "user." An
Amazon Web Services user
(https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction_identity-management.html#intro-identity-users)
is an identity that you create using Identity and Access Management
(IAM) and takes the form of either an IAM user
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users.html) or an
IAM role, both with credentials
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html). A
single Amazon Web Services account can, and typically does, contain
many users and roles.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::IoTFleetWise::Tag>]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::TagResource>

Returns: a L<Paws::IoTFleetWise::TagResourceResponse> instance

Adds to or modifies the tags of the given resource. Tags are metadata
which can be used to manage a resource.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::UntagResource>

Returns: a L<Paws::IoTFleetWise::UntagResourceResponse> instance

Removes the given tags (metadata) from the resource.


=head2 UpdateCampaign

=over

=item Action => Str

=item Name => Str

=item [DataExtraDimensions => ArrayRef[Str|Undef]]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::UpdateCampaign>

Returns: a L<Paws::IoTFleetWise::UpdateCampaignResponse> instance

Updates a campaign.


=head2 UpdateDecoderManifest

=over

=item Name => Str

=item [DefaultForUnmappedSignals => Str]

=item [Description => Str]

=item [NetworkInterfacesToAdd => ArrayRef[L<Paws::IoTFleetWise::NetworkInterface>]]

=item [NetworkInterfacesToRemove => ArrayRef[Str|Undef]]

=item [NetworkInterfacesToUpdate => ArrayRef[L<Paws::IoTFleetWise::NetworkInterface>]]

=item [SignalDecodersToAdd => ArrayRef[L<Paws::IoTFleetWise::SignalDecoder>]]

=item [SignalDecodersToRemove => ArrayRef[Str|Undef]]

=item [SignalDecodersToUpdate => ArrayRef[L<Paws::IoTFleetWise::SignalDecoder>]]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::UpdateDecoderManifest>

Returns: a L<Paws::IoTFleetWise::UpdateDecoderManifestResponse> instance

Updates a decoder manifest.

A decoder manifest can only be updated when the status is C<DRAFT>.
Only C<ACTIVE> decoder manifests can be associated with vehicles.


=head2 UpdateFleet

=over

=item FleetId => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::UpdateFleet>

Returns: a L<Paws::IoTFleetWise::UpdateFleetResponse> instance

Updates the description of an existing fleet.


=head2 UpdateModelManifest

=over

=item Name => Str

=item [Description => Str]

=item [NodesToAdd => ArrayRef[Str|Undef]]

=item [NodesToRemove => ArrayRef[Str|Undef]]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::UpdateModelManifest>

Returns: a L<Paws::IoTFleetWise::UpdateModelManifestResponse> instance

Updates a vehicle model (model manifest). If created vehicles are
associated with a vehicle model, it can't be updated.


=head2 UpdateSignalCatalog

=over

=item Name => Str

=item [Description => Str]

=item [NodesToAdd => ArrayRef[L<Paws::IoTFleetWise::Node>]]

=item [NodesToRemove => ArrayRef[Str|Undef]]

=item [NodesToUpdate => ArrayRef[L<Paws::IoTFleetWise::Node>]]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::UpdateSignalCatalog>

Returns: a L<Paws::IoTFleetWise::UpdateSignalCatalogResponse> instance

Updates a signal catalog.


=head2 UpdateStateTemplate

=over

=item Identifier => Str

=item [DataExtraDimensions => ArrayRef[Str|Undef]]

=item [Description => Str]

=item [MetadataExtraDimensions => ArrayRef[Str|Undef]]

=item [StateTemplatePropertiesToAdd => ArrayRef[Str|Undef]]

=item [StateTemplatePropertiesToRemove => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::UpdateStateTemplate>

Returns: a L<Paws::IoTFleetWise::UpdateStateTemplateResponse> instance

Updates a state template.

Access to certain Amazon Web Services IoT FleetWise features is
currently gated. For more information, see Amazon Web Services Region
and feature availability
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html)
in the I<Amazon Web Services IoT FleetWise Developer Guide>.


=head2 UpdateVehicle

=over

=item VehicleName => Str

=item [Attributes => L<Paws::IoTFleetWise::AttributesMap>]

=item [AttributeUpdateMode => Str]

=item [DecoderManifestArn => Str]

=item [ModelManifestArn => Str]

=item [StateTemplatesToAdd => ArrayRef[L<Paws::IoTFleetWise::StateTemplateAssociation>]]

=item [StateTemplatesToRemove => ArrayRef[Str|Undef]]

=item [StateTemplatesToUpdate => ArrayRef[L<Paws::IoTFleetWise::StateTemplateAssociation>]]


=back

Each argument is described in detail in: L<Paws::IoTFleetWise::UpdateVehicle>

Returns: a L<Paws::IoTFleetWise::UpdateVehicleResponse> instance

Updates a vehicle.

Access to certain Amazon Web Services IoT FleetWise features is
currently gated. For more information, see Amazon Web Services Region
and feature availability
(https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html)
in the I<Amazon Web Services IoT FleetWise Developer Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllVehicleStatus(sub { },VehicleName => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllVehicleStatus(VehicleName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - campaigns, passing the object as the first parameter, and the string 'campaigns' as the second parameter 

If not, it will return a a L<Paws::IoTFleetWise::GetVehicleStatusResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCampaigns(sub { },[ListResponseScope => Str, MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllCampaigns([ListResponseScope => Str, MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - campaignSummaries, passing the object as the first parameter, and the string 'campaignSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTFleetWise::ListCampaignsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDecoderManifestNetworkInterfaces(sub { },Name => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDecoderManifestNetworkInterfaces(Name => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - networkInterfaces, passing the object as the first parameter, and the string 'networkInterfaces' as the second parameter 

If not, it will return a a L<Paws::IoTFleetWise::ListDecoderManifestNetworkInterfacesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDecoderManifests(sub { },[ListResponseScope => Str, MaxResults => Int, ModelManifestArn => Str, NextToken => Str])

=head2 ListAllDecoderManifests([ListResponseScope => Str, MaxResults => Int, ModelManifestArn => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - summaries, passing the object as the first parameter, and the string 'summaries' as the second parameter 

If not, it will return a a L<Paws::IoTFleetWise::ListDecoderManifestsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDecoderManifestSignals(sub { },Name => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDecoderManifestSignals(Name => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - signalDecoders, passing the object as the first parameter, and the string 'signalDecoders' as the second parameter 

If not, it will return a a L<Paws::IoTFleetWise::ListDecoderManifestSignalsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFleets(sub { },[ListResponseScope => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllFleets([ListResponseScope => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - fleetSummaries, passing the object as the first parameter, and the string 'fleetSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTFleetWise::ListFleetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFleetsForVehicle(sub { },VehicleName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllFleetsForVehicle(VehicleName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - fleets, passing the object as the first parameter, and the string 'fleets' as the second parameter 

If not, it will return a a L<Paws::IoTFleetWise::ListFleetsForVehicleResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModelManifestNodes(sub { },Name => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllModelManifestNodes(Name => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - nodes, passing the object as the first parameter, and the string 'nodes' as the second parameter 

If not, it will return a a L<Paws::IoTFleetWise::ListModelManifestNodesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModelManifests(sub { },[ListResponseScope => Str, MaxResults => Int, NextToken => Str, SignalCatalogArn => Str])

=head2 ListAllModelManifests([ListResponseScope => Str, MaxResults => Int, NextToken => Str, SignalCatalogArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - summaries, passing the object as the first parameter, and the string 'summaries' as the second parameter 

If not, it will return a a L<Paws::IoTFleetWise::ListModelManifestsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSignalCatalogNodes(sub { },Name => Str, [MaxResults => Int, NextToken => Str, SignalNodeType => Str])

=head2 ListAllSignalCatalogNodes(Name => Str, [MaxResults => Int, NextToken => Str, SignalNodeType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - nodes, passing the object as the first parameter, and the string 'nodes' as the second parameter 

If not, it will return a a L<Paws::IoTFleetWise::ListSignalCatalogNodesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSignalCatalogs(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSignalCatalogs([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - summaries, passing the object as the first parameter, and the string 'summaries' as the second parameter 

If not, it will return a a L<Paws::IoTFleetWise::ListSignalCatalogsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStateTemplates(sub { },[ListResponseScope => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllStateTemplates([ListResponseScope => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - summaries, passing the object as the first parameter, and the string 'summaries' as the second parameter 

If not, it will return a a L<Paws::IoTFleetWise::ListStateTemplatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVehicles(sub { },[AttributeNames => ArrayRef[Str|Undef], AttributeValues => ArrayRef[Str|Undef], ListResponseScope => Str, MaxResults => Int, ModelManifestArn => Str, NextToken => Str])

=head2 ListAllVehicles([AttributeNames => ArrayRef[Str|Undef], AttributeValues => ArrayRef[Str|Undef], ListResponseScope => Str, MaxResults => Int, ModelManifestArn => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - vehicleSummaries, passing the object as the first parameter, and the string 'vehicleSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTFleetWise::ListVehiclesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVehiclesInFleet(sub { },FleetId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllVehiclesInFleet(FleetId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - vehicles, passing the object as the first parameter, and the string 'vehicles' as the second parameter 

If not, it will return a a L<Paws::IoTFleetWise::ListVehiclesInFleetResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

