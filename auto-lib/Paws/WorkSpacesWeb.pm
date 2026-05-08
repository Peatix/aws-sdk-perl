package Paws::WorkSpacesWeb;
  use Moose;
  sub service { 'workspaces-web' }
  sub signing_name { 'workspaces-web' }
  sub version { '2020-07-08' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateBrowserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::AssociateBrowserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateDataProtectionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::AssociateDataProtectionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateIpAccessSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::AssociateIpAccessSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateNetworkSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::AssociateNetworkSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateTrustStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::AssociateTrustStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateUserAccessLoggingSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::AssociateUserAccessLoggingSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateUserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::AssociateUserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBrowserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::CreateBrowserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataProtectionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::CreateDataProtectionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIdentityProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::CreateIdentityProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIpAccessSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::CreateIpAccessSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNetworkSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::CreateNetworkSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePortal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::CreatePortal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrustStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::CreateTrustStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUserAccessLoggingSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::CreateUserAccessLoggingSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::CreateUserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBrowserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::DeleteBrowserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataProtectionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::DeleteDataProtectionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIdentityProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::DeleteIdentityProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIpAccessSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::DeleteIpAccessSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::DeleteNetworkSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePortal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::DeletePortal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrustStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::DeleteTrustStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUserAccessLoggingSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::DeleteUserAccessLoggingSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::DeleteUserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateBrowserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::DisassociateBrowserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateDataProtectionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::DisassociateDataProtectionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateIpAccessSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::DisassociateIpAccessSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateNetworkSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::DisassociateNetworkSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateTrustStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::DisassociateTrustStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateUserAccessLoggingSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::DisassociateUserAccessLoggingSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateUserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::DisassociateUserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExpireSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::ExpireSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBrowserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::GetBrowserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataProtectionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::GetDataProtectionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIdentityProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::GetIdentityProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIpAccessSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::GetIpAccessSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNetworkSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::GetNetworkSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPortal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::GetPortal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPortalServiceProviderMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::GetPortalServiceProviderMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::GetSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTrustStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::GetTrustStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTrustStoreCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::GetTrustStoreCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUserAccessLoggingSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::GetUserAccessLoggingSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::GetUserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBrowserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::ListBrowserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataProtectionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::ListDataProtectionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIdentityProviders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::ListIdentityProviders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIpAccessSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::ListIpAccessSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNetworkSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::ListNetworkSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPortals {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::ListPortals', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::ListSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrustStoreCertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::ListTrustStoreCertificates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrustStores {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::ListTrustStores', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUserAccessLoggingSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::ListUserAccessLoggingSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::ListUserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBrowserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::UpdateBrowserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataProtectionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::UpdateDataProtectionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIdentityProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::UpdateIdentityProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIpAccessSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::UpdateIpAccessSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNetworkSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::UpdateNetworkSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePortal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::UpdatePortal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTrustStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::UpdateTrustStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserAccessLoggingSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::UpdateUserAccessLoggingSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesWeb::UpdateUserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDataProtectionSettings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataProtectionSettings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDataProtectionSettings(@_, nextToken => $next_result->nextToken);
        push @{ $result->dataProtectionSettings }, @{ $next_result->dataProtectionSettings };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'dataProtectionSettings') foreach (@{ $result->dataProtectionSettings });
        $result = $self->ListDataProtectionSettings(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'dataProtectionSettings') foreach (@{ $result->dataProtectionSettings });
    }

    return undef
  }
  sub ListAllSessions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSessions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSessions(@_, nextToken => $next_result->nextToken);
        push @{ $result->sessions }, @{ $next_result->sessions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'sessions') foreach (@{ $result->sessions });
        $result = $self->ListSessions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'sessions') foreach (@{ $result->sessions });
    }

    return undef
  }


  sub operations { qw/AssociateBrowserSettings AssociateDataProtectionSettings AssociateIpAccessSettings AssociateNetworkSettings AssociateTrustStore AssociateUserAccessLoggingSettings AssociateUserSettings CreateBrowserSettings CreateDataProtectionSettings CreateIdentityProvider CreateIpAccessSettings CreateNetworkSettings CreatePortal CreateTrustStore CreateUserAccessLoggingSettings CreateUserSettings DeleteBrowserSettings DeleteDataProtectionSettings DeleteIdentityProvider DeleteIpAccessSettings DeleteNetworkSettings DeletePortal DeleteTrustStore DeleteUserAccessLoggingSettings DeleteUserSettings DisassociateBrowserSettings DisassociateDataProtectionSettings DisassociateIpAccessSettings DisassociateNetworkSettings DisassociateTrustStore DisassociateUserAccessLoggingSettings DisassociateUserSettings ExpireSession GetBrowserSettings GetDataProtectionSettings GetIdentityProvider GetIpAccessSettings GetNetworkSettings GetPortal GetPortalServiceProviderMetadata GetSession GetTrustStore GetTrustStoreCertificate GetUserAccessLoggingSettings GetUserSettings ListBrowserSettings ListDataProtectionSettings ListIdentityProviders ListIpAccessSettings ListNetworkSettings ListPortals ListSessions ListTagsForResource ListTrustStoreCertificates ListTrustStores ListUserAccessLoggingSettings ListUserSettings TagResource UntagResource UpdateBrowserSettings UpdateDataProtectionSettings UpdateIdentityProvider UpdateIpAccessSettings UpdateNetworkSettings UpdatePortal UpdateTrustStore UpdateUserAccessLoggingSettings UpdateUserSettings / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb - Perl Interface to AWS Amazon WorkSpaces Web

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('WorkSpacesWeb');
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

Amazon WorkSpaces Secure Browser is a low cost, fully managed WorkSpace
built specifically to facilitate secure, web-based workloads.
WorkSpaces Secure Browser makes it easy for customers to safely provide
their employees with access to internal websites and SaaS web
applications without the administrative burden of appliances or
specialized client software. WorkSpaces Secure Browser provides simple
policy tools tailored for user interactions, while offloading common
tasks like capacity management, scaling, and maintaining browser
images.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08>


=head1 METHODS

=head2 AssociateBrowserSettings

=over

=item BrowserSettingsArn => Str

=item PortalArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::AssociateBrowserSettings>

Returns: a L<Paws::WorkSpacesWeb::AssociateBrowserSettingsResponse> instance

Associates a browser settings resource with a web portal.


=head2 AssociateDataProtectionSettings

=over

=item DataProtectionSettingsArn => Str

=item PortalArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::AssociateDataProtectionSettings>

Returns: a L<Paws::WorkSpacesWeb::AssociateDataProtectionSettingsResponse> instance

Associates a data protection settings resource with a web portal.


=head2 AssociateIpAccessSettings

=over

=item IpAccessSettingsArn => Str

=item PortalArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::AssociateIpAccessSettings>

Returns: a L<Paws::WorkSpacesWeb::AssociateIpAccessSettingsResponse> instance

Associates an IP access settings resource with a web portal.


=head2 AssociateNetworkSettings

=over

=item NetworkSettingsArn => Str

=item PortalArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::AssociateNetworkSettings>

Returns: a L<Paws::WorkSpacesWeb::AssociateNetworkSettingsResponse> instance

Associates a network settings resource with a web portal.


=head2 AssociateTrustStore

=over

=item PortalArn => Str

=item TrustStoreArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::AssociateTrustStore>

Returns: a L<Paws::WorkSpacesWeb::AssociateTrustStoreResponse> instance

Associates a trust store with a web portal.


=head2 AssociateUserAccessLoggingSettings

=over

=item PortalArn => Str

=item UserAccessLoggingSettingsArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::AssociateUserAccessLoggingSettings>

Returns: a L<Paws::WorkSpacesWeb::AssociateUserAccessLoggingSettingsResponse> instance

Associates a user access logging settings resource with a web portal.


=head2 AssociateUserSettings

=over

=item PortalArn => Str

=item UserSettingsArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::AssociateUserSettings>

Returns: a L<Paws::WorkSpacesWeb::AssociateUserSettingsResponse> instance

Associates a user settings resource with a web portal.


=head2 CreateBrowserSettings

=over

=item BrowserPolicy => Str

=item [AdditionalEncryptionContext => L<Paws::WorkSpacesWeb::EncryptionContextMap>]

=item [ClientToken => Str]

=item [CustomerManagedKey => Str]

=item [Tags => ArrayRef[L<Paws::WorkSpacesWeb::Tag>]]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::CreateBrowserSettings>

Returns: a L<Paws::WorkSpacesWeb::CreateBrowserSettingsResponse> instance

Creates a browser settings resource that can be associated with a web
portal. Once associated with a web portal, browser settings control how
the browser will behave once a user starts a streaming session for the
web portal.


=head2 CreateDataProtectionSettings

=over

=item [AdditionalEncryptionContext => L<Paws::WorkSpacesWeb::EncryptionContextMap>]

=item [ClientToken => Str]

=item [CustomerManagedKey => Str]

=item [Description => Str]

=item [DisplayName => Str]

=item [InlineRedactionConfiguration => L<Paws::WorkSpacesWeb::InlineRedactionConfiguration>]

=item [Tags => ArrayRef[L<Paws::WorkSpacesWeb::Tag>]]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::CreateDataProtectionSettings>

Returns: a L<Paws::WorkSpacesWeb::CreateDataProtectionSettingsResponse> instance

Creates a data protection settings resource that can be associated with
a web portal.


=head2 CreateIdentityProvider

=over

=item IdentityProviderDetails => L<Paws::WorkSpacesWeb::IdentityProviderDetails>

=item IdentityProviderName => Str

=item IdentityProviderType => Str

=item PortalArn => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::WorkSpacesWeb::Tag>]]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::CreateIdentityProvider>

