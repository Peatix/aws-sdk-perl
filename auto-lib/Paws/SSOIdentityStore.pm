package Paws::SSOIdentityStore;
  use Moose;
  sub service { 'identitystore' }
  sub signing_name { 'identitystore' }
  sub version { '2020-06-15' }
  sub target_prefix { 'AWSIdentityStore' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::CreateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGroupMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::CreateGroupMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::DeleteGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGroupMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::DeleteGroupMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::DescribeGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGroupMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::DescribeGroupMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::DescribeUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroupId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::GetGroupId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroupMembershipId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::GetGroupMembershipId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUserId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::GetUserId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub IsMemberInGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::IsMemberInGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroupMemberships {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::ListGroupMemberships', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroupMembershipsForMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::ListGroupMembershipsForMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::ListGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::UpdateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOIdentityStore::UpdateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllGroupMemberships {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGroupMemberships(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGroupMemberships(@_, NextToken => $next_result->NextToken);
        push @{ $result->GroupMemberships }, @{ $next_result->GroupMemberships };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'GroupMemberships') foreach (@{ $result->GroupMemberships });
        $result = $self->ListGroupMemberships(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'GroupMemberships') foreach (@{ $result->GroupMemberships });
    }

    return undef
  }
  sub ListAllGroupMembershipsForMember {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGroupMembershipsForMember(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGroupMembershipsForMember(@_, NextToken => $next_result->NextToken);
        push @{ $result->GroupMemberships }, @{ $next_result->GroupMemberships };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'GroupMemberships') foreach (@{ $result->GroupMemberships });
        $result = $self->ListGroupMembershipsForMember(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'GroupMemberships') foreach (@{ $result->GroupMemberships });
    }

    return undef
  }
  sub ListAllGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->Groups }, @{ $next_result->Groups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Groups') foreach (@{ $result->Groups });
        $result = $self->ListGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Groups') foreach (@{ $result->Groups });
    }

    return undef
  }
  sub ListAllUsers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUsers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUsers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Users }, @{ $next_result->Users };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Users') foreach (@{ $result->Users });
        $result = $self->ListUsers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Users') foreach (@{ $result->Users });
    }

    return undef
  }


  sub operations { qw/CreateGroup CreateGroupMembership CreateUser DeleteGroup DeleteGroupMembership DeleteUser DescribeGroup DescribeGroupMembership DescribeUser GetGroupId GetGroupMembershipId GetUserId IsMemberInGroups ListGroupMemberships ListGroupMembershipsForMember ListGroups ListUsers UpdateGroup UpdateUser / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOIdentityStore - Perl Interface to AWS AWS SSO Identity Store

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SSOIdentityStore');
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

The Identity Store service used by IAM Identity Center provides a
single place to retrieve all of your identities (users and groups). For
more information, see the IAM Identity Center User Guide
(https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html).

This reference guide describes the identity store operations that you
can call programmatically and includes detailed information about data
types and errors.

IAM Identity Center uses the C<sso> and C<identitystore> API
namespaces.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/identitystore-2020-06-15>


=head1 METHODS

=head2 CreateGroup

=over

=item IdentityStoreId => Str

=item [Description => Str]

=item [DisplayName => Str]


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::CreateGroup>

Returns: a L<Paws::SSOIdentityStore::CreateGroupResponse> instance

Creates a group within the specified identity store.


=head2 CreateGroupMembership

=over

=item GroupId => Str

=item IdentityStoreId => Str

=item MemberId => L<Paws::SSOIdentityStore::MemberId>


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::CreateGroupMembership>

Returns: a L<Paws::SSOIdentityStore::CreateGroupMembershipResponse> instance

Creates a relationship between a member and a group. The following
identifiers must be specified: C<GroupId>, C<IdentityStoreId>, and
C<MemberId>.


=head2 CreateUser

=over

=item IdentityStoreId => Str

=item [Addresses => ArrayRef[L<Paws::SSOIdentityStore::Address>]]

=item [DisplayName => Str]

=item [Emails => ArrayRef[L<Paws::SSOIdentityStore::Email>]]

=item [Locale => Str]

=item [Name => L<Paws::SSOIdentityStore::Name>]

=item [NickName => Str]

=item [PhoneNumbers => ArrayRef[L<Paws::SSOIdentityStore::PhoneNumber>]]

=item [PreferredLanguage => Str]

=item [ProfileUrl => Str]

=item [Timezone => Str]

=item [Title => Str]

=item [UserName => Str]

=item [UserType => Str]


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::CreateUser>

Returns: a L<Paws::SSOIdentityStore::CreateUserResponse> instance

Creates a user within the specified identity store.


=head2 DeleteGroup

=over

=item GroupId => Str

=item IdentityStoreId => Str


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::DeleteGroup>

Returns: a L<Paws::SSOIdentityStore::DeleteGroupResponse> instance

Delete a group within an identity store given C<GroupId>.


=head2 DeleteGroupMembership

=over

=item IdentityStoreId => Str

=item MembershipId => Str


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::DeleteGroupMembership>

Returns: a L<Paws::SSOIdentityStore::DeleteGroupMembershipResponse> instance

Delete a membership within a group given C<MembershipId>.


=head2 DeleteUser

=over

=item IdentityStoreId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::DeleteUser>

Returns: a L<Paws::SSOIdentityStore::DeleteUserResponse> instance

Deletes a user within an identity store given C<UserId>.


=head2 DescribeGroup

=over

=item GroupId => Str

=item IdentityStoreId => Str


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::DescribeGroup>

Returns: a L<Paws::SSOIdentityStore::DescribeGroupResponse> instance

Retrieves the group metadata and attributes from C<GroupId> in an
identity store.

If you have administrator access to a member account, you can use this
API from the member account. Read about member accounts
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
in the I<Organizations User Guide>.


=head2 DescribeGroupMembership

=over

=item IdentityStoreId => Str

=item MembershipId => Str


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::DescribeGroupMembership>

Returns: a L<Paws::SSOIdentityStore::DescribeGroupMembershipResponse> instance

Retrieves membership metadata and attributes from C<MembershipId> in an
identity store.

If you have administrator access to a member account, you can use this
API from the member account. Read about member accounts
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
in the I<Organizations User Guide>.


=head2 DescribeUser

=over

=item IdentityStoreId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::DescribeUser>

Returns: a L<Paws::SSOIdentityStore::DescribeUserResponse> instance

Retrieves the user metadata and attributes from the C<UserId> in an
identity store.

If you have administrator access to a member account, you can use this
API from the member account. Read about member accounts
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
in the I<Organizations User Guide>.


=head2 GetGroupId

=over

=item AlternateIdentifier => L<Paws::SSOIdentityStore::AlternateIdentifier>

=item IdentityStoreId => Str


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::GetGroupId>

Returns: a L<Paws::SSOIdentityStore::GetGroupIdResponse> instance

Retrieves C<GroupId> in an identity store.

If you have administrator access to a member account, you can use this
API from the member account. Read about member accounts
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
in the I<Organizations User Guide>.


=head2 GetGroupMembershipId

=over

=item GroupId => Str

=item IdentityStoreId => Str

=item MemberId => L<Paws::SSOIdentityStore::MemberId>


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::GetGroupMembershipId>

Returns: a L<Paws::SSOIdentityStore::GetGroupMembershipIdResponse> instance

Retrieves the C<MembershipId> in an identity store.

If you have administrator access to a member account, you can use this
API from the member account. Read about member accounts
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
in the I<Organizations User Guide>.


=head2 GetUserId

=over

=item AlternateIdentifier => L<Paws::SSOIdentityStore::AlternateIdentifier>

=item IdentityStoreId => Str


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::GetUserId>

Returns: a L<Paws::SSOIdentityStore::GetUserIdResponse> instance

Retrieves the C<UserId> in an identity store.

If you have administrator access to a member account, you can use this
API from the member account. Read about member accounts
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
in the I<Organizations User Guide>.


=head2 IsMemberInGroups

=over

=item GroupIds => ArrayRef[Str|Undef]

=item IdentityStoreId => Str

=item MemberId => L<Paws::SSOIdentityStore::MemberId>


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::IsMemberInGroups>

Returns: a L<Paws::SSOIdentityStore::IsMemberInGroupsResponse> instance

Checks the user's membership in all requested groups and returns if the
member exists in all queried groups.

If you have administrator access to a member account, you can use this
API from the member account. Read about member accounts
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
in the I<Organizations User Guide>.


=head2 ListGroupMemberships

=over

=item GroupId => Str

=item IdentityStoreId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::ListGroupMemberships>

Returns: a L<Paws::SSOIdentityStore::ListGroupMembershipsResponse> instance

For the specified group in the specified identity store, returns the
list of all C<GroupMembership> objects and returns results in paginated
form.

If you have administrator access to a member account, you can use this
API from the member account. Read about member accounts
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
in the I<Organizations User Guide>.


=head2 ListGroupMembershipsForMember

=over

=item IdentityStoreId => Str

=item MemberId => L<Paws::SSOIdentityStore::MemberId>

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::ListGroupMembershipsForMember>

Returns: a L<Paws::SSOIdentityStore::ListGroupMembershipsForMemberResponse> instance

For the specified member in the specified identity store, returns the
list of all C<GroupMembership> objects and returns results in paginated
form.

If you have administrator access to a member account, you can use this
API from the member account. Read about member accounts
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
in the I<Organizations User Guide>.


=head2 ListGroups

=over

=item IdentityStoreId => Str

=item [Filters => ArrayRef[L<Paws::SSOIdentityStore::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::ListGroups>

Returns: a L<Paws::SSOIdentityStore::ListGroupsResponse> instance

Lists all groups in the identity store. Returns a paginated list of
complete C<Group> objects. Filtering for a C<Group> by the
C<DisplayName> attribute is deprecated. Instead, use the C<GetGroupId>
API action.

If you have administrator access to a member account, you can use this
API from the member account. Read about member accounts
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
in the I<Organizations User Guide>.


=head2 ListUsers

=over

=item IdentityStoreId => Str

=item [Filters => ArrayRef[L<Paws::SSOIdentityStore::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::ListUsers>

Returns: a L<Paws::SSOIdentityStore::ListUsersResponse> instance

Lists all users in the identity store. Returns a paginated list of
complete C<User> objects. Filtering for a C<User> by the C<UserName>
attribute is deprecated. Instead, use the C<GetUserId> API action.

If you have administrator access to a member account, you can use this
API from the member account. Read about member accounts
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
in the I<Organizations User Guide>.


=head2 UpdateGroup

=over

=item GroupId => Str

=item IdentityStoreId => Str

=item Operations => ArrayRef[L<Paws::SSOIdentityStore::AttributeOperation>]


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::UpdateGroup>

Returns: a L<Paws::SSOIdentityStore::UpdateGroupResponse> instance

For the specified group in the specified identity store, updates the
group metadata and attributes.


=head2 UpdateUser

=over

=item IdentityStoreId => Str

=item Operations => ArrayRef[L<Paws::SSOIdentityStore::AttributeOperation>]

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::SSOIdentityStore::UpdateUser>

Returns: a L<Paws::SSOIdentityStore::UpdateUserResponse> instance

For the specified user in the specified identity store, updates the
user metadata and attributes.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllGroupMemberships(sub { },GroupId => Str, IdentityStoreId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllGroupMemberships(GroupId => Str, IdentityStoreId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GroupMemberships, passing the object as the first parameter, and the string 'GroupMemberships' as the second parameter 

If not, it will return a a L<Paws::SSOIdentityStore::ListGroupMembershipsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGroupMembershipsForMember(sub { },IdentityStoreId => Str, MemberId => L<Paws::SSOIdentityStore::MemberId>, [MaxResults => Int, NextToken => Str])

=head2 ListAllGroupMembershipsForMember(IdentityStoreId => Str, MemberId => L<Paws::SSOIdentityStore::MemberId>, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GroupMemberships, passing the object as the first parameter, and the string 'GroupMemberships' as the second parameter 

If not, it will return a a L<Paws::SSOIdentityStore::ListGroupMembershipsForMemberResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGroups(sub { },IdentityStoreId => Str, [Filters => ArrayRef[L<Paws::SSOIdentityStore::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllGroups(IdentityStoreId => Str, [Filters => ArrayRef[L<Paws::SSOIdentityStore::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Groups, passing the object as the first parameter, and the string 'Groups' as the second parameter 

If not, it will return a a L<Paws::SSOIdentityStore::ListGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUsers(sub { },IdentityStoreId => Str, [Filters => ArrayRef[L<Paws::SSOIdentityStore::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllUsers(IdentityStoreId => Str, [Filters => ArrayRef[L<Paws::SSOIdentityStore::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Users, passing the object as the first parameter, and the string 'Users' as the second parameter 

If not, it will return a a L<Paws::SSOIdentityStore::ListUsersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

