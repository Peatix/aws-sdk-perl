package Paws::Grafana;
  use Moose;
  sub service { 'grafana' }
  sub signing_name { 'grafana' }
  sub version { '2020-08-18' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateLicense {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::AssociateLicense', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkspace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::CreateWorkspace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkspaceApiKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::CreateWorkspaceApiKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkspaceServiceAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::CreateWorkspaceServiceAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkspaceServiceAccountToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::CreateWorkspaceServiceAccountToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkspace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::DeleteWorkspace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkspaceApiKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::DeleteWorkspaceApiKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkspaceServiceAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::DeleteWorkspaceServiceAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkspaceServiceAccountToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::DeleteWorkspaceServiceAccountToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkspace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::DescribeWorkspace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkspaceAuthentication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::DescribeWorkspaceAuthentication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkspaceConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::DescribeWorkspaceConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateLicense {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::DisassociateLicense', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::ListPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::ListVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkspaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::ListWorkspaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkspaceServiceAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::ListWorkspaceServiceAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkspaceServiceAccountTokens {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::ListWorkspaceServiceAccountTokens', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::UpdatePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkspace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::UpdateWorkspace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkspaceAuthentication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::UpdateWorkspaceAuthentication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkspaceConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Grafana::UpdateWorkspaceConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllPermissions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPermissions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPermissions(@_, nextToken => $next_result->nextToken);
        push @{ $result->permissions }, @{ $next_result->permissions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'permissions') foreach (@{ $result->permissions });
        $result = $self->ListPermissions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'permissions') foreach (@{ $result->permissions });
    }

    return undef
  }
  sub ListAllVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->grafanaVersions }, @{ $next_result->grafanaVersions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'grafanaVersions') foreach (@{ $result->grafanaVersions });
        $result = $self->ListVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'grafanaVersions') foreach (@{ $result->grafanaVersions });
    }

    return undef
  }
  sub ListAllWorkspaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkspaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorkspaces(@_, nextToken => $next_result->nextToken);
        push @{ $result->workspaces }, @{ $next_result->workspaces };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'workspaces') foreach (@{ $result->workspaces });
        $result = $self->ListWorkspaces(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'workspaces') foreach (@{ $result->workspaces });
    }

    return undef
  }
  sub ListAllWorkspaceServiceAccounts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkspaceServiceAccounts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorkspaceServiceAccounts(@_, nextToken => $next_result->nextToken);
        push @{ $result->serviceAccounts }, @{ $next_result->serviceAccounts };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'serviceAccounts') foreach (@{ $result->serviceAccounts });
        $result = $self->ListWorkspaceServiceAccounts(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'serviceAccounts') foreach (@{ $result->serviceAccounts });
    }

    return undef
  }
  sub ListAllWorkspaceServiceAccountTokens {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkspaceServiceAccountTokens(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorkspaceServiceAccountTokens(@_, nextToken => $next_result->nextToken);
        push @{ $result->serviceAccountTokens }, @{ $next_result->serviceAccountTokens };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'serviceAccountTokens') foreach (@{ $result->serviceAccountTokens });
        $result = $self->ListWorkspaceServiceAccountTokens(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'serviceAccountTokens') foreach (@{ $result->serviceAccountTokens });
    }

    return undef
  }


  sub operations { qw/AssociateLicense CreateWorkspace CreateWorkspaceApiKey CreateWorkspaceServiceAccount CreateWorkspaceServiceAccountToken DeleteWorkspace DeleteWorkspaceApiKey DeleteWorkspaceServiceAccount DeleteWorkspaceServiceAccountToken DescribeWorkspace DescribeWorkspaceAuthentication DescribeWorkspaceConfiguration DisassociateLicense ListPermissions ListTagsForResource ListVersions ListWorkspaces ListWorkspaceServiceAccounts ListWorkspaceServiceAccountTokens TagResource UntagResource UpdatePermissions UpdateWorkspace UpdateWorkspaceAuthentication UpdateWorkspaceConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana - Perl Interface to AWS Amazon Managed Grafana

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Grafana');
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

Amazon Managed Grafana is a fully managed and secure data visualization
service that you can use to instantly query, correlate, and visualize
operational metrics, logs, and traces from multiple sources. Amazon
Managed Grafana makes it easy to deploy, operate, and scale Grafana, a
widely deployed data visualization tool that is popular for its
extensible data support.

With Amazon Managed Grafana, you create logically isolated Grafana
servers called I<workspaces>. In a workspace, you can create Grafana
dashboards and visualizations to analyze your metrics, logs, and traces
without having to build, package, or deploy any hardware to run Grafana
servers.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18>


=head1 METHODS

=head2 AssociateLicense

=over

=item LicenseType => Str

=item WorkspaceId => Str

=item [GrafanaToken => Str]


=back

Each argument is described in detail in: L<Paws::Grafana::AssociateLicense>

Returns: a L<Paws::Grafana::AssociateLicenseResponse> instance

Assigns a Grafana Enterprise license to a workspace. To upgrade, you
must use C<ENTERPRISE> for the C<licenseType>, and pass in a valid
Grafana Labs token for the C<grafanaToken>. Upgrading to Grafana
Enterprise incurs additional fees. For more information, see Upgrade a
workspace to Grafana Enterprise
(https://docs.aws.amazon.com/grafana/latest/userguide/upgrade-to-Grafana-Enterprise.html).


=head2 CreateWorkspace

=over

=item AccountAccessType => Str

=item AuthenticationProviders => ArrayRef[Str|Undef]

=item PermissionType => Str

=item [ClientToken => Str]

=item [Configuration => Str]

=item [GrafanaVersion => Str]

=item [NetworkAccessControl => L<Paws::Grafana::NetworkAccessConfiguration>]

=item [OrganizationRoleName => Str]

=item [StackSetName => Str]

=item [Tags => L<Paws::Grafana::TagMap>]

=item [VpcConfiguration => L<Paws::Grafana::VpcConfiguration>]

=item [WorkspaceDataSources => ArrayRef[Str|Undef]]

=item [WorkspaceDescription => Str]

=item [WorkspaceName => Str]

=item [WorkspaceNotificationDestinations => ArrayRef[Str|Undef]]

=item [WorkspaceOrganizationalUnits => ArrayRef[Str|Undef]]

=item [WorkspaceRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Grafana::CreateWorkspace>

Returns: a L<Paws::Grafana::CreateWorkspaceResponse> instance

Creates a I<workspace>. In a workspace, you can create Grafana
dashboards and visualizations to analyze your metrics, logs, and
traces. You don't have to build, package, or deploy any hardware to run
the Grafana server.

Don't use C<CreateWorkspace> to modify an existing workspace. Instead,
use UpdateWorkspace
(https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspace.html).


=head2 CreateWorkspaceApiKey

=over

=item KeyName => Str

=item KeyRole => Str

=item SecondsToLive => Int

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::Grafana::CreateWorkspaceApiKey>

Returns: a L<Paws::Grafana::CreateWorkspaceApiKeyResponse> instance

Creates a Grafana API key for the workspace. This key can be used to
authenticate requests sent to the workspace's HTTP API. See
https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html
(https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html)
for available APIs and example requests.

In workspaces compatible with Grafana version 9 or above, use workspace
service accounts instead of API keys. API keys will be removed in a
future release.


=head2 CreateWorkspaceServiceAccount

=over

=item GrafanaRole => Str

=item Name => Str

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::Grafana::CreateWorkspaceServiceAccount>

Returns: a L<Paws::Grafana::CreateWorkspaceServiceAccountResponse> instance

Creates a service account for the workspace. A service account can be
used to call Grafana HTTP APIs, and run automated workloads. After
creating the service account with the correct C<GrafanaRole> for your
use case, use C<CreateWorkspaceServiceAccountToken> to create a token
that can be used to authenticate and authorize Grafana HTTP API calls.

You can only create service accounts for workspaces that are compatible
with Grafana version 9 and above.

For more information about service accounts, see Service accounts
(https://docs.aws.amazon.com/grafana/latest/userguide/service-accounts.html)
in the I<Amazon Managed Grafana User Guide>.

For more information about the Grafana HTTP APIs, see Using Grafana
HTTP APIs
(https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html)
in the I<Amazon Managed Grafana User Guide>.


=head2 CreateWorkspaceServiceAccountToken

=over

=item Name => Str

=item SecondsToLive => Int

=item ServiceAccountId => Str

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::Grafana::CreateWorkspaceServiceAccountToken>

Returns: a L<Paws::Grafana::CreateWorkspaceServiceAccountTokenResponse> instance

Creates a token that can be used to authenticate and authorize Grafana
HTTP API operations for the given workspace service account
(https://docs.aws.amazon.com/grafana/latest/userguide/service-accounts.html).
The service account acts as a user for the API operations, and defines
the permissions that are used by the API.

When you create the service account token, you will receive a key that
is used when calling Grafana APIs. Do not lose this key, as it will not
be retrievable again.

If you do lose the key, you can delete the token and recreate it to
receive a new key. This will disable the initial key.

Service accounts are only available for workspaces that are compatible
with Grafana version 9 and above.


=head2 DeleteWorkspace

=over

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::Grafana::DeleteWorkspace>

Returns: a L<Paws::Grafana::DeleteWorkspaceResponse> instance

Deletes an Amazon Managed Grafana workspace.


=head2 DeleteWorkspaceApiKey

=over

=item KeyName => Str

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::Grafana::DeleteWorkspaceApiKey>

Returns: a L<Paws::Grafana::DeleteWorkspaceApiKeyResponse> instance

Deletes a Grafana API key for the workspace.

In workspaces compatible with Grafana version 9 or above, use workspace
service accounts instead of API keys. API keys will be removed in a
future release.


=head2 DeleteWorkspaceServiceAccount

=over

=item ServiceAccountId => Str

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::Grafana::DeleteWorkspaceServiceAccount>

Returns: a L<Paws::Grafana::DeleteWorkspaceServiceAccountResponse> instance

Deletes a workspace service account from the workspace.

This will delete any tokens created for the service account, as well.
If the tokens are currently in use, the will fail to authenticate /
authorize after they are deleted.

Service accounts are only available for workspaces that are compatible
with Grafana version 9 and above.


=head2 DeleteWorkspaceServiceAccountToken

=over

=item ServiceAccountId => Str

=item TokenId => Str

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::Grafana::DeleteWorkspaceServiceAccountToken>

Returns: a L<Paws::Grafana::DeleteWorkspaceServiceAccountTokenResponse> instance

Deletes a token for the workspace service account.

This will disable the key associated with the token. If any automation
is currently using the key, it will no longer be authenticated or
authorized to perform actions with the Grafana HTTP APIs.

Service accounts are only available for workspaces that are compatible
with Grafana version 9 and above.


=head2 DescribeWorkspace

=over

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::Grafana::DescribeWorkspace>

Returns: a L<Paws::Grafana::DescribeWorkspaceResponse> instance

Displays information about one Amazon Managed Grafana workspace.


=head2 DescribeWorkspaceAuthentication

=over

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::Grafana::DescribeWorkspaceAuthentication>

Returns: a L<Paws::Grafana::DescribeWorkspaceAuthenticationResponse> instance

Displays information about the authentication methods used in one
Amazon Managed Grafana workspace.


=head2 DescribeWorkspaceConfiguration

=over

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::Grafana::DescribeWorkspaceConfiguration>

Returns: a L<Paws::Grafana::DescribeWorkspaceConfigurationResponse> instance

Gets the current configuration string for the given workspace.


=head2 DisassociateLicense

=over

=item LicenseType => Str

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::Grafana::DisassociateLicense>

Returns: a L<Paws::Grafana::DisassociateLicenseResponse> instance

Removes the Grafana Enterprise license from a workspace.


=head2 ListPermissions

=over

=item WorkspaceId => Str

=item [GroupId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [UserId => Str]

=item [UserType => Str]


=back

Each argument is described in detail in: L<Paws::Grafana::ListPermissions>

Returns: a L<Paws::Grafana::ListPermissionsResponse> instance

Lists the users and groups who have the Grafana C<Admin> and C<Editor>
roles in this workspace. If you use this operation without specifying
C<userId> or C<groupId>, the operation returns the roles of all users
and groups. If you specify a C<userId> or a C<groupId>, only the roles
for that user or group are returned. If you do this, you can specify
only one C<userId> or one C<groupId>.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Grafana::ListTagsForResource>

Returns: a L<Paws::Grafana::ListTagsForResourceResponse> instance

The C<ListTagsForResource> operation returns the tags that are
associated with the Amazon Managed Service for Grafana resource
specified by the C<resourceArn>. Currently, the only resource that can
be tagged is a workspace.


=head2 ListVersions

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [WorkspaceId => Str]


=back

Each argument is described in detail in: L<Paws::Grafana::ListVersions>

Returns: a L<Paws::Grafana::ListVersionsResponse> instance

Lists available versions of Grafana. These are available when calling
C<CreateWorkspace>. Optionally, include a workspace to list the
versions to which it can be upgraded.


=head2 ListWorkspaces

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Grafana::ListWorkspaces>

Returns: a L<Paws::Grafana::ListWorkspacesResponse> instance

Returns a list of Amazon Managed Grafana workspaces in the account,
with some information about each workspace. For more complete
information about one workspace, use DescribeWorkspace
(https://docs.aws.amazon.com/AAMG/latest/APIReference/API_DescribeWorkspace.html).


=head2 ListWorkspaceServiceAccounts

=over

=item WorkspaceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Grafana::ListWorkspaceServiceAccounts>

Returns: a L<Paws::Grafana::ListWorkspaceServiceAccountsResponse> instance

Returns a list of service accounts for a workspace.

Service accounts are only available for workspaces that are compatible
with Grafana version 9 and above.


=head2 ListWorkspaceServiceAccountTokens

=over

=item ServiceAccountId => Str

=item WorkspaceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Grafana::ListWorkspaceServiceAccountTokens>

Returns: a L<Paws::Grafana::ListWorkspaceServiceAccountTokensResponse> instance

Returns a list of tokens for a workspace service account.

This does not return the key for each token. You cannot access keys
after they are created. To create a new key, delete the token and
recreate it.

Service accounts are only available for workspaces that are compatible
with Grafana version 9 and above.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Grafana::TagMap>


=back

Each argument is described in detail in: L<Paws::Grafana::TagResource>

Returns: a L<Paws::Grafana::TagResourceResponse> instance

The C<TagResource> operation associates tags with an Amazon Managed
Grafana resource. Currently, the only resource that can be tagged is
workspaces.

If you specify a new tag key for the resource, this tag is appended to
the list of tags associated with the resource. If you specify a tag key
that is already associated with the resource, the new tag value that
you specify replaces the previous value for that tag.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Grafana::UntagResource>

Returns: a L<Paws::Grafana::UntagResourceResponse> instance

The C<UntagResource> operation removes the association of the tag with
the Amazon Managed Grafana resource.


=head2 UpdatePermissions

=over

=item UpdateInstructionBatch => ArrayRef[L<Paws::Grafana::UpdateInstruction>]

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::Grafana::UpdatePermissions>

Returns: a L<Paws::Grafana::UpdatePermissionsResponse> instance

Updates which users in a workspace have the Grafana C<Admin> or
C<Editor> roles.


=head2 UpdateWorkspace

=over

=item WorkspaceId => Str

=item [AccountAccessType => Str]

=item [NetworkAccessControl => L<Paws::Grafana::NetworkAccessConfiguration>]

=item [OrganizationRoleName => Str]

=item [PermissionType => Str]

=item [RemoveNetworkAccessConfiguration => Bool]

=item [RemoveVpcConfiguration => Bool]

=item [StackSetName => Str]

=item [VpcConfiguration => L<Paws::Grafana::VpcConfiguration>]

=item [WorkspaceDataSources => ArrayRef[Str|Undef]]

=item [WorkspaceDescription => Str]

=item [WorkspaceName => Str]

=item [WorkspaceNotificationDestinations => ArrayRef[Str|Undef]]

=item [WorkspaceOrganizationalUnits => ArrayRef[Str|Undef]]

=item [WorkspaceRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Grafana::UpdateWorkspace>

Returns: a L<Paws::Grafana::UpdateWorkspaceResponse> instance

Modifies an existing Amazon Managed Grafana workspace. If you use this
operation and omit any optional parameters, the existing values of
those parameters are not changed.

To modify the user authentication methods that the workspace uses, such
as SAML or IAM Identity Center, use UpdateWorkspaceAuthentication
(https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspaceAuthentication.html).

To modify which users in the workspace have the C<Admin> and C<Editor>
Grafana roles, use UpdatePermissions
(https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdatePermissions.html).


=head2 UpdateWorkspaceAuthentication

=over

=item AuthenticationProviders => ArrayRef[Str|Undef]

=item WorkspaceId => Str

=item [SamlConfiguration => L<Paws::Grafana::SamlConfiguration>]


=back

Each argument is described in detail in: L<Paws::Grafana::UpdateWorkspaceAuthentication>

Returns: a L<Paws::Grafana::UpdateWorkspaceAuthenticationResponse> instance

Use this operation to define the identity provider (IdP) that this
workspace authenticates users from, using SAML. You can also map SAML
assertion attributes to workspace user information and define which
groups in the assertion attribute are to have the C<Admin> and
C<Editor> roles in the workspace.

Changes to the authentication method for a workspace may take a few
minutes to take effect.


=head2 UpdateWorkspaceConfiguration

=over

=item Configuration => Str

=item WorkspaceId => Str

=item [GrafanaVersion => Str]


=back

Each argument is described in detail in: L<Paws::Grafana::UpdateWorkspaceConfiguration>

Returns: a L<Paws::Grafana::UpdateWorkspaceConfigurationResponse> instance

Updates the configuration string for the given workspace




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllPermissions(sub { },WorkspaceId => Str, [GroupId => Str, MaxResults => Int, NextToken => Str, UserId => Str, UserType => Str])

=head2 ListAllPermissions(WorkspaceId => Str, [GroupId => Str, MaxResults => Int, NextToken => Str, UserId => Str, UserType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - permissions, passing the object as the first parameter, and the string 'permissions' as the second parameter 

If not, it will return a a L<Paws::Grafana::ListPermissionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVersions(sub { },[MaxResults => Int, NextToken => Str, WorkspaceId => Str])

=head2 ListAllVersions([MaxResults => Int, NextToken => Str, WorkspaceId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - grafanaVersions, passing the object as the first parameter, and the string 'grafanaVersions' as the second parameter 

If not, it will return a a L<Paws::Grafana::ListVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkspaces(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllWorkspaces([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - workspaces, passing the object as the first parameter, and the string 'workspaces' as the second parameter 

If not, it will return a a L<Paws::Grafana::ListWorkspacesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkspaceServiceAccounts(sub { },WorkspaceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllWorkspaceServiceAccounts(WorkspaceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - serviceAccounts, passing the object as the first parameter, and the string 'serviceAccounts' as the second parameter 

If not, it will return a a L<Paws::Grafana::ListWorkspaceServiceAccountsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkspaceServiceAccountTokens(sub { },ServiceAccountId => Str, WorkspaceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllWorkspaceServiceAccountTokens(ServiceAccountId => Str, WorkspaceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - serviceAccountTokens, passing the object as the first parameter, and the string 'serviceAccountTokens' as the second parameter 

If not, it will return a a L<Paws::Grafana::ListWorkspaceServiceAccountTokensResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