Returns: a L<Paws::WorkSpacesWeb::CreateIdentityProviderResponse> instance

Creates an identity provider resource that is then associated with a
web portal.


=head2 CreateIpAccessSettings

=over

=item IpRules => ArrayRef[L<Paws::WorkSpacesWeb::IpRule>]

=item [AdditionalEncryptionContext => L<Paws::WorkSpacesWeb::EncryptionContextMap>]

=item [ClientToken => Str]

=item [CustomerManagedKey => Str]

=item [Description => Str]

=item [DisplayName => Str]

=item [Tags => ArrayRef[L<Paws::WorkSpacesWeb::Tag>]]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::CreateIpAccessSettings>

Returns: a L<Paws::WorkSpacesWeb::CreateIpAccessSettingsResponse> instance

Creates an IP access settings resource that can be associated with a
web portal.


=head2 CreateNetworkSettings

=over

=item SecurityGroupIds => ArrayRef[Str|Undef]

=item SubnetIds => ArrayRef[Str|Undef]

=item VpcId => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::WorkSpacesWeb::Tag>]]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::CreateNetworkSettings>

Returns: a L<Paws::WorkSpacesWeb::CreateNetworkSettingsResponse> instance

Creates a network settings resource that can be associated with a web
portal. Once associated with a web portal, network settings define how
streaming instances will connect with your specified VPC.


