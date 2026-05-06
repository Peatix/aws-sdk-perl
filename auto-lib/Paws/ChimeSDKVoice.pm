package Paws::ChimeSDKVoice;
  use Moose;
  sub service { 'voice-chime' }
  sub signing_name { 'chime' }
  sub version { '2022-08-03' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociatePhoneNumbersWithVoiceConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::AssociatePhoneNumbersWithVoiceConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociatePhoneNumbersWithVoiceConnectorGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::AssociatePhoneNumbersWithVoiceConnectorGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeletePhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::BatchDeletePhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdatePhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::BatchUpdatePhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePhoneNumberOrder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::CreatePhoneNumberOrder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProxySession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::CreateProxySession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSipMediaApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::CreateSipMediaApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSipMediaApplicationCall {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::CreateSipMediaApplicationCall', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSipRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::CreateSipRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVoiceConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::CreateVoiceConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVoiceConnectorGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::CreateVoiceConnectorGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVoiceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::CreateVoiceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVoiceProfileDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::CreateVoiceProfileDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::DeletePhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProxySession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::DeleteProxySession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSipMediaApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::DeleteSipMediaApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSipRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::DeleteSipRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::DeleteVoiceConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceConnectorEmergencyCallingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::DeleteVoiceConnectorEmergencyCallingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceConnectorExternalSystemsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::DeleteVoiceConnectorExternalSystemsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceConnectorGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::DeleteVoiceConnectorGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceConnectorOrigination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::DeleteVoiceConnectorOrigination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceConnectorProxy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::DeleteVoiceConnectorProxy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceConnectorStreamingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::DeleteVoiceConnectorStreamingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceConnectorTermination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::DeleteVoiceConnectorTermination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceConnectorTerminationCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::DeleteVoiceConnectorTerminationCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::DeleteVoiceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceProfileDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::DeleteVoiceProfileDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociatePhoneNumbersFromVoiceConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::DisassociatePhoneNumbersFromVoiceConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociatePhoneNumbersFromVoiceConnectorGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::DisassociatePhoneNumbersFromVoiceConnectorGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGlobalSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetGlobalSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetPhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPhoneNumberOrder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetPhoneNumberOrder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPhoneNumberSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetPhoneNumberSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProxySession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetProxySession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSipMediaApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetSipMediaApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSipMediaApplicationAlexaSkillConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetSipMediaApplicationAlexaSkillConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSipMediaApplicationLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetSipMediaApplicationLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSipRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetSipRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSpeakerSearchTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetSpeakerSearchTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetVoiceConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceConnectorEmergencyCallingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetVoiceConnectorEmergencyCallingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceConnectorExternalSystemsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetVoiceConnectorExternalSystemsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceConnectorGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetVoiceConnectorGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceConnectorLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetVoiceConnectorLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceConnectorOrigination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetVoiceConnectorOrigination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceConnectorProxy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetVoiceConnectorProxy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceConnectorStreamingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetVoiceConnectorStreamingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceConnectorTermination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetVoiceConnectorTermination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceConnectorTerminationHealth {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetVoiceConnectorTerminationHealth', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetVoiceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceProfileDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetVoiceProfileDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceToneAnalysisTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::GetVoiceToneAnalysisTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAvailableVoiceConnectorRegions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::ListAvailableVoiceConnectorRegions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPhoneNumberOrders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::ListPhoneNumberOrders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPhoneNumbers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::ListPhoneNumbers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProxySessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::ListProxySessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSipMediaApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::ListSipMediaApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSipRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::ListSipRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSupportedPhoneNumberCountries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::ListSupportedPhoneNumberCountries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVoiceConnectorGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::ListVoiceConnectorGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVoiceConnectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::ListVoiceConnectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVoiceConnectorTerminationCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::ListVoiceConnectorTerminationCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVoiceProfileDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::ListVoiceProfileDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVoiceProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::ListVoiceProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSipMediaApplicationAlexaSkillConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::PutSipMediaApplicationAlexaSkillConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSipMediaApplicationLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::PutSipMediaApplicationLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutVoiceConnectorEmergencyCallingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::PutVoiceConnectorEmergencyCallingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutVoiceConnectorExternalSystemsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::PutVoiceConnectorExternalSystemsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutVoiceConnectorLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::PutVoiceConnectorLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutVoiceConnectorOrigination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::PutVoiceConnectorOrigination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutVoiceConnectorProxy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::PutVoiceConnectorProxy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutVoiceConnectorStreamingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::PutVoiceConnectorStreamingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutVoiceConnectorTermination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::PutVoiceConnectorTermination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutVoiceConnectorTerminationCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::PutVoiceConnectorTerminationCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestorePhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::RestorePhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchAvailablePhoneNumbers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::SearchAvailablePhoneNumbers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSpeakerSearchTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::StartSpeakerSearchTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartVoiceToneAnalysisTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::StartVoiceToneAnalysisTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopSpeakerSearchTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::StopSpeakerSearchTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopVoiceToneAnalysisTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::StopVoiceToneAnalysisTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGlobalSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::UpdateGlobalSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::UpdatePhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePhoneNumberSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::UpdatePhoneNumberSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProxySession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::UpdateProxySession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSipMediaApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::UpdateSipMediaApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSipMediaApplicationCall {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::UpdateSipMediaApplicationCall', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSipRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::UpdateSipRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVoiceConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::UpdateVoiceConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVoiceConnectorGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::UpdateVoiceConnectorGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVoiceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::UpdateVoiceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVoiceProfileDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::UpdateVoiceProfileDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ValidateE911Address {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKVoice::ValidateE911Address', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllSipMediaApplications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSipMediaApplications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSipMediaApplications(@_, NextToken => $next_result->NextToken);
        push @{ $result->SipMediaApplications }, @{ $next_result->SipMediaApplications };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SipMediaApplications') foreach (@{ $result->SipMediaApplications });
        $result = $self->ListSipMediaApplications(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SipMediaApplications') foreach (@{ $result->SipMediaApplications });
    }

    return undef
  }
  sub ListAllSipRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSipRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSipRules(@_, NextToken => $next_result->NextToken);
        push @{ $result->SipRules }, @{ $next_result->SipRules };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SipRules') foreach (@{ $result->SipRules });
        $result = $self->ListSipRules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SipRules') foreach (@{ $result->SipRules });
    }

    return undef
  }


  sub operations { qw/AssociatePhoneNumbersWithVoiceConnector AssociatePhoneNumbersWithVoiceConnectorGroup BatchDeletePhoneNumber BatchUpdatePhoneNumber CreatePhoneNumberOrder CreateProxySession CreateSipMediaApplication CreateSipMediaApplicationCall CreateSipRule CreateVoiceConnector CreateVoiceConnectorGroup CreateVoiceProfile CreateVoiceProfileDomain DeletePhoneNumber DeleteProxySession DeleteSipMediaApplication DeleteSipRule DeleteVoiceConnector DeleteVoiceConnectorEmergencyCallingConfiguration DeleteVoiceConnectorExternalSystemsConfiguration DeleteVoiceConnectorGroup DeleteVoiceConnectorOrigination DeleteVoiceConnectorProxy DeleteVoiceConnectorStreamingConfiguration DeleteVoiceConnectorTermination DeleteVoiceConnectorTerminationCredentials DeleteVoiceProfile DeleteVoiceProfileDomain DisassociatePhoneNumbersFromVoiceConnector DisassociatePhoneNumbersFromVoiceConnectorGroup GetGlobalSettings GetPhoneNumber GetPhoneNumberOrder GetPhoneNumberSettings GetProxySession GetSipMediaApplication GetSipMediaApplicationAlexaSkillConfiguration GetSipMediaApplicationLoggingConfiguration GetSipRule GetSpeakerSearchTask GetVoiceConnector GetVoiceConnectorEmergencyCallingConfiguration GetVoiceConnectorExternalSystemsConfiguration GetVoiceConnectorGroup GetVoiceConnectorLoggingConfiguration GetVoiceConnectorOrigination GetVoiceConnectorProxy GetVoiceConnectorStreamingConfiguration GetVoiceConnectorTermination GetVoiceConnectorTerminationHealth GetVoiceProfile GetVoiceProfileDomain GetVoiceToneAnalysisTask ListAvailableVoiceConnectorRegions ListPhoneNumberOrders ListPhoneNumbers ListProxySessions ListSipMediaApplications ListSipRules ListSupportedPhoneNumberCountries ListTagsForResource ListVoiceConnectorGroups ListVoiceConnectors ListVoiceConnectorTerminationCredentials ListVoiceProfileDomains ListVoiceProfiles PutSipMediaApplicationAlexaSkillConfiguration PutSipMediaApplicationLoggingConfiguration PutVoiceConnectorEmergencyCallingConfiguration PutVoiceConnectorExternalSystemsConfiguration PutVoiceConnectorLoggingConfiguration PutVoiceConnectorOrigination PutVoiceConnectorProxy PutVoiceConnectorStreamingConfiguration PutVoiceConnectorTermination PutVoiceConnectorTerminationCredentials RestorePhoneNumber SearchAvailablePhoneNumbers StartSpeakerSearchTask StartVoiceToneAnalysisTask StopSpeakerSearchTask StopVoiceToneAnalysisTask TagResource UntagResource UpdateGlobalSettings UpdatePhoneNumber UpdatePhoneNumberSettings UpdateProxySession UpdateSipMediaApplication UpdateSipMediaApplicationCall UpdateSipRule UpdateVoiceConnector UpdateVoiceConnectorGroup UpdateVoiceProfile UpdateVoiceProfileDomain ValidateE911Address / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice - Perl Interface to AWS Amazon Chime SDK Voice

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ChimeSDKVoice');
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

The Amazon Chime SDK telephony APIs in this section enable developers
to create PSTN calling solutions that use Amazon Chime SDK Voice
Connectors, and Amazon Chime SDK SIP media applications. Developers can
also order and manage phone numbers, create and manage Voice Connectors
and SIP media applications, and run voice analytics.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociatePhoneNumbersWithVoiceConnector

=over

=item E164PhoneNumbers => ArrayRef[Str|Undef]

=item VoiceConnectorId => Str

=item [ForceAssociate => Bool]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::AssociatePhoneNumbersWithVoiceConnector>

Returns: a L<Paws::ChimeSDKVoice::AssociatePhoneNumbersWithVoiceConnectorResponse> instance

Associates phone numbers with the specified Amazon Chime SDK Voice
Connector.


=head2 AssociatePhoneNumbersWithVoiceConnectorGroup

=over

=item E164PhoneNumbers => ArrayRef[Str|Undef]

=item VoiceConnectorGroupId => Str

=item [ForceAssociate => Bool]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::AssociatePhoneNumbersWithVoiceConnectorGroup>

Returns: a L<Paws::ChimeSDKVoice::AssociatePhoneNumbersWithVoiceConnectorGroupResponse> instance

Associates phone numbers with the specified Amazon Chime SDK Voice
Connector group.


=head2 BatchDeletePhoneNumber

=over

=item PhoneNumberIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::BatchDeletePhoneNumber>

Returns: a L<Paws::ChimeSDKVoice::BatchDeletePhoneNumberResponse> instance

Moves phone numbers into the B<Deletion queue>. Phone numbers must be
disassociated from any users or Amazon Chime SDK Voice Connectors
before they can be deleted.

Phone numbers remain in the B<Deletion queue> for 7 days before they
are deleted permanently.


=head2 BatchUpdatePhoneNumber

=over

=item UpdatePhoneNumberRequestItems => ArrayRef[L<Paws::ChimeSDKVoice::UpdatePhoneNumberRequestItem>]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::BatchUpdatePhoneNumber>

Returns: a L<Paws::ChimeSDKVoice::BatchUpdatePhoneNumberResponse> instance

Updates phone number product types, calling names, or phone number
names. You can update one attribute at a time for each
C<UpdatePhoneNumberRequestItem>. For example, you can update the
product type, the calling name, or phone name.

You cannot have a duplicate C<phoneNumberId> in a request.


=head2 CreatePhoneNumberOrder

=over

=item E164PhoneNumbers => ArrayRef[Str|Undef]

=item ProductType => Str

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::CreatePhoneNumberOrder>

Returns: a L<Paws::ChimeSDKVoice::CreatePhoneNumberOrderResponse> instance

Creates an order for phone numbers to be provisioned. For numbers
outside the U.S., you must use the Amazon Chime SDK SIP media
application dial-in product type.


=head2 CreateProxySession

=over

=item Capabilities => ArrayRef[Str|Undef]

=item ParticipantPhoneNumbers => ArrayRef[Str|Undef]

=item VoiceConnectorId => Str

=item [ExpiryMinutes => Int]

=item [GeoMatchLevel => Str]

=item [GeoMatchParams => L<Paws::ChimeSDKVoice::GeoMatchParams>]

=item [Name => Str]

=item [NumberSelectionBehavior => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::CreateProxySession>

Returns: a L<Paws::ChimeSDKVoice::CreateProxySessionResponse> instance

Creates a proxy session for the specified Amazon Chime SDK Voice
Connector for the specified participant phone numbers.


=head2 CreateSipMediaApplication

=over

=item AwsRegion => Str

=item Endpoints => ArrayRef[L<Paws::ChimeSDKVoice::SipMediaApplicationEndpoint>]

=item Name => Str

=item [Tags => ArrayRef[L<Paws::ChimeSDKVoice::Tag>]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::CreateSipMediaApplication>

Returns: a L<Paws::ChimeSDKVoice::CreateSipMediaApplicationResponse> instance

Creates a SIP media application. For more information about SIP media
applications, see Managing SIP media applications and rules
(https://docs.aws.amazon.com/chime-sdk/latest/ag/manage-sip-applications.html)
in the I<Amazon Chime SDK Administrator Guide>.


=head2 CreateSipMediaApplicationCall

=over

=item FromPhoneNumber => Str

=item SipMediaApplicationId => Str

=item ToPhoneNumber => Str

=item [ArgumentsMap => L<Paws::ChimeSDKVoice::SMACreateCallArgumentsMap>]

=item [SipHeaders => L<Paws::ChimeSDKVoice::SipHeadersMap>]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::CreateSipMediaApplicationCall>

Returns: a L<Paws::ChimeSDKVoice::CreateSipMediaApplicationCallResponse> instance

Creates an outbound call to a phone number from the phone number
specified in the request, and it invokes the endpoint of the specified
C<sipMediaApplicationId>.


=head2 CreateSipRule

=over

=item Name => Str

=item TriggerType => Str

=item TriggerValue => Str

=item [Disabled => Bool]

=item [TargetApplications => ArrayRef[L<Paws::ChimeSDKVoice::SipRuleTargetApplication>]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::CreateSipRule>

Returns: a L<Paws::ChimeSDKVoice::CreateSipRuleResponse> instance

Creates a SIP rule, which can be used to run a SIP media application as
a target for a specific trigger type. For more information about SIP
rules, see Managing SIP media applications and rules
(https://docs.aws.amazon.com/chime-sdk/latest/ag/manage-sip-applications.html)
in the I<Amazon Chime SDK Administrator Guide>.


=head2 CreateVoiceConnector

=over

=item Name => Str

=item RequireEncryption => Bool

=item [AwsRegion => Str]

=item [IntegrationType => Str]

=item [Tags => ArrayRef[L<Paws::ChimeSDKVoice::Tag>]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::CreateVoiceConnector>

Returns: a L<Paws::ChimeSDKVoice::CreateVoiceConnectorResponse> instance

Creates an Amazon Chime SDK Voice Connector. For more information about
Voice Connectors, see Managing Amazon Chime SDK Voice Connector groups
(https://docs.aws.amazon.com/chime-sdk/latest/ag/voice-connector-groups.html)
in the I<Amazon Chime SDK Administrator Guide>.


=head2 CreateVoiceConnectorGroup

=over

=item Name => Str

=item [VoiceConnectorItems => ArrayRef[L<Paws::ChimeSDKVoice::VoiceConnectorItem>]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::CreateVoiceConnectorGroup>

Returns: a L<Paws::ChimeSDKVoice::CreateVoiceConnectorGroupResponse> instance

Creates an Amazon Chime SDK Voice Connector group under the
administrator's AWS account. You can associate Amazon Chime SDK Voice
Connectors with the Voice Connector group by including
C<VoiceConnectorItems> in the request.

You can include Voice Connectors from different AWS Regions in your
group. This creates a fault tolerant mechanism for fallback in case of
availability events.


=head2 CreateVoiceProfile

=over

=item SpeakerSearchTaskId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::CreateVoiceProfile>

Returns: a L<Paws::ChimeSDKVoice::CreateVoiceProfileResponse> instance

Creates a voice profile, which consists of an enrolled user and their
latest voice print.

Before creating any voice profiles, you must provide all notices and
obtain all consents from the speaker as required under applicable
privacy and biometrics laws, and as required under the AWS service
terms (https://aws.amazon.com/service-terms/) for the Amazon Chime SDK.

For more information about voice profiles and voice analytics, see
Using Amazon Chime SDK Voice Analytics
(https://docs.aws.amazon.com/chime-sdk/latest/dg/pstn-voice-analytics.html)
in the I<Amazon Chime SDK Developer Guide>.


=head2 CreateVoiceProfileDomain

=over

=item Name => Str

=item ServerSideEncryptionConfiguration => L<Paws::ChimeSDKVoice::ServerSideEncryptionConfiguration>

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::ChimeSDKVoice::Tag>]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::CreateVoiceProfileDomain>

Returns: a L<Paws::ChimeSDKVoice::CreateVoiceProfileDomainResponse> instance

Creates a voice profile domain, a collection of voice profiles, their
voice prints, and encrypted enrollment audio.

Before creating any voice profiles, you must provide all notices and
obtain all consents from the speaker as required under applicable
privacy and biometrics laws, and as required under the AWS service
terms (https://aws.amazon.com/service-terms/) for the Amazon Chime SDK.

For more information about voice profile domains, see Using Amazon
Chime SDK Voice Analytics
(https://docs.aws.amazon.com/chime-sdk/latest/dg/pstn-voice-analytics.html)
in the I<Amazon Chime SDK Developer Guide>.


=head2 DeletePhoneNumber

=over

=item PhoneNumberId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::DeletePhoneNumber>

Returns: nothing

Moves the specified phone number into the B<Deletion queue>. A phone
number must be disassociated from any users or Amazon Chime SDK Voice
Connectors before it can be deleted.

Deleted phone numbers remain in the B<Deletion queue> queue for 7 days
before they are deleted permanently.


=head2 DeleteProxySession

=over

=item ProxySessionId => Str

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::DeleteProxySession>

Returns: nothing

Deletes the specified proxy session from the specified Amazon Chime SDK
Voice Connector.


=head2 DeleteSipMediaApplication

=over

=item SipMediaApplicationId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::DeleteSipMediaApplication>

Returns: nothing

Deletes a SIP media application.


=head2 DeleteSipRule

=over

=item SipRuleId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::DeleteSipRule>

Returns: nothing

Deletes a SIP rule.


=head2 DeleteVoiceConnector

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::DeleteVoiceConnector>

Returns: nothing

Deletes an Amazon Chime SDK Voice Connector. Any phone numbers
associated with the Amazon Chime SDK Voice Connector must be
disassociated from it before it can be deleted.


=head2 DeleteVoiceConnectorEmergencyCallingConfiguration

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::DeleteVoiceConnectorEmergencyCallingConfiguration>

Returns: nothing

Deletes the emergency calling details from the specified Amazon Chime
SDK Voice Connector.


=head2 DeleteVoiceConnectorExternalSystemsConfiguration

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::DeleteVoiceConnectorExternalSystemsConfiguration>

Returns: nothing

Deletes the external systems configuration for a Voice Connector.


=head2 DeleteVoiceConnectorGroup

=over

=item VoiceConnectorGroupId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::DeleteVoiceConnectorGroup>

Returns: nothing

Deletes an Amazon Chime SDK Voice Connector group. Any
C<VoiceConnectorItems> and phone numbers associated with the group must
be removed before it can be deleted.


=head2 DeleteVoiceConnectorOrigination

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::DeleteVoiceConnectorOrigination>

Returns: nothing

Deletes the origination settings for the specified Amazon Chime SDK
Voice Connector.

If emergency calling is configured for the Voice Connector, it must be
deleted prior to deleting the origination settings.


=head2 DeleteVoiceConnectorProxy

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::DeleteVoiceConnectorProxy>

Returns: nothing

Deletes the proxy configuration from the specified Amazon Chime SDK
Voice Connector.


=head2 DeleteVoiceConnectorStreamingConfiguration

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::DeleteVoiceConnectorStreamingConfiguration>

Returns: nothing

Deletes a Voice Connector's streaming configuration.


=head2 DeleteVoiceConnectorTermination

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::DeleteVoiceConnectorTermination>

Returns: nothing

Deletes the termination settings for the specified Amazon Chime SDK
Voice Connector.

If emergency calling is configured for the Voice Connector, it must be
deleted prior to deleting the termination settings.


=head2 DeleteVoiceConnectorTerminationCredentials

=over

=item Usernames => ArrayRef[Str|Undef]

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::DeleteVoiceConnectorTerminationCredentials>

Returns: nothing

Deletes the specified SIP credentials used by your equipment to
authenticate during call termination.


=head2 DeleteVoiceProfile

=over

=item VoiceProfileId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::DeleteVoiceProfile>

Returns: nothing

Deletes a voice profile, including its voice print and enrollment data.
WARNING: This action is not reversible.


=head2 DeleteVoiceProfileDomain

=over

=item VoiceProfileDomainId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::DeleteVoiceProfileDomain>

Returns: nothing

Deletes all voice profiles in the domain. WARNING: This action is not
reversible.


=head2 DisassociatePhoneNumbersFromVoiceConnector

=over

=item E164PhoneNumbers => ArrayRef[Str|Undef]

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::DisassociatePhoneNumbersFromVoiceConnector>

Returns: a L<Paws::ChimeSDKVoice::DisassociatePhoneNumbersFromVoiceConnectorResponse> instance

Disassociates the specified phone numbers from the specified Amazon
Chime SDK Voice Connector.


=head2 DisassociatePhoneNumbersFromVoiceConnectorGroup

=over

=item E164PhoneNumbers => ArrayRef[Str|Undef]

=item VoiceConnectorGroupId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::DisassociatePhoneNumbersFromVoiceConnectorGroup>

Returns: a L<Paws::ChimeSDKVoice::DisassociatePhoneNumbersFromVoiceConnectorGroupResponse> instance

Disassociates the specified phone numbers from the specified Amazon
Chime SDK Voice Connector group.


=head2 GetGlobalSettings

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetGlobalSettings>

Returns: a L<Paws::ChimeSDKVoice::GetGlobalSettingsResponse> instance

Retrieves the global settings for the Amazon Chime SDK Voice Connectors
in an AWS account.


=head2 GetPhoneNumber

=over

=item PhoneNumberId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetPhoneNumber>

Returns: a L<Paws::ChimeSDKVoice::GetPhoneNumberResponse> instance

Retrieves details for the specified phone number ID, such as
associations, capabilities, and product type.


=head2 GetPhoneNumberOrder

=over

=item PhoneNumberOrderId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetPhoneNumberOrder>

Returns: a L<Paws::ChimeSDKVoice::GetPhoneNumberOrderResponse> instance

Retrieves details for the specified phone number order, such as the
order creation timestamp, phone numbers in E.164 format, product type,
and order status.


=head2 GetPhoneNumberSettings

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetPhoneNumberSettings>

Returns: a L<Paws::ChimeSDKVoice::GetPhoneNumberSettingsResponse> instance

Retrieves the phone number settings for the administrator's AWS
account, such as the default outbound calling name.


=head2 GetProxySession

=over

=item ProxySessionId => Str

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetProxySession>

Returns: a L<Paws::ChimeSDKVoice::GetProxySessionResponse> instance

Retrieves the specified proxy session details for the specified Amazon
Chime SDK Voice Connector.


=head2 GetSipMediaApplication

=over

=item SipMediaApplicationId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetSipMediaApplication>

Returns: a L<Paws::ChimeSDKVoice::GetSipMediaApplicationResponse> instance

Retrieves the information for a SIP media application, including name,
AWS Region, and endpoints.


=head2 GetSipMediaApplicationAlexaSkillConfiguration

=over

=item SipMediaApplicationId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetSipMediaApplicationAlexaSkillConfiguration>

Returns: a L<Paws::ChimeSDKVoice::GetSipMediaApplicationAlexaSkillConfigurationResponse> instance

Gets the Alexa Skill configuration for the SIP media application.

Due to changes made by the Amazon Alexa service, this API is no longer
available for use. For more information, refer to the Alexa Smart
Properties
(https://developer.amazon.com/en-US/alexa/alexasmartproperties) page.


=head2 GetSipMediaApplicationLoggingConfiguration

=over

=item SipMediaApplicationId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetSipMediaApplicationLoggingConfiguration>

Returns: a L<Paws::ChimeSDKVoice::GetSipMediaApplicationLoggingConfigurationResponse> instance

Retrieves the logging configuration for the specified SIP media
application.


=head2 GetSipRule

=over

=item SipRuleId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetSipRule>

Returns: a L<Paws::ChimeSDKVoice::GetSipRuleResponse> instance

Retrieves the details of a SIP rule, such as the rule ID, name,
triggers, and target endpoints.


=head2 GetSpeakerSearchTask

=over

=item SpeakerSearchTaskId => Str

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetSpeakerSearchTask>

Returns: a L<Paws::ChimeSDKVoice::GetSpeakerSearchTaskResponse> instance

Retrieves the details of the specified speaker search task.


=head2 GetVoiceConnector

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetVoiceConnector>

Returns: a L<Paws::ChimeSDKVoice::GetVoiceConnectorResponse> instance

Retrieves details for the specified Amazon Chime SDK Voice Connector,
such as timestamps,name, outbound host, and encryption requirements.


=head2 GetVoiceConnectorEmergencyCallingConfiguration

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetVoiceConnectorEmergencyCallingConfiguration>

Returns: a L<Paws::ChimeSDKVoice::GetVoiceConnectorEmergencyCallingConfigurationResponse> instance

Retrieves the emergency calling configuration details for the specified
Voice Connector.


=head2 GetVoiceConnectorExternalSystemsConfiguration

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetVoiceConnectorExternalSystemsConfiguration>

Returns: a L<Paws::ChimeSDKVoice::GetVoiceConnectorExternalSystemsConfigurationResponse> instance

Gets information about an external systems configuration for a Voice
Connector.


=head2 GetVoiceConnectorGroup

=over

=item VoiceConnectorGroupId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetVoiceConnectorGroup>

Returns: a L<Paws::ChimeSDKVoice::GetVoiceConnectorGroupResponse> instance

Retrieves details for the specified Amazon Chime SDK Voice Connector
group, such as timestamps,name, and associated C<VoiceConnectorItems>.


=head2 GetVoiceConnectorLoggingConfiguration

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetVoiceConnectorLoggingConfiguration>

Returns: a L<Paws::ChimeSDKVoice::GetVoiceConnectorLoggingConfigurationResponse> instance

Retrieves the logging configuration settings for the specified Voice
Connector. Shows whether SIP message logs are enabled for sending to
Amazon CloudWatch Logs.


=head2 GetVoiceConnectorOrigination

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetVoiceConnectorOrigination>

Returns: a L<Paws::ChimeSDKVoice::GetVoiceConnectorOriginationResponse> instance

Retrieves the origination settings for the specified Voice Connector.


=head2 GetVoiceConnectorProxy

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetVoiceConnectorProxy>

Returns: a L<Paws::ChimeSDKVoice::GetVoiceConnectorProxyResponse> instance

Retrieves the proxy configuration details for the specified Amazon
Chime SDK Voice Connector.


=head2 GetVoiceConnectorStreamingConfiguration

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetVoiceConnectorStreamingConfiguration>

Returns: a L<Paws::ChimeSDKVoice::GetVoiceConnectorStreamingConfigurationResponse> instance

Retrieves the streaming configuration details for the specified Amazon
Chime SDK Voice Connector. Shows whether media streaming is enabled for
sending to Amazon Kinesis. It also shows the retention period, in
hours, for the Amazon Kinesis data.


=head2 GetVoiceConnectorTermination

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetVoiceConnectorTermination>

Returns: a L<Paws::ChimeSDKVoice::GetVoiceConnectorTerminationResponse> instance

Retrieves the termination setting details for the specified Voice
Connector.


=head2 GetVoiceConnectorTerminationHealth

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetVoiceConnectorTerminationHealth>

Returns: a L<Paws::ChimeSDKVoice::GetVoiceConnectorTerminationHealthResponse> instance

Retrieves information about the last time a C<SIP OPTIONS> ping was
received from your SIP infrastructure for the specified Amazon Chime
SDK Voice Connector.


=head2 GetVoiceProfile

=over

=item VoiceProfileId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetVoiceProfile>

Returns: a L<Paws::ChimeSDKVoice::GetVoiceProfileResponse> instance

Retrieves the details of the specified voice profile.


=head2 GetVoiceProfileDomain

=over

=item VoiceProfileDomainId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetVoiceProfileDomain>

Returns: a L<Paws::ChimeSDKVoice::GetVoiceProfileDomainResponse> instance

Retrieves the details of the specified voice profile domain.


=head2 GetVoiceToneAnalysisTask

=over

=item IsCaller => Bool

=item VoiceConnectorId => Str

=item VoiceToneAnalysisTaskId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::GetVoiceToneAnalysisTask>

Returns: a L<Paws::ChimeSDKVoice::GetVoiceToneAnalysisTaskResponse> instance

Retrieves the details of a voice tone analysis task.


=head2 ListAvailableVoiceConnectorRegions

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::ListAvailableVoiceConnectorRegions>

Returns: a L<Paws::ChimeSDKVoice::ListAvailableVoiceConnectorRegionsResponse> instance

Lists the available AWS Regions in which you can create an Amazon Chime
SDK Voice Connector.


=head2 ListPhoneNumberOrders

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::ListPhoneNumberOrders>

Returns: a L<Paws::ChimeSDKVoice::ListPhoneNumberOrdersResponse> instance

Lists the phone numbers for an administrator's Amazon Chime SDK
account.


=head2 ListPhoneNumbers

=over

=item [FilterName => Str]

=item [FilterValue => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProductType => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::ListPhoneNumbers>

Returns: a L<Paws::ChimeSDKVoice::ListPhoneNumbersResponse> instance

Lists the phone numbers for the specified Amazon Chime SDK account,
Amazon Chime SDK user, Amazon Chime SDK Voice Connector, or Amazon
Chime SDK Voice Connector group.


=head2 ListProxySessions

=over

=item VoiceConnectorId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::ListProxySessions>

Returns: a L<Paws::ChimeSDKVoice::ListProxySessionsResponse> instance

Lists the proxy sessions for the specified Amazon Chime SDK Voice
Connector.


=head2 ListSipMediaApplications

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::ListSipMediaApplications>

Returns: a L<Paws::ChimeSDKVoice::ListSipMediaApplicationsResponse> instance

Lists the SIP media applications under the administrator's AWS account.


=head2 ListSipRules

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SipMediaApplicationId => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::ListSipRules>

Returns: a L<Paws::ChimeSDKVoice::ListSipRulesResponse> instance

Lists the SIP rules under the administrator's AWS account.


=head2 ListSupportedPhoneNumberCountries

=over

=item ProductType => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::ListSupportedPhoneNumberCountries>

Returns: a L<Paws::ChimeSDKVoice::ListSupportedPhoneNumberCountriesResponse> instance

Lists the countries that you can order phone numbers from.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::ListTagsForResource>

Returns: a L<Paws::ChimeSDKVoice::ListTagsForResourceResponse> instance

Returns a list of the tags in a given resource.


=head2 ListVoiceConnectorGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::ListVoiceConnectorGroups>

Returns: a L<Paws::ChimeSDKVoice::ListVoiceConnectorGroupsResponse> instance

Lists the Amazon Chime SDK Voice Connector groups in the
administrator's AWS account.


=head2 ListVoiceConnectors

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::ListVoiceConnectors>

Returns: a L<Paws::ChimeSDKVoice::ListVoiceConnectorsResponse> instance

Lists the Amazon Chime SDK Voice Connectors in the administrators AWS
account.


=head2 ListVoiceConnectorTerminationCredentials

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::ListVoiceConnectorTerminationCredentials>

Returns: a L<Paws::ChimeSDKVoice::ListVoiceConnectorTerminationCredentialsResponse> instance

Lists the SIP credentials for the specified Amazon Chime SDK Voice
Connector.


=head2 ListVoiceProfileDomains

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::ListVoiceProfileDomains>

Returns: a L<Paws::ChimeSDKVoice::ListVoiceProfileDomainsResponse> instance

Lists the specified voice profile domains in the administrator's AWS
account.


=head2 ListVoiceProfiles

=over

=item VoiceProfileDomainId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::ListVoiceProfiles>

Returns: a L<Paws::ChimeSDKVoice::ListVoiceProfilesResponse> instance

Lists the voice profiles in a voice profile domain.


=head2 PutSipMediaApplicationAlexaSkillConfiguration

=over

=item SipMediaApplicationId => Str

=item [SipMediaApplicationAlexaSkillConfiguration => L<Paws::ChimeSDKVoice::SipMediaApplicationAlexaSkillConfiguration>]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::PutSipMediaApplicationAlexaSkillConfiguration>

Returns: a L<Paws::ChimeSDKVoice::PutSipMediaApplicationAlexaSkillConfigurationResponse> instance

Updates the Alexa Skill configuration for the SIP media application.

Due to changes made by the Amazon Alexa service, this API is no longer
available for use. For more information, refer to the Alexa Smart
Properties
(https://developer.amazon.com/en-US/alexa/alexasmartproperties) page.


=head2 PutSipMediaApplicationLoggingConfiguration

=over

=item SipMediaApplicationId => Str

=item [SipMediaApplicationLoggingConfiguration => L<Paws::ChimeSDKVoice::SipMediaApplicationLoggingConfiguration>]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::PutSipMediaApplicationLoggingConfiguration>

Returns: a L<Paws::ChimeSDKVoice::PutSipMediaApplicationLoggingConfigurationResponse> instance

Updates the logging configuration for the specified SIP media
application.


=head2 PutVoiceConnectorEmergencyCallingConfiguration

=over

=item EmergencyCallingConfiguration => L<Paws::ChimeSDKVoice::EmergencyCallingConfiguration>

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::PutVoiceConnectorEmergencyCallingConfiguration>

Returns: a L<Paws::ChimeSDKVoice::PutVoiceConnectorEmergencyCallingConfigurationResponse> instance

Updates a Voice Connector's emergency calling configuration.


=head2 PutVoiceConnectorExternalSystemsConfiguration

=over

=item VoiceConnectorId => Str

=item [ContactCenterSystemTypes => ArrayRef[Str|Undef]]

=item [SessionBorderControllerTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::PutVoiceConnectorExternalSystemsConfiguration>

Returns: a L<Paws::ChimeSDKVoice::PutVoiceConnectorExternalSystemsConfigurationResponse> instance

Adds an external systems configuration to a Voice Connector.


=head2 PutVoiceConnectorLoggingConfiguration

=over

=item LoggingConfiguration => L<Paws::ChimeSDKVoice::LoggingConfiguration>

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::PutVoiceConnectorLoggingConfiguration>

Returns: a L<Paws::ChimeSDKVoice::PutVoiceConnectorLoggingConfigurationResponse> instance

Updates a Voice Connector's logging configuration.


=head2 PutVoiceConnectorOrigination

=over

=item Origination => L<Paws::ChimeSDKVoice::Origination>

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::PutVoiceConnectorOrigination>

Returns: a L<Paws::ChimeSDKVoice::PutVoiceConnectorOriginationResponse> instance

Updates a Voice Connector's origination settings.


=head2 PutVoiceConnectorProxy

=over

=item DefaultSessionExpiryMinutes => Int

=item PhoneNumberPoolCountries => ArrayRef[Str|Undef]

=item VoiceConnectorId => Str

=item [Disabled => Bool]

=item [FallBackPhoneNumber => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::PutVoiceConnectorProxy>

Returns: a L<Paws::ChimeSDKVoice::PutVoiceConnectorProxyResponse> instance

Puts the specified proxy configuration to the specified Amazon Chime
SDK Voice Connector.


=head2 PutVoiceConnectorStreamingConfiguration

=over

=item StreamingConfiguration => L<Paws::ChimeSDKVoice::StreamingConfiguration>

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::PutVoiceConnectorStreamingConfiguration>

Returns: a L<Paws::ChimeSDKVoice::PutVoiceConnectorStreamingConfigurationResponse> instance

Updates a Voice Connector's streaming configuration settings.


=head2 PutVoiceConnectorTermination

=over

=item Termination => L<Paws::ChimeSDKVoice::Termination>

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::PutVoiceConnectorTermination>

Returns: a L<Paws::ChimeSDKVoice::PutVoiceConnectorTerminationResponse> instance

Updates a Voice Connector's termination settings.


=head2 PutVoiceConnectorTerminationCredentials

=over

=item VoiceConnectorId => Str

=item [Credentials => ArrayRef[L<Paws::ChimeSDKVoice::Credential>]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::PutVoiceConnectorTerminationCredentials>

Returns: nothing

Updates a Voice Connector's termination credentials.


=head2 RestorePhoneNumber

=over

=item PhoneNumberId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::RestorePhoneNumber>

Returns: a L<Paws::ChimeSDKVoice::RestorePhoneNumberResponse> instance

Restores a deleted phone number.


=head2 SearchAvailablePhoneNumbers

=over

=item [AreaCode => Str]

=item [City => Str]

=item [Country => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PhoneNumberType => Str]

=item [State => Str]

=item [TollFreePrefix => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::SearchAvailablePhoneNumbers>

Returns: a L<Paws::ChimeSDKVoice::SearchAvailablePhoneNumbersResponse> instance

Searches the provisioned phone numbers in an organization.


=head2 StartSpeakerSearchTask

=over

=item TransactionId => Str

=item VoiceConnectorId => Str

=item VoiceProfileDomainId => Str

=item [CallLeg => Str]

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::StartSpeakerSearchTask>

Returns: a L<Paws::ChimeSDKVoice::StartSpeakerSearchTaskResponse> instance

Starts a speaker search task.

Before starting any speaker search tasks, you must provide all notices
and obtain all consents from the speaker as required under applicable
privacy and biometrics laws, and as required under the AWS service
terms (https://aws.amazon.com/service-terms/) for the Amazon Chime SDK.


=head2 StartVoiceToneAnalysisTask

=over

=item LanguageCode => Str

=item TransactionId => Str

=item VoiceConnectorId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::StartVoiceToneAnalysisTask>

Returns: a L<Paws::ChimeSDKVoice::StartVoiceToneAnalysisTaskResponse> instance

Starts a voice tone analysis task. For more information about voice
tone analysis, see Using Amazon Chime SDK voice analytics
(https://docs.aws.amazon.com/chime-sdk/latest/dg/pstn-voice-analytics.html)
in the I<Amazon Chime SDK Developer Guide>.

Before starting any voice tone analysis tasks, you must provide all
notices and obtain all consents from the speaker as required under
applicable privacy and biometrics laws, and as required under the AWS
service terms (https://aws.amazon.com/service-terms/) for the Amazon
Chime SDK.


=head2 StopSpeakerSearchTask

=over

=item SpeakerSearchTaskId => Str

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::StopSpeakerSearchTask>

Returns: nothing

Stops a speaker search task.


=head2 StopVoiceToneAnalysisTask

=over

=item VoiceConnectorId => Str

=item VoiceToneAnalysisTaskId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::StopVoiceToneAnalysisTask>

Returns: nothing

Stops a voice tone analysis task.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::ChimeSDKVoice::Tag>]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::TagResource>

Returns: nothing

Adds a tag to the specified resource.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::UntagResource>

Returns: nothing

Removes tags from a resource.


=head2 UpdateGlobalSettings

=over

=item [VoiceConnector => L<Paws::ChimeSDKVoice::VoiceConnectorSettings>]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::UpdateGlobalSettings>

Returns: nothing

Updates global settings for the Amazon Chime SDK Voice Connectors in an
AWS account.


=head2 UpdatePhoneNumber

=over

=item PhoneNumberId => Str

=item [CallingName => Str]

=item [Name => Str]

=item [ProductType => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::UpdatePhoneNumber>

Returns: a L<Paws::ChimeSDKVoice::UpdatePhoneNumberResponse> instance

Updates phone number details, such as product type, calling name, or
phone number name for the specified phone number ID. You can update one
phone number detail at a time. For example, you can update either the
product type, calling name, or phone number name in one action.

For numbers outside the U.S., you must use the Amazon Chime SDK SIP
Media Application Dial-In product type.

Updates to outbound calling names can take 72 hours to complete.
Pending updates to outbound calling names must be complete before you
can request another update.


=head2 UpdatePhoneNumberSettings

=over

=item CallingName => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::UpdatePhoneNumberSettings>

Returns: nothing

Updates the phone number settings for the administrator's AWS account,
such as the default outbound calling name. You can update the default
outbound calling name once every seven days. Outbound calling names can
take up to 72 hours to update.


=head2 UpdateProxySession

=over

=item Capabilities => ArrayRef[Str|Undef]

=item ProxySessionId => Str

=item VoiceConnectorId => Str

=item [ExpiryMinutes => Int]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::UpdateProxySession>

Returns: a L<Paws::ChimeSDKVoice::UpdateProxySessionResponse> instance

Updates the specified proxy session details, such as voice or SMS
capabilities.


=head2 UpdateSipMediaApplication

=over

=item SipMediaApplicationId => Str

=item [Endpoints => ArrayRef[L<Paws::ChimeSDKVoice::SipMediaApplicationEndpoint>]]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::UpdateSipMediaApplication>

Returns: a L<Paws::ChimeSDKVoice::UpdateSipMediaApplicationResponse> instance

Updates the details of the specified SIP media application.


=head2 UpdateSipMediaApplicationCall

=over

=item Arguments => L<Paws::ChimeSDKVoice::SMAUpdateCallArgumentsMap>

=item SipMediaApplicationId => Str

=item TransactionId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::UpdateSipMediaApplicationCall>

Returns: a L<Paws::ChimeSDKVoice::UpdateSipMediaApplicationCallResponse> instance

Invokes the AWS Lambda function associated with the SIP media
application and transaction ID in an update request. The Lambda
function can then return a new set of actions.


=head2 UpdateSipRule

=over

=item Name => Str

=item SipRuleId => Str

=item [Disabled => Bool]

=item [TargetApplications => ArrayRef[L<Paws::ChimeSDKVoice::SipRuleTargetApplication>]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::UpdateSipRule>

Returns: a L<Paws::ChimeSDKVoice::UpdateSipRuleResponse> instance

Updates the details of the specified SIP rule.


=head2 UpdateVoiceConnector

=over

=item Name => Str

=item RequireEncryption => Bool

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::UpdateVoiceConnector>

Returns: a L<Paws::ChimeSDKVoice::UpdateVoiceConnectorResponse> instance

Updates the details for the specified Amazon Chime SDK Voice Connector.


=head2 UpdateVoiceConnectorGroup

=over

=item Name => Str

=item VoiceConnectorGroupId => Str

=item VoiceConnectorItems => ArrayRef[L<Paws::ChimeSDKVoice::VoiceConnectorItem>]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::UpdateVoiceConnectorGroup>

Returns: a L<Paws::ChimeSDKVoice::UpdateVoiceConnectorGroupResponse> instance

Updates the settings for the specified Amazon Chime SDK Voice Connector
group.


=head2 UpdateVoiceProfile

=over

=item SpeakerSearchTaskId => Str

=item VoiceProfileId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::UpdateVoiceProfile>

Returns: a L<Paws::ChimeSDKVoice::UpdateVoiceProfileResponse> instance

Updates the specified voice profileE<rsquo>s voice print and refreshes
its expiration timestamp.

As a condition of using this feature, you acknowledge that the
collection, use, storage, and retention of your callerE<rsquo>s
biometric identifiers and biometric information (E<ldquo>biometric
dataE<rdquo>) in the form of a digital voiceprint requires the
callerE<rsquo>s informed consent via a written release. Such consent is
required under various state laws, including biometrics laws in
Illinois, Texas, Washington and other state privacy laws.

You must provide a written release to each caller through a process
that clearly reflects each callerE<rsquo>s informed consent before
using Amazon Chime SDK Voice Insights service, as required under the
terms of your agreement with AWS governing your use of the service.


=head2 UpdateVoiceProfileDomain

=over

=item VoiceProfileDomainId => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::UpdateVoiceProfileDomain>

Returns: a L<Paws::ChimeSDKVoice::UpdateVoiceProfileDomainResponse> instance

Updates the settings for the specified voice profile domain.


=head2 ValidateE911Address

=over

=item AwsAccountId => Str

=item City => Str

=item Country => Str

=item PostalCode => Str

=item State => Str

=item StreetInfo => Str

=item StreetNumber => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKVoice::ValidateE911Address>

Returns: a L<Paws::ChimeSDKVoice::ValidateE911AddressResponse> instance

Validates an address to be used for 911 calls made with Amazon Chime
SDK Voice Connectors. You can use validated addresses in a Presence
Information Data Format Location Object file that you include in SIP
requests. That helps ensure that addresses are routed to the
appropriate Public Safety Answering Point.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllSipMediaApplications(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSipMediaApplications([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SipMediaApplications, passing the object as the first parameter, and the string 'SipMediaApplications' as the second parameter 

If not, it will return a a L<Paws::ChimeSDKVoice::ListSipMediaApplicationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSipRules(sub { },[MaxResults => Int, NextToken => Str, SipMediaApplicationId => Str])

=head2 ListAllSipRules([MaxResults => Int, NextToken => Str, SipMediaApplicationId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SipRules, passing the object as the first parameter, and the string 'SipRules' as the second parameter 

If not, it will return a a L<Paws::ChimeSDKVoice::ListSipRulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

