package Paws::DirectoryServiceData;
  use Moose;
  sub service { 'ds-data' }
  sub signing_name { 'ds-data' }
  sub version { '2023-05-31' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AddGroupMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectoryServiceData::AddGroupMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectoryServiceData::CreateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectoryServiceData::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectoryServiceData::DeleteGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectoryServiceData::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectoryServiceData::DescribeGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectoryServiceData::DescribeUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectoryServiceData::DisableUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroupMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectoryServiceData::ListGroupMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectoryServiceData::ListGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroupsForMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectoryServiceData::ListGroupsForMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectoryServiceData::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveGroupMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectoryServiceData::RemoveGroupMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectoryServiceData::SearchGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectoryServiceData::SearchUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectoryServiceData::UpdateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectoryServiceData::UpdateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllGroupMembers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGroupMembers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGroupMembers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Members }, @{ $next_result->Members };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Members') foreach (@{ $result->Members });
        $result = $self->ListGroupMembers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Members') foreach (@{ $result->Members });
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
  sub ListAllGroupsForMember {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGroupsForMember(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGroupsForMember(@_, NextToken => $next_result->NextToken);
        push @{ $result->Groups }, @{ $next_result->Groups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Groups') foreach (@{ $result->Groups });
        $result = $self->ListGroupsForMember(@_, NextToken => $result->NextToken);
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
  sub SearchAllGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->Groups }, @{ $next_result->Groups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Groups') foreach (@{ $result->Groups });
        $result = $self->SearchGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Groups') foreach (@{ $result->Groups });
    }

    return undef
  }
  sub SearchAllUsers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchUsers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchUsers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Users }, @{ $next_result->Users };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Users') foreach (@{ $result->Users });
        $result = $self->SearchUsers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Users') foreach (@{ $result->Users });
    }

    return undef
  }


  sub operations { qw/AddGroupMember CreateGroup CreateUser DeleteGroup DeleteUser DescribeGroup DescribeUser DisableUser ListGroupMembers ListGroups ListGroupsForMember ListUsers RemoveGroupMember SearchGroups SearchUsers UpdateGroup UpdateUser / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectoryServiceData - Perl Interface to AWS AWS Directory Service Data

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('DirectoryServiceData');
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

Amazon Web Services Directory Service Data is an extension of Directory
Service. This API reference provides detailed information about
Directory Service Data operations and object types.

With Directory Service Data, you can create, read, update, and delete
users, groups, and memberships from your Managed Microsoft AD without
additional costs and without deploying dedicated management instances.
You can also perform built-in object management tasks across
directories without direct network connectivity, which simplifies
provisioning and access management to achieve fully automated
deployments. Directory Service Data supports user and group write
operations, such as C<CreateUser> and C<CreateGroup>, within the
organizational unit (OU) of your Managed Microsoft AD. Directory
Service Data supports read operations, such as C<ListUsers> and
C<ListGroups>, on all users, groups, and group memberships within your
Managed Microsoft AD and across trusted realms. Directory Service Data
supports adding and removing group members in your OU and the Amazon
Web Services Delegated Groups OU, so you can grant and deny access to
specific roles and permissions. For more information, see Manage users
and groups
(https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ms_ad_manage_users_groups.html)
in the I<Directory Service Administration Guide>.

Directory management operations and configuration changes made against
the Directory Service API will also reflect in Directory Service Data
API with eventual consistency. You can expect a short delay between
management changes, such as adding a new directory trust and calling
the Directory Service Data API for the newly created trusted realm.

Directory Service Data connects to your Managed Microsoft AD domain
controllers and performs operations on underlying directory objects.
When you create your Managed Microsoft AD, you choose subnets for
domain controllers that Directory Service creates on your behalf. If a
domain controller is unavailable, Directory Service Data uses an
available domain controller. As a result, you might notice eventual
consistency while objects replicate from one domain controller to
another domain controller. For more information, see What gets created
(https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ms_ad_getting_started_what_gets_created.html)
in the I<Directory Service Administration Guide>. Directory limits vary
by Managed Microsoft AD edition:

=over

=item *

B<Standard edition> E<ndash> Supports 8 transactions per second (TPS)
for read operations and 4 TPS for write operations per directory.
There's a concurrency limit of 10 concurrent requests.

=item *

B<Enterprise edition> E<ndash> Supports 16 transactions per second
(TPS) for read operations and 8 TPS for write operations per directory.
There's a concurrency limit of 10 concurrent requests.

=item *

B<Amazon Web Services Account> - Supports a total of 100 TPS for
Directory Service Data operations across all directories.

=back

Directory Service Data only supports the Managed Microsoft AD directory
type and is only available in the primary Amazon Web Services Region.
For more information, see Managed Microsoft AD
(https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_microsoft_ad.html)
and Primary vs additional Regions
(https://docs.aws.amazon.com/directoryservice/latest/admin-guide/multi-region-global-primary-additional.html)
in the I<Directory Service Administration Guide>.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AddGroupMember

=over

=item DirectoryId => Str

=item GroupName => Str

=item MemberName => Str

=item [ClientToken => Str]

=item [MemberRealm => Str]


=back

Each argument is described in detail in: L<Paws::DirectoryServiceData::AddGroupMember>

Returns: a L<Paws::DirectoryServiceData::AddGroupMemberResult> instance

Adds an existing user, group, or computer as a group member.


=head2 CreateGroup

=over

=item DirectoryId => Str

=item SAMAccountName => Str

=item [ClientToken => Str]

=item [GroupScope => Str]

=item [GroupType => Str]

=item [OtherAttributes => L<Paws::DirectoryServiceData::Attributes>]


=back

Each argument is described in detail in: L<Paws::DirectoryServiceData::CreateGroup>

Returns: a L<Paws::DirectoryServiceData::CreateGroupResult> instance

Creates a new group.


=head2 CreateUser

=over

=item DirectoryId => Str

=item SAMAccountName => Str

=item [ClientToken => Str]

=item [EmailAddress => Str]

=item [GivenName => Str]

=item [OtherAttributes => L<Paws::DirectoryServiceData::Attributes>]

=item [Surname => Str]


=back

Each argument is described in detail in: L<Paws::DirectoryServiceData::CreateUser>

Returns: a L<Paws::DirectoryServiceData::CreateUserResult> instance

Creates a new user.


=head2 DeleteGroup

=over

=item DirectoryId => Str

=item SAMAccountName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::DirectoryServiceData::DeleteGroup>

Returns: a L<Paws::DirectoryServiceData::DeleteGroupResult> instance

Deletes a group.


=head2 DeleteUser

=over

=item DirectoryId => Str

=item SAMAccountName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::DirectoryServiceData::DeleteUser>

Returns: a L<Paws::DirectoryServiceData::DeleteUserResult> instance

Deletes a user.


=head2 DescribeGroup

=over

=item DirectoryId => Str

=item SAMAccountName => Str

=item [OtherAttributes => ArrayRef[Str|Undef]]

=item [Realm => Str]


=back

Each argument is described in detail in: L<Paws::DirectoryServiceData::DescribeGroup>

Returns: a L<Paws::DirectoryServiceData::DescribeGroupResult> instance

Returns information about a specific group.


=head2 DescribeUser

=over

=item DirectoryId => Str

=item SAMAccountName => Str

=item [OtherAttributes => ArrayRef[Str|Undef]]

=item [Realm => Str]


=back

Each argument is described in detail in: L<Paws::DirectoryServiceData::DescribeUser>

Returns: a L<Paws::DirectoryServiceData::DescribeUserResult> instance

Returns information about a specific user.


=head2 DisableUser

=over

=item DirectoryId => Str

=item SAMAccountName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::DirectoryServiceData::DisableUser>

Returns: a L<Paws::DirectoryServiceData::DisableUserResult> instance

Deactivates an active user account. For information about how to enable
an inactive user account, see ResetUserPassword
(https://docs.aws.amazon.com/directoryservice/latest/devguide/API_ResetUserPassword.html)
in the I<Directory Service API Reference>.


=head2 ListGroupMembers

=over

=item DirectoryId => Str

=item SAMAccountName => Str

=item [MaxResults => Int]

=item [MemberRealm => Str]

=item [NextToken => Str]

=item [Realm => Str]


=back

Each argument is described in detail in: L<Paws::DirectoryServiceData::ListGroupMembers>

Returns: a L<Paws::DirectoryServiceData::ListGroupMembersResult> instance

Returns member information for the specified group.

This operation supports pagination with the use of the C<NextToken>
request and response parameters. If more results are available, the
C<ListGroupMembers.NextToken> member contains a token that you pass in
the next call to C<ListGroupMembers>. This retrieves the next set of
items.

You can also specify a maximum number of return results with the
C<MaxResults> parameter.


=head2 ListGroups

=over

=item DirectoryId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Realm => Str]


=back

Each argument is described in detail in: L<Paws::DirectoryServiceData::ListGroups>

Returns: a L<Paws::DirectoryServiceData::ListGroupsResult> instance

Returns group information for the specified directory.

This operation supports pagination with the use of the C<NextToken>
request and response parameters. If more results are available, the
C<ListGroups.NextToken> member contains a token that you pass in the
next call to C<ListGroups>. This retrieves the next set of items.

You can also specify a maximum number of return results with the
C<MaxResults> parameter.


=head2 ListGroupsForMember

=over

=item DirectoryId => Str

=item SAMAccountName => Str

=item [MaxResults => Int]

=item [MemberRealm => Str]

=item [NextToken => Str]

=item [Realm => Str]


=back

Each argument is described in detail in: L<Paws::DirectoryServiceData::ListGroupsForMember>

Returns: a L<Paws::DirectoryServiceData::ListGroupsForMemberResult> instance

Returns group information for the specified member.

This operation supports pagination with the use of the C<NextToken>
request and response parameters. If more results are available, the
C<ListGroupsForMember.NextToken> member contains a token that you pass
in the next call to C<ListGroupsForMember>. This retrieves the next set
of items.

You can also specify a maximum number of return results with the
C<MaxResults> parameter.


=head2 ListUsers

=over

=item DirectoryId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Realm => Str]


=back

Each argument is described in detail in: L<Paws::DirectoryServiceData::ListUsers>

Returns: a L<Paws::DirectoryServiceData::ListUsersResult> instance

Returns user information for the specified directory.

This operation supports pagination with the use of the C<NextToken>
request and response parameters. If more results are available, the
C<ListUsers.NextToken> member contains a token that you pass in the
next call to C<ListUsers>. This retrieves the next set of items.

You can also specify a maximum number of return results with the
C<MaxResults> parameter.


=head2 RemoveGroupMember

=over

=item DirectoryId => Str

=item GroupName => Str

=item MemberName => Str

=item [ClientToken => Str]

=item [MemberRealm => Str]


=back

Each argument is described in detail in: L<Paws::DirectoryServiceData::RemoveGroupMember>

Returns: a L<Paws::DirectoryServiceData::RemoveGroupMemberResult> instance

Removes a member from a group.


=head2 SearchGroups

=over

=item DirectoryId => Str

=item SearchAttributes => ArrayRef[Str|Undef]

=item SearchString => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Realm => Str]