=head2 CreatePortal

=over

=item [AdditionalEncryptionContext => L<Paws::WorkSpacesWeb::EncryptionContextMap>]

=item [AuthenticationType => Str]

=item [ClientToken => Str]

=item [CustomerManagedKey => Str]

=item [DisplayName => Str]

=item [InstanceType => Str]

=item [MaxConcurrentSessions => Int]

=item [Tags => ArrayRef[L<Paws::WorkSpacesWeb::Tag>]]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::CreatePortal>

Returns: a L<Paws::WorkSpacesWeb::CreatePortalResponse> instance

Creates a web portal.


=head2 CreateTrustStore

=over

=item CertificateList => ArrayRef[Str|Undef]

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::WorkSpacesWeb::Tag>]]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::CreateTrustStore>

Returns: a L<Paws::WorkSpacesWeb::CreateTrustStoreResponse> instance

Creates a trust store that can be associated with a web portal. A trust
store contains certificate authority (CA) certificates. Once associated
with a web portal, the browser in a streaming session will recognize
certificates that have been issued using any of the CAs in the trust
store. If your organization has internal websites that use certificates
issued by private CAs, you should add the private CA certificate to the
trust store.


=head2 CreateUserAccessLoggingSettings

=over

=item KinesisStreamArn => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::WorkSpacesWeb::Tag>]]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::CreateUserAccessLoggingSettings>

