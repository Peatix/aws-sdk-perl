package Paws::RAM;
  use Moose;
  sub service { 'ram' }
  sub signing_name { 'ram' }
  sub version { '2018-01-04' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AcceptResourceShareInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::AcceptResourceShareInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateResourceShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::AssociateResourceShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateResourceSharePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::AssociateResourceSharePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::CreatePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePermissionVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::CreatePermissionVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResourceShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::CreateResourceShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::DeletePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePermissionVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::DeletePermissionVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourceShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::DeleteResourceShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateResourceShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::DisassociateResourceShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateResourceSharePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::DisassociateResourceSharePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableSharingWithAwsOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::EnableSharingWithAwsOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::GetPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::GetResourcePolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceShareAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::GetResourceShareAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceShareInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::GetResourceShareInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceShares {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::GetResourceShares', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPendingInvitationResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::ListPendingInvitationResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPermissionAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::ListPermissionAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::ListPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPermissionVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::ListPermissionVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPrincipals {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::ListPrincipals', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReplacePermissionAssociationsWork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::ListReplacePermissionAssociationsWork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::ListResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceSharePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::ListResourceSharePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::ListResourceTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PromotePermissionCreatedFromPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::PromotePermissionCreatedFromPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PromoteResourceShareCreatedFromPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::PromoteResourceShareCreatedFromPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectResourceShareInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::RejectResourceShareInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplacePermissionAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::ReplacePermissionAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetDefaultPermissionVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::SetDefaultPermissionVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResourceShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RAM::UpdateResourceShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllResourcePolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetResourcePolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetResourcePolicies(@_, nextToken => $next_result->nextToken);
        push @{ $result->policies }, @{ $next_result->policies };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'policies') foreach (@{ $result->policies });
        $result = $self->GetResourcePolicies(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'policies') foreach (@{ $result->policies });
    }

    return undef
  }
  sub GetAllResourceShareAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetResourceShareAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetResourceShareAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->resourceShareAssociations }, @{ $next_result->resourceShareAssociations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'resourceShareAssociations') foreach (@{ $result->resourceShareAssociations });
        $result = $self->GetResourceShareAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'resourceShareAssociations') foreach (@{ $result->resourceShareAssociations });
    }

    return undef
  }
  sub GetAllResourceShareInvitations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetResourceShareInvitations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetResourceShareInvitations(@_, nextToken => $next_result->nextToken);
        push @{ $result->resourceShareInvitations }, @{ $next_result->resourceShareInvitations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'resourceShareInvitations') foreach (@{ $result->resourceShareInvitations });
        $result = $self->GetResourceShareInvitations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'resourceShareInvitations') foreach (@{ $result->resourceShareInvitations });
    }

    return undef
  }
  sub GetAllResourceShares {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetResourceShares(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetResourceShares(@_, nextToken => $next_result->nextToken);
        push @{ $result->resourceShares }, @{ $next_result->resourceShares };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'resourceShares') foreach (@{ $result->resourceShares });
        $result = $self->GetResourceShares(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'resourceShares') foreach (@{ $result->resourceShares });
    }

    return undef
  }
  sub ListAllPrincipals {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPrincipals(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPrincipals(@_, nextToken => $next_result->nextToken);
        push @{ $result->principals }, @{ $next_result->principals };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'principals') foreach (@{ $result->principals });
        $result = $self->ListPrincipals(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'principals') foreach (@{ $result->principals });
    }

    return undef
  }
  sub ListAllResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListResources(@_, nextToken => $next_result->nextToken);
        push @{ $result->resources }, @{ $next_result->resources };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'resources') foreach (@{ $result->resources });
        $result = $self->ListResources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'resources') foreach (@{ $result->resources });
    }

    return undef
  }


  sub operations { qw/AcceptResourceShareInvitation AssociateResourceShare AssociateResourceSharePermission CreatePermission CreatePermissionVersion CreateResourceShare DeletePermission DeletePermissionVersion DeleteResourceShare DisassociateResourceShare DisassociateResourceSharePermission EnableSharingWithAwsOrganization GetPermission GetResourcePolicies GetResourceShareAssociations GetResourceShareInvitations GetResourceShares ListPendingInvitationResources ListPermissionAssociations ListPermissions ListPermissionVersions ListPrincipals ListReplacePermissionAssociationsWork ListResources ListResourceSharePermissions ListResourceTypes PromotePermissionCreatedFromPolicy PromoteResourceShareCreatedFromPolicy RejectResourceShareInvitation ReplacePermissionAssociations SetDefaultPermissionVersion TagResource UntagResource UpdateResourceShare / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM - Perl Interface to AWS AWS Resource Access Manager

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('RAM');
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

This is the I<Resource Access Manager API Reference>. This
documentation provides descriptions and syntax for each of the actions
and data types in RAM. RAM is a service that helps you securely share
your Amazon Web Services resources to other Amazon Web Services
accounts. If you use Organizations to manage your accounts, then you
can share your resources with your entire organization or to
organizational units (OUs). For supported resource types, you can also
share resources with individual Identity and Access Management (IAM)
roles and users.

To learn more about RAM, see the following resources:

=over

=item *

Resource Access Manager product page (http://aws.amazon.com/ram)

=item *

Resource Access Manager User Guide
(https://docs.aws.amazon.com/ram/latest/userguide/)

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04>


=head1 METHODS

=head2 AcceptResourceShareInvitation

=over

=item ResourceShareInvitationArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::RAM::AcceptResourceShareInvitation>

Returns: a L<Paws::RAM::AcceptResourceShareInvitationResponse> instance

Accepts an invitation to a resource share from another Amazon Web
Services account. After you accept the invitation, the resources
included in the resource share are available to interact with in the
relevant Amazon Web Services Management Consoles and tools.


=head2 AssociateResourceShare

=over

=item ResourceShareArn => Str

=item [ClientToken => Str]

=item [Principals => ArrayRef[Str|Undef]]

=item [ResourceArns => ArrayRef[Str|Undef]]

=item [Sources => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RAM::AssociateResourceShare>

Returns: a L<Paws::RAM::AssociateResourceShareResponse> instance

Adds the specified list of principals and list of resources to a
resource share. Principals that already have access to this resource
share immediately receive access to the added resources. Newly added
principals immediately receive access to the resources shared in this
resource share.


=head2 AssociateResourceSharePermission

=over

=item PermissionArn => Str

=item ResourceShareArn => Str

=item [ClientToken => Str]

=item [PermissionVersion => Int]

=item [Replace => Bool]


=back

Each argument is described in detail in: L<Paws::RAM::AssociateResourceSharePermission>

Returns: a L<Paws::RAM::AssociateResourceSharePermissionResponse> instance

Adds or replaces the RAM permission for a resource type included in a
resource share. You can have exactly one permission associated with
each resource type in the resource share. You can add a new RAM
permission only if there are currently no resources of that resource
type currently in the resource share.


=head2 CreatePermission

=over

=item Name => Str

=item PolicyTemplate => Str

=item ResourceType => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::RAM::Tag>]]


=back

Each argument is described in detail in: L<Paws::RAM::CreatePermission>

Returns: a L<Paws::RAM::CreatePermissionResponse> instance

Creates a customer managed permission for a specified resource type
that you can attach to resource shares. It is created in the Amazon Web
Services Region in which you call the operation.


=head2 CreatePermissionVersion

=over

=item PermissionArn => Str

=item PolicyTemplate => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::RAM::CreatePermissionVersion>

Returns: a L<Paws::RAM::CreatePermissionVersionResponse> instance

Creates a new version of the specified customer managed permission. The
new version is automatically set as the default version of the customer
managed permission. New resource shares automatically use the default
permission. Existing resource shares continue to use their original
permission versions, but you can use ReplacePermissionAssociations to
update them.

If the specified customer managed permission already has the maximum of
5 versions, then you must delete one of the existing versions before
you can create a new one.


=head2 CreateResourceShare

=over

=item Name => Str

=item [AllowExternalPrincipals => Bool]

=item [ClientToken => Str]

=item [PermissionArns => ArrayRef[Str|Undef]]

=item [Principals => ArrayRef[Str|Undef]]

=item [ResourceArns => ArrayRef[Str|Undef]]

=item [Sources => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::RAM::Tag>]]


=back

Each argument is described in detail in: L<Paws::RAM::CreateResourceShare>

Returns: a L<Paws::RAM::CreateResourceShareResponse> instance

Creates a resource share. You can provide a list of the Amazon Resource
Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
for the resources that you want to share, a list of principals you want
to share the resources with, and the permissions to grant those
principals.

Sharing a resource makes it available for use by principals outside of
the Amazon Web Services account that created the resource. Sharing
doesn't change any permissions or quotas that apply to the resource in
the account that created it.


=head2 DeletePermission

=over

=item PermissionArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::RAM::DeletePermission>

Returns: a L<Paws::RAM::DeletePermissionResponse> instance

Deletes the specified customer managed permission in the Amazon Web
Services Region in which you call this operation. You can delete a
customer managed permission only if it isn't attached to any resource
share. The operation deletes all versions associated with the customer
managed permission.


=head2 DeletePermissionVersion

=over

=item PermissionArn => Str

=item PermissionVersion => Int

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::RAM::DeletePermissionVersion>

Returns: a L<Paws::RAM::DeletePermissionVersionResponse> instance

Deletes one version of a customer managed permission. The version you
specify must not be attached to any resource share and must not be the
default version for the permission.

If a customer managed permission has the maximum of 5 versions, then
you must delete at least one version before you can create another.


=head2 DeleteResourceShare

=over

=item ResourceShareArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::RAM::DeleteResourceShare>

Returns: a L<Paws::RAM::DeleteResourceShareResponse> instance

Deletes the specified resource share.

This doesn't delete any of the resources that were associated with the
resource share; it only stops the sharing of those resources through
this resource share.


=head2 DisassociateResourceShare

=over

=item ResourceShareArn => Str

=item [ClientToken => Str]

=item [Principals => ArrayRef[Str|Undef]]

=item [ResourceArns => ArrayRef[Str|Undef]]

=item [Sources => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RAM::DisassociateResourceShare>

Returns: a L<Paws::RAM::DisassociateResourceShareResponse> instance

Removes the specified principals or resources from participating in the
specified resource share.


=head2 DisassociateResourceSharePermission

=over

=item PermissionArn => Str

=item ResourceShareArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::RAM::DisassociateResourceSharePermission>

Returns: a L<Paws::RAM::DisassociateResourceSharePermissionResponse> instance

Removes a managed permission from a resource share. Permission changes
take effect immediately. You can remove a managed permission from a
resource share only if there are currently no resources of the relevant
resource type currently attached to the resource share.


=head2 EnableSharingWithAwsOrganization






Each argument is described in detail in: L<Paws::RAM::EnableSharingWithAwsOrganization>

Returns: a L<Paws::RAM::EnableSharingWithAwsOrganizationResponse> instance

Enables resource sharing within your organization in Organizations.
This operation creates a service-linked role called
C<AWSServiceRoleForResourceAccessManager> that has the IAM managed
policy named AWSResourceAccessManagerServiceRolePolicy attached. This
role permits RAM to retrieve information about the organization and its
structure. This lets you share resources with all of the accounts in
the calling account's organization by specifying the organization ID,
or all of the accounts in an organizational unit (OU) by specifying the
OU ID. Until you enable sharing within the organization, you can
specify only individual Amazon Web Services accounts, or for supported
resource types, IAM roles and users.

You must call this operation from an IAM role or user in the
organization's management account.


=head2 GetPermission

=over

=item PermissionArn => Str

=item [PermissionVersion => Int]


=back

Each argument is described in detail in: L<Paws::RAM::GetPermission>

Returns: a L<Paws::RAM::GetPermissionResponse> instance

Retrieves the contents of a managed permission in JSON format.


=head2 GetResourcePolicies

=over

=item ResourceArns => ArrayRef[Str|Undef]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Principal => Str]


=back

Each argument is described in detail in: L<Paws::RAM::GetResourcePolicies>

Returns: a L<Paws::RAM::GetResourcePoliciesResponse> instance

Retrieves the resource policies for the specified resources that you
own and have shared.


=head2 GetResourceShareAssociations

=over

=item AssociationType => Str

=item [AssociationStatus => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Principal => Str]

=item [ResourceArn => Str]

=item [ResourceShareArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RAM::GetResourceShareAssociations>

Returns: a L<Paws::RAM::GetResourceShareAssociationsResponse> instance

Retrieves the lists of resources and principals that associated for
resource shares that you own.


=head2 GetResourceShareInvitations

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceShareArns => ArrayRef[Str|Undef]]

=item [ResourceShareInvitationArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RAM::GetResourceShareInvitations>

Returns: a L<Paws::RAM::GetResourceShareInvitationsResponse> instance

Retrieves details about invitations that you have received for resource
shares.


=head2 GetResourceShares

=over

=item ResourceOwner => Str

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [PermissionArn => Str]

=item [PermissionVersion => Int]

=item [ResourceShareArns => ArrayRef[Str|Undef]]

=item [ResourceShareStatus => Str]

=item [TagFilters => ArrayRef[L<Paws::RAM::TagFilter>]]


=back

Each argument is described in detail in: L<Paws::RAM::GetResourceShares>

Returns: a L<Paws::RAM::GetResourceSharesResponse> instance

Retrieves details about the resource shares that you own or that are
shared with you.


=head2 ListPendingInvitationResources

=over

=item ResourceShareInvitationArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceRegionScope => Str]


=back

Each argument is described in detail in: L<Paws::RAM::ListPendingInvitationResources>

Returns: a L<Paws::RAM::ListPendingInvitationResourcesResponse> instance

Lists the resources in a resource share that is shared with you but for
which the invitation is still C<PENDING>. That means that you haven't
accepted or rejected the invitation and the invitation hasn't expired.


=head2 ListPermissionAssociations

=over

=item [AssociationStatus => Str]

=item [DefaultVersion => Bool]

=item [FeatureSet => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PermissionArn => Str]

=item [PermissionVersion => Int]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::RAM::ListPermissionAssociations>

Returns: a L<Paws::RAM::ListPermissionAssociationsResponse> instance

Lists information about the managed permission and its associations to
any resource shares that use this managed permission. This lets you see
which resource shares use which versions of the specified managed
permission.


=head2 ListPermissions

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PermissionType => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::RAM::ListPermissions>

Returns: a L<Paws::RAM::ListPermissionsResponse> instance

Retrieves a list of available RAM permissions that you can use for the
supported resource types.


=head2 ListPermissionVersions

=over

=item PermissionArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::RAM::ListPermissionVersions>

Returns: a L<Paws::RAM::ListPermissionVersionsResponse> instance

Lists the available versions of the specified RAM permission.


=head2 ListPrincipals

=over

=item ResourceOwner => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Principals => ArrayRef[Str|Undef]]