=back

Each argument is described in detail in: L<Paws::DirectoryServiceData::SearchGroups>

Returns: a L<Paws::DirectoryServiceData::SearchGroupsResult> instance

Searches the specified directory for a group. You can find groups that
match the C<SearchString> parameter with the value of their attributes
included in the C<SearchString> parameter.

This operation supports pagination with the use of the C<NextToken>
request and response parameters. If more results are available, the
C<SearchGroups.NextToken> member contains a token that you pass in the
next call to C<SearchGroups>. This retrieves the next set of items.

You can also specify a maximum number of return results with the
C<MaxResults> parameter.


=head2 SearchUsers

=over

=item DirectoryId => Str

=item SearchAttributes => ArrayRef[Str|Undef]

=item SearchString => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Realm => Str]


=back

Each argument is described in detail in: L<Paws::DirectoryServiceData::SearchUsers>

Returns: a L<Paws::DirectoryServiceData::SearchUsersResult> instance

Searches the specified directory for a user. You can find users that
match the C<SearchString> parameter with the value of their attributes
included in the C<SearchString> parameter.

This operation supports pagination with the use of the C<NextToken>
request and response parameters. If more results are available, the
C<SearchUsers.NextToken> member contains a token that you pass in the
next call to C<SearchUsers>. This retrieves the next set of items.