Returns: a L<Paws::WorkSpacesWeb::CreateUserAccessLoggingSettingsResponse> instance

Creates a user access logging settings resource that can be associated
with a web portal.


=head2 CreateUserSettings

=over

=item CopyAllowed => Str

=item DownloadAllowed => Str

=item PasteAllowed => Str

=item PrintAllowed => Str

=item UploadAllowed => Str

=item [AdditionalEncryptionContext => L<Paws::WorkSpacesWeb::EncryptionContextMap>]

=item [ClientToken => Str]

=item [CookieSynchronizationConfiguration => L<Paws::WorkSpacesWeb::CookieSynchronizationConfiguration>]

=item [CustomerManagedKey => Str]

=item [DeepLinkAllowed => Str]

=item [DisconnectTimeoutInMinutes => Int]

=item [IdleDisconnectTimeoutInMinutes => Int]

=item [Tags => ArrayRef[L<Paws::WorkSpacesWeb::Tag>]]

=item [ToolbarConfiguration => L<Paws::WorkSpacesWeb::ToolbarConfiguration>]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::CreateUserSettings>

Returns: a L<Paws::WorkSpacesWeb::CreateUserSettingsResponse> instance

Creates a user settings resource that can be associated with a web
portal. Once associated with a web portal, user settings control how
users can transfer data between a streaming session and the their local
devices.


=head2 DeleteBrowserSettings

=over

=item BrowserSettingsArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::DeleteBrowserSettings>

Returns: a L<Paws::WorkSpacesWeb::DeleteBrowserSettingsResponse> instance

Deletes browser settings.


=head2 DeleteDataProtectionSettings

=over

=item DataProtectionSettingsArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::DeleteDataProtectionSettings>

Returns: a L<Paws::WorkSpacesWeb::DeleteDataProtectionSettingsResponse> instance

Deletes data protection settings.


=head2 DeleteIdentityProvider

=over

=item IdentityProviderArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::DeleteIdentityProvider>

Returns: a L<Paws::WorkSpacesWeb::DeleteIdentityProviderResponse> instance

Deletes the identity provider.


=head2 DeleteIpAccessSettings

=over

=item IpAccessSettingsArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::DeleteIpAccessSettings>

Returns: a L<Paws::WorkSpacesWeb::DeleteIpAccessSettingsResponse> instance

Deletes IP access settings.


=head2 DeleteNetworkSettings

=over

=item NetworkSettingsArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::DeleteNetworkSettings>

Returns: a L<Paws::WorkSpacesWeb::DeleteNetworkSettingsResponse> instance

Deletes network settings.


=head2 DeletePortal

=over

=item PortalArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::DeletePortal>

Returns: a L<Paws::WorkSpacesWeb::DeletePortalResponse> instance

Deletes a web portal.


=head2 DeleteTrustStore

=over

=item TrustStoreArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::DeleteTrustStore>

Returns: a L<Paws::WorkSpacesWeb::DeleteTrustStoreResponse> instance

Deletes the trust store.


=head2 DeleteUserAccessLoggingSettings

=over

=item UserAccessLoggingSettingsArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::DeleteUserAccessLoggingSettings>

Returns: a L<Paws::WorkSpacesWeb::DeleteUserAccessLoggingSettingsResponse> instance

Deletes user access logging settings.


=head2 DeleteUserSettings

=over

=item UserSettingsArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::DeleteUserSettings>

Returns: a L<Paws::WorkSpacesWeb::DeleteUserSettingsResponse> instance

Deletes user settings.


=head2 DisassociateBrowserSettings

=over

=item PortalArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::DisassociateBrowserSettings>