=item [ResourceArn => Str]

=item [ResourceShareArns => ArrayRef[Str|Undef]]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::RAM::ListPrincipals>

Returns: a L<Paws::RAM::ListPrincipalsResponse> instance

Lists the principals that you are sharing resources with or that are
sharing resources with you.


=head2 ListReplacePermissionAssociationsWork

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]

=item [WorkIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RAM::ListReplacePermissionAssociationsWork>

Returns: a L<Paws::RAM::ListReplacePermissionAssociationsWorkResponse> instance

Retrieves the current status of the asynchronous tasks performed by RAM
when you perform the ReplacePermissionAssociationsWork operation.


=head2 ListResources

=over

=item ResourceOwner => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Principal => Str]

=item [ResourceArns => ArrayRef[Str|Undef]]

=item [ResourceRegionScope => Str]

=item [ResourceShareArns => ArrayRef[Str|Undef]]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::RAM::ListResources>

Returns: a L<Paws::RAM::ListResourcesResponse> instance

Lists the resources that you added to a resource share or the resources
that are shared with you.


=head2 ListResourceSharePermissions

=over

=item ResourceShareArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::RAM::ListResourceSharePermissions>

Returns: a L<Paws::RAM::ListResourceSharePermissionsResponse> instance

Lists the RAM permissions that are associated with a resource share.