You can also specify a maximum number of return results with the
C<MaxResults> parameter.


=head2 UpdateGroup

=over

=item DirectoryId => Str

=item SAMAccountName => Str

=item [ClientToken => Str]

=item [GroupScope => Str]

=item [GroupType => Str]

=item [OtherAttributes => L<Paws::DirectoryServiceData::Attributes>]

=item [UpdateType => Str]


=back

Each argument is described in detail in: L<Paws::DirectoryServiceData::UpdateGroup>

Returns: a L<Paws::DirectoryServiceData::UpdateGroupResult> instance

Updates group information.


=head2 UpdateUser

=over

=item DirectoryId => Str

=item SAMAccountName => Str

=item [ClientToken => Str]

=item [EmailAddress => Str]

=item [GivenName => Str]

=item [OtherAttributes => L<Paws::DirectoryServiceData::Attributes>]

=item [Surname => Str]

=item [UpdateType => Str]


=back

Each argument is described in detail in: L<Paws::DirectoryServiceData::UpdateUser>

Returns: a L<Paws::DirectoryServiceData::UpdateUserResult> instance

Updates user information.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllGroupMembers(sub { },DirectoryId => Str, SAMAccountName => Str, [MaxResults => Int, MemberRealm => Str, NextToken => Str, Realm => Str])