Returns: a L<Paws::WorkSpacesWeb::DisassociateBrowserSettingsResponse> instance

Disassociates browser settings from a web portal.


=head2 DisassociateDataProtectionSettings

=over

=item PortalArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::DisassociateDataProtectionSettings>

Returns: a L<Paws::WorkSpacesWeb::DisassociateDataProtectionSettingsResponse> instance

Disassociates data protection settings from a web portal.


=head2 DisassociateIpAccessSettings

=over

=item PortalArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::DisassociateIpAccessSettings>

Returns: a L<Paws::WorkSpacesWeb::DisassociateIpAccessSettingsResponse> instance

Disassociates IP access settings from a web portal.


=head2 DisassociateNetworkSettings

=over

=item PortalArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::DisassociateNetworkSettings>

Returns: a L<Paws::WorkSpacesWeb::DisassociateNetworkSettingsResponse> instance

Disassociates network settings from a web portal.


=head2 DisassociateTrustStore

=over

=item PortalArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::DisassociateTrustStore>

Returns: a L<Paws::WorkSpacesWeb::DisassociateTrustStoreResponse> instance

Disassociates a trust store from a web portal.


=head2 DisassociateUserAccessLoggingSettings

=over

=item PortalArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::DisassociateUserAccessLoggingSettings>

Returns: a L<Paws::WorkSpacesWeb::DisassociateUserAccessLoggingSettingsResponse> instance

Disassociates user access logging settings from a web portal.


=head2 DisassociateUserSettings

=over

=item PortalArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::DisassociateUserSettings>

Returns: a L<Paws::WorkSpacesWeb::DisassociateUserSettingsResponse> instance

Disassociates user settings from a web portal.


=head2 ExpireSession

=over

=item PortalId => Str

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::ExpireSession>

Returns: a L<Paws::WorkSpacesWeb::ExpireSessionResponse> instance

Expires an active secure browser session.


=head2 GetBrowserSettings

=over

=item BrowserSettingsArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::GetBrowserSettings>

Returns: a L<Paws::WorkSpacesWeb::GetBrowserSettingsResponse> instance

Gets browser settings.


=head2 GetDataProtectionSettings

=over

=item DataProtectionSettingsArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::GetDataProtectionSettings>

Returns: a L<Paws::WorkSpacesWeb::GetDataProtectionSettingsResponse> instance

Gets the data protection settings.


=head2 GetIdentityProvider

=over

=item IdentityProviderArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::GetIdentityProvider>

Returns: a L<Paws::WorkSpacesWeb::GetIdentityProviderResponse> instance

Gets the identity provider.


=head2 GetIpAccessSettings

=over

=item IpAccessSettingsArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::GetIpAccessSettings>

Returns: a L<Paws::WorkSpacesWeb::GetIpAccessSettingsResponse> instance

Gets the IP access settings.


=head2 GetNetworkSettings

=over

=item NetworkSettingsArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::GetNetworkSettings>

Returns: a L<Paws::WorkSpacesWeb::GetNetworkSettingsResponse> instance

Gets the network settings.


=head2 GetPortal

=over

=item PortalArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::GetPortal>

Returns: a L<Paws::WorkSpacesWeb::GetPortalResponse> instance

Gets the web portal.


=head2 GetPortalServiceProviderMetadata

=over

=item PortalArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::GetPortalServiceProviderMetadata>

Returns: a L<Paws::WorkSpacesWeb::GetPortalServiceProviderMetadataResponse> instance

Gets the service provider metadata.


=head2 GetSession

=over

=item PortalId => Str

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::GetSession>

Returns: a L<Paws::WorkSpacesWeb::GetSessionResponse> instance

Gets information for a secure browser session.


=head2 GetTrustStore

=over

=item TrustStoreArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::GetTrustStore>

Returns: a L<Paws::WorkSpacesWeb::GetTrustStoreResponse> instance

Gets the trust store.


=head2 GetTrustStoreCertificate

=over

=item Thumbprint => Str

=item TrustStoreArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::GetTrustStoreCertificate>

