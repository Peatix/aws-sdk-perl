package Paws::FinspaceData;
  use Moose;
  sub service { 'finspace-api' }
  sub signing_name { 'finspace-api' }
  sub version { '2020-07-13' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateUserToPermissionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::AssociateUserToPermissionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateChangeset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::CreateChangeset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::CreateDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::CreateDataView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePermissionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::CreatePermissionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::DeleteDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePermissionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::DeletePermissionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::DisableUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateUserFromPermissionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::DisassociateUserFromPermissionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::EnableUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChangeset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::GetChangeset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::GetDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::GetDataView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExternalDataViewAccessDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::GetExternalDataViewAccessDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPermissionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::GetPermissionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProgrammaticAccessCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::GetProgrammaticAccessCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::GetUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkingLocation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::GetWorkingLocation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChangesets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::ListChangesets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::ListDatasets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataViews {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::ListDataViews', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPermissionGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::ListPermissionGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPermissionGroupsByUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::ListPermissionGroupsByUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsersByPermissionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::ListUsersByPermissionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetUserPassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::ResetUserPassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateChangeset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::UpdateChangeset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::UpdateDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePermissionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::UpdatePermissionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::UpdateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllChangesets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListChangesets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListChangesets(@_, nextToken => $next_result->nextToken);
        push @{ $result->changesets }, @{ $next_result->changesets };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'changesets') foreach (@{ $result->changesets });
        $result = $self->ListChangesets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'changesets') foreach (@{ $result->changesets });
    }

    return undef
  }
  sub ListAllDatasets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatasets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDatasets(@_, nextToken => $next_result->nextToken);
        push @{ $result->datasets }, @{ $next_result->datasets };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'datasets') foreach (@{ $result->datasets });
        $result = $self->ListDatasets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'datasets') foreach (@{ $result->datasets });
    }

    return undef
  }
  sub ListAllDataViews {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataViews(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDataViews(@_, nextToken => $next_result->nextToken);
        push @{ $result->dataViews }, @{ $next_result->dataViews };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'dataViews') foreach (@{ $result->dataViews });
        $result = $self->ListDataViews(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'dataViews') foreach (@{ $result->dataViews });
    }

    return undef
  }
  sub ListAllPermissionGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPermissionGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPermissionGroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->permissionGroups }, @{ $next_result->permissionGroups };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'permissionGroups') foreach (@{ $result->permissionGroups });
        $result = $self->ListPermissionGroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'permissionGroups') foreach (@{ $result->permissionGroups });
    }

    return undef
  }
  sub ListAllUsers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUsers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListUsers(@_, nextToken => $next_result->nextToken);
        push @{ $result->users }, @{ $next_result->users };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'users') foreach (@{ $result->users });
        $result = $self->ListUsers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'users') foreach (@{ $result->users });
    }

    return undef
  }


  sub operations { qw/AssociateUserToPermissionGroup CreateChangeset CreateDataset CreateDataView CreatePermissionGroup CreateUser DeleteDataset DeletePermissionGroup DisableUser DisassociateUserFromPermissionGroup EnableUser GetChangeset GetDataset GetDataView GetExternalDataViewAccessDetails GetPermissionGroup GetProgrammaticAccessCredentials GetUser GetWorkingLocation ListChangesets ListDatasets ListDataViews ListPermissionGroups ListPermissionGroupsByUser ListUsers ListUsersByPermissionGroup ResetUserPassword UpdateChangeset UpdateDataset UpdatePermissionGroup UpdateUser / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData - Perl Interface to AWS FinSpace Public API

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('FinspaceData');
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

The FinSpace APIs let you take actions inside the FinSpace.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api-2020-07-13>


=head1 METHODS

=head2 AssociateUserToPermissionGroup

=over

=item PermissionGroupId => Str

=item UserId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::AssociateUserToPermissionGroup>

Returns: a L<Paws::FinspaceData::AssociateUserToPermissionGroupResponse> instance

Adds a user to a permission group to grant permissions for actions a
user can perform in FinSpace.


=head2 CreateChangeset

=over

=item ChangeType => Str

=item DatasetId => Str

=item FormatParams => L<Paws::FinspaceData::FormatParams>

=item SourceParams => L<Paws::FinspaceData::SourceParams>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::CreateChangeset>

Returns: a L<Paws::FinspaceData::CreateChangesetResponse> instance

Creates a new Changeset in a FinSpace Dataset.


=head2 CreateDataset

=over

=item DatasetTitle => Str

=item Kind => Str

=item PermissionGroupParams => L<Paws::FinspaceData::PermissionGroupParams>

=item [Alias => Str]

=item [ClientToken => Str]

=item [DatasetDescription => Str]

=item [OwnerInfo => L<Paws::FinspaceData::DatasetOwnerInfo>]

=item [SchemaDefinition => L<Paws::FinspaceData::SchemaUnion>]


=back

Each argument is described in detail in: L<Paws::FinspaceData::CreateDataset>

Returns: a L<Paws::FinspaceData::CreateDatasetResponse> instance

Creates a new FinSpace Dataset.


=head2 CreateDataView

=over

=item DatasetId => Str

=item DestinationTypeParams => L<Paws::FinspaceData::DataViewDestinationTypeParams>

=item [AsOfTimestamp => Int]

=item [AutoUpdate => Bool]

=item [ClientToken => Str]

=item [PartitionColumns => ArrayRef[Str|Undef]]

=item [SortColumns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::FinspaceData::CreateDataView>

Returns: a L<Paws::FinspaceData::CreateDataViewResponse> instance

Creates a Dataview for a Dataset.


=head2 CreatePermissionGroup

=over

=item ApplicationPermissions => ArrayRef[Str|Undef]

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::CreatePermissionGroup>

Returns: a L<Paws::FinspaceData::CreatePermissionGroupResponse> instance

Creates a group of permissions for various actions that a user can
perform in FinSpace.


=head2 CreateUser

=over

=item EmailAddress => Str

=item Type => Str

=item [ApiAccess => Str]

=item [ApiAccessPrincipalArn => Str]

=item [ClientToken => Str]

=item [FirstName => Str]

=item [LastName => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::CreateUser>

Returns: a L<Paws::FinspaceData::CreateUserResponse> instance

Creates a new user in FinSpace.


=head2 DeleteDataset

=over

=item DatasetId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::DeleteDataset>

Returns: a L<Paws::FinspaceData::DeleteDatasetResponse> instance

Deletes a FinSpace Dataset.


=head2 DeletePermissionGroup

=over

=item PermissionGroupId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::DeletePermissionGroup>

Returns: a L<Paws::FinspaceData::DeletePermissionGroupResponse> instance

Deletes a permission group. This action is irreversible.


=head2 DisableUser

=over

=item UserId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::DisableUser>

Returns: a L<Paws::FinspaceData::DisableUserResponse> instance

Denies access to the FinSpace web application and API for the specified
user.


=head2 DisassociateUserFromPermissionGroup

=over

=item PermissionGroupId => Str

=item UserId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::DisassociateUserFromPermissionGroup>

Returns: a L<Paws::FinspaceData::DisassociateUserFromPermissionGroupResponse> instance

Removes a user from a permission group.


=head2 EnableUser

=over

=item UserId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::EnableUser>

Returns: a L<Paws::FinspaceData::EnableUserResponse> instance

Allows the specified user to access the FinSpace web application and
API.


=head2 GetChangeset

=over

=item ChangesetId => Str

=item DatasetId => Str


=back

Each argument is described in detail in: L<Paws::FinspaceData::GetChangeset>

Returns: a L<Paws::FinspaceData::GetChangesetResponse> instance

Get information about a Changeset.


=head2 GetDataset

=over

=item DatasetId => Str


=back

Each argument is described in detail in: L<Paws::FinspaceData::GetDataset>

Returns: a L<Paws::FinspaceData::GetDatasetResponse> instance

Returns information about a Dataset.


=head2 GetDataView

=over

=item DatasetId => Str

=item DataViewId => Str


=back

Each argument is described in detail in: L<Paws::FinspaceData::GetDataView>

Returns: a L<Paws::FinspaceData::GetDataViewResponse> instance

Gets information about a Dataview.


=head2 GetExternalDataViewAccessDetails

=over

=item DatasetId => Str

=item DataViewId => Str


=back

Each argument is described in detail in: L<Paws::FinspaceData::GetExternalDataViewAccessDetails>

Returns: a L<Paws::FinspaceData::GetExternalDataViewAccessDetailsResponse> instance

Returns the credentials to access the external Dataview from an S3
location. To call this API:

=over

=item *

You must retrieve the programmatic credentials.

=item *

You must be a member of a FinSpace user group, where the dataset that
you want to access has C<Read Dataset Data> permissions.

=back



=head2 GetPermissionGroup

=over

=item PermissionGroupId => Str


=back

Each argument is described in detail in: L<Paws::FinspaceData::GetPermissionGroup>

Returns: a L<Paws::FinspaceData::GetPermissionGroupResponse> instance

Retrieves the details of a specific permission group.


=head2 GetProgrammaticAccessCredentials

=over

=item EnvironmentId => Str

=item [DurationInMinutes => Int]


=back

Each argument is described in detail in: L<Paws::FinspaceData::GetProgrammaticAccessCredentials>

Returns: a L<Paws::FinspaceData::GetProgrammaticAccessCredentialsResponse> instance

Request programmatic credentials to use with FinSpace SDK. For more
information, see Step 2. Access credentials programmatically using IAM
access key id and secret access key
(https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html#accessing-credentials).


=head2 GetUser

=over

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::FinspaceData::GetUser>

Returns: a L<Paws::FinspaceData::GetUserResponse> instance

Retrieves details for a specific user.


=head2 GetWorkingLocation

=over

=item [LocationType => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::GetWorkingLocation>

Returns: a L<Paws::FinspaceData::GetWorkingLocationResponse> instance

A temporary Amazon S3 location, where you can copy your files from a
source location to stage or use as a scratch space in FinSpace
notebook.


=head2 ListChangesets

=over

=item DatasetId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::ListChangesets>

Returns: a L<Paws::FinspaceData::ListChangesetsResponse> instance

Lists the FinSpace Changesets for a Dataset.


=head2 ListDatasets

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::ListDatasets>

Returns: a L<Paws::FinspaceData::ListDatasetsResponse> instance

Lists all of the active Datasets that a user has access to.


=head2 ListDataViews

=over

=item DatasetId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::ListDataViews>

Returns: a L<Paws::FinspaceData::ListDataViewsResponse> instance

Lists all available Dataviews for a Dataset.


=head2 ListPermissionGroups

=over

=item MaxResults => Int

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::ListPermissionGroups>

Returns: a L<Paws::FinspaceData::ListPermissionGroupsResponse> instance

Lists all available permission groups in FinSpace.


=head2 ListPermissionGroupsByUser

=over

=item MaxResults => Int

=item UserId => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::ListPermissionGroupsByUser>

Returns: a L<Paws::FinspaceData::ListPermissionGroupsByUserResponse> instance

Lists all the permission groups that are associated with a specific
user.


=head2 ListUsers

=over

=item MaxResults => Int

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::ListUsers>

Returns: a L<Paws::FinspaceData::ListUsersResponse> instance

Lists all available users in FinSpace.


=head2 ListUsersByPermissionGroup

=over

=item MaxResults => Int

=item PermissionGroupId => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::ListUsersByPermissionGroup>

Returns: a L<Paws::FinspaceData::ListUsersByPermissionGroupResponse> instance

Lists details of all the users in a specific permission group.


=head2 ResetUserPassword

=over

=item UserId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::ResetUserPassword>

Returns: a L<Paws::FinspaceData::ResetUserPasswordResponse> instance

Resets the password for a specified user ID and generates a temporary
one. Only a superuser can reset password for other users. Resetting the
password immediately invalidates the previous password associated with
the user.


=head2 UpdateChangeset

=over

=item ChangesetId => Str

=item DatasetId => Str

=item FormatParams => L<Paws::FinspaceData::FormatParams>

=item SourceParams => L<Paws::FinspaceData::SourceParams>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::UpdateChangeset>

Returns: a L<Paws::FinspaceData::UpdateChangesetResponse> instance

Updates a FinSpace Changeset.


=head2 UpdateDataset

=over

=item DatasetId => Str

=item DatasetTitle => Str

=item Kind => Str

=item [Alias => Str]

=item [ClientToken => Str]

=item [DatasetDescription => Str]

=item [SchemaDefinition => L<Paws::FinspaceData::SchemaUnion>]


=back

Each argument is described in detail in: L<Paws::FinspaceData::UpdateDataset>

Returns: a L<Paws::FinspaceData::UpdateDatasetResponse> instance

Updates a FinSpace Dataset.


=head2 UpdatePermissionGroup

=over

=item PermissionGroupId => Str

=item [ApplicationPermissions => ArrayRef[Str|Undef]]

=item [ClientToken => Str]

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::UpdatePermissionGroup>

Returns: a L<Paws::FinspaceData::UpdatePermissionGroupResponse> instance

Modifies the details of a permission group. You cannot modify a
C<permissionGroupID>.


=head2 UpdateUser

=over

=item UserId => Str

=item [ApiAccess => Str]

=item [ApiAccessPrincipalArn => Str]

=item [ClientToken => Str]

=item [FirstName => Str]

=item [LastName => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::UpdateUser>

Returns: a L<Paws::FinspaceData::UpdateUserResponse> instance

Modifies the details of the specified user. You cannot update the
C<userId> for a user.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllChangesets(sub { },DatasetId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllChangesets(DatasetId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - changesets, passing the object as the first parameter, and the string 'changesets' as the second parameter 

If not, it will return a a L<Paws::FinspaceData::ListChangesetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDatasets(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDatasets([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - datasets, passing the object as the first parameter, and the string 'datasets' as the second parameter 

If not, it will return a a L<Paws::FinspaceData::ListDatasetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataViews(sub { },DatasetId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDataViews(DatasetId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - dataViews, passing the object as the first parameter, and the string 'dataViews' as the second parameter 

If not, it will return a a L<Paws::FinspaceData::ListDataViewsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPermissionGroups(sub { },MaxResults => Int, [NextToken => Str])

=head2 ListAllPermissionGroups(MaxResults => Int, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - permissionGroups, passing the object as the first parameter, and the string 'permissionGroups' as the second parameter 

If not, it will return a a L<Paws::FinspaceData::ListPermissionGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUsers(sub { },MaxResults => Int, [NextToken => Str])

=head2 ListAllUsers(MaxResults => Int, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - users, passing the object as the first parameter, and the string 'users' as the second parameter 

If not, it will return a a L<Paws::FinspaceData::ListUsersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

