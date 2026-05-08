package Paws::MailManager;
  use Moose;
  sub service { 'mail-manager' }
  sub signing_name { 'ses' }
  sub version { '2023-10-17' }
  sub target_prefix { 'MailManagerSvc' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateAddonInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::CreateAddonInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAddonSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::CreateAddonSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAddressList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::CreateAddressList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAddressListImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::CreateAddressListImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateArchive {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::CreateArchive', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIngressPoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::CreateIngressPoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRelay {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::CreateRelay', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRuleSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::CreateRuleSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrafficPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::CreateTrafficPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAddonInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::DeleteAddonInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAddonSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::DeleteAddonSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAddressList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::DeleteAddressList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteArchive {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::DeleteArchive', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIngressPoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::DeleteIngressPoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRelay {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::DeleteRelay', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRuleSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::DeleteRuleSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrafficPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::DeleteTrafficPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterMemberFromAddressList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::DeregisterMemberFromAddressList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAddonInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::GetAddonInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAddonSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::GetAddonSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAddressList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::GetAddressList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAddressListImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::GetAddressListImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetArchive {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::GetArchive', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetArchiveExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::GetArchiveExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetArchiveMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::GetArchiveMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetArchiveMessageContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::GetArchiveMessageContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetArchiveSearch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::GetArchiveSearch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetArchiveSearchResults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::GetArchiveSearchResults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIngressPoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::GetIngressPoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMemberOfAddressList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::GetMemberOfAddressList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRelay {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::GetRelay', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRuleSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::GetRuleSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTrafficPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::GetTrafficPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAddonInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::ListAddonInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAddonSubscriptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::ListAddonSubscriptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAddressListImportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::ListAddressListImportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAddressLists {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::ListAddressLists', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListArchiveExports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::ListArchiveExports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListArchives {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::ListArchives', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListArchiveSearches {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::ListArchiveSearches', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIngressPoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::ListIngressPoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMembersOfAddressList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::ListMembersOfAddressList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRelays {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::ListRelays', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRuleSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::ListRuleSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrafficPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::ListTrafficPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterMemberToAddressList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::RegisterMemberToAddressList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartAddressListImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::StartAddressListImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartArchiveExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::StartArchiveExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartArchiveSearch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::StartArchiveSearch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopAddressListImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::StopAddressListImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopArchiveExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::StopArchiveExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopArchiveSearch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::StopArchiveSearch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateArchive {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::UpdateArchive', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIngressPoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::UpdateIngressPoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRelay {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::UpdateRelay', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRuleSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::UpdateRuleSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTrafficPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MailManager::UpdateTrafficPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAddonInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAddonInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAddonInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->AddonInstances }, @{ $next_result->AddonInstances };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AddonInstances') foreach (@{ $result->AddonInstances });
        $result = $self->ListAddonInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AddonInstances') foreach (@{ $result->AddonInstances });
    }

    return undef
  }
  sub ListAllAddonSubscriptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAddonSubscriptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAddonSubscriptions(@_, NextToken => $next_result->NextToken);
        push @{ $result->AddonSubscriptions }, @{ $next_result->AddonSubscriptions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AddonSubscriptions') foreach (@{ $result->AddonSubscriptions });
        $result = $self->ListAddonSubscriptions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AddonSubscriptions') foreach (@{ $result->AddonSubscriptions });
    }

    return undef
  }
  sub ListAllAddressListImportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAddressListImportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAddressListImportJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->ImportJobs }, @{ $next_result->ImportJobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ImportJobs') foreach (@{ $result->ImportJobs });
        $result = $self->ListAddressListImportJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ImportJobs') foreach (@{ $result->ImportJobs });
    }

    return undef
  }
  sub ListAllAddressLists {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAddressLists(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAddressLists(@_, NextToken => $next_result->NextToken);
        push @{ $result->AddressLists }, @{ $next_result->AddressLists };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AddressLists') foreach (@{ $result->AddressLists });
        $result = $self->ListAddressLists(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AddressLists') foreach (@{ $result->AddressLists });
    }

    return undef
  }
  sub ListAllArchiveExports {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListArchiveExports(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListArchiveExports(@_, NextToken => $next_result->NextToken);
        push @{ $result->Exports }, @{ $next_result->Exports };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Exports') foreach (@{ $result->Exports });
        $result = $self->ListArchiveExports(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Exports') foreach (@{ $result->Exports });
    }

    return undef
  }
  sub ListAllArchives {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListArchives(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListArchives(@_, NextToken => $next_result->NextToken);
        push @{ $result->Archives }, @{ $next_result->Archives };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Archives') foreach (@{ $result->Archives });
        $result = $self->ListArchives(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Archives') foreach (@{ $result->Archives });
    }

    return undef
  }
  sub ListAllArchiveSearches {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListArchiveSearches(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListArchiveSearches(@_, NextToken => $next_result->NextToken);
        push @{ $result->Searches }, @{ $next_result->Searches };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Searches') foreach (@{ $result->Searches });
        $result = $self->ListArchiveSearches(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Searches') foreach (@{ $result->Searches });
    }

    return undef
  }
  sub ListAllIngressPoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIngressPoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListIngressPoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->IngressPoints }, @{ $next_result->IngressPoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IngressPoints') foreach (@{ $result->IngressPoints });
        $result = $self->ListIngressPoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IngressPoints') foreach (@{ $result->IngressPoints });
    }

    return undef
  }
  sub ListAllMembersOfAddressList {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMembersOfAddressList(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMembersOfAddressList(@_, NextToken => $next_result->NextToken);
        push @{ $result->Addresses }, @{ $next_result->Addresses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Addresses') foreach (@{ $result->Addresses });
        $result = $self->ListMembersOfAddressList(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Addresses') foreach (@{ $result->Addresses });
    }

    return undef
  }
  sub ListAllRelays {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRelays(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRelays(@_, NextToken => $next_result->NextToken);
        push @{ $result->Relays }, @{ $next_result->Relays };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Relays') foreach (@{ $result->Relays });
        $result = $self->ListRelays(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Relays') foreach (@{ $result->Relays });
    }

    return undef
  }
  sub ListAllRuleSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRuleSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRuleSets(@_, NextToken => $next_result->NextToken);
        push @{ $result->RuleSets }, @{ $next_result->RuleSets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RuleSets') foreach (@{ $result->RuleSets });
        $result = $self->ListRuleSets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RuleSets') foreach (@{ $result->RuleSets });
    }

    return undef
  }
  sub ListAllTrafficPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTrafficPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTrafficPolicies(@_, NextToken => $next_result->NextToken);
        push @{ $result->TrafficPolicies }, @{ $next_result->TrafficPolicies };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TrafficPolicies') foreach (@{ $result->TrafficPolicies });
        $result = $self->ListTrafficPolicies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TrafficPolicies') foreach (@{ $result->TrafficPolicies });
    }

    return undef
  }


  sub operations { qw/CreateAddonInstance CreateAddonSubscription CreateAddressList CreateAddressListImportJob CreateArchive CreateIngressPoint CreateRelay CreateRuleSet CreateTrafficPolicy DeleteAddonInstance DeleteAddonSubscription DeleteAddressList DeleteArchive DeleteIngressPoint DeleteRelay DeleteRuleSet DeleteTrafficPolicy DeregisterMemberFromAddressList GetAddonInstance GetAddonSubscription GetAddressList GetAddressListImportJob GetArchive GetArchiveExport GetArchiveMessage GetArchiveMessageContent GetArchiveSearch GetArchiveSearchResults GetIngressPoint GetMemberOfAddressList GetRelay GetRuleSet GetTrafficPolicy ListAddonInstances ListAddonSubscriptions ListAddressListImportJobs ListAddressLists ListArchiveExports ListArchives ListArchiveSearches ListIngressPoints ListMembersOfAddressList ListRelays ListRuleSets ListTagsForResource ListTrafficPolicies RegisterMemberToAddressList StartAddressListImportJob StartArchiveExport StartArchiveSearch StopAddressListImportJob StopArchiveExport StopArchiveSearch TagResource UntagResource UpdateArchive UpdateIngressPoint UpdateRelay UpdateRuleSet UpdateTrafficPolicy / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager - Perl Interface to AWS MailManager

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MailManager');
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

Amazon SES Mail Manager API

The Amazon SES Mail Manager API contains operations and data types that
comprise the Mail Manager feature of Amazon Simple Email Service (SES)
(http://aws.amazon.com/ses).

Mail Manager is a set of Amazon SES email gateway features designed to
help you strengthen your organization's email infrastructure, simplify
email workflow management, and streamline email compliance control. To
learn more, see the Mail Manager chapter
(https://docs.aws.amazon.com/ses/latest/dg/eb.html) in the I<Amazon SES
Developer Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager-2023-10-17>


=head1 METHODS

=head2 CreateAddonInstance

=over

=item AddonSubscriptionId => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::MailManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::MailManager::CreateAddonInstance>

Returns: a L<Paws::MailManager::CreateAddonInstanceResponse> instance

Creates an Add On instance for the subscription indicated in the
request. The resulting Amazon Resource Name (ARN) can be used in a
conditional statement for a rule set or traffic policy.


=head2 CreateAddonSubscription

=over

=item AddonName => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::MailManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::MailManager::CreateAddonSubscription>

Returns: a L<Paws::MailManager::CreateAddonSubscriptionResponse> instance

Creates a subscription for an Add On representing the acceptance of its
terms of use and additional pricing. The subscription can then be used
to create an instance for use in rule sets or traffic policies.


=head2 CreateAddressList

=over

=item AddressListName => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::MailManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::MailManager::CreateAddressList>

Returns: a L<Paws::MailManager::CreateAddressListResponse> instance

Creates a new address list.


=head2 CreateAddressListImportJob

=over

=item AddressListId => Str

=item ImportDataFormat => L<Paws::MailManager::ImportDataFormat>

=item Name => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::MailManager::CreateAddressListImportJob>

Returns: a L<Paws::MailManager::CreateAddressListImportJobResponse> instance

Creates an import job for an address list.


=head2 CreateArchive

=over

=item ArchiveName => Str

=item [ClientToken => Str]

=item [KmsKeyArn => Str]

=item [Retention => L<Paws::MailManager::ArchiveRetention>]

=item [Tags => ArrayRef[L<Paws::MailManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::MailManager::CreateArchive>

Returns: a L<Paws::MailManager::CreateArchiveResponse> instance

Creates a new email archive resource for storing and retaining emails.


=head2 CreateIngressPoint

=over

=item IngressPointName => Str

=item RuleSetId => Str

=item TrafficPolicyId => Str

=item Type => Str

=item [ClientToken => Str]

=item [IngressPointConfiguration => L<Paws::MailManager::IngressPointConfiguration>]

=item [NetworkConfiguration => L<Paws::MailManager::NetworkConfiguration>]

=item [Tags => ArrayRef[L<Paws::MailManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::MailManager::CreateIngressPoint>

Returns: a L<Paws::MailManager::CreateIngressPointResponse> instance

Provision a new ingress endpoint resource.


=head2 CreateRelay

=over

=item Authentication => L<Paws::MailManager::RelayAuthentication>

=item RelayName => Str

=item ServerName => Str

=item ServerPort => Int

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::MailManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::MailManager::CreateRelay>

Returns: a L<Paws::MailManager::CreateRelayResponse> instance

Creates a relay resource which can be used in rules to relay incoming
emails to defined relay destinations.


=head2 CreateRuleSet

=over

=item Rules => ArrayRef[L<Paws::MailManager::Rule>]

=item RuleSetName => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::MailManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::MailManager::CreateRuleSet>

Returns: a L<Paws::MailManager::CreateRuleSetResponse> instance

Provision a new rule set.


=head2 CreateTrafficPolicy

=over

=item DefaultAction => Str

=item PolicyStatements => ArrayRef[L<Paws::MailManager::PolicyStatement>]

=item TrafficPolicyName => Str

=item [ClientToken => Str]

=item [MaxMessageSizeBytes => Int]

=item [Tags => ArrayRef[L<Paws::MailManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::MailManager::CreateTrafficPolicy>

Returns: a L<Paws::MailManager::CreateTrafficPolicyResponse> instance

Provision a new traffic policy resource.


=head2 DeleteAddonInstance

=over

=item AddonInstanceId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::DeleteAddonInstance>

Returns: a L<Paws::MailManager::DeleteAddonInstanceResponse> instance

Deletes an Add On instance.


=head2 DeleteAddonSubscription

=over

=item AddonSubscriptionId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::DeleteAddonSubscription>

Returns: a L<Paws::MailManager::DeleteAddonSubscriptionResponse> instance

Deletes an Add On subscription.


=head2 DeleteAddressList

=over

=item AddressListId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::DeleteAddressList>

Returns: a L<Paws::MailManager::DeleteAddressListResponse> instance

Deletes an address list.


=head2 DeleteArchive

=over

=item ArchiveId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::DeleteArchive>

Returns: a L<Paws::MailManager::DeleteArchiveResponse> instance

Initiates deletion of an email archive. This changes the archive state
to pending deletion. In this state, no new emails can be added, and
existing archived emails become inaccessible (search, export,
download). The archive and all of its contents will be permanently
deleted 30 days after entering the pending deletion state, regardless
of the configured retention period.


=head2 DeleteIngressPoint

=over

=item IngressPointId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::DeleteIngressPoint>

Returns: a L<Paws::MailManager::DeleteIngressPointResponse> instance

Delete an ingress endpoint resource.


=head2 DeleteRelay

=over

=item RelayId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::DeleteRelay>

Returns: a L<Paws::MailManager::DeleteRelayResponse> instance

Deletes an existing relay resource.


=head2 DeleteRuleSet

=over

=item RuleSetId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::DeleteRuleSet>

Returns: a L<Paws::MailManager::DeleteRuleSetResponse> instance

Delete a rule set.


=head2 DeleteTrafficPolicy

=over

=item TrafficPolicyId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::DeleteTrafficPolicy>

Returns: a L<Paws::MailManager::DeleteTrafficPolicyResponse> instance

Delete a traffic policy resource.


=head2 DeregisterMemberFromAddressList

=over

=item Address => Str

=item AddressListId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::DeregisterMemberFromAddressList>

Returns: a L<Paws::MailManager::DeregisterMemberFromAddressListResponse> instance

Removes a member from an address list.


=head2 GetAddonInstance

=over

=item AddonInstanceId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::GetAddonInstance>

Returns: a L<Paws::MailManager::GetAddonInstanceResponse> instance

Gets detailed information about an Add On instance.


=head2 GetAddonSubscription

=over

=item AddonSubscriptionId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::GetAddonSubscription>

Returns: a L<Paws::MailManager::GetAddonSubscriptionResponse> instance

Gets detailed information about an Add On subscription.


=head2 GetAddressList

=over

=item AddressListId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::GetAddressList>

Returns: a L<Paws::MailManager::GetAddressListResponse> instance

Fetch attributes of an address list.


=head2 GetAddressListImportJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::GetAddressListImportJob>

Returns: a L<Paws::MailManager::GetAddressListImportJobResponse> instance

Fetch attributes of an import job.


=head2 GetArchive

=over

=item ArchiveId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::GetArchive>

Returns: a L<Paws::MailManager::GetArchiveResponse> instance

Retrieves the full details and current state of a specified email
archive.


=head2 GetArchiveExport

=over

=item ExportId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::GetArchiveExport>

Returns: a L<Paws::MailManager::GetArchiveExportResponse> instance

Retrieves the details and current status of a specific email archive
export job.


=head2 GetArchiveMessage

=over

=item ArchivedMessageId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::GetArchiveMessage>

Returns: a L<Paws::MailManager::GetArchiveMessageResponse> instance

Returns a pre-signed URL that provides temporary download access to the
specific email message stored in the archive.


=head2 GetArchiveMessageContent

=over

=item ArchivedMessageId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::GetArchiveMessageContent>

Returns: a L<Paws::MailManager::GetArchiveMessageContentResponse> instance

Returns the textual content of a specific email message stored in the
archive. Attachments are not included.


=head2 GetArchiveSearch

=over

=item SearchId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::GetArchiveSearch>

Returns: a L<Paws::MailManager::GetArchiveSearchResponse> instance

Retrieves the details and current status of a specific email archive
search job.


=head2 GetArchiveSearchResults

=over

=item SearchId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::GetArchiveSearchResults>

Returns: a L<Paws::MailManager::GetArchiveSearchResultsResponse> instance

Returns the results of a completed email archive search job.


=head2 GetIngressPoint

=over

=item IngressPointId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::GetIngressPoint>

Returns: a L<Paws::MailManager::GetIngressPointResponse> instance

Fetch ingress endpoint resource attributes.


=head2 GetMemberOfAddressList

=over

=item Address => Str

=item AddressListId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::GetMemberOfAddressList>

Returns: a L<Paws::MailManager::GetMemberOfAddressListResponse> instance

Fetch attributes of a member in an address list.


=head2 GetRelay

=over

=item RelayId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::GetRelay>

Returns: a L<Paws::MailManager::GetRelayResponse> instance

Fetch the relay resource and it's attributes.


=head2 GetRuleSet

=over

=item RuleSetId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::GetRuleSet>

Returns: a L<Paws::MailManager::GetRuleSetResponse> instance

Fetch attributes of a rule set.


=head2 GetTrafficPolicy

=over

=item TrafficPolicyId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::GetTrafficPolicy>

Returns: a L<Paws::MailManager::GetTrafficPolicyResponse> instance

Fetch attributes of a traffic policy resource.


=head2 ListAddonInstances

=over

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::MailManager::ListAddonInstances>

Returns: a L<Paws::MailManager::ListAddonInstancesResponse> instance

Lists all Add On instances in your account.


=head2 ListAddonSubscriptions

=over

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::MailManager::ListAddonSubscriptions>

Returns: a L<Paws::MailManager::ListAddonSubscriptionsResponse> instance

Lists all Add On subscriptions in your account.


=head2 ListAddressListImportJobs

=over

=item AddressListId => Str

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::MailManager::ListAddressListImportJobs>

Returns: a L<Paws::MailManager::ListAddressListImportJobsResponse> instance

Lists jobs for an address list.


=head2 ListAddressLists

=over

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::MailManager::ListAddressLists>

Returns: a L<Paws::MailManager::ListAddressListsResponse> instance

Lists address lists for this account.


=head2 ListArchiveExports

=over

=item ArchiveId => Str

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::MailManager::ListArchiveExports>

Returns: a L<Paws::MailManager::ListArchiveExportsResponse> instance

Returns a list of email archive export jobs.


=head2 ListArchives

=over

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::MailManager::ListArchives>

Returns: a L<Paws::MailManager::ListArchivesResponse> instance

Returns a list of all email archives in your account.


=head2 ListArchiveSearches

=over

=item ArchiveId => Str

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::MailManager::ListArchiveSearches>

Returns: a L<Paws::MailManager::ListArchiveSearchesResponse> instance

Returns a list of email archive search jobs.


=head2 ListIngressPoints

=over

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::MailManager::ListIngressPoints>

Returns: a L<Paws::MailManager::ListIngressPointsResponse> instance

List all ingress endpoint resources.


=head2 ListMembersOfAddressList

=over

=item AddressListId => Str

=item [Filter => L<Paws::MailManager::AddressFilter>]

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::MailManager::ListMembersOfAddressList>

Returns: a L<Paws::MailManager::ListMembersOfAddressListResponse> instance

Lists members of an address list.


=head2 ListRelays

=over

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::MailManager::ListRelays>

Returns: a L<Paws::MailManager::ListRelaysResponse> instance

Lists all the existing relay resources.


=head2 ListRuleSets

=over

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::MailManager::ListRuleSets>

Returns: a L<Paws::MailManager::ListRuleSetsResponse> instance

List rule sets for this account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::MailManager::ListTagsForResource>

Returns: a L<Paws::MailManager::ListTagsForResourceResponse> instance

Retrieves the list of tags (keys and values) assigned to the resource.


=head2 ListTrafficPolicies

=over

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::MailManager::ListTrafficPolicies>

Returns: a L<Paws::MailManager::ListTrafficPoliciesResponse> instance

List traffic policy resources.


=head2 RegisterMemberToAddressList

=over

=item Address => Str

=item AddressListId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::RegisterMemberToAddressList>

Returns: a L<Paws::MailManager::RegisterMemberToAddressListResponse> instance

Adds a member to an address list.


=head2 StartAddressListImportJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::StartAddressListImportJob>

Returns: a L<Paws::MailManager::StartAddressListImportJobResponse> instance

Starts an import job for an address list.


=head2 StartArchiveExport

=over

=item ArchiveId => Str

=item ExportDestinationConfiguration => L<Paws::MailManager::ExportDestinationConfiguration>

=item FromTimestamp => Str

=item ToTimestamp => Str

=item [Filters => L<Paws::MailManager::ArchiveFilters>]

=item [IncludeMetadata => Bool]

=item [MaxResults => Int]


=back

Each argument is described in detail in: L<Paws::MailManager::StartArchiveExport>

Returns: a L<Paws::MailManager::StartArchiveExportResponse> instance

Initiates an export of emails from the specified archive.


=head2 StartArchiveSearch

=over

=item ArchiveId => Str

=item FromTimestamp => Str

=item MaxResults => Int

=item ToTimestamp => Str

=item [Filters => L<Paws::MailManager::ArchiveFilters>]


=back

Each argument is described in detail in: L<Paws::MailManager::StartArchiveSearch>

Returns: a L<Paws::MailManager::StartArchiveSearchResponse> instance

Initiates a search across emails in the specified archive.


=head2 StopAddressListImportJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::StopAddressListImportJob>

Returns: a L<Paws::MailManager::StopAddressListImportJobResponse> instance

Stops an ongoing import job for an address list.


=head2 StopArchiveExport

=over

=item ExportId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::StopArchiveExport>

Returns: a L<Paws::MailManager::StopArchiveExportResponse> instance

Stops an in-progress export of emails from an archive.


=head2 StopArchiveSearch

=over

=item SearchId => Str


=back

Each argument is described in detail in: L<Paws::MailManager::StopArchiveSearch>

Returns: a L<Paws::MailManager::StopArchiveSearchResponse> instance

Stops an in-progress archive search job.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::MailManager::Tag>]


=back

Each argument is described in detail in: L<Paws::MailManager::TagResource>

Returns: a L<Paws::MailManager::TagResourceResponse> instance

Adds one or more tags (keys and values) to a specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::MailManager::UntagResource>

Returns: a L<Paws::MailManager::UntagResourceResponse> instance

Remove one or more tags (keys and values) from a specified resource.


=head2 UpdateArchive

=over

=item ArchiveId => Str

=item [ArchiveName => Str]

=item [Retention => L<Paws::MailManager::ArchiveRetention>]


=back

Each argument is described in detail in: L<Paws::MailManager::UpdateArchive>

Returns: a L<Paws::MailManager::UpdateArchiveResponse> instance

Updates the attributes of an existing email archive.


=head2 UpdateIngressPoint

=over

=item IngressPointId => Str

=item [IngressPointConfiguration => L<Paws::MailManager::IngressPointConfiguration>]

=item [IngressPointName => Str]

=item [RuleSetId => Str]

=item [StatusToUpdate => Str]

=item [TrafficPolicyId => Str]


=back

Each argument is described in detail in: L<Paws::MailManager::UpdateIngressPoint>

Returns: a L<Paws::MailManager::UpdateIngressPointResponse> instance

Update attributes of a provisioned ingress endpoint resource.


=head2 UpdateRelay

=over

=item RelayId => Str

=item [Authentication => L<Paws::MailManager::RelayAuthentication>]

=item [RelayName => Str]

=item [ServerName => Str]

=item [ServerPort => Int]


=back

Each argument is described in detail in: L<Paws::MailManager::UpdateRelay>

Returns: a L<Paws::MailManager::UpdateRelayResponse> instance

Updates the attributes of an existing relay resource.


=head2 UpdateRuleSet

=over

=item RuleSetId => Str

=item [Rules => ArrayRef[L<Paws::MailManager::Rule>]]

=item [RuleSetName => Str]


=back

Each argument is described in detail in: L<Paws::MailManager::UpdateRuleSet>

Returns: a L<Paws::MailManager::UpdateRuleSetResponse> instance

Update attributes of an already provisioned rule set.


=head2 UpdateTrafficPolicy

=over

=item TrafficPolicyId => Str

=item [DefaultAction => Str]

=item [MaxMessageSizeBytes => Int]

=item [PolicyStatements => ArrayRef[L<Paws::MailManager::PolicyStatement>]]

=item [TrafficPolicyName => Str]


=back

Each argument is described in detail in: L<Paws::MailManager::UpdateTrafficPolicy>

Returns: a L<Paws::MailManager::UpdateTrafficPolicyResponse> instance

Update attributes of an already provisioned traffic policy resource.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAddonInstances(sub { },[NextToken => Str, PageSize => Int])

=head2 ListAllAddonInstances([NextToken => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AddonInstances, passing the object as the first parameter, and the string 'AddonInstances' as the second parameter 

If not, it will return a a L<Paws::MailManager::ListAddonInstancesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAddonSubscriptions(sub { },[NextToken => Str, PageSize => Int])

=head2 ListAllAddonSubscriptions([NextToken => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AddonSubscriptions, passing the object as the first parameter, and the string 'AddonSubscriptions' as the second parameter 

If not, it will return a a L<Paws::MailManager::ListAddonSubscriptionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAddressListImportJobs(sub { },AddressListId => Str, [NextToken => Str, PageSize => Int])

=head2 ListAllAddressListImportJobs(AddressListId => Str, [NextToken => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ImportJobs, passing the object as the first parameter, and the string 'ImportJobs' as the second parameter 

If not, it will return a a L<Paws::MailManager::ListAddressListImportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAddressLists(sub { },[NextToken => Str, PageSize => Int])

=head2 ListAllAddressLists([NextToken => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AddressLists, passing the object as the first parameter, and the string 'AddressLists' as the second parameter 

If not, it will return a a L<Paws::MailManager::ListAddressListsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllArchiveExports(sub { },ArchiveId => Str, [NextToken => Str, PageSize => Int])

=head2 ListAllArchiveExports(ArchiveId => Str, [NextToken => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Exports, passing the object as the first parameter, and the string 'Exports' as the second parameter 

If not, it will return a a L<Paws::MailManager::ListArchiveExportsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllArchives(sub { },[NextToken => Str, PageSize => Int])

=head2 ListAllArchives([NextToken => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Archives, passing the object as the first parameter, and the string 'Archives' as the second parameter 

If not, it will return a a L<Paws::MailManager::ListArchivesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllArchiveSearches(sub { },ArchiveId => Str, [NextToken => Str, PageSize => Int])

=head2 ListAllArchiveSearches(ArchiveId => Str, [NextToken => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Searches, passing the object as the first parameter, and the string 'Searches' as the second parameter 

If not, it will return a a L<Paws::MailManager::ListArchiveSearchesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIngressPoints(sub { },[NextToken => Str, PageSize => Int])

=head2 ListAllIngressPoints([NextToken => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IngressPoints, passing the object as the first parameter, and the string 'IngressPoints' as the second parameter 

If not, it will return a a L<Paws::MailManager::ListIngressPointsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMembersOfAddressList(sub { },AddressListId => Str, [Filter => L<Paws::MailManager::AddressFilter>, NextToken => Str, PageSize => Int])

=head2 ListAllMembersOfAddressList(AddressListId => Str, [Filter => L<Paws::MailManager::AddressFilter>, NextToken => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Addresses, passing the object as the first parameter, and the string 'Addresses' as the second parameter 

If not, it will return a a L<Paws::MailManager::ListMembersOfAddressListResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRelays(sub { },[NextToken => Str, PageSize => Int])

=head2 ListAllRelays([NextToken => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Relays, passing the object as the first parameter, and the string 'Relays' as the second parameter 

If not, it will return a a L<Paws::MailManager::ListRelaysResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRuleSets(sub { },[NextToken => Str, PageSize => Int])

=head2 ListAllRuleSets([NextToken => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RuleSets, passing the object as the first parameter, and the string 'RuleSets' as the second parameter 

If not, it will return a a L<Paws::MailManager::ListRuleSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTrafficPolicies(sub { },[NextToken => Str, PageSize => Int])

=head2 ListAllTrafficPolicies([NextToken => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrafficPolicies, passing the object as the first parameter, and the string 'TrafficPolicies' as the second parameter 

If not, it will return a a L<Paws::MailManager::ListTrafficPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

