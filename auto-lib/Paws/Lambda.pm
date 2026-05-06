package Paws::Lambda;
  use Moose;
  sub service { 'lambda' }
  sub signing_name { 'lambda' }
  sub version { '2015-03-31' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AddLayerVersionPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::AddLayerVersionPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::AddPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::CreateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCodeSigningConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::CreateCodeSigningConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventSourceMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::CreateEventSourceMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::CreateFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFunctionUrlConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::CreateFunctionUrlConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCodeSigningConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteCodeSigningConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventSourceMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteEventSourceMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFunctionCodeSigningConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteFunctionCodeSigningConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFunctionConcurrency {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteFunctionConcurrency', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFunctionEventInvokeConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteFunctionEventInvokeConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFunctionUrlConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteFunctionUrlConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLayerVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteLayerVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProvisionedConcurrencyConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteProvisionedConcurrencyConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCodeSigningConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetCodeSigningConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEventSourceMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetEventSourceMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFunctionCodeSigningConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetFunctionCodeSigningConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFunctionConcurrency {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetFunctionConcurrency', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFunctionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetFunctionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFunctionEventInvokeConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetFunctionEventInvokeConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFunctionRecursionConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetFunctionRecursionConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFunctionUrlConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetFunctionUrlConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLayerVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetLayerVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLayerVersionByArn {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetLayerVersionByArn', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLayerVersionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetLayerVersionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProvisionedConcurrencyConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetProvisionedConcurrencyConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRuntimeManagementConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetRuntimeManagementConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Invoke {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::Invoke', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InvokeAsync {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::InvokeAsync', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InvokeWithResponseStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::InvokeWithResponseStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCodeSigningConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListCodeSigningConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventSourceMappings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListEventSourceMappings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFunctionEventInvokeConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListFunctionEventInvokeConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFunctions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListFunctions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFunctionsByCodeSigningConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListFunctionsByCodeSigningConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFunctionUrlConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListFunctionUrlConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLayers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListLayers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLayerVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListLayerVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProvisionedConcurrencyConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListProvisionedConcurrencyConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVersionsByFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListVersionsByFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PublishLayerVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::PublishLayerVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PublishVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::PublishVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutFunctionCodeSigningConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::PutFunctionCodeSigningConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutFunctionConcurrency {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::PutFunctionConcurrency', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutFunctionEventInvokeConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::PutFunctionEventInvokeConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutFunctionRecursionConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::PutFunctionRecursionConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutProvisionedConcurrencyConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::PutProvisionedConcurrencyConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRuntimeManagementConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::PutRuntimeManagementConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveLayerVersionPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::RemoveLayerVersionPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemovePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::RemovePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UpdateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCodeSigningConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UpdateCodeSigningConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEventSourceMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UpdateEventSourceMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFunctionCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UpdateFunctionCode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFunctionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UpdateFunctionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFunctionEventInvokeConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UpdateFunctionEventInvokeConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFunctionUrlConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UpdateFunctionUrlConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAliases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAliases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListAliases(@_, Marker => $next_result->NextMarker);
        push @{ $result->Aliases }, @{ $next_result->Aliases };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'Aliases') foreach (@{ $result->Aliases });
        $result = $self->ListAliases(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Aliases') foreach (@{ $result->Aliases });
    }

    return undef
  }
  sub ListAllCodeSigningConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCodeSigningConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListCodeSigningConfigs(@_, Marker => $next_result->NextMarker);
        push @{ $result->CodeSigningConfigs }, @{ $next_result->CodeSigningConfigs };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'CodeSigningConfigs') foreach (@{ $result->CodeSigningConfigs });
        $result = $self->ListCodeSigningConfigs(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'CodeSigningConfigs') foreach (@{ $result->CodeSigningConfigs });
    }

    return undef
  }
  sub ListAllEventSourceMappings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEventSourceMappings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListEventSourceMappings(@_, Marker => $next_result->NextMarker);
        push @{ $result->EventSourceMappings }, @{ $next_result->EventSourceMappings };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'EventSourceMappings') foreach (@{ $result->EventSourceMappings });
        $result = $self->ListEventSourceMappings(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'EventSourceMappings') foreach (@{ $result->EventSourceMappings });
    }

    return undef
  }
  sub ListAllFunctionEventInvokeConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFunctionEventInvokeConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListFunctionEventInvokeConfigs(@_, Marker => $next_result->NextMarker);
        push @{ $result->FunctionEventInvokeConfigs }, @{ $next_result->FunctionEventInvokeConfigs };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'FunctionEventInvokeConfigs') foreach (@{ $result->FunctionEventInvokeConfigs });
        $result = $self->ListFunctionEventInvokeConfigs(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'FunctionEventInvokeConfigs') foreach (@{ $result->FunctionEventInvokeConfigs });
    }

    return undef
  }
  sub ListAllFunctions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFunctions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListFunctions(@_, Marker => $next_result->NextMarker);
        push @{ $result->Functions }, @{ $next_result->Functions };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'Functions') foreach (@{ $result->Functions });
        $result = $self->ListFunctions(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Functions') foreach (@{ $result->Functions });
    }

    return undef
  }
  sub ListAllFunctionsByCodeSigningConfig {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFunctionsByCodeSigningConfig(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListFunctionsByCodeSigningConfig(@_, Marker => $next_result->NextMarker);
        push @{ $result->FunctionArns }, @{ $next_result->FunctionArns };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'FunctionArns') foreach (@{ $result->FunctionArns });
        $result = $self->ListFunctionsByCodeSigningConfig(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'FunctionArns') foreach (@{ $result->FunctionArns });
    }

    return undef
  }
  sub ListAllFunctionUrlConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFunctionUrlConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListFunctionUrlConfigs(@_, Marker => $next_result->NextMarker);
        push @{ $result->FunctionUrlConfigs }, @{ $next_result->FunctionUrlConfigs };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'FunctionUrlConfigs') foreach (@{ $result->FunctionUrlConfigs });
        $result = $self->ListFunctionUrlConfigs(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'FunctionUrlConfigs') foreach (@{ $result->FunctionUrlConfigs });
    }

    return undef
  }
  sub ListAllLayers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLayers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListLayers(@_, Marker => $next_result->NextMarker);
        push @{ $result->Layers }, @{ $next_result->Layers };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'Layers') foreach (@{ $result->Layers });
        $result = $self->ListLayers(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Layers') foreach (@{ $result->Layers });
    }

    return undef
  }
  sub ListAllLayerVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLayerVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListLayerVersions(@_, Marker => $next_result->NextMarker);
        push @{ $result->LayerVersions }, @{ $next_result->LayerVersions };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'LayerVersions') foreach (@{ $result->LayerVersions });
        $result = $self->ListLayerVersions(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'LayerVersions') foreach (@{ $result->LayerVersions });
    }

    return undef
  }
  sub ListAllProvisionedConcurrencyConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProvisionedConcurrencyConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListProvisionedConcurrencyConfigs(@_, Marker => $next_result->NextMarker);
        push @{ $result->ProvisionedConcurrencyConfigs }, @{ $next_result->ProvisionedConcurrencyConfigs };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'ProvisionedConcurrencyConfigs') foreach (@{ $result->ProvisionedConcurrencyConfigs });
        $result = $self->ListProvisionedConcurrencyConfigs(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'ProvisionedConcurrencyConfigs') foreach (@{ $result->ProvisionedConcurrencyConfigs });
    }

    return undef
  }
  sub ListAllVersionsByFunction {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListVersionsByFunction(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListVersionsByFunction(@_, Marker => $next_result->NextMarker);
        push @{ $result->Versions }, @{ $next_result->Versions };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'Versions') foreach (@{ $result->Versions });
        $result = $self->ListVersionsByFunction(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Versions') foreach (@{ $result->Versions });
    }

    return undef
  }


  sub operations { qw/AddLayerVersionPermission AddPermission CreateAlias CreateCodeSigningConfig CreateEventSourceMapping CreateFunction CreateFunctionUrlConfig DeleteAlias DeleteCodeSigningConfig DeleteEventSourceMapping DeleteFunction DeleteFunctionCodeSigningConfig DeleteFunctionConcurrency DeleteFunctionEventInvokeConfig DeleteFunctionUrlConfig DeleteLayerVersion DeleteProvisionedConcurrencyConfig GetAccountSettings GetAlias GetCodeSigningConfig GetEventSourceMapping GetFunction GetFunctionCodeSigningConfig GetFunctionConcurrency GetFunctionConfiguration GetFunctionEventInvokeConfig GetFunctionRecursionConfig GetFunctionUrlConfig GetLayerVersion GetLayerVersionByArn GetLayerVersionPolicy GetPolicy GetProvisionedConcurrencyConfig GetRuntimeManagementConfig Invoke InvokeAsync InvokeWithResponseStream ListAliases ListCodeSigningConfigs ListEventSourceMappings ListFunctionEventInvokeConfigs ListFunctions ListFunctionsByCodeSigningConfig ListFunctionUrlConfigs ListLayers ListLayerVersions ListProvisionedConcurrencyConfigs ListTags ListVersionsByFunction PublishLayerVersion PublishVersion PutFunctionCodeSigningConfig PutFunctionConcurrency PutFunctionEventInvokeConfig PutFunctionRecursionConfig PutProvisionedConcurrencyConfig PutRuntimeManagementConfig RemoveLayerVersionPermission RemovePermission TagResource UntagResource UpdateAlias UpdateCodeSigningConfig UpdateEventSourceMapping UpdateFunctionCode UpdateFunctionConfiguration UpdateFunctionEventInvokeConfig UpdateFunctionUrlConfig / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda - Perl Interface to AWS AWS Lambda

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Lambda');
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

Lambda

B<Overview>

Lambda is a compute service that lets you run code without provisioning
or managing servers. Lambda runs your code on a high-availability
compute infrastructure and performs all of the administration of the
compute resources, including server and operating system maintenance,
capacity provisioning and automatic scaling, code monitoring and
logging. With Lambda, you can run code for virtually any type of
application or backend service. For more information about the Lambda
service, see What is Lambda
(https://docs.aws.amazon.com/lambda/latest/dg/welcome.html) in the
B<Lambda Developer Guide>.

The I<Lambda API Reference> provides information about each of the API
methods, including details about the parameters in each API request and
response.

You can use Software Development Kits (SDKs), Integrated Development
Environment (IDE) Toolkits, and command line tools to access the API.
For installation instructions, see Tools for Amazon Web Services
(http://aws.amazon.com/tools/).

For a list of Region-specific endpoints that Lambda supports, see
Lambda endpoints and quotas
(https://docs.aws.amazon.com/general/latest/gr/lambda-service.html) in
the I<Amazon Web Services General Reference.>.

When making the API calls, you will need to authenticate your request
by providing a signature. Lambda supports signature version 4. For more
information, see Signature Version 4 signing process
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html)
in the I<Amazon Web Services General Reference.>.

B<CA certificates>

Because Amazon Web Services SDKs use the CA certificates from your
computer, changes to the certificates on the Amazon Web Services
servers can cause connection failures when you attempt to use an SDK.
You can prevent these failures by keeping your computer's CA
certificates and operating system up-to-date. If you encounter this
issue in a corporate environment and do not manage your own computer,
you might need to ask an administrator to assist with the update
process. The following list shows minimum operating system and Java
versions:

=over

=item *

Microsoft Windows versions that have updates from January 2005 or later
installed contain at least one of the required CAs in their trust list.

=item *

Mac OS X 10.4 with Java for Mac OS X 10.4 Release 5 (February 2007),
Mac OS X 10.5 (October 2007), and later versions contain at least one
of the required CAs in their trust list.

=item *

Red Hat Enterprise Linux 5 (March 2007), 6, and 7 and CentOS 5, 6, and
7 all contain at least one of the required CAs in their default trusted
CA list.

=item *

Java 1.4.2_12 (May 2006), 5 Update 2 (March 2005), and all later
versions, including Java 6 (December 2006), 7, and 8, contain at least
one of the required CAs in their default trusted CA list.

=back

When accessing the Lambda management console or Lambda API endpoints,
whether through browsers or programmatically, you will need to ensure
your client machines support any of the following CAs:

=over

=item *

Amazon Root CA 1

=item *

Starfield Services Root Certificate Authority - G2

=item *

Starfield Class 2 Certification Authority

=back

Root certificates from the first two authorities are available from
Amazon trust services (https://www.amazontrust.com/repository/), but
keeping your computer up-to-date is the more straightforward solution.
To learn more about ACM-provided certificates, see Amazon Web Services
Certificate Manager FAQs.
(http://aws.amazon.com/certificate-manager/faqs/#certificates)

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AddLayerVersionPermission

=over

=item Action => Str

=item LayerName => Str

=item Principal => Str

=item StatementId => Str

=item VersionNumber => Int

=item [OrganizationId => Str]

=item [RevisionId => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::AddLayerVersionPermission>

Returns: a L<Paws::Lambda::AddLayerVersionPermissionResponse> instance

Adds permissions to the resource-based policy of a version of an Lambda
layer
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
Use this action to grant layer usage permission to other accounts. You
can grant permission to a single account, all accounts in an
organization, or all Amazon Web Services accounts.

To revoke permission, call RemoveLayerVersionPermission with the
statement ID that you specified when you added it.


=head2 AddPermission

=over

=item Action => Str

=item FunctionName => Str

=item Principal => Str

=item StatementId => Str

=item [EventSourceToken => Str]

=item [FunctionUrlAuthType => Str]

=item [PrincipalOrgID => Str]

=item [Qualifier => Str]

=item [RevisionId => Str]

=item [SourceAccount => Str]

=item [SourceArn => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::AddPermission>

Returns: a L<Paws::Lambda::AddPermissionResponse> instance

Grants a principal
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying)
permission to use a function. You can apply the policy at the function
level, or specify a qualifier to restrict access to a single version or
alias. If you use a qualifier, the invoker must use the full Amazon
Resource Name (ARN) of that version or alias to invoke the function.
Note: Lambda does not support adding policies to version $LATEST.

To grant permission to another account, specify the account ID as the
C<Principal>. To grant permission to an organization defined in
Organizations, specify the organization ID as the C<PrincipalOrgID>.
For Amazon Web Services services, the principal is a domain-style
identifier that the service defines, such as C<s3.amazonaws.com> or
C<sns.amazonaws.com>. For Amazon Web Services services, you can also
specify the ARN of the associated resource as the C<SourceArn>. If you
grant permission to a service principal without specifying the source,
other accounts could potentially configure resources in their account
to invoke your Lambda function.

This operation adds a statement to a resource-based permissions policy
for the function. For more information about function policies, see
Using resource-based policies for Lambda
(https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html).


=head2 CreateAlias

=over

=item FunctionName => Str

=item FunctionVersion => Str

=item Name => Str

=item [Description => Str]

=item [RoutingConfig => L<Paws::Lambda::AliasRoutingConfiguration>]


=back

Each argument is described in detail in: L<Paws::Lambda::CreateAlias>

Returns: a L<Paws::Lambda::AliasConfiguration> instance

Creates an alias
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html)
for a Lambda function version. Use aliases to provide clients with a
function identifier that you can update to invoke a different version.

You can also map an alias to split invocation requests between two
versions. Use the C<RoutingConfig> parameter to specify a second
version and the percentage of invocation requests that it receives.


=head2 CreateCodeSigningConfig

=over

=item AllowedPublishers => L<Paws::Lambda::AllowedPublishers>

=item [CodeSigningPolicies => L<Paws::Lambda::CodeSigningPolicies>]

=item [Description => Str]

=item [Tags => L<Paws::Lambda::Tags>]


=back

Each argument is described in detail in: L<Paws::Lambda::CreateCodeSigningConfig>

Returns: a L<Paws::Lambda::CreateCodeSigningConfigResponse> instance

Creates a code signing configuration. A code signing configuration
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html)
defines a list of allowed signing profiles and defines the code-signing
validation policy (action to be taken if deployment validation checks
fail).


=head2 CreateEventSourceMapping

=over

=item FunctionName => Str

=item [AmazonManagedKafkaEventSourceConfig => L<Paws::Lambda::AmazonManagedKafkaEventSourceConfig>]

=item [BatchSize => Int]

=item [BisectBatchOnFunctionError => Bool]

=item [DestinationConfig => L<Paws::Lambda::DestinationConfig>]

=item [DocumentDBEventSourceConfig => L<Paws::Lambda::DocumentDBEventSourceConfig>]

=item [Enabled => Bool]

=item [EventSourceArn => Str]

=item [FilterCriteria => L<Paws::Lambda::FilterCriteria>]

=item [FunctionResponseTypes => ArrayRef[Str|Undef]]

=item [KMSKeyArn => Str]

=item [MaximumBatchingWindowInSeconds => Int]

=item [MaximumRecordAgeInSeconds => Int]

=item [MaximumRetryAttempts => Int]

=item [MetricsConfig => L<Paws::Lambda::EventSourceMappingMetricsConfig>]

=item [ParallelizationFactor => Int]

=item [ProvisionedPollerConfig => L<Paws::Lambda::ProvisionedPollerConfig>]

=item [Queues => ArrayRef[Str|Undef]]

=item [ScalingConfig => L<Paws::Lambda::ScalingConfig>]

=item [SelfManagedEventSource => L<Paws::Lambda::SelfManagedEventSource>]

=item [SelfManagedKafkaEventSourceConfig => L<Paws::Lambda::SelfManagedKafkaEventSourceConfig>]

=item [SourceAccessConfigurations => ArrayRef[L<Paws::Lambda::SourceAccessConfiguration>]]

=item [StartingPosition => Str]

=item [StartingPositionTimestamp => Str]

=item [Tags => L<Paws::Lambda::Tags>]

=item [Topics => ArrayRef[Str|Undef]]

=item [TumblingWindowInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::CreateEventSourceMapping>

Returns: a L<Paws::Lambda::EventSourceMappingConfiguration> instance

Creates a mapping between an event source and an Lambda function.
Lambda reads items from the event source and invokes the function.

For details about how to configure different event sources, see the
following topics.

=over

=item *

Amazon DynamoDB Streams
(https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping)

=item *

Amazon Kinesis
(https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping)

=item *

Amazon SQS
(https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource)

=item *

Amazon MQ and RabbitMQ
(https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping)

=item *

Amazon MSK (https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html)

=item *

Apache Kafka
(https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html)

=item *

Amazon DocumentDB
(https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html)

=back

The following error handling options are available only for DynamoDB
and Kinesis event sources:

=over

=item *

C<BisectBatchOnFunctionError> E<ndash> If the function returns an
error, split the batch in two and retry.

=item *

C<MaximumRecordAgeInSeconds> E<ndash> Discard records older than the
specified age. The default value is infinite (-1). When set to infinite
(-1), failed records are retried until the record expires

=item *

C<MaximumRetryAttempts> E<ndash> Discard records after the specified
number of retries. The default value is infinite (-1). When set to
infinite (-1), failed records are retried until the record expires.

=item *

C<ParallelizationFactor> E<ndash> Process multiple batches from each
shard concurrently.

=back

For stream sources (DynamoDB, Kinesis, Amazon MSK, and self-managed
Apache Kafka), the following option is also available:

=over

=item *

C<DestinationConfig> E<ndash> Send discarded records to an Amazon SQS
queue, Amazon SNS topic, or Amazon S3 bucket.

=back

For information about which configuration parameters apply to each
event source, see the following topics.

=over

=item *

Amazon DynamoDB Streams
(https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-params)

=item *

Amazon Kinesis
(https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-params)

=item *

Amazon SQS
(https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#services-sqs-params)

=item *

Amazon MQ and RabbitMQ
(https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-params)

=item *

Amazon MSK
(https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-parms)

=item *

Apache Kafka
(https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-kafka-parms)

=item *

Amazon DocumentDB
(https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html#docdb-configuration)

=back



=head2 CreateFunction

=over

=item Code => L<Paws::Lambda::FunctionCode>

=item FunctionName => Str

=item Role => Str

=item [Architectures => ArrayRef[Str|Undef]]

=item [CodeSigningConfigArn => Str]

=item [DeadLetterConfig => L<Paws::Lambda::DeadLetterConfig>]

=item [Description => Str]

=item [Environment => L<Paws::Lambda::Environment>]

=item [EphemeralStorage => L<Paws::Lambda::EphemeralStorage>]

=item [FileSystemConfigs => ArrayRef[L<Paws::Lambda::FileSystemConfig>]]

=item [Handler => Str]

=item [ImageConfig => L<Paws::Lambda::ImageConfig>]

=item [KMSKeyArn => Str]

=item [Layers => ArrayRef[Str|Undef]]

=item [LoggingConfig => L<Paws::Lambda::LoggingConfig>]

=item [MemorySize => Int]

=item [PackageType => Str]

=item [Publish => Bool]

=item [Runtime => Str]

=item [SnapStart => L<Paws::Lambda::SnapStart>]

=item [Tags => L<Paws::Lambda::Tags>]

=item [Timeout => Int]

=item [TracingConfig => L<Paws::Lambda::TracingConfig>]

=item [VpcConfig => L<Paws::Lambda::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::Lambda::CreateFunction>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

Creates a Lambda function. To create a function, you need a deployment
package
(https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html)
and an execution role
(https://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role).
The deployment package is a .zip file archive or container image that
contains your function code. The execution role grants the function
permission to use Amazon Web Services services, such as Amazon
CloudWatch Logs for log streaming and X-Ray for request tracing.

If the deployment package is a container image
(https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html), then
you set the package type to C<Image>. For a container image, the code
property must include the URI of a container image in the Amazon ECR
registry. You do not need to specify the handler and runtime
properties.

If the deployment package is a .zip file archive
(https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip),
then you set the package type to C<Zip>. For a .zip file archive, the
code property specifies the location of the .zip file. You must also
specify the handler and runtime properties. The code in the deployment
package must be compatible with the target instruction set architecture
of the function (C<x86-64> or C<arm64>). If you do not specify the
architecture, then the default value is C<x86-64>.

When you create a function, Lambda provisions an instance of the
function and its supporting resources. If your function connects to a
VPC, this process can take a minute or so. During this time, you can't
invoke or modify the function. The C<State>, C<StateReason>, and
C<StateReasonCode> fields in the response from GetFunctionConfiguration
indicate when the function is ready to invoke. For more information,
see Lambda function states
(https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html).

A function has an unpublished version, and can have published versions
and aliases. The unpublished version changes when you update your
function's code and configuration. A published version is a snapshot of
your function code and configuration that can't be changed. An alias is
a named resource that maps to a version, and can be changed to map to a
different version. Use the C<Publish> parameter to create version C<1>
of your function from its initial configuration.

The other parameters let you configure version-specific and
function-level settings. You can modify version-specific settings later
with UpdateFunctionConfiguration. Function-level settings apply to both
the unpublished and published versions of the function, and include
tags (TagResource) and per-function concurrency limits
(PutFunctionConcurrency).

You can use code signing if your deployment package is a .zip file
archive. To enable code signing for this function, specify the ARN of a
code-signing configuration. When a user attempts to deploy a code
package with UpdateFunctionCode, Lambda checks that the code package
has a valid signature from a trusted publisher. The code-signing
configuration includes set of signing profiles, which define the
trusted publishers for this function.

If another Amazon Web Services account or an Amazon Web Services
service invokes your function, use AddPermission to grant permission by
creating a resource-based Identity and Access Management (IAM) policy.
You can grant permissions at the function level, on a version, or on an
alias.

To invoke your function directly, use Invoke. To invoke your function
in response to events in other Amazon Web Services services, create an
event source mapping (CreateEventSourceMapping), or configure a
function trigger in the other service. For more information, see
Invoking Lambda functions
(https://docs.aws.amazon.com/lambda/latest/dg/lambda-invocation.html).


=head2 CreateFunctionUrlConfig

=over

=item AuthType => Str

=item FunctionName => Str

=item [Cors => L<Paws::Lambda::Cors>]

=item [InvokeMode => Str]

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::CreateFunctionUrlConfig>

Returns: a L<Paws::Lambda::CreateFunctionUrlConfigResponse> instance

Creates a Lambda function URL with the specified configuration
parameters. A function URL is a dedicated HTTP(S) endpoint that you can
use to invoke your function.


=head2 DeleteAlias

=over

=item FunctionName => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteAlias>

Returns: nothing

Deletes a Lambda function alias
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html).


=head2 DeleteCodeSigningConfig

=over

=item CodeSigningConfigArn => Str


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteCodeSigningConfig>

Returns: a L<Paws::Lambda::DeleteCodeSigningConfigResponse> instance

Deletes the code signing configuration. You can delete the code signing
configuration only if no function is using it.


=head2 DeleteEventSourceMapping

=over

=item UUID => Str


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteEventSourceMapping>

Returns: a L<Paws::Lambda::EventSourceMappingConfiguration> instance

Deletes an event source mapping
(https://docs.aws.amazon.com/lambda/latest/dg/intro-invocation-modes.html).
You can get the identifier of a mapping from the output of
ListEventSourceMappings.

When you delete an event source mapping, it enters a C<Deleting> state
and might not be completely deleted for several seconds.


=head2 DeleteFunction

=over

=item FunctionName => Str

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteFunction>

Returns: nothing

Deletes a Lambda function. To delete a specific function version, use
the C<Qualifier> parameter. Otherwise, all versions and aliases are
deleted. This doesn't require the user to have explicit permissions for
DeleteAlias.

To delete Lambda event source mappings that invoke a function, use
DeleteEventSourceMapping. For Amazon Web Services services and
resources that invoke your function directly, delete the trigger in the
service where you originally configured it.


=head2 DeleteFunctionCodeSigningConfig

=over

=item FunctionName => Str


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteFunctionCodeSigningConfig>

Returns: nothing

Removes the code signing configuration from the function.


=head2 DeleteFunctionConcurrency

=over

=item FunctionName => Str


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteFunctionConcurrency>

Returns: nothing

Removes a concurrent execution limit from a function.


=head2 DeleteFunctionEventInvokeConfig

=over

=item FunctionName => Str

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteFunctionEventInvokeConfig>

Returns: nothing

Deletes the configuration for asynchronous invocation for a function,
version, or alias.

To configure options for asynchronous invocation, use
PutFunctionEventInvokeConfig.


=head2 DeleteFunctionUrlConfig

=over

=item FunctionName => Str

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteFunctionUrlConfig>

Returns: nothing

Deletes a Lambda function URL. When you delete a function URL, you
can't recover it. Creating a new function URL results in a different
URL address.


=head2 DeleteLayerVersion

=over

=item LayerName => Str

=item VersionNumber => Int


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteLayerVersion>

Returns: nothing

Deletes a version of an Lambda layer
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
Deleted versions can no longer be viewed or added to functions. To
avoid breaking functions, a copy of the version remains in Lambda until
no functions refer to it.


=head2 DeleteProvisionedConcurrencyConfig

=over

=item FunctionName => Str

=item Qualifier => Str


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteProvisionedConcurrencyConfig>

Returns: nothing

Deletes the provisioned concurrency configuration for a function.


=head2 GetAccountSettings






Each argument is described in detail in: L<Paws::Lambda::GetAccountSettings>

Returns: a L<Paws::Lambda::GetAccountSettingsResponse> instance

Retrieves details about your account's limits
(https://docs.aws.amazon.com/lambda/latest/dg/limits.html) and usage in
an Amazon Web Services Region.


=head2 GetAlias

=over

=item FunctionName => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Lambda::GetAlias>

Returns: a L<Paws::Lambda::AliasConfiguration> instance

Returns details about a Lambda function alias
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html).


=head2 GetCodeSigningConfig

=over

=item CodeSigningConfigArn => Str


=back

Each argument is described in detail in: L<Paws::Lambda::GetCodeSigningConfig>

Returns: a L<Paws::Lambda::GetCodeSigningConfigResponse> instance

Returns information about the specified code signing configuration.


=head2 GetEventSourceMapping

=over

=item UUID => Str


=back

Each argument is described in detail in: L<Paws::Lambda::GetEventSourceMapping>

Returns: a L<Paws::Lambda::EventSourceMappingConfiguration> instance

Returns details about an event source mapping. You can get the
identifier of a mapping from the output of ListEventSourceMappings.


=head2 GetFunction

=over

=item FunctionName => Str

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::GetFunction>

Returns: a L<Paws::Lambda::GetFunctionResponse> instance

Returns information about the function or function version, with a link
to download the deployment package that's valid for 10 minutes. If you
specify a function version, only details that are specific to that
version are returned.


=head2 GetFunctionCodeSigningConfig

=over

=item FunctionName => Str


=back

Each argument is described in detail in: L<Paws::Lambda::GetFunctionCodeSigningConfig>

Returns: a L<Paws::Lambda::GetFunctionCodeSigningConfigResponse> instance

Returns the code signing configuration for the specified function.


=head2 GetFunctionConcurrency

=over

=item FunctionName => Str


=back

Each argument is described in detail in: L<Paws::Lambda::GetFunctionConcurrency>

Returns: a L<Paws::Lambda::GetFunctionConcurrencyResponse> instance

Returns details about the reserved concurrency configuration for a
function. To set a concurrency limit for a function, use
PutFunctionConcurrency.


=head2 GetFunctionConfiguration

=over

=item FunctionName => Str

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::GetFunctionConfiguration>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

Returns the version-specific settings of a Lambda function or version.
The output includes only options that can vary between versions of a
function. To modify these settings, use UpdateFunctionConfiguration.

To get all of a function's details, including function-level settings,
use GetFunction.


=head2 GetFunctionEventInvokeConfig

=over

=item FunctionName => Str

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::GetFunctionEventInvokeConfig>

Returns: a L<Paws::Lambda::FunctionEventInvokeConfig> instance

Retrieves the configuration for asynchronous invocation for a function,
version, or alias.

To configure options for asynchronous invocation, use
PutFunctionEventInvokeConfig.


=head2 GetFunctionRecursionConfig

=over

=item FunctionName => Str


=back

Each argument is described in detail in: L<Paws::Lambda::GetFunctionRecursionConfig>

Returns: a L<Paws::Lambda::GetFunctionRecursionConfigResponse> instance

Returns your function's recursive loop detection
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-recursion.html)
configuration.


=head2 GetFunctionUrlConfig

=over

=item FunctionName => Str

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::GetFunctionUrlConfig>

Returns: a L<Paws::Lambda::GetFunctionUrlConfigResponse> instance

Returns details about a Lambda function URL.


=head2 GetLayerVersion

=over

=item LayerName => Str

=item VersionNumber => Int


=back

Each argument is described in detail in: L<Paws::Lambda::GetLayerVersion>

Returns: a L<Paws::Lambda::GetLayerVersionResponse> instance

Returns information about a version of an Lambda layer
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html),
with a link to download the layer archive that's valid for 10 minutes.


=head2 GetLayerVersionByArn

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Lambda::GetLayerVersionByArn>

Returns: a L<Paws::Lambda::GetLayerVersionResponse> instance

Returns information about a version of an Lambda layer
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html),
with a link to download the layer archive that's valid for 10 minutes.


=head2 GetLayerVersionPolicy

=over

=item LayerName => Str

=item VersionNumber => Int


=back

Each argument is described in detail in: L<Paws::Lambda::GetLayerVersionPolicy>

Returns: a L<Paws::Lambda::GetLayerVersionPolicyResponse> instance

Returns the permission policy for a version of an Lambda layer
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
For more information, see AddLayerVersionPermission.


=head2 GetPolicy

=over

=item FunctionName => Str

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::GetPolicy>

Returns: a L<Paws::Lambda::GetPolicyResponse> instance

Returns the resource-based IAM policy
(https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html)
for a function, version, or alias.


=head2 GetProvisionedConcurrencyConfig

=over

=item FunctionName => Str

=item Qualifier => Str


=back

Each argument is described in detail in: L<Paws::Lambda::GetProvisionedConcurrencyConfig>

Returns: a L<Paws::Lambda::GetProvisionedConcurrencyConfigResponse> instance

Retrieves the provisioned concurrency configuration for a function's
alias or version.


=head2 GetRuntimeManagementConfig

=over

=item FunctionName => Str

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::GetRuntimeManagementConfig>

Returns: a L<Paws::Lambda::GetRuntimeManagementConfigResponse> instance

Retrieves the runtime management configuration for a function's
version. If the runtime update mode is B<Manual>, this includes the ARN
of the runtime version and the runtime update mode. If the runtime
update mode is B<Auto> or B<Function update>, this includes the runtime
update mode and C<null> is returned for the ARN. For more information,
see Runtime updates
(https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html).


=head2 Invoke

=over

=item FunctionName => Str

=item [ClientContext => Str]

=item [InvocationType => Str]

=item [LogType => Str]

=item [Payload => Str]

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::Invoke>

Returns: a L<Paws::Lambda::InvocationResponse> instance

Invokes a Lambda function. You can invoke a function synchronously (and
wait for the response), or asynchronously. By default, Lambda invokes
your function synchronously (i.e. theC<InvocationType> is
C<RequestResponse>). To invoke a function asynchronously, set
C<InvocationType> to C<Event>. Lambda passes the C<ClientContext>
object to your function for synchronous invocations only.

For synchronous invocation
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-sync.html),
details about the function response, including errors, are included in
the response body and headers. For either invocation type, you can find
more information in the execution log
(https://docs.aws.amazon.com/lambda/latest/dg/monitoring-functions.html)
and trace
(https://docs.aws.amazon.com/lambda/latest/dg/lambda-x-ray.html).

When an error occurs, your function may be invoked multiple times.
Retry behavior varies by error type, client, event source, and
invocation type. For example, if you invoke a function asynchronously
and it returns an error, Lambda executes the function up to two more
times. For more information, see Error handling and automatic retries
in Lambda
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-retries.html).

For asynchronous invocation
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html),
Lambda adds events to a queue before sending them to your function. If
your function does not have enough capacity to keep up with the queue,
events may be lost. Occasionally, your function may receive the same
event multiple times, even if no error occurs. To retain events that
were not processed, configure your function with a dead-letter queue
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq).

The status code in the API response doesn't reflect function errors.
Error codes are reserved for errors that prevent your function from
executing, such as permissions errors, quota
(https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html)
errors, or issues with your function's code and configuration. For
example, Lambda returns C<TooManyRequestsException> if running the
function would cause you to exceed a concurrency limit at either the
account level (C<ConcurrentInvocationLimitExceeded>) or function level
(C<ReservedFunctionConcurrentInvocationLimitExceeded>).

For functions with a long timeout, your client might disconnect during
synchronous invocation while it waits for a response. Configure your
HTTP client, SDK, firewall, proxy, or operating system to allow for
long connections with timeout or keep-alive settings.

This operation requires permission for the lambda:InvokeFunction
(https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html)
action. For details on how to set up permissions for cross-account
invocations, see Granting function access to other accounts
(https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountinvoke).


=head2 InvokeAsync

=over

=item FunctionName => Str

=item InvokeArgs => Str


=back

Each argument is described in detail in: L<Paws::Lambda::InvokeAsync>

Returns: a L<Paws::Lambda::InvokeAsyncResponse> instance

For asynchronous function invocation, use Invoke.

Invokes a function asynchronously.

If you do use the InvokeAsync action, note that it doesn't support the
use of X-Ray active tracing. Trace ID is not propagated to the
function, even if X-Ray active tracing is turned on.


=head2 InvokeWithResponseStream

=over

=item FunctionName => Str

=item [ClientContext => Str]

=item [InvocationType => Str]

=item [LogType => Str]

=item [Payload => Str]

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::InvokeWithResponseStream>

Returns: a L<Paws::Lambda::InvokeWithResponseStreamResponse> instance

Configure your Lambda functions to stream response payloads back to
clients. For more information, see Configuring a Lambda function to
stream responses
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-response-streaming.html).

This operation requires permission for the lambda:InvokeFunction
(https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html)
action. For details on how to set up permissions for cross-account
invocations, see Granting function access to other accounts
(https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountinvoke).


=head2 ListAliases

=over

=item FunctionName => Str

=item [FunctionVersion => Str]

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListAliases>

Returns: a L<Paws::Lambda::ListAliasesResponse> instance

Returns a list of aliases
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html)
for a Lambda function.


=head2 ListCodeSigningConfigs

=over

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListCodeSigningConfigs>

Returns: a L<Paws::Lambda::ListCodeSigningConfigsResponse> instance

Returns a list of code signing configurations
(https://docs.aws.amazon.com/lambda/latest/dg/configuring-codesigning.html).
A request returns up to 10,000 configurations per call. You can use the
C<MaxItems> parameter to return fewer configurations per call.


=head2 ListEventSourceMappings

=over

=item [EventSourceArn => Str]

=item [FunctionName => Str]

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListEventSourceMappings>

Returns: a L<Paws::Lambda::ListEventSourceMappingsResponse> instance

Lists event source mappings. Specify an C<EventSourceArn> to show only
event source mappings for a single event source.


=head2 ListFunctionEventInvokeConfigs

=over

=item FunctionName => Str

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListFunctionEventInvokeConfigs>

Returns: a L<Paws::Lambda::ListFunctionEventInvokeConfigsResponse> instance

Retrieves a list of configurations for asynchronous invocation for a
function.

To configure options for asynchronous invocation, use
PutFunctionEventInvokeConfig.


=head2 ListFunctions

=over

=item [FunctionVersion => Str]

=item [Marker => Str]

=item [MasterRegion => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListFunctions>

Returns: a L<Paws::Lambda::ListFunctionsResponse> instance

Returns a list of Lambda functions, with the version-specific
configuration of each. Lambda returns up to 50 functions per call.

Set C<FunctionVersion> to C<ALL> to include all published versions of
each function in addition to the unpublished version.

The C<ListFunctions> operation returns a subset of the
FunctionConfiguration fields. To get the additional fields (State,
StateReasonCode, StateReason, LastUpdateStatus, LastUpdateStatusReason,
LastUpdateStatusReasonCode, RuntimeVersionConfig) for a function or
version, use GetFunction.


=head2 ListFunctionsByCodeSigningConfig

=over

=item CodeSigningConfigArn => Str

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListFunctionsByCodeSigningConfig>

Returns: a L<Paws::Lambda::ListFunctionsByCodeSigningConfigResponse> instance

List the functions that use the specified code signing configuration.
You can use this method prior to deleting a code signing configuration,
to verify that no functions are using it.


=head2 ListFunctionUrlConfigs

=over

=item FunctionName => Str

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListFunctionUrlConfigs>

Returns: a L<Paws::Lambda::ListFunctionUrlConfigsResponse> instance

Returns a list of Lambda function URLs for the specified function.


=head2 ListLayers

=over

=item [CompatibleArchitecture => Str]

=item [CompatibleRuntime => Str]

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListLayers>

Returns: a L<Paws::Lambda::ListLayersResponse> instance

Lists Lambda layers
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-layers.html)
and shows information about the latest version of each. Specify a
runtime identifier
(https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html) to
list only layers that indicate that they're compatible with that
runtime. Specify a compatible architecture to include only layers that
are compatible with that instruction set architecture
(https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html).


=head2 ListLayerVersions

=over

=item LayerName => Str

=item [CompatibleArchitecture => Str]

=item [CompatibleRuntime => Str]

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListLayerVersions>

Returns: a L<Paws::Lambda::ListLayerVersionsResponse> instance

Lists the versions of an Lambda layer
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
Versions that have been deleted aren't listed. Specify a runtime
identifier
(https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html) to
list only versions that indicate that they're compatible with that
runtime. Specify a compatible architecture to include only layer
versions that are compatible with that architecture.


=head2 ListProvisionedConcurrencyConfigs

=over

=item FunctionName => Str

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListProvisionedConcurrencyConfigs>

Returns: a L<Paws::Lambda::ListProvisionedConcurrencyConfigsResponse> instance

Retrieves a list of provisioned concurrency configurations for a
function.


=head2 ListTags

=over

=item Resource => Str


=back

Each argument is described in detail in: L<Paws::Lambda::ListTags>

Returns: a L<Paws::Lambda::ListTagsResponse> instance

Returns a function, event source mapping, or code signing
configuration's tags
(https://docs.aws.amazon.com/lambda/latest/dg/tagging.html). You can
also view function tags with GetFunction.


=head2 ListVersionsByFunction

=over

=item FunctionName => Str

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListVersionsByFunction>

Returns: a L<Paws::Lambda::ListVersionsByFunctionResponse> instance

Returns a list of versions
(https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html),
with the version-specific configuration of each. Lambda returns up to
50 versions per call.


=head2 PublishLayerVersion

=over

=item Content => L<Paws::Lambda::LayerVersionContentInput>

=item LayerName => Str

=item [CompatibleArchitectures => ArrayRef[Str|Undef]]

=item [CompatibleRuntimes => ArrayRef[Str|Undef]]

=item [Description => Str]

=item [LicenseInfo => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::PublishLayerVersion>

Returns: a L<Paws::Lambda::PublishLayerVersionResponse> instance

Creates an Lambda layer
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html)
from a ZIP archive. Each time you call C<PublishLayerVersion> with the
same layer name, a new version is created.

Add layers to your function with CreateFunction or
UpdateFunctionConfiguration.


=head2 PublishVersion

=over

=item FunctionName => Str

=item [CodeSha256 => Str]

=item [Description => Str]

=item [RevisionId => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::PublishVersion>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

Creates a version
(https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html)
from the current code and configuration of a function. Use versions to
create a snapshot of your function code and configuration that doesn't
change.

Lambda doesn't publish a version if the function's configuration and
code haven't changed since the last version. Use UpdateFunctionCode or
UpdateFunctionConfiguration to update the function before publishing a
version.

Clients can invoke versions directly or with an alias. To create an
alias, use CreateAlias.


=head2 PutFunctionCodeSigningConfig

=over

=item CodeSigningConfigArn => Str

=item FunctionName => Str


=back

Each argument is described in detail in: L<Paws::Lambda::PutFunctionCodeSigningConfig>

Returns: a L<Paws::Lambda::PutFunctionCodeSigningConfigResponse> instance

Update the code signing configuration for the function. Changes to the
code signing configuration take effect the next time a user tries to
deploy a code package to the function.


=head2 PutFunctionConcurrency

=over

=item FunctionName => Str

=item ReservedConcurrentExecutions => Int


=back

Each argument is described in detail in: L<Paws::Lambda::PutFunctionConcurrency>

Returns: a L<Paws::Lambda::Concurrency> instance

Sets the maximum number of simultaneous executions for a function, and
reserves capacity for that concurrency level.

Concurrency settings apply to the function as a whole, including all
published versions and the unpublished version. Reserving concurrency
both ensures that your function has capacity to process the specified
number of events simultaneously, and prevents it from scaling beyond
that level. Use GetFunction to see the current setting for a function.

Use GetAccountSettings to see your Regional concurrency limit. You can
reserve concurrency for as many functions as you like, as long as you
leave at least 100 simultaneous executions unreserved for functions
that aren't configured with a per-function limit. For more information,
see Lambda function scaling
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-scaling.html).


=head2 PutFunctionEventInvokeConfig

=over

=item FunctionName => Str

=item [DestinationConfig => L<Paws::Lambda::DestinationConfig>]

=item [MaximumEventAgeInSeconds => Int]

=item [MaximumRetryAttempts => Int]

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::PutFunctionEventInvokeConfig>

Returns: a L<Paws::Lambda::FunctionEventInvokeConfig> instance

Configures options for asynchronous invocation
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html) on
a function, version, or alias. If a configuration already exists for a
function, version, or alias, this operation overwrites it. If you
exclude any settings, they are removed. To set one option without
affecting existing settings for other options, use
UpdateFunctionEventInvokeConfig.

By default, Lambda retries an asynchronous invocation twice if the
function returns an error. It retains events in a queue for up to six
hours. When an event fails all processing attempts or stays in the
asynchronous invocation queue for too long, Lambda discards it. To
retain discarded events, configure a dead-letter queue with
UpdateFunctionConfiguration.

To send an invocation record to a queue, topic, S3 bucket, function, or
event bus, specify a destination
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations).
You can configure separate destinations for successful invocations
(on-success) and events that fail all processing attempts (on-failure).
You can configure destinations in addition to or instead of a
dead-letter queue.

S3 buckets are supported only for on-failure destinations. To retain
records of successful invocations, use another destination type.


=head2 PutFunctionRecursionConfig

=over

=item FunctionName => Str

=item RecursiveLoop => Str


=back

Each argument is described in detail in: L<Paws::Lambda::PutFunctionRecursionConfig>

Returns: a L<Paws::Lambda::PutFunctionRecursionConfigResponse> instance

Sets your function's recursive loop detection
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-recursion.html)
configuration.

When you configure a Lambda function to output to the same service or
resource that invokes the function, it's possible to create an infinite
recursive loop. For example, a Lambda function might write a message to
an Amazon Simple Queue Service (Amazon SQS) queue, which then invokes
the same function. This invocation causes the function to write another
message to the queue, which in turn invokes the function again.

Lambda can detect certain types of recursive loops shortly after they
occur. When Lambda detects a recursive loop and your function's
recursive loop detection configuration is set to C<Terminate>, it stops
your function being invoked and notifies you.


=head2 PutProvisionedConcurrencyConfig

=over

=item FunctionName => Str

=item ProvisionedConcurrentExecutions => Int

=item Qualifier => Str


=back

Each argument is described in detail in: L<Paws::Lambda::PutProvisionedConcurrencyConfig>

Returns: a L<Paws::Lambda::PutProvisionedConcurrencyConfigResponse> instance

Adds a provisioned concurrency configuration to a function's alias or
version.


=head2 PutRuntimeManagementConfig

=over

=item FunctionName => Str

=item UpdateRuntimeOn => Str

=item [Qualifier => Str]

=item [RuntimeVersionArn => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::PutRuntimeManagementConfig>

Returns: a L<Paws::Lambda::PutRuntimeManagementConfigResponse> instance

Sets the runtime management configuration for a function's version. For
more information, see Runtime updates
(https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html).


=head2 RemoveLayerVersionPermission

=over

=item LayerName => Str

=item StatementId => Str

=item VersionNumber => Int

=item [RevisionId => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::RemoveLayerVersionPermission>

Returns: nothing

Removes a statement from the permissions policy for a version of an
Lambda layer
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
For more information, see AddLayerVersionPermission.


=head2 RemovePermission

=over

=item FunctionName => Str

=item StatementId => Str

=item [Qualifier => Str]

=item [RevisionId => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::RemovePermission>

Returns: nothing

Revokes function-use permission from an Amazon Web Services service or
another Amazon Web Services account. You can get the ID of the
statement from the output of GetPolicy.


=head2 TagResource

=over

=item Resource => Str

=item Tags => L<Paws::Lambda::Tags>


=back

Each argument is described in detail in: L<Paws::Lambda::TagResource>

Returns: nothing

Adds tags (https://docs.aws.amazon.com/lambda/latest/dg/tagging.html)
to a function, event source mapping, or code signing configuration.


=head2 UntagResource

=over

=item Resource => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Lambda::UntagResource>

Returns: nothing

Removes tags
(https://docs.aws.amazon.com/lambda/latest/dg/tagging.html) from a
function, event source mapping, or code signing configuration.


=head2 UpdateAlias

=over

=item FunctionName => Str

=item Name => Str

=item [Description => Str]

=item [FunctionVersion => Str]

=item [RevisionId => Str]

=item [RoutingConfig => L<Paws::Lambda::AliasRoutingConfiguration>]


=back

Each argument is described in detail in: L<Paws::Lambda::UpdateAlias>

Returns: a L<Paws::Lambda::AliasConfiguration> instance

Updates the configuration of a Lambda function alias
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html).


=head2 UpdateCodeSigningConfig

=over

=item CodeSigningConfigArn => Str

=item [AllowedPublishers => L<Paws::Lambda::AllowedPublishers>]

=item [CodeSigningPolicies => L<Paws::Lambda::CodeSigningPolicies>]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::UpdateCodeSigningConfig>

Returns: a L<Paws::Lambda::UpdateCodeSigningConfigResponse> instance

Update the code signing configuration. Changes to the code signing
configuration take effect the next time a user tries to deploy a code
package to the function.


=head2 UpdateEventSourceMapping

=over

=item UUID => Str

=item [BatchSize => Int]

=item [BisectBatchOnFunctionError => Bool]

=item [DestinationConfig => L<Paws::Lambda::DestinationConfig>]

=item [DocumentDBEventSourceConfig => L<Paws::Lambda::DocumentDBEventSourceConfig>]

=item [Enabled => Bool]

=item [FilterCriteria => L<Paws::Lambda::FilterCriteria>]

=item [FunctionName => Str]

=item [FunctionResponseTypes => ArrayRef[Str|Undef]]

=item [KMSKeyArn => Str]

=item [MaximumBatchingWindowInSeconds => Int]

=item [MaximumRecordAgeInSeconds => Int]

=item [MaximumRetryAttempts => Int]

=item [MetricsConfig => L<Paws::Lambda::EventSourceMappingMetricsConfig>]

=item [ParallelizationFactor => Int]

=item [ProvisionedPollerConfig => L<Paws::Lambda::ProvisionedPollerConfig>]

=item [ScalingConfig => L<Paws::Lambda::ScalingConfig>]

=item [SourceAccessConfigurations => ArrayRef[L<Paws::Lambda::SourceAccessConfiguration>]]

=item [TumblingWindowInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::UpdateEventSourceMapping>

Returns: a L<Paws::Lambda::EventSourceMappingConfiguration> instance

Updates an event source mapping. You can change the function that
Lambda invokes, or pause invocation and resume later from the same
location.

For details about how to configure different event sources, see the
following topics.

=over

=item *

Amazon DynamoDB Streams
(https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping)

=item *

Amazon Kinesis
(https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping)

=item *

Amazon SQS
(https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource)

=item *

Amazon MQ and RabbitMQ
(https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping)

=item *

Amazon MSK (https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html)

=item *

Apache Kafka
(https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html)

=item *

Amazon DocumentDB
(https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html)

=back

The following error handling options are available only for DynamoDB
and Kinesis event sources:

=over

=item *

C<BisectBatchOnFunctionError> E<ndash> If the function returns an
error, split the batch in two and retry.

=item *

C<MaximumRecordAgeInSeconds> E<ndash> Discard records older than the
specified age. The default value is infinite (-1). When set to infinite
(-1), failed records are retried until the record expires

=item *

C<MaximumRetryAttempts> E<ndash> Discard records after the specified
number of retries. The default value is infinite (-1). When set to
infinite (-1), failed records are retried until the record expires.

=item *

C<ParallelizationFactor> E<ndash> Process multiple batches from each
shard concurrently.

=back

For stream sources (DynamoDB, Kinesis, Amazon MSK, and self-managed
Apache Kafka), the following option is also available:

=over

=item *

C<DestinationConfig> E<ndash> Send discarded records to an Amazon SQS
queue, Amazon SNS topic, or Amazon S3 bucket.

=back

For information about which configuration parameters apply to each
event source, see the following topics.

=over

=item *

Amazon DynamoDB Streams
(https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-params)

=item *

Amazon Kinesis
(https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-params)

=item *

Amazon SQS
(https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#services-sqs-params)

=item *

Amazon MQ and RabbitMQ
(https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-params)

=item *

Amazon MSK
(https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-parms)

=item *

Apache Kafka
(https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-kafka-parms)

=item *

Amazon DocumentDB
(https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html#docdb-configuration)

=back



=head2 UpdateFunctionCode

=over

=item FunctionName => Str

=item [Architectures => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [ImageUri => Str]

=item [Publish => Bool]

=item [RevisionId => Str]

=item [S3Bucket => Str]

=item [S3Key => Str]

=item [S3ObjectVersion => Str]

=item [SourceKMSKeyArn => Str]

=item [ZipFile => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::UpdateFunctionCode>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

Updates a Lambda function's code. If code signing is enabled for the
function, the code package must be signed by a trusted publisher. For
more information, see Configuring code signing for Lambda
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html).

If the function's package type is C<Image>, then you must specify the
code package in C<ImageUri> as the URI of a container image
(https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html) in
the Amazon ECR registry.

If the function's package type is C<Zip>, then you must specify the
deployment package as a .zip file archive
(https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip).
Enter the Amazon S3 bucket and key of the code .zip file location. You
can also provide the function code inline using the C<ZipFile> field.

The code in the deployment package must be compatible with the target
instruction set architecture of the function (C<x86-64> or C<arm64>).

The function's code is locked when you publish a version. You can't
modify the code of a published version, only the unpublished version.

For a function defined as a container image, Lambda resolves the image
tag to an image digest. In Amazon ECR, if you update the image tag to a
new image, Lambda does not automatically update the function.


=head2 UpdateFunctionConfiguration

=over

=item FunctionName => Str

=item [DeadLetterConfig => L<Paws::Lambda::DeadLetterConfig>]

=item [Description => Str]

=item [Environment => L<Paws::Lambda::Environment>]

=item [EphemeralStorage => L<Paws::Lambda::EphemeralStorage>]

=item [FileSystemConfigs => ArrayRef[L<Paws::Lambda::FileSystemConfig>]]

=item [Handler => Str]

=item [ImageConfig => L<Paws::Lambda::ImageConfig>]

=item [KMSKeyArn => Str]

=item [Layers => ArrayRef[Str|Undef]]

=item [LoggingConfig => L<Paws::Lambda::LoggingConfig>]

=item [MemorySize => Int]

=item [RevisionId => Str]

=item [Role => Str]

=item [Runtime => Str]

=item [SnapStart => L<Paws::Lambda::SnapStart>]

=item [Timeout => Int]

=item [TracingConfig => L<Paws::Lambda::TracingConfig>]

=item [VpcConfig => L<Paws::Lambda::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::Lambda::UpdateFunctionConfiguration>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

Modify the version-specific settings of a Lambda function.

When you update a function, Lambda provisions an instance of the
function and its supporting resources. If your function connects to a
VPC, this process can take a minute. During this time, you can't modify
the function, but you can still invoke it. The C<LastUpdateStatus>,
C<LastUpdateStatusReason>, and C<LastUpdateStatusReasonCode> fields in
the response from GetFunctionConfiguration indicate when the update is
complete and the function is processing events with the new
configuration. For more information, see Lambda function states
(https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html).

These settings can vary between versions of a function and are locked
when you publish a version. You can't modify the configuration of a
published version, only the unpublished version.

To configure function concurrency, use PutFunctionConcurrency. To grant
invoke permissions to an Amazon Web Services account or Amazon Web
Services service, use AddPermission.


=head2 UpdateFunctionEventInvokeConfig

=over

=item FunctionName => Str

=item [DestinationConfig => L<Paws::Lambda::DestinationConfig>]

=item [MaximumEventAgeInSeconds => Int]

=item [MaximumRetryAttempts => Int]

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::UpdateFunctionEventInvokeConfig>

Returns: a L<Paws::Lambda::FunctionEventInvokeConfig> instance

Updates the configuration for asynchronous invocation for a function,
version, or alias.

To configure options for asynchronous invocation, use
PutFunctionEventInvokeConfig.


=head2 UpdateFunctionUrlConfig

=over

=item FunctionName => Str

=item [AuthType => Str]

=item [Cors => L<Paws::Lambda::Cors>]

=item [InvokeMode => Str]

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::UpdateFunctionUrlConfig>

Returns: a L<Paws::Lambda::UpdateFunctionUrlConfigResponse> instance

Updates the configuration for a Lambda function URL.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAliases(sub { },FunctionName => Str, [FunctionVersion => Str, Marker => Str, MaxItems => Int])

=head2 ListAllAliases(FunctionName => Str, [FunctionVersion => Str, Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Aliases, passing the object as the first parameter, and the string 'Aliases' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListAliasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCodeSigningConfigs(sub { },[Marker => Str, MaxItems => Int])

=head2 ListAllCodeSigningConfigs([Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CodeSigningConfigs, passing the object as the first parameter, and the string 'CodeSigningConfigs' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListCodeSigningConfigsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEventSourceMappings(sub { },[EventSourceArn => Str, FunctionName => Str, Marker => Str, MaxItems => Int])

=head2 ListAllEventSourceMappings([EventSourceArn => Str, FunctionName => Str, Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EventSourceMappings, passing the object as the first parameter, and the string 'EventSourceMappings' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListEventSourceMappingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFunctionEventInvokeConfigs(sub { },FunctionName => Str, [Marker => Str, MaxItems => Int])

=head2 ListAllFunctionEventInvokeConfigs(FunctionName => Str, [Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FunctionEventInvokeConfigs, passing the object as the first parameter, and the string 'FunctionEventInvokeConfigs' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListFunctionEventInvokeConfigsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFunctions(sub { },[FunctionVersion => Str, Marker => Str, MasterRegion => Str, MaxItems => Int])

=head2 ListAllFunctions([FunctionVersion => Str, Marker => Str, MasterRegion => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Functions, passing the object as the first parameter, and the string 'Functions' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListFunctionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFunctionsByCodeSigningConfig(sub { },CodeSigningConfigArn => Str, [Marker => Str, MaxItems => Int])

=head2 ListAllFunctionsByCodeSigningConfig(CodeSigningConfigArn => Str, [Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FunctionArns, passing the object as the first parameter, and the string 'FunctionArns' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListFunctionsByCodeSigningConfigResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFunctionUrlConfigs(sub { },FunctionName => Str, [Marker => Str, MaxItems => Int])

=head2 ListAllFunctionUrlConfigs(FunctionName => Str, [Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FunctionUrlConfigs, passing the object as the first parameter, and the string 'FunctionUrlConfigs' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListFunctionUrlConfigsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLayers(sub { },[CompatibleArchitecture => Str, CompatibleRuntime => Str, Marker => Str, MaxItems => Int])

=head2 ListAllLayers([CompatibleArchitecture => Str, CompatibleRuntime => Str, Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Layers, passing the object as the first parameter, and the string 'Layers' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListLayersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLayerVersions(sub { },LayerName => Str, [CompatibleArchitecture => Str, CompatibleRuntime => Str, Marker => Str, MaxItems => Int])

=head2 ListAllLayerVersions(LayerName => Str, [CompatibleArchitecture => Str, CompatibleRuntime => Str, Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LayerVersions, passing the object as the first parameter, and the string 'LayerVersions' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListLayerVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProvisionedConcurrencyConfigs(sub { },FunctionName => Str, [Marker => Str, MaxItems => Int])

=head2 ListAllProvisionedConcurrencyConfigs(FunctionName => Str, [Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProvisionedConcurrencyConfigs, passing the object as the first parameter, and the string 'ProvisionedConcurrencyConfigs' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListProvisionedConcurrencyConfigsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVersionsByFunction(sub { },FunctionName => Str, [Marker => Str, MaxItems => Int])

=head2 ListAllVersionsByFunction(FunctionName => Str, [Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Versions, passing the object as the first parameter, and the string 'Versions' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListVersionsByFunctionResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