=head2 ListResourceTypes

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceRegionScope => Str]


=back

Each argument is described in detail in: L<Paws::RAM::ListResourceTypes>

Returns: a L<Paws::RAM::ListResourceTypesResponse> instance

Lists the resource types that can be shared by RAM.


=head2 PromotePermissionCreatedFromPolicy

=over

=item Name => Str

=item PermissionArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::RAM::PromotePermissionCreatedFromPolicy>

Returns: a L<Paws::RAM::PromotePermissionCreatedFromPolicyResponse> instance

When you attach a resource-based policy to a resource, RAM
automatically creates a resource share of
C<featureSet>=C<CREATED_FROM_POLICY> with a managed permission that has
the same IAM permissions as the original resource-based policy.
However, this type of managed permission is visible to only the
resource share owner, and the associated resource share can't be
modified by using RAM.

This operation creates a separate, fully manageable customer managed
permission that has the same IAM permissions as the original
resource-based policy. You can associate this customer managed
permission to any resource shares.

Before you use PromoteResourceShareCreatedFromPolicy, you should first
run this operation to ensure that you have an appropriate customer
managed permission that can be associated with the promoted resource
share.

=over

=item *

The original C<CREATED_FROM_POLICY> policy isn't deleted, and resource
shares using that original policy aren't automatically updated.

