
package Paws::FinspaceData::ListPermissionGroupsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PermissionGroups => (is => 'ro', isa => 'ArrayRef[Paws::FinspaceData::PermissionGroup]', traits => ['NameInRequest'], request_name => 'permissionGroups');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::ListPermissionGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates where a results page should begin.


=head2 PermissionGroups => ArrayRef[L<Paws::FinspaceData::PermissionGroup>]

A list of all the permission groups.


=head2 _request_id => Str


=cut

