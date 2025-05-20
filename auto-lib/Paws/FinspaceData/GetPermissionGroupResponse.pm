
package Paws::FinspaceData::GetPermissionGroupResponse;
  use Moose;
  has PermissionGroup => (is => 'ro', isa => 'Paws::FinspaceData::PermissionGroup', traits => ['NameInRequest'], request_name => 'permissionGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::GetPermissionGroupResponse

=head1 ATTRIBUTES


=head2 PermissionGroup => L<Paws::FinspaceData::PermissionGroup>




=head2 _request_id => Str


=cut