=item *

You can't modify a C<CREATED_FROM_POLICY> resource share so you can't
associate the new customer managed permission by using
C<ReplacePermsissionAssociations>. However, if you use
PromoteResourceShareCreatedFromPolicy, that operation automatically
associates the fully manageable customer managed permission to the
newly promoted C<STANDARD> resource share.

=item *

After you promote a resource share, if the original
C<CREATED_FROM_POLICY> managed permission has no other associations to
A resource share, then RAM automatically deletes it.

=back



=head2 PromoteResourceShareCreatedFromPolicy

=over

=item ResourceShareArn => Str


=back

Each argument is described in detail in: L<Paws::RAM::PromoteResourceShareCreatedFromPolicy>

Returns: a L<Paws::RAM::PromoteResourceShareCreatedFromPolicyResponse> instance

When you attach a resource-based policy to a resource, RAM
automatically creates a resource share of
C<featureSet>=C<CREATED_FROM_POLICY> with a managed permission that has
the same IAM permissions as the original resource-based policy.
However, this type of managed permission is visible to only the
resource share owner, and the associated resource share can't be
modified by using RAM.

This operation promotes the resource share to a C<STANDARD> resource
share that is fully manageable in RAM. When you promote a resource
share, you can then manage the resource share in RAM and it becomes
visible to all of the principals you shared it with.

