
package Paws::FinspaceData::CreatePermissionGroup;
  use Moose;
  has ApplicationPermissions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'applicationPermissions', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePermissionGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/permission-group');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::CreatePermissionGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::CreatePermissionGroup - Arguments for method CreatePermissionGroup on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePermissionGroup on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method CreatePermissionGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePermissionGroup.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $CreatePermissionGroupResponse = $finspace -api->CreatePermissionGroup(
      ApplicationPermissions => [
        'CreateDataset',
        ... # values: CreateDataset, ManageClusters, ManageUsersAndGroups, ManageAttributeSets, ViewAuditData, AccessNotebooks, GetTemporaryCredentials
      ],
      Name        => 'MyPermissionGroupName',
      ClientToken => 'MyClientToken',                   # OPTIONAL
      Description => 'MyPermissionGroupDescription',    # OPTIONAL
    );

    # Results:
    my $PermissionGroupId = $CreatePermissionGroupResponse->PermissionGroupId;

    # Returns a L<Paws::FinspaceData::CreatePermissionGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/CreatePermissionGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationPermissions => ArrayRef[Str|Undef]

The option to indicate FinSpace application permissions that are
granted to a specific group.

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



=head2 B<REQUIRED> Name => Str

The name of the permission group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePermissionGroup in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

