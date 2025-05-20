
package Paws::FinspaceData::ListUsersByPermissionGroupResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::FinspaceData::UserByPermissionGroup]', traits => ['NameInRequest'], request_name => 'users');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::ListUsersByPermissionGroupResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates where a results page should begin.


=head2 Users => ArrayRef[L<Paws::FinspaceData::UserByPermissionGroup>]

Lists details of all users in a specific permission group.


=head2 _request_id => Str


=cut