Before you perform this operation, you should first run
PromotePermissionCreatedFromPolicyto ensure that you have an
appropriate customer managed permission that can be associated with
this resource share after its is promoted. If this operation can't find
a managed permission that exactly matches the existing
C<CREATED_FROM_POLICY> permission, then this operation fails.


=head2 RejectResourceShareInvitation

=over

=item ResourceShareInvitationArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::RAM::RejectResourceShareInvitation>

Returns: a L<Paws::RAM::RejectResourceShareInvitationResponse> instance

Rejects an invitation to a resource share from another Amazon Web
Services account.


=head2 ReplacePermissionAssociations

=over

=item FromPermissionArn => Str

=item ToPermissionArn => Str

=item [ClientToken => Str]

=item [FromPermissionVersion => Int]


=back

Each argument is described in detail in: L<Paws::RAM::ReplacePermissionAssociations>

Returns: a L<Paws::RAM::ReplacePermissionAssociationsResponse> instance

Updates all resource shares that use a managed permission to a
different managed permission. This operation always applies the default
version of the target managed permission. You can optionally specify
that the update applies to only resource shares that currently use a
specified version. This enables you to update to the latest version,
without changing the which managed permission is used.

You can use this operation to update all of your resource shares to use
the current default version of the permission by specifying the same
value for the C<fromPermissionArn> and C<toPermissionArn> parameters.

You can use the optional C<fromPermissionVersion> parameter to update
only those resources that use a specified version of the managed
permission to the new managed permission.

To successfully perform this operation, you must have permission to
update the resource-based policy on all affected resource types.


=head2 SetDefaultPermissionVersion

=over

=item PermissionArn => Str

=item PermissionVersion => Int

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::RAM::SetDefaultPermissionVersion>

Returns: a L<Paws::RAM::SetDefaultPermissionVersionResponse> instance

Designates the specified version number as the default version for the
specified customer managed permission. New resource shares
automatically use this new default permission. Existing resource shares
continue to use their original permission version, but you can use
ReplacePermissionAssociations to update them.


=head2 TagResource

=over

=item Tags => ArrayRef[L<Paws::RAM::Tag>]

=item [ResourceArn => Str]

=item [ResourceShareArn => Str]


=back

Each argument is described in detail in: L<Paws::RAM::TagResource>

Returns: a L<Paws::RAM::TagResourceResponse> instance

Adds the specified tag keys and values to a resource share or managed
permission. If you choose a resource share, the tags are attached to
only the resource share, not to the resources that are in the resource
share.

The tags on a managed permission are the same for all versions of the
managed permission.


=head2 UntagResource

=over

=item TagKeys => ArrayRef[Str|Undef]

=item [ResourceArn => Str]

