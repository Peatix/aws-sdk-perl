
package Paws::FinspaceData::CreatePermissionGroupResponse;
  use Moose;
  has PermissionGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'permissionGroupId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::CreatePermissionGroupResponse

=head1 ATTRIBUTES


=head2 PermissionGroupId => Str

The unique identifier for the permission group.


=head2 _request_id => Str


=cut

