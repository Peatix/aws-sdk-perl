package Paws::FMS;
  use Moose;
  sub service { 'fms' }
  sub signing_name { 'fms' }
  sub version { '2018-01-01' }
  sub target_prefix { 'AWSFMS_20180101' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::AssociateAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateThirdPartyFirewall {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::AssociateThirdPartyFirewall', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchAssociateResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::BatchAssociateResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDisassociateResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::BatchDisassociateResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAppsList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::DeleteAppsList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNotificationChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::DeleteNotificationChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::DeletePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProtocolsList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::DeleteProtocolsList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourceSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::DeleteResourceSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::DisassociateAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateThirdPartyFirewall {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::DisassociateThirdPartyFirewall', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAdminScope {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetAdminScope', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAppsList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetAppsList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComplianceDetail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetComplianceDetail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNotificationChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetNotificationChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProtectionStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetProtectionStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProtocolsList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetProtocolsList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetResourceSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetThirdPartyFirewallAssociationStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetThirdPartyFirewallAssociationStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetViolationDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetViolationDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAdminAccountsForOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::ListAdminAccountsForOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAdminsManagingAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::ListAdminsManagingAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppsLists {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::ListAppsLists', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComplianceStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::ListComplianceStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDiscoveredResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::ListDiscoveredResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMemberAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::ListMemberAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::ListPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProtocolsLists {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::ListProtocolsLists', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceSetResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::ListResourceSetResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::ListResourceSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThirdPartyFirewallFirewallPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::ListThirdPartyFirewallFirewallPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::PutAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAppsList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::PutAppsList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutNotificationChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::PutNotificationChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::PutPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutProtocolsList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::PutProtocolsList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourceSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::PutResourceSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAdminAccountsForOrganization {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAdminAccountsForOrganization(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAdminAccountsForOrganization(@_, NextToken => $next_result->NextToken);
        push @{ $result->AdminAccounts }, @{ $next_result->AdminAccounts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AdminAccounts') foreach (@{ $result->AdminAccounts });
        $result = $self->ListAdminAccountsForOrganization(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AdminAccounts') foreach (@{ $result->AdminAccounts });
    }

    return undef
  }
  sub ListAllAdminsManagingAccount {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAdminsManagingAccount(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAdminsManagingAccount(@_, NextToken => $next_result->NextToken);
        push @{ $result->AdminAccounts }, @{ $next_result->AdminAccounts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AdminAccounts') foreach (@{ $result->AdminAccounts });
        $result = $self->ListAdminsManagingAccount(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AdminAccounts') foreach (@{ $result->AdminAccounts });
    }

    return undef
  }
  sub ListAllAppsLists {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAppsLists(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAppsLists(@_, NextToken => $next_result->NextToken);
        push @{ $result->AppsLists }, @{ $next_result->AppsLists };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AppsLists') foreach (@{ $result->AppsLists });
        $result = $self->ListAppsLists(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AppsLists') foreach (@{ $result->AppsLists });
    }

    return undef
  }
  sub ListAllComplianceStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListComplianceStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListComplianceStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->PolicyComplianceStatusList }, @{ $next_result->PolicyComplianceStatusList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PolicyComplianceStatusList') foreach (@{ $result->PolicyComplianceStatusList });
        $result = $self->ListComplianceStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PolicyComplianceStatusList') foreach (@{ $result->PolicyComplianceStatusList });
    }

    return undef
  }
  sub ListAllMemberAccounts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMemberAccounts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMemberAccounts(@_, NextToken => $next_result->NextToken);
        push @{ $result->MemberAccounts }, @{ $next_result->MemberAccounts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MemberAccounts') foreach (@{ $result->MemberAccounts });
        $result = $self->ListMemberAccounts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MemberAccounts') foreach (@{ $result->MemberAccounts });
    }

    return undef
  }
  sub ListAllPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPolicies(@_, NextToken => $next_result->NextToken);
        push @{ $result->PolicyList }, @{ $next_result->PolicyList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PolicyList') foreach (@{ $result->PolicyList });
        $result = $self->ListPolicies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PolicyList') foreach (@{ $result->PolicyList });
    }

    return undef
  }
  sub ListAllProtocolsLists {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProtocolsLists(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListProtocolsLists(@_, NextToken => $next_result->NextToken);
        push @{ $result->ProtocolsLists }, @{ $next_result->ProtocolsLists };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ProtocolsLists') foreach (@{ $result->ProtocolsLists });
        $result = $self->ListProtocolsLists(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ProtocolsLists') foreach (@{ $result->ProtocolsLists });
    }

    return undef
  }
  sub ListAllThirdPartyFirewallFirewallPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListThirdPartyFirewallFirewallPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListThirdPartyFirewallFirewallPolicies(@_, NextToken => $next_result->NextToken);
        push @{ $result->ThirdPartyFirewallFirewallPolicies }, @{ $next_result->ThirdPartyFirewallFirewallPolicies };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ThirdPartyFirewallFirewallPolicies') foreach (@{ $result->ThirdPartyFirewallFirewallPolicies });
        $result = $self->ListThirdPartyFirewallFirewallPolicies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ThirdPartyFirewallFirewallPolicies') foreach (@{ $result->ThirdPartyFirewallFirewallPolicies });
    }

    return undef
  }


  sub operations { qw/AssociateAdminAccount AssociateThirdPartyFirewall BatchAssociateResource BatchDisassociateResource DeleteAppsList DeleteNotificationChannel DeletePolicy DeleteProtocolsList DeleteResourceSet DisassociateAdminAccount DisassociateThirdPartyFirewall GetAdminAccount GetAdminScope GetAppsList GetComplianceDetail GetNotificationChannel GetPolicy GetProtectionStatus GetProtocolsList GetResourceSet GetThirdPartyFirewallAssociationStatus GetViolationDetails ListAdminAccountsForOrganization ListAdminsManagingAccount ListAppsLists ListComplianceStatus ListDiscoveredResources ListMemberAccounts ListPolicies ListProtocolsLists ListResourceSetResources ListResourceSets ListTagsForResource ListThirdPartyFirewallFirewallPolicies PutAdminAccount PutAppsList PutNotificationChannel PutPolicy PutProtocolsList PutResourceSet TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS - Perl Interface to AWS Firewall Management Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('FMS');
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

This is the I<Firewall Manager API Reference>. This guide is for
developers who need detailed information about the Firewall Manager API
actions, data types, and errors. For detailed information about
Firewall Manager features, see the Firewall Manager Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/fms-chapter.html).

Some API actions require explicit resource permissions. For
information, see the developer guide topic Service roles for Firewall
Manager
(https://docs.aws.amazon.com/waf/latest/developerguide/fms-security_iam_service-with-iam.html#fms-security_iam_service-with-iam-roles-service).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01>


=head1 METHODS

=head2 AssociateAdminAccount

=over

=item AdminAccount => Str


=back

Each argument is described in detail in: L<Paws::FMS::AssociateAdminAccount>

Returns: nothing

Sets a Firewall Manager default administrator account. The Firewall
Manager default administrator account can manage third-party firewalls
and has full administrative scope that allows administration of all
policy types, accounts, organizational units, and Regions. This account
must be a member account of the organization in Organizations whose
resources you want to protect.

For information about working with Firewall Manager administrator
accounts, see Managing Firewall Manager administrators
(https://docs.aws.amazon.com/organizations/latest/userguide/fms-administrators.html)
in the I<Firewall Manager Developer Guide>.


=head2 AssociateThirdPartyFirewall

=over

=item ThirdPartyFirewall => Str


=back

Each argument is described in detail in: L<Paws::FMS::AssociateThirdPartyFirewall>

Returns: a L<Paws::FMS::AssociateThirdPartyFirewallResponse> instance

Sets the Firewall Manager policy administrator as a tenant
administrator of a third-party firewall service. A tenant is an
instance of the third-party firewall service that's associated with
your Amazon Web Services customer account.


=head2 BatchAssociateResource

=over

=item Items => ArrayRef[Str|Undef]

=item ResourceSetIdentifier => Str


=back

Each argument is described in detail in: L<Paws::FMS::BatchAssociateResource>

Returns: a L<Paws::FMS::BatchAssociateResourceResponse> instance

Associate resources to a Firewall Manager resource set.


=head2 BatchDisassociateResource

=over

=item Items => ArrayRef[Str|Undef]

=item ResourceSetIdentifier => Str


=back

Each argument is described in detail in: L<Paws::FMS::BatchDisassociateResource>

Returns: a L<Paws::FMS::BatchDisassociateResourceResponse> instance

Disassociates resources from a Firewall Manager resource set.


=head2 DeleteAppsList

=over

=item ListId => Str


=back

Each argument is described in detail in: L<Paws::FMS::DeleteAppsList>

Returns: nothing

Permanently deletes an Firewall Manager applications list.


=head2 DeleteNotificationChannel






Each argument is described in detail in: L<Paws::FMS::DeleteNotificationChannel>

Returns: nothing

Deletes an Firewall Manager association with the IAM role and the
Amazon Simple Notification Service (SNS) topic that is used to record
Firewall Manager SNS logs.


=head2 DeletePolicy

=over

=item PolicyId => Str

=item [DeleteAllPolicyResources => Bool]


=back

Each argument is described in detail in: L<Paws::FMS::DeletePolicy>

Returns: nothing

Permanently deletes an Firewall Manager policy.


=head2 DeleteProtocolsList

=over

=item ListId => Str


=back

Each argument is described in detail in: L<Paws::FMS::DeleteProtocolsList>

Returns: nothing

Permanently deletes an Firewall Manager protocols list.


=head2 DeleteResourceSet

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::FMS::DeleteResourceSet>

Returns: nothing

Deletes the specified ResourceSet.


=head2 DisassociateAdminAccount






Each argument is described in detail in: L<Paws::FMS::DisassociateAdminAccount>

Returns: nothing

Disassociates an Firewall Manager administrator account. To set a
different account as an Firewall Manager administrator, submit a
PutAdminAccount request. To set an account as a default administrator
account, you must submit an AssociateAdminAccount request.

Disassociation of the default administrator account follows the first
in, last out principle. If you are the default administrator, all
Firewall Manager administrators within the organization must first
disassociate their accounts before you can disassociate your account.


=head2 DisassociateThirdPartyFirewall

=over

=item ThirdPartyFirewall => Str


=back

Each argument is described in detail in: L<Paws::FMS::DisassociateThirdPartyFirewall>

Returns: a L<Paws::FMS::DisassociateThirdPartyFirewallResponse> instance

Disassociates a Firewall Manager policy administrator from a
third-party firewall tenant. When you call
C<DisassociateThirdPartyFirewall>, the third-party firewall vendor
deletes all of the firewalls that are associated with the account.


=head2 GetAdminAccount






Each argument is described in detail in: L<Paws::FMS::GetAdminAccount>

Returns: a L<Paws::FMS::GetAdminAccountResponse> instance

Returns the Organizations account that is associated with Firewall
Manager as the Firewall Manager default administrator.


=head2 GetAdminScope

=over

=item AdminAccount => Str


=back

Each argument is described in detail in: L<Paws::FMS::GetAdminScope>

Returns: a L<Paws::FMS::GetAdminScopeResponse> instance

Returns information about the specified account's administrative scope.
The administrative scope defines the resources that an Firewall Manager
administrator can manage.


=head2 GetAppsList

=over

=item ListId => Str

=item [DefaultList => Bool]


=back

Each argument is described in detail in: L<Paws::FMS::GetAppsList>

Returns: a L<Paws::FMS::GetAppsListResponse> instance

Returns information about the specified Firewall Manager applications
list.


=head2 GetComplianceDetail

=over

=item MemberAccount => Str

=item PolicyId => Str


=back

Each argument is described in detail in: L<Paws::FMS::GetComplianceDetail>

Returns: a L<Paws::FMS::GetComplianceDetailResponse> instance

Returns detailed compliance information about the specified member
account. Details include resources that are in and out of compliance
with the specified policy.

The reasons for resources being considered compliant depend on the
Firewall Manager policy type.


=head2 GetNotificationChannel






Each argument is described in detail in: L<Paws::FMS::GetNotificationChannel>

Returns: a L<Paws::FMS::GetNotificationChannelResponse> instance

Information about the Amazon Simple Notification Service (SNS) topic
that is used to record Firewall Manager SNS logs.


=head2 GetPolicy

=over

=item PolicyId => Str


=back

Each argument is described in detail in: L<Paws::FMS::GetPolicy>

Returns: a L<Paws::FMS::GetPolicyResponse> instance

Returns information about the specified Firewall Manager policy.


=head2 GetProtectionStatus

=over

=item PolicyId => Str

=item [EndTime => Str]

=item [MaxResults => Int]

=item [MemberAccountId => Str]

=item [NextToken => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::FMS::GetProtectionStatus>

Returns: a L<Paws::FMS::GetProtectionStatusResponse> instance

If you created a Shield Advanced policy, returns policy-level attack
summary information in the event of a potential DDoS attack. Other
policy types are currently unsupported.


=head2 GetProtocolsList

=over

=item ListId => Str

=item [DefaultList => Bool]


=back

Each argument is described in detail in: L<Paws::FMS::GetProtocolsList>

Returns: a L<Paws::FMS::GetProtocolsListResponse> instance

Returns information about the specified Firewall Manager protocols
list.


=head2 GetResourceSet

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::FMS::GetResourceSet>

Returns: a L<Paws::FMS::GetResourceSetResponse> instance

Gets information about a specific resource set.


=head2 GetThirdPartyFirewallAssociationStatus

=over

=item ThirdPartyFirewall => Str


=back

Each argument is described in detail in: L<Paws::FMS::GetThirdPartyFirewallAssociationStatus>

Returns: a L<Paws::FMS::GetThirdPartyFirewallAssociationStatusResponse> instance

The onboarding status of a Firewall Manager admin account to
third-party firewall vendor tenant.


=head2 GetViolationDetails

=over

=item MemberAccount => Str

=item PolicyId => Str

=item ResourceId => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::FMS::GetViolationDetails>

Returns: a L<Paws::FMS::GetViolationDetailsResponse> instance

Retrieves violations for a resource based on the specified Firewall
Manager policy and Amazon Web Services account.


=head2 ListAdminAccountsForOrganization

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FMS::ListAdminAccountsForOrganization>

Returns: a L<Paws::FMS::ListAdminAccountsForOrganizationResponse> instance

Returns a C<AdminAccounts> object that lists the Firewall Manager
administrators within the organization that are onboarded to Firewall
Manager by AssociateAdminAccount.

This operation can be called only from the organization's management
account.


=head2 ListAdminsManagingAccount

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FMS::ListAdminsManagingAccount>

Returns: a L<Paws::FMS::ListAdminsManagingAccountResponse> instance

Lists the accounts that are managing the specified Organizations member
account. This is useful for any member account so that they can view
the accounts who are managing their account. This operation only
returns the managing administrators that have the requested account
within their AdminScope.


=head2 ListAppsLists

=over

=item MaxResults => Int

=item [DefaultLists => Bool]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FMS::ListAppsLists>

Returns: a L<Paws::FMS::ListAppsListsResponse> instance

Returns an array of C<AppsListDataSummary> objects.


=head2 ListComplianceStatus

=over

=item PolicyId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FMS::ListComplianceStatus>

Returns: a L<Paws::FMS::ListComplianceStatusResponse> instance

Returns an array of C<PolicyComplianceStatus> objects. Use
C<PolicyComplianceStatus> to get a summary of which member accounts are
protected by the specified policy.


=head2 ListDiscoveredResources

=over

=item MemberAccountIds => ArrayRef[Str|Undef]

=item ResourceType => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FMS::ListDiscoveredResources>

Returns: a L<Paws::FMS::ListDiscoveredResourcesResponse> instance

Returns an array of resources in the organization's accounts that are
available to be associated with a resource set.


=head2 ListMemberAccounts

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FMS::ListMemberAccounts>

Returns: a L<Paws::FMS::ListMemberAccountsResponse> instance

Returns a C<MemberAccounts> object that lists the member accounts in
the administrator's Amazon Web Services organization.

Either an Firewall Manager administrator or the organization's
management account can make this request.


=head2 ListPolicies

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FMS::ListPolicies>

Returns: a L<Paws::FMS::ListPoliciesResponse> instance

Returns an array of C<PolicySummary> objects.


=head2 ListProtocolsLists

=over

=item MaxResults => Int

=item [DefaultLists => Bool]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FMS::ListProtocolsLists>

Returns: a L<Paws::FMS::ListProtocolsListsResponse> instance

Returns an array of C<ProtocolsListDataSummary> objects.


=head2 ListResourceSetResources

=over

=item Identifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FMS::ListResourceSetResources>

Returns: a L<Paws::FMS::ListResourceSetResourcesResponse> instance

Returns an array of resources that are currently associated to a
resource set.


=head2 ListResourceSets

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FMS::ListResourceSets>

Returns: a L<Paws::FMS::ListResourceSetsResponse> instance

Returns an array of C<ResourceSetSummary> objects.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::FMS::ListTagsForResource>

Returns: a L<Paws::FMS::ListTagsForResourceResponse> instance

Retrieves the list of tags for the specified Amazon Web Services
resource.


=head2 ListThirdPartyFirewallFirewallPolicies

=over

=item MaxResults => Int

=item ThirdPartyFirewall => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FMS::ListThirdPartyFirewallFirewallPolicies>

Returns: a L<Paws::FMS::ListThirdPartyFirewallFirewallPoliciesResponse> instance

Retrieves a list of all of the third-party firewall policies that are
associated with the third-party firewall administrator's account.


=head2 PutAdminAccount

=over

=item AdminAccount => Str

=item [AdminScope => L<Paws::FMS::AdminScope>]


=back

Each argument is described in detail in: L<Paws::FMS::PutAdminAccount>

Returns: nothing

Creates or updates an Firewall Manager administrator account. The
account must be a member of the organization that was onboarded to
Firewall Manager by AssociateAdminAccount. Only the organization's
management account can create an Firewall Manager administrator
account. When you create an Firewall Manager administrator account, the
service checks to see if the account is already a delegated
administrator within Organizations. If the account isn't a delegated
administrator, Firewall Manager calls Organizations to delegate the
account within Organizations. For more information about administrator
accounts within Organizations, see Managing the Amazon Web Services
Accounts in Your Organization
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html).


=head2 PutAppsList

=over

=item AppsList => L<Paws::FMS::AppsListData>

=item [TagList => ArrayRef[L<Paws::FMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::FMS::PutAppsList>

Returns: a L<Paws::FMS::PutAppsListResponse> instance

Creates an Firewall Manager applications list.


=head2 PutNotificationChannel

=over

=item SnsRoleName => Str

=item SnsTopicArn => Str


=back

Each argument is described in detail in: L<Paws::FMS::PutNotificationChannel>

Returns: nothing

Designates the IAM role and Amazon Simple Notification Service (SNS)
topic that Firewall Manager uses to record SNS logs.

To perform this action outside of the console, you must first configure
the SNS topic's access policy to allow the C<SnsRoleName> to publish
SNS logs. If the C<SnsRoleName> provided is a role other than the
C<AWSServiceRoleForFMS> service-linked role, this role must have a
trust relationship configured to allow the Firewall Manager service
principal C<fms.amazonaws.com> to assume this role. For information
about configuring an SNS access policy, see Service roles for Firewall
Manager
(https://docs.aws.amazon.com/waf/latest/developerguide/fms-security_iam_service-with-iam.html#fms-security_iam_service-with-iam-roles-service)
in the I<Firewall Manager Developer Guide>.


=head2 PutPolicy

=over

=item Policy => L<Paws::FMS::Policy>

=item [TagList => ArrayRef[L<Paws::FMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::FMS::PutPolicy>

Returns: a L<Paws::FMS::PutPolicyResponse> instance

Creates an Firewall Manager policy.

A Firewall Manager policy is specific to the individual policy type. If
you want to enforce multiple policy types across accounts, you can
create multiple policies. You can create more than one policy for each
type.

If you add a new account to an organization that you created with
Organizations, Firewall Manager automatically applies the policy to the
resources in that account that are within scope of the policy.

Firewall Manager provides the following types of policies:

=over

=item *

B<WAF policy> - This policy applies WAF web ACL protections to
specified accounts and resources.

=item *

B<Shield Advanced policy> - This policy applies Shield Advanced
protection to specified accounts and resources.

=item *

B<Security Groups policy> - This type of policy gives you control over
security groups that are in use throughout your organization in
Organizations and lets you enforce a baseline set of rules across your
organization.

=item *

B<Network ACL policy> - This type of policy gives you control over the
network ACLs that are in use throughout your organization in
Organizations and lets you enforce a baseline set of first and last
network ACL rules across your organization.

=item *

B<Network Firewall policy> - This policy applies Network Firewall
protection to your organization's VPCs.

=item *

B<DNS Firewall policy> - This policy applies Amazon Route 53 Resolver
DNS Firewall protections to your organization's VPCs.

=item *

B<Third-party firewall policy> - This policy applies third-party
firewall protections. Third-party firewalls are available by
subscription through the Amazon Web Services Marketplace console at
Amazon Web Services Marketplace (http://aws.amazon.com/marketplace).

=over

=item *

B<Palo Alto Networks Cloud NGFW policy> - This policy applies Palo Alto
Networks Cloud Next Generation Firewall (NGFW) protections and Palo
Alto Networks Cloud NGFW rulestacks to your organization's VPCs.

=item *

B<Fortigate CNF policy> - This policy applies Fortigate Cloud Native
Firewall (CNF) protections. Fortigate CNF is a cloud-centered solution
that blocks Zero-Day threats and secures cloud infrastructures with
industry-leading advanced threat prevention, smart web application
firewalls (WAF), and API protection.

=back

=back



=head2 PutProtocolsList

=over

=item ProtocolsList => L<Paws::FMS::ProtocolsListData>

=item [TagList => ArrayRef[L<Paws::FMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::FMS::PutProtocolsList>

Returns: a L<Paws::FMS::PutProtocolsListResponse> instance

Creates an Firewall Manager protocols list.


=head2 PutResourceSet

=over

=item ResourceSet => L<Paws::FMS::ResourceSet>

=item [TagList => ArrayRef[L<Paws::FMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::FMS::PutResourceSet>

Returns: a L<Paws::FMS::PutResourceSetResponse> instance

Creates the resource set.

An Firewall Manager resource set defines the resources to import into
an Firewall Manager policy from another Amazon Web Services service.


=head2 TagResource

=over

=item ResourceArn => Str

=item TagList => ArrayRef[L<Paws::FMS::Tag>]


=back

Each argument is described in detail in: L<Paws::FMS::TagResource>

Returns: a L<Paws::FMS::TagResourceResponse> instance

Adds one or more tags to an Amazon Web Services resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::FMS::UntagResource>

Returns: a L<Paws::FMS::UntagResourceResponse> instance

Removes one or more tags from an Amazon Web Services resource.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAdminAccountsForOrganization(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllAdminAccountsForOrganization([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AdminAccounts, passing the object as the first parameter, and the string 'AdminAccounts' as the second parameter 

If not, it will return a a L<Paws::FMS::ListAdminAccountsForOrganizationResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAdminsManagingAccount(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllAdminsManagingAccount([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AdminAccounts, passing the object as the first parameter, and the string 'AdminAccounts' as the second parameter 

If not, it will return a a L<Paws::FMS::ListAdminsManagingAccountResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAppsLists(sub { },MaxResults => Int, [DefaultLists => Bool, NextToken => Str])

=head2 ListAllAppsLists(MaxResults => Int, [DefaultLists => Bool, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AppsLists, passing the object as the first parameter, and the string 'AppsLists' as the second parameter 

If not, it will return a a L<Paws::FMS::ListAppsListsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllComplianceStatus(sub { },PolicyId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllComplianceStatus(PolicyId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PolicyComplianceStatusList, passing the object as the first parameter, and the string 'PolicyComplianceStatusList' as the second parameter 

If not, it will return a a L<Paws::FMS::ListComplianceStatusResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMemberAccounts(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllMemberAccounts([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MemberAccounts, passing the object as the first parameter, and the string 'MemberAccounts' as the second parameter 

If not, it will return a a L<Paws::FMS::ListMemberAccountsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPolicies(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllPolicies([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PolicyList, passing the object as the first parameter, and the string 'PolicyList' as the second parameter 

If not, it will return a a L<Paws::FMS::ListPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProtocolsLists(sub { },MaxResults => Int, [DefaultLists => Bool, NextToken => Str])

=head2 ListAllProtocolsLists(MaxResults => Int, [DefaultLists => Bool, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProtocolsLists, passing the object as the first parameter, and the string 'ProtocolsLists' as the second parameter 

If not, it will return a a L<Paws::FMS::ListProtocolsListsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllThirdPartyFirewallFirewallPolicies(sub { },MaxResults => Int, ThirdPartyFirewall => Str, [NextToken => Str])

=head2 ListAllThirdPartyFirewallFirewallPolicies(MaxResults => Int, ThirdPartyFirewall => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ThirdPartyFirewallFirewallPolicies, passing the object as the first parameter, and the string 'ThirdPartyFirewallFirewallPolicies' as the second parameter 

If not, it will return a a L<Paws::FMS::ListThirdPartyFirewallFirewallPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

