package Paws::PinpointSMSVoiceV2;
  use Moose;
  sub service { 'sms-voice' }
  sub signing_name { 'sms-voice' }
  sub version { '2022-03-31' }
  sub target_prefix { 'PinpointSMSVoiceV2' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateOriginationIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::AssociateOriginationIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateProtectConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::AssociateProtectConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfigurationSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::CreateConfigurationSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::CreateEventDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOptOutList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::CreateOptOutList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::CreatePool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProtectConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::CreateProtectConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRegistration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::CreateRegistration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRegistrationAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::CreateRegistrationAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRegistrationAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::CreateRegistrationAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRegistrationVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::CreateRegistrationVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVerifiedDestinationNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::CreateVerifiedDestinationNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccountDefaultProtectConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DeleteAccountDefaultProtectConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfigurationSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DeleteConfigurationSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDefaultMessageType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DeleteDefaultMessageType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDefaultSenderId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DeleteDefaultSenderId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DeleteEventDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKeyword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DeleteKeyword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMediaMessageSpendLimitOverride {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DeleteMediaMessageSpendLimitOverride', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOptedOutNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DeleteOptedOutNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOptOutList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DeleteOptOutList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DeletePool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProtectConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DeleteProtectConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProtectConfigurationRuleSetNumberOverride {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DeleteProtectConfigurationRuleSetNumberOverride', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRegistration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DeleteRegistration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRegistrationAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DeleteRegistrationAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRegistrationFieldValue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DeleteRegistrationFieldValue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTextMessageSpendLimitOverride {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DeleteTextMessageSpendLimitOverride', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVerifiedDestinationNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DeleteVerifiedDestinationNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceMessageSpendLimitOverride {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DeleteVoiceMessageSpendLimitOverride', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DescribeAccountAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountLimits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DescribeAccountLimits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfigurationSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DescribeConfigurationSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeKeywords {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DescribeKeywords', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOptedOutNumbers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DescribeOptedOutNumbers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOptOutLists {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DescribeOptOutLists', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePhoneNumbers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DescribePhoneNumbers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePools {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DescribePools', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProtectConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DescribeProtectConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRegistrationAttachments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DescribeRegistrationAttachments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRegistrationFieldDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DescribeRegistrationFieldDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRegistrationFieldValues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DescribeRegistrationFieldValues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRegistrations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DescribeRegistrations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRegistrationSectionDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DescribeRegistrationSectionDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRegistrationTypeDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DescribeRegistrationTypeDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRegistrationVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DescribeRegistrationVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSenderIds {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DescribeSenderIds', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpendLimits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DescribeSpendLimits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVerifiedDestinationNumbers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DescribeVerifiedDestinationNumbers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateOriginationIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DisassociateOriginationIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateProtectConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DisassociateProtectConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DiscardRegistrationVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::DiscardRegistrationVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProtectConfigurationCountryRuleSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::GetProtectConfigurationCountryRuleSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::GetResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPoolOriginationIdentities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::ListPoolOriginationIdentities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProtectConfigurationRuleSetNumberOverrides {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::ListProtectConfigurationRuleSetNumberOverrides', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRegistrationAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::ListRegistrationAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutKeyword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::PutKeyword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutMessageFeedback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::PutMessageFeedback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutOptedOutNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::PutOptedOutNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutProtectConfigurationRuleSetNumberOverride {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::PutProtectConfigurationRuleSetNumberOverride', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRegistrationFieldValue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::PutRegistrationFieldValue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReleasePhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::ReleasePhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReleaseSenderId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::ReleaseSenderId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RequestPhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::RequestPhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RequestSenderId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::RequestSenderId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendDestinationNumberVerificationCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::SendDestinationNumberVerificationCode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendMediaMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::SendMediaMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendTextMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::SendTextMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendVoiceMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::SendVoiceMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetAccountDefaultProtectConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::SetAccountDefaultProtectConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetDefaultMessageFeedbackEnabled {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::SetDefaultMessageFeedbackEnabled', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetDefaultMessageType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::SetDefaultMessageType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetDefaultSenderId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::SetDefaultSenderId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetMediaMessageSpendLimitOverride {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::SetMediaMessageSpendLimitOverride', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetTextMessageSpendLimitOverride {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::SetTextMessageSpendLimitOverride', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetVoiceMessageSpendLimitOverride {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::SetVoiceMessageSpendLimitOverride', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SubmitRegistrationVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::SubmitRegistrationVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEventDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::UpdateEventDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::UpdatePhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::UpdatePool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProtectConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::UpdateProtectConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProtectConfigurationCountryRuleSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::UpdateProtectConfigurationCountryRuleSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSenderId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::UpdateSenderId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub VerifyDestinationNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointSMSVoiceV2::VerifyDestinationNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllAccountAttributes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAccountAttributes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeAccountAttributes(@_, NextToken => $next_result->NextToken);
        push @{ $result->AccountAttributes }, @{ $next_result->AccountAttributes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AccountAttributes') foreach (@{ $result->AccountAttributes });
        $result = $self->DescribeAccountAttributes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AccountAttributes') foreach (@{ $result->AccountAttributes });
    }

    return undef
  }
  sub DescribeAllAccountLimits {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAccountLimits(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeAccountLimits(@_, NextToken => $next_result->NextToken);
        push @{ $result->AccountLimits }, @{ $next_result->AccountLimits };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AccountLimits') foreach (@{ $result->AccountLimits });
        $result = $self->DescribeAccountLimits(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AccountLimits') foreach (@{ $result->AccountLimits });
    }

    return undef
  }
  sub DescribeAllConfigurationSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeConfigurationSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeConfigurationSets(@_, NextToken => $next_result->NextToken);
        push @{ $result->ConfigurationSets }, @{ $next_result->ConfigurationSets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConfigurationSets') foreach (@{ $result->ConfigurationSets });
        $result = $self->DescribeConfigurationSets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ConfigurationSets') foreach (@{ $result->ConfigurationSets });
    }

    return undef
  }
  sub DescribeAllKeywords {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeKeywords(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeKeywords(@_, NextToken => $next_result->NextToken);
        push @{ $result->Keywords }, @{ $next_result->Keywords };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Keywords') foreach (@{ $result->Keywords });
        $result = $self->DescribeKeywords(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Keywords') foreach (@{ $result->Keywords });
    }

    return undef
  }
  sub DescribeAllOptedOutNumbers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeOptedOutNumbers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeOptedOutNumbers(@_, NextToken => $next_result->NextToken);
        push @{ $result->OptedOutNumbers }, @{ $next_result->OptedOutNumbers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'OptedOutNumbers') foreach (@{ $result->OptedOutNumbers });
        $result = $self->DescribeOptedOutNumbers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'OptedOutNumbers') foreach (@{ $result->OptedOutNumbers });
    }

    return undef
  }
  sub DescribeAllOptOutLists {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeOptOutLists(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeOptOutLists(@_, NextToken => $next_result->NextToken);
        push @{ $result->OptOutLists }, @{ $next_result->OptOutLists };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'OptOutLists') foreach (@{ $result->OptOutLists });
        $result = $self->DescribeOptOutLists(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'OptOutLists') foreach (@{ $result->OptOutLists });
    }

    return undef
  }
  sub DescribeAllPhoneNumbers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribePhoneNumbers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribePhoneNumbers(@_, NextToken => $next_result->NextToken);
        push @{ $result->PhoneNumbers }, @{ $next_result->PhoneNumbers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PhoneNumbers') foreach (@{ $result->PhoneNumbers });
        $result = $self->DescribePhoneNumbers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PhoneNumbers') foreach (@{ $result->PhoneNumbers });
    }

    return undef
  }
  sub DescribeAllPools {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribePools(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribePools(@_, NextToken => $next_result->NextToken);
        push @{ $result->Pools }, @{ $next_result->Pools };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Pools') foreach (@{ $result->Pools });
        $result = $self->DescribePools(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Pools') foreach (@{ $result->Pools });
    }

    return undef
  }
  sub DescribeAllProtectConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeProtectConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeProtectConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->ProtectConfigurations }, @{ $next_result->ProtectConfigurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ProtectConfigurations') foreach (@{ $result->ProtectConfigurations });
        $result = $self->DescribeProtectConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ProtectConfigurations') foreach (@{ $result->ProtectConfigurations });
    }

    return undef
  }
  sub DescribeAllRegistrationAttachments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeRegistrationAttachments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeRegistrationAttachments(@_, NextToken => $next_result->NextToken);
        push @{ $result->RegistrationAttachments }, @{ $next_result->RegistrationAttachments };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RegistrationAttachments') foreach (@{ $result->RegistrationAttachments });
        $result = $self->DescribeRegistrationAttachments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RegistrationAttachments') foreach (@{ $result->RegistrationAttachments });
    }

    return undef
  }
  sub DescribeAllRegistrationFieldDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeRegistrationFieldDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeRegistrationFieldDefinitions(@_, NextToken => $next_result->NextToken);
        push @{ $result->RegistrationFieldDefinitions }, @{ $next_result->RegistrationFieldDefinitions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RegistrationFieldDefinitions') foreach (@{ $result->RegistrationFieldDefinitions });
        $result = $self->DescribeRegistrationFieldDefinitions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RegistrationFieldDefinitions') foreach (@{ $result->RegistrationFieldDefinitions });
    }

    return undef
  }
  sub DescribeAllRegistrationFieldValues {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeRegistrationFieldValues(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeRegistrationFieldValues(@_, NextToken => $next_result->NextToken);
        push @{ $result->RegistrationFieldValues }, @{ $next_result->RegistrationFieldValues };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RegistrationFieldValues') foreach (@{ $result->RegistrationFieldValues });
        $result = $self->DescribeRegistrationFieldValues(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RegistrationFieldValues') foreach (@{ $result->RegistrationFieldValues });
    }

    return undef
  }
  sub DescribeAllRegistrations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeRegistrations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeRegistrations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Registrations }, @{ $next_result->Registrations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Registrations') foreach (@{ $result->Registrations });
        $result = $self->DescribeRegistrations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Registrations') foreach (@{ $result->Registrations });
    }

    return undef
  }
  sub DescribeAllRegistrationSectionDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeRegistrationSectionDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeRegistrationSectionDefinitions(@_, NextToken => $next_result->NextToken);
        push @{ $result->RegistrationSectionDefinitions }, @{ $next_result->RegistrationSectionDefinitions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RegistrationSectionDefinitions') foreach (@{ $result->RegistrationSectionDefinitions });
        $result = $self->DescribeRegistrationSectionDefinitions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RegistrationSectionDefinitions') foreach (@{ $result->RegistrationSectionDefinitions });
    }

    return undef
  }
  sub DescribeAllRegistrationTypeDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeRegistrationTypeDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeRegistrationTypeDefinitions(@_, NextToken => $next_result->NextToken);
        push @{ $result->RegistrationTypeDefinitions }, @{ $next_result->RegistrationTypeDefinitions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RegistrationTypeDefinitions') foreach (@{ $result->RegistrationTypeDefinitions });
        $result = $self->DescribeRegistrationTypeDefinitions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RegistrationTypeDefinitions') foreach (@{ $result->RegistrationTypeDefinitions });
    }

    return undef
  }
  sub DescribeAllRegistrationVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeRegistrationVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeRegistrationVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->RegistrationVersions }, @{ $next_result->RegistrationVersions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RegistrationVersions') foreach (@{ $result->RegistrationVersions });
        $result = $self->DescribeRegistrationVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RegistrationVersions') foreach (@{ $result->RegistrationVersions });
    }

    return undef
  }
  sub DescribeAllSenderIds {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSenderIds(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSenderIds(@_, NextToken => $next_result->NextToken);
        push @{ $result->SenderIds }, @{ $next_result->SenderIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SenderIds') foreach (@{ $result->SenderIds });
        $result = $self->DescribeSenderIds(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SenderIds') foreach (@{ $result->SenderIds });
    }

    return undef
  }
  sub DescribeAllSpendLimits {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSpendLimits(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSpendLimits(@_, NextToken => $next_result->NextToken);
        push @{ $result->SpendLimits }, @{ $next_result->SpendLimits };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SpendLimits') foreach (@{ $result->SpendLimits });
        $result = $self->DescribeSpendLimits(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SpendLimits') foreach (@{ $result->SpendLimits });
    }

    return undef
  }
  sub DescribeAllVerifiedDestinationNumbers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVerifiedDestinationNumbers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVerifiedDestinationNumbers(@_, NextToken => $next_result->NextToken);
        push @{ $result->VerifiedDestinationNumbers }, @{ $next_result->VerifiedDestinationNumbers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'VerifiedDestinationNumbers') foreach (@{ $result->VerifiedDestinationNumbers });
        $result = $self->DescribeVerifiedDestinationNumbers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'VerifiedDestinationNumbers') foreach (@{ $result->VerifiedDestinationNumbers });
    }

    return undef
  }
  sub ListAllPoolOriginationIdentities {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPoolOriginationIdentities(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPoolOriginationIdentities(@_, NextToken => $next_result->NextToken);
        push @{ $result->OriginationIdentities }, @{ $next_result->OriginationIdentities };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'OriginationIdentities') foreach (@{ $result->OriginationIdentities });
        $result = $self->ListPoolOriginationIdentities(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'OriginationIdentities') foreach (@{ $result->OriginationIdentities });
    }

    return undef
  }
  sub ListAllProtectConfigurationRuleSetNumberOverrides {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProtectConfigurationRuleSetNumberOverrides(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListProtectConfigurationRuleSetNumberOverrides(@_, NextToken => $next_result->NextToken);
        push @{ $result->RuleSetNumberOverrides }, @{ $next_result->RuleSetNumberOverrides };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RuleSetNumberOverrides') foreach (@{ $result->RuleSetNumberOverrides });
        $result = $self->ListProtectConfigurationRuleSetNumberOverrides(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RuleSetNumberOverrides') foreach (@{ $result->RuleSetNumberOverrides });
    }

    return undef
  }
  sub ListAllRegistrationAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRegistrationAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRegistrationAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->RegistrationAssociations }, @{ $next_result->RegistrationAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RegistrationAssociations') foreach (@{ $result->RegistrationAssociations });
        $result = $self->ListRegistrationAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RegistrationAssociations') foreach (@{ $result->RegistrationAssociations });
    }

    return undef
  }


  sub operations { qw/AssociateOriginationIdentity AssociateProtectConfiguration CreateConfigurationSet CreateEventDestination CreateOptOutList CreatePool CreateProtectConfiguration CreateRegistration CreateRegistrationAssociation CreateRegistrationAttachment CreateRegistrationVersion CreateVerifiedDestinationNumber DeleteAccountDefaultProtectConfiguration DeleteConfigurationSet DeleteDefaultMessageType DeleteDefaultSenderId DeleteEventDestination DeleteKeyword DeleteMediaMessageSpendLimitOverride DeleteOptedOutNumber DeleteOptOutList DeletePool DeleteProtectConfiguration DeleteProtectConfigurationRuleSetNumberOverride DeleteRegistration DeleteRegistrationAttachment DeleteRegistrationFieldValue DeleteResourcePolicy DeleteTextMessageSpendLimitOverride DeleteVerifiedDestinationNumber DeleteVoiceMessageSpendLimitOverride DescribeAccountAttributes DescribeAccountLimits DescribeConfigurationSets DescribeKeywords DescribeOptedOutNumbers DescribeOptOutLists DescribePhoneNumbers DescribePools DescribeProtectConfigurations DescribeRegistrationAttachments DescribeRegistrationFieldDefinitions DescribeRegistrationFieldValues DescribeRegistrations DescribeRegistrationSectionDefinitions DescribeRegistrationTypeDefinitions DescribeRegistrationVersions DescribeSenderIds DescribeSpendLimits DescribeVerifiedDestinationNumbers DisassociateOriginationIdentity DisassociateProtectConfiguration DiscardRegistrationVersion GetProtectConfigurationCountryRuleSet GetResourcePolicy ListPoolOriginationIdentities ListProtectConfigurationRuleSetNumberOverrides ListRegistrationAssociations ListTagsForResource PutKeyword PutMessageFeedback PutOptedOutNumber PutProtectConfigurationRuleSetNumberOverride PutRegistrationFieldValue PutResourcePolicy ReleasePhoneNumber ReleaseSenderId RequestPhoneNumber RequestSenderId SendDestinationNumberVerificationCode SendMediaMessage SendTextMessage SendVoiceMessage SetAccountDefaultProtectConfiguration SetDefaultMessageFeedbackEnabled SetDefaultMessageType SetDefaultSenderId SetMediaMessageSpendLimitOverride SetTextMessageSpendLimitOverride SetVoiceMessageSpendLimitOverride SubmitRegistrationVersion TagResource UntagResource UpdateEventDestination UpdatePhoneNumber UpdatePool UpdateProtectConfiguration UpdateProtectConfigurationCountryRuleSet UpdateSenderId VerifyDestinationNumber / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2 - Perl Interface to AWS Amazon Pinpoint SMS Voice V2

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('PinpointSMSVoiceV2');
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

Welcome to the I<AWS End User Messaging SMS and Voice, version 2 API
Reference>. This guide provides information about AWS End User
Messaging SMS and Voice, version 2 API resources, including supported
HTTP methods, parameters, and schemas.

Amazon Pinpoint is an Amazon Web Services service that you can use to
engage with your recipients across multiple messaging channels. The AWS
End User Messaging SMS and Voice, version 2 API provides programmatic
access to options that are unique to the SMS and voice channels. AWS
End User Messaging SMS and Voice, version 2 resources such as phone
numbers, sender IDs, and opt-out lists can be used by the Amazon
Pinpoint API.

If you're new to AWS End User Messaging SMS and Voice, it's also
helpful to review the AWS End User Messaging SMS User Guide
(https://docs.aws.amazon.com/sms-voice/latest/userguide/what-is-service.html).
The I<AWS End User Messaging SMS User Guide > provides tutorials, code
samples, and procedures that demonstrate how to use AWS End User
Messaging SMS and Voice features programmatically and how to integrate
functionality into mobile apps and other types of applications. The
guide also provides key information, such as AWS End User Messaging SMS
and Voice integration with other Amazon Web Services services, and the
quotas that apply to use of the service.

B<Regional availability>

The I<AWS End User Messaging SMS and Voice version 2 API Reference> is
available in several Amazon Web Services Regions and it provides an
endpoint for each of these Regions. For a list of all the Regions and
endpoints where the API is currently available, see Amazon Web Services
Service Endpoints
(https://docs.aws.amazon.com/general/latest/gr/rande.html#pinpoint_region)
and Amazon Pinpoint endpoints and quotas
(https://docs.aws.amazon.com/general/latest/gr/pinpoint.html) in the
Amazon Web Services General Reference. To learn more about Amazon Web
Services Regions, see Managing Amazon Web Services Regions
(https://docs.aws.amazon.com/general/latest/gr/rande-manage.html) in
the Amazon Web Services General Reference.

In each Region, Amazon Web Services maintains multiple Availability
Zones. These Availability Zones are physically isolated from each
other, but are united by private, low-latency, high-throughput, and
highly redundant network connections. These Availability Zones enable
us to provide very high levels of availability and redundancy, while
also minimizing latency. To learn more about the number of Availability
Zones that are available in each Region, see Amazon Web Services Global
Infrastructure.
(https://aws.amazon.com/about-aws/global-infrastructure/)

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociateOriginationIdentity

=over

=item IsoCountryCode => Str

=item OriginationIdentity => Str

=item PoolId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::AssociateOriginationIdentity>

Returns: a L<Paws::PinpointSMSVoiceV2::AssociateOriginationIdentityResult> instance

Associates the specified origination identity with a pool.

If the origination identity is a phone number and is already associated
with another pool, an error is returned. A sender ID can be associated
with multiple pools.

If the origination identity configuration doesn't match the pool's
configuration, an error is returned.


=head2 AssociateProtectConfiguration

=over

=item ConfigurationSetName => Str

=item ProtectConfigurationId => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::AssociateProtectConfiguration>

Returns: a L<Paws::PinpointSMSVoiceV2::AssociateProtectConfigurationResult> instance

Associate a protect configuration with a configuration set. This
replaces the configuration sets current protect configuration. A
configuration set can only be associated with one protect configuration
at a time. A protect configuration can be associated with multiple
configuration sets.


=head2 CreateConfigurationSet

=over

=item ConfigurationSetName => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::CreateConfigurationSet>

Returns: a L<Paws::PinpointSMSVoiceV2::CreateConfigurationSetResult> instance

Creates a new configuration set. After you create the configuration
set, you can add one or more event destinations to it.

A configuration set is a set of rules that you apply to the SMS and
voice messages that you send.

When you send a message, you can optionally specify a single
configuration set.


=head2 CreateEventDestination

=over

=item ConfigurationSetName => Str

=item EventDestinationName => Str

=item MatchingEventTypes => ArrayRef[Str|Undef]

=item [ClientToken => Str]

=item [CloudWatchLogsDestination => L<Paws::PinpointSMSVoiceV2::CloudWatchLogsDestination>]

=item [KinesisFirehoseDestination => L<Paws::PinpointSMSVoiceV2::KinesisFirehoseDestination>]

=item [SnsDestination => L<Paws::PinpointSMSVoiceV2::SnsDestination>]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::CreateEventDestination>

Returns: a L<Paws::PinpointSMSVoiceV2::CreateEventDestinationResult> instance

Creates a new event destination in a configuration set.

An event destination is a location where you send message events. The
event options are Amazon CloudWatch, Amazon Data Firehose, or Amazon
SNS. For example, when a message is delivered successfully, you can
send information about that event to an event destination, or send
notifications to endpoints that are subscribed to an Amazon SNS topic.

You can only create one event destination at a time. You must provide a
value for a single event destination using either
C<CloudWatchLogsDestination>, C<KinesisFirehoseDestination> or
C<SnsDestination>. If an event destination isn't provided then an
exception is returned.

Each configuration set can contain between 0 and 5 event destinations.
Each event destination can contain a reference to a single destination,
such as a CloudWatch or Firehose destination.


=head2 CreateOptOutList

=over

=item OptOutListName => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::CreateOptOutList>

Returns: a L<Paws::PinpointSMSVoiceV2::CreateOptOutListResult> instance

Creates a new opt-out list.

If the opt-out list name already exists, an error is returned.

An opt-out list is a list of phone numbers that are opted out, meaning
you can't send SMS or voice messages to them. If end user replies with
the keyword "STOP," an entry for the phone number is added to the
opt-out list. In addition to STOP, your recipients can use any
supported opt-out keyword, such as CANCEL or OPTOUT. For a list of
supported opt-out keywords, see SMS opt out
(https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-manage.html#channels-sms-manage-optout)
in the I<AWS End User Messaging SMS User Guide>.


=head2 CreatePool

=over

=item IsoCountryCode => Str

=item MessageType => Str

=item OriginationIdentity => Str

=item [ClientToken => Str]

=item [DeletionProtectionEnabled => Bool]

=item [Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::CreatePool>

Returns: a L<Paws::PinpointSMSVoiceV2::CreatePoolResult> instance

Creates a new pool and associates the specified origination identity to
the pool. A pool can include one or more phone numbers and SenderIds
that are associated with your Amazon Web Services account.

The new pool inherits its configuration from the specified origination
identity. This includes keywords, message type, opt-out list, two-way
configuration, and self-managed opt-out configuration. Deletion
protection isn't inherited from the origination identity and defaults
to false.

If the origination identity is a phone number and is already associated
with another pool, an error is returned. A sender ID can be associated
with multiple pools.


=head2 CreateProtectConfiguration

=over

=item [ClientToken => Str]

=item [DeletionProtectionEnabled => Bool]

=item [Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::CreateProtectConfiguration>

Returns: a L<Paws::PinpointSMSVoiceV2::CreateProtectConfigurationResult> instance

Create a new protect configuration. By default all country rule sets
for each capability are set to C<ALLOW>. Update the country rule sets
using C<UpdateProtectConfigurationCountryRuleSet>. A protect
configurations name is stored as a Tag with the key set to C<Name> and
value as the name of the protect configuration.


=head2 CreateRegistration

=over

=item RegistrationType => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::CreateRegistration>

Returns: a L<Paws::PinpointSMSVoiceV2::CreateRegistrationResult> instance

Creates a new registration based on the B<RegistrationType> field.


=head2 CreateRegistrationAssociation

=over

=item RegistrationId => Str

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::CreateRegistrationAssociation>

Returns: a L<Paws::PinpointSMSVoiceV2::CreateRegistrationAssociationResult> instance

Associate the registration with an origination identity such as a phone
number or sender ID.


=head2 CreateRegistrationAttachment

=over

=item [AttachmentBody => Str]

=item [AttachmentUrl => Str]

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::CreateRegistrationAttachment>

Returns: a L<Paws::PinpointSMSVoiceV2::CreateRegistrationAttachmentResult> instance

Create a new registration attachment to use for uploading a file or a
URL to a file. The maximum file size is 500KB and valid file extensions
are PDF, JPEG and PNG. For example, many sender ID registrations
require a signed E<ldquo>letter of authorizationE<rdquo> (LOA) to be
submitted.

Use either C<AttachmentUrl> or C<AttachmentBody> to upload your
attachment. If both are specified then an exception is returned.


=head2 CreateRegistrationVersion

=over

=item RegistrationId => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::CreateRegistrationVersion>

Returns: a L<Paws::PinpointSMSVoiceV2::CreateRegistrationVersionResult> instance

Create a new version of the registration and increase the
B<VersionNumber>. The previous version of the registration becomes
read-only.


=head2 CreateVerifiedDestinationNumber

=over

=item DestinationPhoneNumber => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::CreateVerifiedDestinationNumber>

Returns: a L<Paws::PinpointSMSVoiceV2::CreateVerifiedDestinationNumberResult> instance

You can only send messages to verified destination numbers when your
account is in the sandbox. You can add up to 10 verified destination
numbers.


=head2 DeleteAccountDefaultProtectConfiguration






Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DeleteAccountDefaultProtectConfiguration>

Returns: a L<Paws::PinpointSMSVoiceV2::DeleteAccountDefaultProtectConfigurationResult> instance

Removes the current account default protect configuration.


=head2 DeleteConfigurationSet

=over

=item ConfigurationSetName => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DeleteConfigurationSet>

Returns: a L<Paws::PinpointSMSVoiceV2::DeleteConfigurationSetResult> instance

Deletes an existing configuration set.

A configuration set is a set of rules that you apply to voice and SMS
messages that you send. In a configuration set, you can specify a
destination for specific types of events related to voice and SMS
messages.


=head2 DeleteDefaultMessageType

=over

=item ConfigurationSetName => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DeleteDefaultMessageType>

Returns: a L<Paws::PinpointSMSVoiceV2::DeleteDefaultMessageTypeResult> instance

Deletes an existing default message type on a configuration set.

A message type is a type of messages that you plan to send. If you send
account-related messages or time-sensitive messages such as one-time
passcodes, choose B<Transactional>. If you plan to send messages that
contain marketing material or other promotional content, choose
B<Promotional>. This setting applies to your entire Amazon Web Services
account.


=head2 DeleteDefaultSenderId

=over

=item ConfigurationSetName => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DeleteDefaultSenderId>

Returns: a L<Paws::PinpointSMSVoiceV2::DeleteDefaultSenderIdResult> instance

Deletes an existing default sender ID on a configuration set.

A default sender ID is the identity that appears on recipients' devices
when they receive SMS messages. Support for sender ID capabilities
varies by country or region.


=head2 DeleteEventDestination

=over

=item ConfigurationSetName => Str

=item EventDestinationName => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DeleteEventDestination>

Returns: a L<Paws::PinpointSMSVoiceV2::DeleteEventDestinationResult> instance

Deletes an existing event destination.

An event destination is a location where you send response information
about the messages that you send. For example, when a message is
delivered successfully, you can send information about that event to an
Amazon CloudWatch destination, or send notifications to endpoints that
are subscribed to an Amazon SNS topic.


=head2 DeleteKeyword

=over

=item Keyword => Str

=item OriginationIdentity => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DeleteKeyword>

Returns: a L<Paws::PinpointSMSVoiceV2::DeleteKeywordResult> instance

Deletes an existing keyword from an origination phone number or pool.

A keyword is a word that you can search for on a particular phone
number or pool. It is also a specific word or phrase that an end user
can send to your number to elicit a response, such as an informational
message or a special offer. When your number receives a message that
begins with a keyword, AWS End User Messaging SMS and Voice responds
with a customizable message.

Keywords "HELP" and "STOP" can't be deleted or modified.


=head2 DeleteMediaMessageSpendLimitOverride






Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DeleteMediaMessageSpendLimitOverride>

Returns: a L<Paws::PinpointSMSVoiceV2::DeleteMediaMessageSpendLimitOverrideResult> instance

Deletes an account-level monthly spending limit override for sending
multimedia messages (MMS). Deleting a spend limit override will set the
C<EnforcedLimit> to equal the C<MaxLimit>, which is controlled by
Amazon Web Services. For more information on spend limits (quotas) see
Quotas for Server Migration Service
(https://docs.aws.amazon.com/sms-voice/latest/userguide/quotas.html) in
the I<Server Migration Service User Guide>.


=head2 DeleteOptedOutNumber

=over

=item OptedOutNumber => Str

=item OptOutListName => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DeleteOptedOutNumber>

Returns: a L<Paws::PinpointSMSVoiceV2::DeleteOptedOutNumberResult> instance

Deletes an existing opted out destination phone number from the
specified opt-out list.

Each destination phone number can only be deleted once every 30 days.

If the specified destination phone number doesn't exist or if the
opt-out list doesn't exist, an error is returned.


=head2 DeleteOptOutList

=over

=item OptOutListName => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DeleteOptOutList>

Returns: a L<Paws::PinpointSMSVoiceV2::DeleteOptOutListResult> instance

Deletes an existing opt-out list. All opted out phone numbers in the
opt-out list are deleted.

If the specified opt-out list name doesn't exist or is in-use by an
origination phone number or pool, an error is returned.


=head2 DeletePool

=over

=item PoolId => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DeletePool>

Returns: a L<Paws::PinpointSMSVoiceV2::DeletePoolResult> instance

Deletes an existing pool. Deleting a pool disassociates all origination
identities from that pool.

If the pool status isn't active or if deletion protection is enabled,
an error is returned.

A pool is a collection of phone numbers and SenderIds. A pool can
include one or more phone numbers and SenderIds that are associated
with your Amazon Web Services account.


=head2 DeleteProtectConfiguration

=over

=item ProtectConfigurationId => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DeleteProtectConfiguration>

Returns: a L<Paws::PinpointSMSVoiceV2::DeleteProtectConfigurationResult> instance

Permanently delete the protect configuration. The protect configuration
must have deletion protection disabled and must not be associated as
the account default protect configuration or associated with a
configuration set.


=head2 DeleteProtectConfigurationRuleSetNumberOverride

=over

=item DestinationPhoneNumber => Str

=item ProtectConfigurationId => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DeleteProtectConfigurationRuleSetNumberOverride>

Returns: a L<Paws::PinpointSMSVoiceV2::DeleteProtectConfigurationRuleSetNumberOverrideResult> instance

Permanently delete the protect configuration rule set number override.


=head2 DeleteRegistration

=over

=item RegistrationId => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DeleteRegistration>

Returns: a L<Paws::PinpointSMSVoiceV2::DeleteRegistrationResult> instance

Permanently delete an existing registration from your account.


=head2 DeleteRegistrationAttachment

=over

=item RegistrationAttachmentId => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DeleteRegistrationAttachment>

Returns: a L<Paws::PinpointSMSVoiceV2::DeleteRegistrationAttachmentResult> instance

Permanently delete the specified registration attachment.


=head2 DeleteRegistrationFieldValue

=over

=item FieldPath => Str

=item RegistrationId => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DeleteRegistrationFieldValue>

Returns: a L<Paws::PinpointSMSVoiceV2::DeleteRegistrationFieldValueResult> instance

Delete the value in a registration form field.


=head2 DeleteResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DeleteResourcePolicy>

Returns: a L<Paws::PinpointSMSVoiceV2::DeleteResourcePolicyResult> instance

Deletes the resource-based policy document attached to the AWS End User
Messaging SMS and Voice resource. A shared resource can be a Pool,
Opt-out list, Sender Id, or Phone number.


=head2 DeleteTextMessageSpendLimitOverride






Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DeleteTextMessageSpendLimitOverride>

Returns: a L<Paws::PinpointSMSVoiceV2::DeleteTextMessageSpendLimitOverrideResult> instance

Deletes an account-level monthly spending limit override for sending
text messages. Deleting a spend limit override will set the
C<EnforcedLimit> to equal the C<MaxLimit>, which is controlled by
Amazon Web Services. For more information on spend limits (quotas) see
Quotas
(https://docs.aws.amazon.com/sms-voice/latest/userguide/quotas.html) in
the I<AWS End User Messaging SMS User Guide>.


=head2 DeleteVerifiedDestinationNumber

=over

=item VerifiedDestinationNumberId => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DeleteVerifiedDestinationNumber>

Returns: a L<Paws::PinpointSMSVoiceV2::DeleteVerifiedDestinationNumberResult> instance

Delete a verified destination phone number.


=head2 DeleteVoiceMessageSpendLimitOverride






Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DeleteVoiceMessageSpendLimitOverride>

Returns: a L<Paws::PinpointSMSVoiceV2::DeleteVoiceMessageSpendLimitOverrideResult> instance

Deletes an account level monthly spend limit override for sending voice
messages. Deleting a spend limit override sets the C<EnforcedLimit>
equal to the C<MaxLimit>, which is controlled by Amazon Web Services.
For more information on spending limits (quotas) see Quotas
(https://docs.aws.amazon.com/sms-voice/latest/userguide/quotas.html) in
the I<AWS End User Messaging SMS User Guide>.


=head2 DescribeAccountAttributes

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DescribeAccountAttributes>

Returns: a L<Paws::PinpointSMSVoiceV2::DescribeAccountAttributesResult> instance

Describes attributes of your Amazon Web Services account. The supported
account attributes include account tier, which indicates whether your
account is in the sandbox or production environment. When you're ready
to move your account out of the sandbox, create an Amazon Web Services
Support case for a service limit increase request.

New accounts are placed into an SMS or voice sandbox. The sandbox
protects both Amazon Web Services end recipients and SMS or voice
recipients from fraud and abuse.


=head2 DescribeAccountLimits

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DescribeAccountLimits>

Returns: a L<Paws::PinpointSMSVoiceV2::DescribeAccountLimitsResult> instance

Describes the current AWS End User Messaging SMS and Voice SMS Voice V2
resource quotas for your account. The description for a quota includes
the quota name, current usage toward that quota, and the quota's
maximum value.

When you establish an Amazon Web Services account, the account has
initial quotas on the maximum number of configuration sets, opt-out
lists, phone numbers, and pools that you can create in a given Region.
For more information see Quotas
(https://docs.aws.amazon.com/sms-voice/latest/userguide/quotas.html) in
the I<AWS End User Messaging SMS User Guide>.


=head2 DescribeConfigurationSets

=over

=item [ConfigurationSetNames => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::ConfigurationSetFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DescribeConfigurationSets>

Returns: a L<Paws::PinpointSMSVoiceV2::DescribeConfigurationSetsResult> instance

Describes the specified configuration sets or all in your account.

If you specify configuration set names, the output includes information
for only the specified configuration sets. If you specify filters, the
output includes information for only those configuration sets that meet
the filter criteria. If you don't specify configuration set names or
filters, the output includes information for all configuration sets.

If you specify a configuration set name that isn't valid, an error is
returned.


=head2 DescribeKeywords

=over

=item OriginationIdentity => Str

=item [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::KeywordFilter>]]

=item [Keywords => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DescribeKeywords>

Returns: a L<Paws::PinpointSMSVoiceV2::DescribeKeywordsResult> instance

Describes the specified keywords or all keywords on your origination
phone number or pool.

A keyword is a word that you can search for on a particular phone
number or pool. It is also a specific word or phrase that an end user
can send to your number to elicit a response, such as an informational
message or a special offer. When your number receives a message that
begins with a keyword, AWS End User Messaging SMS and Voice responds
with a customizable message.

If you specify a keyword that isn't valid, an error is returned.


=head2 DescribeOptedOutNumbers

=over

=item OptOutListName => Str

=item [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::OptedOutFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OptedOutNumbers => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DescribeOptedOutNumbers>

Returns: a L<Paws::PinpointSMSVoiceV2::DescribeOptedOutNumbersResult> instance

Describes the specified opted out destination numbers or all opted out
destination numbers in an opt-out list.

If you specify opted out numbers, the output includes information for
only the specified opted out numbers. If you specify filters, the
output includes information for only those opted out numbers that meet
the filter criteria. If you don't specify opted out numbers or filters,
the output includes information for all opted out destination numbers
in your opt-out list.

If you specify an opted out number that isn't valid, an exception is
returned.


=head2 DescribeOptOutLists

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OptOutListNames => ArrayRef[Str|Undef]]

=item [Owner => Str]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DescribeOptOutLists>

Returns: a L<Paws::PinpointSMSVoiceV2::DescribeOptOutListsResult> instance

Describes the specified opt-out list or all opt-out lists in your
account.

If you specify opt-out list names, the output includes information for
only the specified opt-out lists. Opt-out lists include only those that
meet the filter criteria. If you don't specify opt-out list names or
filters, the output includes information for all opt-out lists.

If you specify an opt-out list name that isn't valid, an error is
returned.


=head2 DescribePhoneNumbers

=over

=item [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::PhoneNumberFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Owner => Str]

=item [PhoneNumberIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DescribePhoneNumbers>

Returns: a L<Paws::PinpointSMSVoiceV2::DescribePhoneNumbersResult> instance

Describes the specified origination phone number, or all the phone
numbers in your account.

If you specify phone number IDs, the output includes information for
only the specified phone numbers. If you specify filters, the output
includes information for only those phone numbers that meet the filter
criteria. If you don't specify phone number IDs or filters, the output
includes information for all phone numbers.

If you specify a phone number ID that isn't valid, an error is
returned.


=head2 DescribePools

=over

=item [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::PoolFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Owner => Str]

=item [PoolIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DescribePools>

Returns: a L<Paws::PinpointSMSVoiceV2::DescribePoolsResult> instance

Retrieves the specified pools or all pools associated with your Amazon
Web Services account.

If you specify pool IDs, the output includes information for only the
specified pools. If you specify filters, the output includes
information for only those pools that meet the filter criteria. If you
don't specify pool IDs or filters, the output includes information for
all pools.

If you specify a pool ID that isn't valid, an error is returned.

A pool is a collection of phone numbers and SenderIds. A pool can
include one or more phone numbers and SenderIds that are associated
with your Amazon Web Services account.


=head2 DescribeProtectConfigurations

=over

=item [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::ProtectConfigurationFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProtectConfigurationIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DescribeProtectConfigurations>

Returns: a L<Paws::PinpointSMSVoiceV2::DescribeProtectConfigurationsResult> instance

Retrieves the protect configurations that match any of filters. If a
filter isnE<rsquo>t provided then all protect configurations are
returned.


=head2 DescribeRegistrationAttachments

=over

=item [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationAttachmentFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RegistrationAttachmentIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DescribeRegistrationAttachments>

Returns: a L<Paws::PinpointSMSVoiceV2::DescribeRegistrationAttachmentsResult> instance

Retrieves the specified registration attachments or all registration
attachments associated with your Amazon Web Services account.


=head2 DescribeRegistrationFieldDefinitions

=over

=item RegistrationType => Str

=item [FieldPaths => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SectionPath => Str]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DescribeRegistrationFieldDefinitions>

Returns: a L<Paws::PinpointSMSVoiceV2::DescribeRegistrationFieldDefinitionsResult> instance

Retrieves the specified registration type field definitions. You can
use DescribeRegistrationFieldDefinitions to view the requirements for
creating, filling out, and submitting each registration type.


=head2 DescribeRegistrationFieldValues

=over

=item RegistrationId => Str

=item [FieldPaths => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SectionPath => Str]

=item [VersionNumber => Int]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DescribeRegistrationFieldValues>

Returns: a L<Paws::PinpointSMSVoiceV2::DescribeRegistrationFieldValuesResult> instance

Retrieves the specified registration field values.


=head2 DescribeRegistrations

=over

=item [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RegistrationIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DescribeRegistrations>

Returns: a L<Paws::PinpointSMSVoiceV2::DescribeRegistrationsResult> instance

Retrieves the specified registrations.


=head2 DescribeRegistrationSectionDefinitions

=over

=item RegistrationType => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SectionPaths => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DescribeRegistrationSectionDefinitions>

Returns: a L<Paws::PinpointSMSVoiceV2::DescribeRegistrationSectionDefinitionsResult> instance

Retrieves the specified registration section definitions. You can use
DescribeRegistrationSectionDefinitions to view the requirements for
creating, filling out, and submitting each registration type.


=head2 DescribeRegistrationTypeDefinitions

=over

=item [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationTypeFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RegistrationTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DescribeRegistrationTypeDefinitions>

Returns: a L<Paws::PinpointSMSVoiceV2::DescribeRegistrationTypeDefinitionsResult> instance

Retrieves the specified registration type definitions. You can use
DescribeRegistrationTypeDefinitions to view the requirements for
creating, filling out, and submitting each registration type.


=head2 DescribeRegistrationVersions

=over

=item RegistrationId => Str

=item [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationVersionFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VersionNumbers => ArrayRef[Int]]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DescribeRegistrationVersions>

Returns: a L<Paws::PinpointSMSVoiceV2::DescribeRegistrationVersionsResult> instance

Retrieves the specified registration version.


=head2 DescribeSenderIds

=over

=item [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::SenderIdFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Owner => Str]

=item [SenderIds => ArrayRef[L<Paws::PinpointSMSVoiceV2::SenderIdAndCountry>]]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DescribeSenderIds>

Returns: a L<Paws::PinpointSMSVoiceV2::DescribeSenderIdsResult> instance

Describes the specified SenderIds or all SenderIds associated with your
Amazon Web Services account.

If you specify SenderIds, the output includes information for only the
specified SenderIds. If you specify filters, the output includes
information for only those SenderIds that meet the filter criteria. If
you don't specify SenderIds or filters, the output includes information
for all SenderIds.

f you specify a sender ID that isn't valid, an error is returned.


=head2 DescribeSpendLimits

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DescribeSpendLimits>

Returns: a L<Paws::PinpointSMSVoiceV2::DescribeSpendLimitsResult> instance

Describes the current monthly spend limits for sending voice and text
messages.

When you establish an Amazon Web Services account, the account has
initial monthly spend limit in a given Region. For more information on
increasing your monthly spend limit, see Requesting increases to your
monthly SMS, MMS, or Voice spending quota
(https://docs.aws.amazon.com/sms-voice/latest/userguide/awssupport-spend-threshold.html)
in the I<AWS End User Messaging SMS User Guide>.


=head2 DescribeVerifiedDestinationNumbers

=over

=item [DestinationPhoneNumbers => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::VerifiedDestinationNumberFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VerifiedDestinationNumberIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DescribeVerifiedDestinationNumbers>

Returns: a L<Paws::PinpointSMSVoiceV2::DescribeVerifiedDestinationNumbersResult> instance

Retrieves the specified verified destination numbers.


=head2 DisassociateOriginationIdentity

=over

=item IsoCountryCode => Str

=item OriginationIdentity => Str

=item PoolId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DisassociateOriginationIdentity>

Returns: a L<Paws::PinpointSMSVoiceV2::DisassociateOriginationIdentityResult> instance

Removes the specified origination identity from an existing pool.

If the origination identity isn't associated with the specified pool,
an error is returned.


=head2 DisassociateProtectConfiguration

=over

=item ConfigurationSetName => Str

=item ProtectConfigurationId => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DisassociateProtectConfiguration>

Returns: a L<Paws::PinpointSMSVoiceV2::DisassociateProtectConfigurationResult> instance

Disassociate a protect configuration from a configuration set.


=head2 DiscardRegistrationVersion

=over

=item RegistrationId => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::DiscardRegistrationVersion>

Returns: a L<Paws::PinpointSMSVoiceV2::DiscardRegistrationVersionResult> instance

Discard the current version of the registration.


=head2 GetProtectConfigurationCountryRuleSet

=over

=item NumberCapability => Str

=item ProtectConfigurationId => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::GetProtectConfigurationCountryRuleSet>

Returns: a L<Paws::PinpointSMSVoiceV2::GetProtectConfigurationCountryRuleSetResult> instance

Retrieve the CountryRuleSet for the specified NumberCapability from a
protect configuration.


=head2 GetResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::GetResourcePolicy>

Returns: a L<Paws::PinpointSMSVoiceV2::GetResourcePolicyResult> instance

Retrieves the JSON text of the resource-based policy document attached
to the AWS End User Messaging SMS and Voice resource. A shared resource
can be a Pool, Opt-out list, Sender Id, or Phone number.


=head2 ListPoolOriginationIdentities

=over

=item PoolId => Str

=item [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::PoolOriginationIdentitiesFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::ListPoolOriginationIdentities>

Returns: a L<Paws::PinpointSMSVoiceV2::ListPoolOriginationIdentitiesResult> instance

Lists all associated origination identities in your pool.

If you specify filters, the output includes information for only those
origination identities that meet the filter criteria.


=head2 ListProtectConfigurationRuleSetNumberOverrides

=over

=item ProtectConfigurationId => Str

=item [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::ProtectConfigurationRuleSetNumberOverrideFilterItem>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::ListProtectConfigurationRuleSetNumberOverrides>

Returns: a L<Paws::PinpointSMSVoiceV2::ListProtectConfigurationRuleSetNumberOverridesResult> instance

Retrieve all of the protect configuration rule set number overrides
that match the filters.


=head2 ListRegistrationAssociations

=over

=item RegistrationId => Str

=item [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationAssociationFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::ListRegistrationAssociations>

Returns: a L<Paws::PinpointSMSVoiceV2::ListRegistrationAssociationsResult> instance

Retrieve all of the origination identities that are associated with a
registration.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::ListTagsForResource>

Returns: a L<Paws::PinpointSMSVoiceV2::ListTagsForResourceResult> instance

List all tags associated with a resource.


=head2 PutKeyword

=over

=item Keyword => Str

=item KeywordMessage => Str

=item OriginationIdentity => Str

=item [KeywordAction => Str]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::PutKeyword>

Returns: a L<Paws::PinpointSMSVoiceV2::PutKeywordResult> instance

Creates or updates a keyword configuration on an origination phone
number or pool.

A keyword is a word that you can search for on a particular phone
number or pool. It is also a specific word or phrase that an end user
can send to your number to elicit a response, such as an informational
message or a special offer. When your number receives a message that
begins with a keyword, AWS End User Messaging SMS and Voice responds
with a customizable message.

If you specify a keyword that isn't valid, an error is returned.


=head2 PutMessageFeedback

=over

=item MessageFeedbackStatus => Str

=item MessageId => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::PutMessageFeedback>

Returns: a L<Paws::PinpointSMSVoiceV2::PutMessageFeedbackResult> instance

Set the MessageFeedbackStatus as C<RECEIVED> or C<FAILED> for the
passed in MessageId.

If you use message feedback then you must update message feedback
record. When you receive a signal that a user has received the message
you must use C<PutMessageFeedback> to set the message feedback record
as C<RECEIVED>; Otherwise, an hour after the message feedback record is
set to C<FAILED>.


=head2 PutOptedOutNumber

=over

=item OptedOutNumber => Str

=item OptOutListName => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::PutOptedOutNumber>

Returns: a L<Paws::PinpointSMSVoiceV2::PutOptedOutNumberResult> instance

Creates an opted out destination phone number in the opt-out list.

If the destination phone number isn't valid or if the specified opt-out
list doesn't exist, an error is returned.


=head2 PutProtectConfigurationRuleSetNumberOverride

=over

=item Action => Str

=item DestinationPhoneNumber => Str

=item ProtectConfigurationId => Str

=item [ClientToken => Str]

=item [ExpirationTimestamp => Str]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::PutProtectConfigurationRuleSetNumberOverride>

Returns: a L<Paws::PinpointSMSVoiceV2::PutProtectConfigurationRuleSetNumberOverrideResult> instance

Create or update a phone number rule override and associate it with a
protect configuration.


=head2 PutRegistrationFieldValue

=over

=item FieldPath => Str

=item RegistrationId => Str

=item [RegistrationAttachmentId => Str]

=item [SelectChoices => ArrayRef[Str|Undef]]

=item [TextValue => Str]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::PutRegistrationFieldValue>

Returns: a L<Paws::PinpointSMSVoiceV2::PutRegistrationFieldValueResult> instance

Creates or updates a field value for a registration.


=head2 PutResourcePolicy

=over

=item Policy => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::PutResourcePolicy>

Returns: a L<Paws::PinpointSMSVoiceV2::PutResourcePolicyResult> instance

Attaches a resource-based policy to a AWS End User Messaging SMS and
Voice resource(phone number, sender Id, phone poll, or opt-out list)
that is used for sharing the resource. A shared resource can be a Pool,
Opt-out list, Sender Id, or Phone number. For more information about
resource-based policies, see Working with shared resources
(https://docs.aws.amazon.com/sms-voice/latest/userguide/shared-resources.html)
in the I<AWS End User Messaging SMS User Guide>.


=head2 ReleasePhoneNumber

=over

=item PhoneNumberId => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::ReleasePhoneNumber>

Returns: a L<Paws::PinpointSMSVoiceV2::ReleasePhoneNumberResult> instance

Releases an existing origination phone number in your account. Once
released, a phone number is no longer available for sending messages.

If the origination phone number has deletion protection enabled or is
associated with a pool, an error is returned.


=head2 ReleaseSenderId

=over

=item IsoCountryCode => Str

=item SenderId => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::ReleaseSenderId>

Returns: a L<Paws::PinpointSMSVoiceV2::ReleaseSenderIdResult> instance

Releases an existing sender ID in your account.


=head2 RequestPhoneNumber

=over

=item IsoCountryCode => Str

=item MessageType => Str

=item NumberCapabilities => ArrayRef[Str|Undef]

=item NumberType => Str

=item [ClientToken => Str]

=item [DeletionProtectionEnabled => Bool]

=item [OptOutListName => Str]

=item [PoolId => Str]

=item [RegistrationId => Str]

=item [Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::RequestPhoneNumber>

Returns: a L<Paws::PinpointSMSVoiceV2::RequestPhoneNumberResult> instance

Request an origination phone number for use in your account. For more
information on phone number request see Request a phone number
(https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-request.html)
in the I<AWS End User Messaging SMS User Guide>.


=head2 RequestSenderId

=over

=item IsoCountryCode => Str

=item SenderId => Str

=item [ClientToken => Str]

=item [DeletionProtectionEnabled => Bool]

=item [MessageTypes => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::RequestSenderId>

Returns: a L<Paws::PinpointSMSVoiceV2::RequestSenderIdResult> instance

Request a new sender ID that doesn't require registration.


=head2 SendDestinationNumberVerificationCode

=over

=item VerificationChannel => Str

=item VerifiedDestinationNumberId => Str

=item [ConfigurationSetName => Str]

=item [Context => L<Paws::PinpointSMSVoiceV2::ContextMap>]

=item [DestinationCountryParameters => L<Paws::PinpointSMSVoiceV2::DestinationCountryParameters>]

=item [LanguageCode => Str]

=item [OriginationIdentity => Str]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::SendDestinationNumberVerificationCode>

Returns: a L<Paws::PinpointSMSVoiceV2::SendDestinationNumberVerificationCodeResult> instance

Before you can send test messages to a verified destination phone
number you need to opt-in the verified destination phone number.
Creates a new text message with a verification code and send it to a
verified destination phone number. Once you have the verification code
use VerifyDestinationNumber to opt-in the verified destination phone
number to receive messages.


=head2 SendMediaMessage

=over

=item DestinationPhoneNumber => Str

=item OriginationIdentity => Str

=item [ConfigurationSetName => Str]

=item [Context => L<Paws::PinpointSMSVoiceV2::ContextMap>]

=item [DryRun => Bool]

=item [MaxPrice => Str]

=item [MediaUrls => ArrayRef[Str|Undef]]

=item [MessageBody => Str]

=item [MessageFeedbackEnabled => Bool]

=item [ProtectConfigurationId => Str]

=item [TimeToLive => Int]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::SendMediaMessage>

Returns: a L<Paws::PinpointSMSVoiceV2::SendMediaMessageResult> instance

Creates a new multimedia message (MMS) and sends it to a recipient's
phone number.


=head2 SendTextMessage

=over

=item DestinationPhoneNumber => Str

=item [ConfigurationSetName => Str]

=item [Context => L<Paws::PinpointSMSVoiceV2::ContextMap>]

=item [DestinationCountryParameters => L<Paws::PinpointSMSVoiceV2::DestinationCountryParameters>]

=item [DryRun => Bool]

=item [Keyword => Str]

=item [MaxPrice => Str]

=item [MessageBody => Str]

=item [MessageFeedbackEnabled => Bool]

=item [MessageType => Str]

=item [OriginationIdentity => Str]

=item [ProtectConfigurationId => Str]

=item [TimeToLive => Int]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::SendTextMessage>

Returns: a L<Paws::PinpointSMSVoiceV2::SendTextMessageResult> instance

Creates a new text message and sends it to a recipient's phone number.
SendTextMessage only sends an SMS message to one recipient each time it
is invoked.

SMS throughput limits are measured in Message Parts per Second (MPS).
Your MPS limit depends on the destination country of your messages, as
well as the type of phone number (origination number) that you use to
send the message. For more information about MPS, see Message Parts per
Second (MPS) limits
(https://docs.aws.amazon.com/sms-voice/latest/userguide/sms-limitations-mps.html)
in the I<AWS End User Messaging SMS User Guide>.


=head2 SendVoiceMessage

=over

=item DestinationPhoneNumber => Str

=item OriginationIdentity => Str

=item [ConfigurationSetName => Str]

=item [Context => L<Paws::PinpointSMSVoiceV2::ContextMap>]

=item [DryRun => Bool]

=item [MaxPricePerMinute => Str]

=item [MessageBody => Str]

=item [MessageBodyTextType => Str]

=item [MessageFeedbackEnabled => Bool]

=item [ProtectConfigurationId => Str]

=item [TimeToLive => Int]

=item [VoiceId => Str]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::SendVoiceMessage>

Returns: a L<Paws::PinpointSMSVoiceV2::SendVoiceMessageResult> instance

Allows you to send a request that sends a voice message. This operation
uses Amazon Polly (http://aws.amazon.com/polly/) to convert a text
script into a voice message.


=head2 SetAccountDefaultProtectConfiguration

=over

=item ProtectConfigurationId => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::SetAccountDefaultProtectConfiguration>

Returns: a L<Paws::PinpointSMSVoiceV2::SetAccountDefaultProtectConfigurationResult> instance

Set a protect configuration as your account default. You can only have
one account default protect configuration at a time. The current
account default protect configuration is replaced with the provided
protect configuration.


=head2 SetDefaultMessageFeedbackEnabled

=over

=item ConfigurationSetName => Str

=item MessageFeedbackEnabled => Bool


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::SetDefaultMessageFeedbackEnabled>

Returns: a L<Paws::PinpointSMSVoiceV2::SetDefaultMessageFeedbackEnabledResult> instance

Sets a configuration set's default for message feedback.


=head2 SetDefaultMessageType

=over

=item ConfigurationSetName => Str

=item MessageType => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::SetDefaultMessageType>

Returns: a L<Paws::PinpointSMSVoiceV2::SetDefaultMessageTypeResult> instance

Sets the default message type on a configuration set.

Choose the category of SMS messages that you plan to send from this
account. If you send account-related messages or time-sensitive
messages such as one-time passcodes, choose B<Transactional>. If you
plan to send messages that contain marketing material or other
promotional content, choose B<Promotional>. This setting applies to
your entire Amazon Web Services account.


=head2 SetDefaultSenderId

=over

=item ConfigurationSetName => Str

=item SenderId => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::SetDefaultSenderId>

Returns: a L<Paws::PinpointSMSVoiceV2::SetDefaultSenderIdResult> instance

Sets default sender ID on a configuration set.

When sending a text message to a destination country that supports
sender IDs, the default sender ID on the configuration set specified
will be used if no dedicated origination phone numbers or registered
sender IDs are available in your account.


=head2 SetMediaMessageSpendLimitOverride

=over

=item MonthlyLimit => Int


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::SetMediaMessageSpendLimitOverride>

Returns: a L<Paws::PinpointSMSVoiceV2::SetMediaMessageSpendLimitOverrideResult> instance

Sets an account level monthly spend limit override for sending MMS
messages. The requested spend limit must be less than or equal to the
C<MaxLimit>, which is set by Amazon Web Services.


=head2 SetTextMessageSpendLimitOverride

=over

=item MonthlyLimit => Int


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::SetTextMessageSpendLimitOverride>

Returns: a L<Paws::PinpointSMSVoiceV2::SetTextMessageSpendLimitOverrideResult> instance

Sets an account level monthly spend limit override for sending text
messages. The requested spend limit must be less than or equal to the
C<MaxLimit>, which is set by Amazon Web Services.


=head2 SetVoiceMessageSpendLimitOverride

=over

=item MonthlyLimit => Int


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::SetVoiceMessageSpendLimitOverride>

Returns: a L<Paws::PinpointSMSVoiceV2::SetVoiceMessageSpendLimitOverrideResult> instance

Sets an account level monthly spend limit override for sending voice
messages. The requested spend limit must be less than or equal to the
C<MaxLimit>, which is set by Amazon Web Services.


=head2 SubmitRegistrationVersion

=over

=item RegistrationId => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::SubmitRegistrationVersion>

Returns: a L<Paws::PinpointSMSVoiceV2::SubmitRegistrationVersionResult> instance

Submit the specified registration for review and approval.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::TagResource>

Returns: a L<Paws::PinpointSMSVoiceV2::TagResourceResult> instance

Adds or overwrites only the specified tags for the specified resource.
When you specify an existing tag key, the value is overwritten with the
new value. Each tag consists of a key and an optional value. Tag keys
must be unique per resource. For more information about tags, see Tags
(https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-tags.html)
in the I<AWS End User Messaging SMS User Guide>.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::UntagResource>

Returns: a L<Paws::PinpointSMSVoiceV2::UntagResourceResult> instance

Removes the association of the specified tags from a resource. For more
information on tags see Tags
(https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-tags.html)
in the I<AWS End User Messaging SMS User Guide>.


=head2 UpdateEventDestination

=over

=item ConfigurationSetName => Str

=item EventDestinationName => Str

=item [CloudWatchLogsDestination => L<Paws::PinpointSMSVoiceV2::CloudWatchLogsDestination>]

=item [Enabled => Bool]

=item [KinesisFirehoseDestination => L<Paws::PinpointSMSVoiceV2::KinesisFirehoseDestination>]

=item [MatchingEventTypes => ArrayRef[Str|Undef]]

=item [SnsDestination => L<Paws::PinpointSMSVoiceV2::SnsDestination>]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::UpdateEventDestination>

Returns: a L<Paws::PinpointSMSVoiceV2::UpdateEventDestinationResult> instance

Updates an existing event destination in a configuration set. You can
update the IAM role ARN for CloudWatch Logs and Firehose. You can also
enable or disable the event destination.

You may want to update an event destination to change its matching
event types or updating the destination resource ARN. You can't change
an event destination's type between CloudWatch Logs, Firehose, and
Amazon SNS.


=head2 UpdatePhoneNumber

=over

=item PhoneNumberId => Str

=item [DeletionProtectionEnabled => Bool]

=item [OptOutListName => Str]

=item [SelfManagedOptOutsEnabled => Bool]

=item [TwoWayChannelArn => Str]

=item [TwoWayChannelRole => Str]

=item [TwoWayEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::UpdatePhoneNumber>

Returns: a L<Paws::PinpointSMSVoiceV2::UpdatePhoneNumberResult> instance

Updates the configuration of an existing origination phone number. You
can update the opt-out list, enable or disable two-way messaging,
change the TwoWayChannelArn, enable or disable self-managed opt-outs,
and enable or disable deletion protection.

If the origination phone number is associated with a pool, an error is
returned.


=head2 UpdatePool

=over

=item PoolId => Str

=item [DeletionProtectionEnabled => Bool]

=item [OptOutListName => Str]

=item [SelfManagedOptOutsEnabled => Bool]

=item [SharedRoutesEnabled => Bool]

=item [TwoWayChannelArn => Str]

=item [TwoWayChannelRole => Str]

=item [TwoWayEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::UpdatePool>

Returns: a L<Paws::PinpointSMSVoiceV2::UpdatePoolResult> instance

Updates the configuration of an existing pool. You can update the
opt-out list, enable or disable two-way messaging, change the
C<TwoWayChannelArn>, enable or disable self-managed opt-outs, enable or
disable deletion protection, and enable or disable shared routes.


=head2 UpdateProtectConfiguration

=over

=item ProtectConfigurationId => Str

=item [DeletionProtectionEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::UpdateProtectConfiguration>

Returns: a L<Paws::PinpointSMSVoiceV2::UpdateProtectConfigurationResult> instance

Update the setting for an existing protect configuration.


=head2 UpdateProtectConfigurationCountryRuleSet

=over

=item CountryRuleSetUpdates => L<Paws::PinpointSMSVoiceV2::ProtectConfigurationCountryRuleSet>

=item NumberCapability => Str

=item ProtectConfigurationId => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::UpdateProtectConfigurationCountryRuleSet>

Returns: a L<Paws::PinpointSMSVoiceV2::UpdateProtectConfigurationCountryRuleSetResult> instance

Update a country rule set to C<ALLOW>, C<BLOCK>, C<MONITOR>, or
C<FILTER> messages to be sent to the specified destination counties.
You can update one or multiple countries at a time. The updates are
only applied to the specified NumberCapability type.


=head2 UpdateSenderId

=over

=item IsoCountryCode => Str

=item SenderId => Str

=item [DeletionProtectionEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::UpdateSenderId>

Returns: a L<Paws::PinpointSMSVoiceV2::UpdateSenderIdResult> instance

Updates the configuration of an existing sender ID.


=head2 VerifyDestinationNumber

=over

=item VerificationCode => Str

=item VerifiedDestinationNumberId => Str


=back

Each argument is described in detail in: L<Paws::PinpointSMSVoiceV2::VerifyDestinationNumber>

Returns: a L<Paws::PinpointSMSVoiceV2::VerifyDestinationNumberResult> instance

Use the verification code that was received by the verified destination
phone number to opt-in the verified destination phone number to receive
more messages.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllAccountAttributes(sub { },[MaxResults => Int, NextToken => Str])

=head2 DescribeAllAccountAttributes([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AccountAttributes, passing the object as the first parameter, and the string 'AccountAttributes' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::DescribeAccountAttributesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllAccountLimits(sub { },[MaxResults => Int, NextToken => Str])

=head2 DescribeAllAccountLimits([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AccountLimits, passing the object as the first parameter, and the string 'AccountLimits' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::DescribeAccountLimitsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllConfigurationSets(sub { },[ConfigurationSetNames => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::ConfigurationSetFilter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllConfigurationSets([ConfigurationSetNames => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::ConfigurationSetFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConfigurationSets, passing the object as the first parameter, and the string 'ConfigurationSets' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::DescribeConfigurationSetsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllKeywords(sub { },OriginationIdentity => Str, [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::KeywordFilter>], Keywords => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllKeywords(OriginationIdentity => Str, [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::KeywordFilter>], Keywords => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Keywords, passing the object as the first parameter, and the string 'Keywords' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::DescribeKeywordsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllOptedOutNumbers(sub { },OptOutListName => Str, [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::OptedOutFilter>], MaxResults => Int, NextToken => Str, OptedOutNumbers => ArrayRef[Str|Undef]])

=head2 DescribeAllOptedOutNumbers(OptOutListName => Str, [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::OptedOutFilter>], MaxResults => Int, NextToken => Str, OptedOutNumbers => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OptedOutNumbers, passing the object as the first parameter, and the string 'OptedOutNumbers' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::DescribeOptedOutNumbersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllOptOutLists(sub { },[MaxResults => Int, NextToken => Str, OptOutListNames => ArrayRef[Str|Undef], Owner => Str])

=head2 DescribeAllOptOutLists([MaxResults => Int, NextToken => Str, OptOutListNames => ArrayRef[Str|Undef], Owner => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OptOutLists, passing the object as the first parameter, and the string 'OptOutLists' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::DescribeOptOutListsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllPhoneNumbers(sub { },[Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::PhoneNumberFilter>], MaxResults => Int, NextToken => Str, Owner => Str, PhoneNumberIds => ArrayRef[Str|Undef]])

=head2 DescribeAllPhoneNumbers([Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::PhoneNumberFilter>], MaxResults => Int, NextToken => Str, Owner => Str, PhoneNumberIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PhoneNumbers, passing the object as the first parameter, and the string 'PhoneNumbers' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::DescribePhoneNumbersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllPools(sub { },[Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::PoolFilter>], MaxResults => Int, NextToken => Str, Owner => Str, PoolIds => ArrayRef[Str|Undef]])

=head2 DescribeAllPools([Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::PoolFilter>], MaxResults => Int, NextToken => Str, Owner => Str, PoolIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Pools, passing the object as the first parameter, and the string 'Pools' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::DescribePoolsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllProtectConfigurations(sub { },[Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::ProtectConfigurationFilter>], MaxResults => Int, NextToken => Str, ProtectConfigurationIds => ArrayRef[Str|Undef]])

=head2 DescribeAllProtectConfigurations([Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::ProtectConfigurationFilter>], MaxResults => Int, NextToken => Str, ProtectConfigurationIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProtectConfigurations, passing the object as the first parameter, and the string 'ProtectConfigurations' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::DescribeProtectConfigurationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllRegistrationAttachments(sub { },[Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationAttachmentFilter>], MaxResults => Int, NextToken => Str, RegistrationAttachmentIds => ArrayRef[Str|Undef]])

=head2 DescribeAllRegistrationAttachments([Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationAttachmentFilter>], MaxResults => Int, NextToken => Str, RegistrationAttachmentIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RegistrationAttachments, passing the object as the first parameter, and the string 'RegistrationAttachments' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::DescribeRegistrationAttachmentsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllRegistrationFieldDefinitions(sub { },RegistrationType => Str, [FieldPaths => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, SectionPath => Str])

=head2 DescribeAllRegistrationFieldDefinitions(RegistrationType => Str, [FieldPaths => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, SectionPath => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RegistrationFieldDefinitions, passing the object as the first parameter, and the string 'RegistrationFieldDefinitions' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::DescribeRegistrationFieldDefinitionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllRegistrationFieldValues(sub { },RegistrationId => Str, [FieldPaths => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, SectionPath => Str, VersionNumber => Int])

=head2 DescribeAllRegistrationFieldValues(RegistrationId => Str, [FieldPaths => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, SectionPath => Str, VersionNumber => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RegistrationFieldValues, passing the object as the first parameter, and the string 'RegistrationFieldValues' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::DescribeRegistrationFieldValuesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllRegistrations(sub { },[Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationFilter>], MaxResults => Int, NextToken => Str, RegistrationIds => ArrayRef[Str|Undef]])

=head2 DescribeAllRegistrations([Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationFilter>], MaxResults => Int, NextToken => Str, RegistrationIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Registrations, passing the object as the first parameter, and the string 'Registrations' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::DescribeRegistrationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllRegistrationSectionDefinitions(sub { },RegistrationType => Str, [MaxResults => Int, NextToken => Str, SectionPaths => ArrayRef[Str|Undef]])

=head2 DescribeAllRegistrationSectionDefinitions(RegistrationType => Str, [MaxResults => Int, NextToken => Str, SectionPaths => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RegistrationSectionDefinitions, passing the object as the first parameter, and the string 'RegistrationSectionDefinitions' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::DescribeRegistrationSectionDefinitionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllRegistrationTypeDefinitions(sub { },[Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationTypeFilter>], MaxResults => Int, NextToken => Str, RegistrationTypes => ArrayRef[Str|Undef]])

=head2 DescribeAllRegistrationTypeDefinitions([Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationTypeFilter>], MaxResults => Int, NextToken => Str, RegistrationTypes => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RegistrationTypeDefinitions, passing the object as the first parameter, and the string 'RegistrationTypeDefinitions' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::DescribeRegistrationTypeDefinitionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllRegistrationVersions(sub { },RegistrationId => Str, [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationVersionFilter>], MaxResults => Int, NextToken => Str, VersionNumbers => ArrayRef[Int]])

=head2 DescribeAllRegistrationVersions(RegistrationId => Str, [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationVersionFilter>], MaxResults => Int, NextToken => Str, VersionNumbers => ArrayRef[Int]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RegistrationVersions, passing the object as the first parameter, and the string 'RegistrationVersions' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::DescribeRegistrationVersionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSenderIds(sub { },[Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::SenderIdFilter>], MaxResults => Int, NextToken => Str, Owner => Str, SenderIds => ArrayRef[L<Paws::PinpointSMSVoiceV2::SenderIdAndCountry>]])

=head2 DescribeAllSenderIds([Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::SenderIdFilter>], MaxResults => Int, NextToken => Str, Owner => Str, SenderIds => ArrayRef[L<Paws::PinpointSMSVoiceV2::SenderIdAndCountry>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SenderIds, passing the object as the first parameter, and the string 'SenderIds' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::DescribeSenderIdsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSpendLimits(sub { },[MaxResults => Int, NextToken => Str])

=head2 DescribeAllSpendLimits([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SpendLimits, passing the object as the first parameter, and the string 'SpendLimits' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::DescribeSpendLimitsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVerifiedDestinationNumbers(sub { },[DestinationPhoneNumbers => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::VerifiedDestinationNumberFilter>], MaxResults => Int, NextToken => Str, VerifiedDestinationNumberIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVerifiedDestinationNumbers([DestinationPhoneNumbers => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::VerifiedDestinationNumberFilter>], MaxResults => Int, NextToken => Str, VerifiedDestinationNumberIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VerifiedDestinationNumbers, passing the object as the first parameter, and the string 'VerifiedDestinationNumbers' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::DescribeVerifiedDestinationNumbersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPoolOriginationIdentities(sub { },PoolId => Str, [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::PoolOriginationIdentitiesFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllPoolOriginationIdentities(PoolId => Str, [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::PoolOriginationIdentitiesFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OriginationIdentities, passing the object as the first parameter, and the string 'OriginationIdentities' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::ListPoolOriginationIdentitiesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProtectConfigurationRuleSetNumberOverrides(sub { },ProtectConfigurationId => Str, [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::ProtectConfigurationRuleSetNumberOverrideFilterItem>], MaxResults => Int, NextToken => Str])

=head2 ListAllProtectConfigurationRuleSetNumberOverrides(ProtectConfigurationId => Str, [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::ProtectConfigurationRuleSetNumberOverrideFilterItem>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RuleSetNumberOverrides, passing the object as the first parameter, and the string 'RuleSetNumberOverrides' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::ListProtectConfigurationRuleSetNumberOverridesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRegistrationAssociations(sub { },RegistrationId => Str, [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationAssociationFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllRegistrationAssociations(RegistrationId => Str, [Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationAssociationFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RegistrationAssociations, passing the object as the first parameter, and the string 'RegistrationAssociations' as the second parameter 

If not, it will return a a L<Paws::PinpointSMSVoiceV2::ListRegistrationAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