=head2 ListAllGroupMembers(DirectoryId => Str, SAMAccountName => Str, [MaxResults => Int, MemberRealm => Str, NextToken => Str, Realm => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Members, passing the object as the first parameter, and the string 'Members' as the second parameter 

If not, it will return a a L<Paws::DirectoryServiceData::ListGroupMembersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGroups(sub { },DirectoryId => Str, [MaxResults => Int, NextToken => Str, Realm => Str])

=head2 ListAllGroups(DirectoryId => Str, [MaxResults => Int, NextToken => Str, Realm => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Groups, passing the object as the first parameter, and the string 'Groups' as the second parameter 

If not, it will return a a L<Paws::DirectoryServiceData::ListGroupsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGroupsForMember(sub { },DirectoryId => Str, SAMAccountName => Str, [MaxResults => Int, MemberRealm => Str, NextToken => Str, Realm => Str])

=head2 ListAllGroupsForMember(DirectoryId => Str, SAMAccountName => Str, [MaxResults => Int, MemberRealm => Str, NextToken => Str, Realm => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Groups, passing the object as the first parameter, and the string 'Groups' as the second parameter 

If not, it will return a a L<Paws::DirectoryServiceData::ListGroupsForMemberResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUsers(sub { },DirectoryId => Str, [MaxResults => Int, NextToken => Str, Realm => Str])

=head2 ListAllUsers(DirectoryId => Str, [MaxResults => Int, NextToken => Str, Realm => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Users, passing the object as the first parameter, and the string 'Users' as the second parameter 

If not, it will return a a L<Paws::DirectoryServiceData::ListUsersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllGroups(sub { },DirectoryId => Str, SearchAttributes => ArrayRef[Str|Undef], SearchString => Str, [MaxResults => Int, NextToken => Str, Realm => Str])

=head2 SearchAllGroups(DirectoryId => Str, SearchAttributes => ArrayRef[Str|Undef], SearchString => Str, [MaxResults => Int, NextToken => Str, Realm => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Groups, passing the object as the first parameter, and the string 'Groups' as the second parameter 

If not, it will return a a L<Paws::DirectoryServiceData::SearchGroupsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllUsers(sub { },DirectoryId => Str, SearchAttributes => ArrayRef[Str|Undef], SearchString => Str, [MaxResults => Int, NextToken => Str, Realm => Str])

=head2 SearchAllUsers(DirectoryId => Str, SearchAttributes => ArrayRef[Str|Undef], SearchString => Str, [MaxResults => Int, NextToken => Str, Realm => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Users, passing the object as the first parameter, and the string 'Users' as the second parameter 

If not, it will return a a L<Paws::DirectoryServiceData::SearchUsersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