Returns: a L<Paws::WorkSpacesWeb::GetTrustStoreCertificateResponse> instance

Gets the trust store certificate.


=head2 GetUserAccessLoggingSettings

=over

=item UserAccessLoggingSettingsArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::GetUserAccessLoggingSettings>

Returns: a L<Paws::WorkSpacesWeb::GetUserAccessLoggingSettingsResponse> instance

Gets user access logging settings.


=head2 GetUserSettings

=over

=item UserSettingsArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::GetUserSettings>

Returns: a L<Paws::WorkSpacesWeb::GetUserSettingsResponse> instance

Gets user settings.


=head2 ListBrowserSettings

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::ListBrowserSettings>

Returns: a L<Paws::WorkSpacesWeb::ListBrowserSettingsResponse> instance

Retrieves a list of browser settings.


=head2 ListDataProtectionSettings

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::ListDataProtectionSettings>

Returns: a L<Paws::WorkSpacesWeb::ListDataProtectionSettingsResponse> instance

Retrieves a list of data protection settings.


=head2 ListIdentityProviders

=over

=item PortalArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::ListIdentityProviders>

Returns: a L<Paws::WorkSpacesWeb::ListIdentityProvidersResponse> instance

Retrieves a list of identity providers for a specific web portal.


=head2 ListIpAccessSettings

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::ListIpAccessSettings>

Returns: a L<Paws::WorkSpacesWeb::ListIpAccessSettingsResponse> instance

Retrieves a list of IP access settings.


=head2 ListNetworkSettings

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::ListNetworkSettings>

Returns: a L<Paws::WorkSpacesWeb::ListNetworkSettingsResponse> instance

Retrieves a list of network settings.


=head2 ListPortals

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::ListPortals>

Returns: a L<Paws::WorkSpacesWeb::ListPortalsResponse> instance

Retrieves a list or web portals.


=head2 ListSessions

=over

=item PortalId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SessionId => Str]

=item [SortBy => Str]

=item [Status => Str]

=item [Username => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::ListSessions>

Returns: a L<Paws::WorkSpacesWeb::ListSessionsResponse> instance

Lists information for multiple secure browser sessions from a specific
portal.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::ListTagsForResource>

Returns: a L<Paws::WorkSpacesWeb::ListTagsForResourceResponse> instance

Retrieves a list of tags for a resource.


=head2 ListTrustStoreCertificates

=over

=item TrustStoreArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::ListTrustStoreCertificates>

Returns: a L<Paws::WorkSpacesWeb::ListTrustStoreCertificatesResponse> instance

Retrieves a list of trust store certificates.


=head2 ListTrustStores

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::ListTrustStores>

Returns: a L<Paws::WorkSpacesWeb::ListTrustStoresResponse> instance

Retrieves a list of trust stores.


=head2 ListUserAccessLoggingSettings

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::ListUserAccessLoggingSettings>

Returns: a L<Paws::WorkSpacesWeb::ListUserAccessLoggingSettingsResponse> instance

Retrieves a list of user access logging settings.


=head2 ListUserSettings

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::ListUserSettings>

Returns: a L<Paws::WorkSpacesWeb::ListUserSettingsResponse> instance

Retrieves a list of user settings.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::WorkSpacesWeb::Tag>]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::TagResource>

Returns: a L<Paws::WorkSpacesWeb::TagResourceResponse> instance

Adds or overwrites one or more tags for the specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::UntagResource>

Returns: a L<Paws::WorkSpacesWeb::UntagResourceResponse> instance

Removes one or more tags from the specified resource.


=head2 UpdateBrowserSettings

=over

=item BrowserSettingsArn => Str

=item [BrowserPolicy => Str]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::UpdateBrowserSettings>

Returns: a L<Paws::WorkSpacesWeb::UpdateBrowserSettingsResponse> instance

Updates browser settings.


=head2 UpdateDataProtectionSettings

=over

=item DataProtectionSettingsArn => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DisplayName => Str]

=item [InlineRedactionConfiguration => L<Paws::WorkSpacesWeb::InlineRedactionConfiguration>]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::UpdateDataProtectionSettings>