=item [ResourceShareArn => Str]


=back

Each argument is described in detail in: L<Paws::RAM::UntagResource>

Returns: a L<Paws::RAM::UntagResourceResponse> instance

Removes the specified tag key and value pairs from the specified
resource share or managed permission.


=head2 UpdateResourceShare

=over

=item ResourceShareArn => Str

=item [AllowExternalPrincipals => Bool]

=item [ClientToken => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::RAM::UpdateResourceShare>

Returns: a L<Paws::RAM::UpdateResourceShareResponse> instance

Modifies some of the properties of the specified resource share.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllResourcePolicies(sub { },ResourceArns => ArrayRef[Str|Undef], [MaxResults => Int, NextToken => Str, Principal => Str])

=head2 GetAllResourcePolicies(ResourceArns => ArrayRef[Str|Undef], [MaxResults => Int, NextToken => Str, Principal => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - policies, passing the object as the first parameter, and the string 'policies' as the second parameter 

If not, it will return a a L<Paws::RAM::GetResourcePoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllResourceShareAssociations(sub { },AssociationType => Str, [AssociationStatus => Str, MaxResults => Int, NextToken => Str, Principal => Str, ResourceArn => Str, ResourceShareArns => ArrayRef[Str|Undef]])

=head2 GetAllResourceShareAssociations(AssociationType => Str, [AssociationStatus => Str, MaxResults => Int, NextToken => Str, Principal => Str, ResourceArn => Str, ResourceShareArns => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - resourceShareAssociations, passing the object as the first parameter, and the string 'resourceShareAssociations' as the second parameter 

If not, it will return a a L<Paws::RAM::GetResourceShareAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllResourceShareInvitations(sub { },[MaxResults => Int, NextToken => Str, ResourceShareArns => ArrayRef[Str|Undef], ResourceShareInvitationArns => ArrayRef[Str|Undef]])

=head2 GetAllResourceShareInvitations([MaxResults => Int, NextToken => Str, ResourceShareArns => ArrayRef[Str|Undef], ResourceShareInvitationArns => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - resourceShareInvitations, passing the object as the first parameter, and the string 'resourceShareInvitations' as the second parameter 

If not, it will return a a L<Paws::RAM::GetResourceShareInvitationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllResourceShares(sub { },ResourceOwner => Str, [MaxResults => Int, Name => Str, NextToken => Str, PermissionArn => Str, PermissionVersion => Int, ResourceShareArns => ArrayRef[Str|Undef], ResourceShareStatus => Str, TagFilters => ArrayRef[L<Paws::RAM::TagFilter>]])

=head2 GetAllResourceShares(ResourceOwner => Str, [MaxResults => Int, Name => Str, NextToken => Str, PermissionArn => Str, PermissionVersion => Int, ResourceShareArns => ArrayRef[Str|Undef], ResourceShareStatus => Str, TagFilters => ArrayRef[L<Paws::RAM::TagFilter>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - resourceShares, passing the object as the first parameter, and the string 'resourceShares' as the second parameter 

If not, it will return a a L<Paws::RAM::GetResourceSharesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPrincipals(sub { },ResourceOwner => Str, [MaxResults => Int, NextToken => Str, Principals => ArrayRef[Str|Undef], ResourceArn => Str, ResourceShareArns => ArrayRef[Str|Undef], ResourceType => Str])

=head2 ListAllPrincipals(ResourceOwner => Str, [MaxResults => Int, NextToken => Str, Principals => ArrayRef[Str|Undef], ResourceArn => Str, ResourceShareArns => ArrayRef[Str|Undef], ResourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - principals, passing the object as the first parameter, and the string 'principals' as the second parameter 

If not, it will return a a L<Paws::RAM::ListPrincipalsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResources(sub { },ResourceOwner => Str, [MaxResults => Int, NextToken => Str, Principal => Str, ResourceArns => ArrayRef[Str|Undef], ResourceRegionScope => Str, ResourceShareArns => ArrayRef[Str|Undef], ResourceType => Str])

=head2 ListAllResources(ResourceOwner => Str, [MaxResults => Int, NextToken => Str, Principal => Str, ResourceArns => ArrayRef[Str|Undef], ResourceRegionScope => Str, ResourceShareArns => ArrayRef[Str|Undef], ResourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - resources, passing the object as the first parameter, and the string 'resources' as the second parameter 

If not, it will return a a L<Paws::RAM::ListResourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

