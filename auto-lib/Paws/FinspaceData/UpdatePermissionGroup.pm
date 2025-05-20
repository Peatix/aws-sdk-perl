
package Paws::FinspaceData::UpdatePermissionGroup;
  use Moose;
  has ApplicationPermissions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'applicationPermissions');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has PermissionGroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'permissionGroupId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePermissionGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/permission-group/{permissionGroupId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::UpdatePermissionGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::UpdatePermissionGroup - Arguments for method UpdatePermissionGroup on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePermissionGroup on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method UpdatePermissionGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePermissionGroup.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $UpdatePermissionGroupResponse = $finspace -api->UpdatePermissionGroup(
      PermissionGroupId      => 'MyPermissionGroupId',
      ApplicationPermissions => [
        'CreateDataset',
        ... # values: CreateDataset, ManageClusters, ManageUsersAndGroups, ManageAttributeSets, ViewAuditData, AccessNotebooks, GetTemporaryCredentials
      ],    # OPTIONAL
      ClientToken => 'MyClientToken',                   # OPTIONAL
      Description => 'MyPermissionGroupDescription',    # OPTIONAL
      Name        => 'MyPermissionGroupName',           # OPTIONAL
    );

    # Results:
    my $PermissionGroupId = $UpdatePermissionGroupResponse->PermissionGroupId;

    # Returns a L<Paws::FinspaceData::UpdatePermissionGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/UpdatePermissionGroup>

=head1 ATTRIBUTES


=head2 ApplicationPermissions => ArrayRef[Str|Undef]

The permissions that are granted to a specific group for accessing the
FinSpace application.

When assigning application permissions, be aware that the permission
C<ManageUsersAndGroups> allows users to grant themselves or others
access to any functionality in their FinSpace environment's
application. It should only be granted to trusted users.

=over

=item *

C<CreateDataset> E<ndash> Group members can create new datasets.

=item *

C<ManageClusters> E<ndash> Group members can manage Apache Spark
clusters from FinSpace notebooks.

=item *

C<ManageUsersAndGroups> E<ndash> Group members can manage users and
permission groups. This is a privileged permission that allows users to
grant themselves or others access to any functionality in the
application. It should only be granted to trusted users.

=item *

C<ManageAttributeSets> E<ndash> Group members can manage attribute
sets.

=item *

C<ViewAuditData> E<ndash> Group members can view audit data.

=item *

C<AccessNotebooks> E<ndash> Group members will have access to FinSpace
notebooks.

=item *

C<GetTemporaryCredentials> E<ndash> Group members can get temporary API
credentials.

=back




=head2 ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 Description => Str

A brief description for the permission group.



=head2 Name => Str

The name of the permission group.



=head2 B<REQUIRED> PermissionGroupId => Str

The unique identifier for the permission group to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePermissionGroup in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