Returns: a L<Paws::WorkSpacesWeb::UpdateDataProtectionSettingsResponse> instance

Updates data protection settings.


=head2 UpdateIdentityProvider

=over

=item IdentityProviderArn => Str

=item [ClientToken => Str]

=item [IdentityProviderDetails => L<Paws::WorkSpacesWeb::IdentityProviderDetails>]

=item [IdentityProviderName => Str]

=item [IdentityProviderType => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::UpdateIdentityProvider>

Returns: a L<Paws::WorkSpacesWeb::UpdateIdentityProviderResponse> instance

Updates the identity provider.


=head2 UpdateIpAccessSettings

=over

=item IpAccessSettingsArn => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DisplayName => Str]

=item [IpRules => ArrayRef[L<Paws::WorkSpacesWeb::IpRule>]]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::UpdateIpAccessSettings>

Returns: a L<Paws::WorkSpacesWeb::UpdateIpAccessSettingsResponse> instance

Updates IP access settings.


=head2 UpdateNetworkSettings

=over

=item NetworkSettingsArn => Str

=item [ClientToken => Str]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SubnetIds => ArrayRef[Str|Undef]]

=item [VpcId => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::UpdateNetworkSettings>

Returns: a L<Paws::WorkSpacesWeb::UpdateNetworkSettingsResponse> instance

Updates network settings.


=head2 UpdatePortal

=over

=item PortalArn => Str

=item [AuthenticationType => Str]

=item [DisplayName => Str]

=item [InstanceType => Str]

=item [MaxConcurrentSessions => Int]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::UpdatePortal>

Returns: a L<Paws::WorkSpacesWeb::UpdatePortalResponse> instance

Updates a web portal.


=head2 UpdateTrustStore

=over

=item TrustStoreArn => Str

=item [CertificatesToAdd => ArrayRef[Str|Undef]]

=item [CertificatesToDelete => ArrayRef[Str|Undef]]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::UpdateTrustStore>

Returns: a L<Paws::WorkSpacesWeb::UpdateTrustStoreResponse> instance

Updates the trust store.


=head2 UpdateUserAccessLoggingSettings

=over

=item UserAccessLoggingSettingsArn => Str

=item [ClientToken => Str]

=item [KinesisStreamArn => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::UpdateUserAccessLoggingSettings>

Returns: a L<Paws::WorkSpacesWeb::UpdateUserAccessLoggingSettingsResponse> instance

Updates the user access logging settings.


=head2 UpdateUserSettings

=over

=item UserSettingsArn => Str

=item [ClientToken => Str]

=item [CookieSynchronizationConfiguration => L<Paws::WorkSpacesWeb::CookieSynchronizationConfiguration>]

=item [CopyAllowed => Str]

=item [DeepLinkAllowed => Str]

=item [DisconnectTimeoutInMinutes => Int]

=item [DownloadAllowed => Str]

=item [IdleDisconnectTimeoutInMinutes => Int]

=item [PasteAllowed => Str]

=item [PrintAllowed => Str]

=item [ToolbarConfiguration => L<Paws::WorkSpacesWeb::ToolbarConfiguration>]

=item [UploadAllowed => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesWeb::UpdateUserSettings>

Returns: a L<Paws::WorkSpacesWeb::UpdateUserSettingsResponse> instance

Updates the user settings.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDataProtectionSettings(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDataProtectionSettings([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - dataProtectionSettings, passing the object as the first parameter, and the string 'dataProtectionSettings' as the second parameter 

If not, it will return a a L<Paws::WorkSpacesWeb::ListDataProtectionSettingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSessions(sub { },PortalId => Str, [MaxResults => Int, NextToken => Str, SessionId => Str, SortBy => Str, Status => Str, Username => Str])

=head2 ListAllSessions(PortalId => Str, [MaxResults => Int, NextToken => Str, SessionId => Str, SortBy => Str, Status => Str, Username => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - sessions, passing the object as the first parameter, and the string 'sessions' as the second parameter 

If not, it will return a a L<Paws::WorkSpacesWeb::ListSessionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

