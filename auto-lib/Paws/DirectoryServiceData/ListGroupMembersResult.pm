
package Paws::DirectoryServiceData::ListGroupMembersResult;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str');
  has MemberRealm => (is => 'ro', isa => 'Str');
  has Members => (is => 'ro', isa => 'ArrayRef[Paws::DirectoryServiceData::Member]');
  has NextToken => (is => 'ro', isa => 'Str');
  has Realm => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectoryServiceData::ListGroupMembersResult

=head1 ATTRIBUTES


=head2 DirectoryId => Str

Identifier (ID) of the directory associated with the group.


=head2 MemberRealm => Str

The domain name that's associated with the member.


=head2 Members => ArrayRef[L<Paws::DirectoryServiceData::Member>]

The member information that the request returns.


=head2 NextToken => Str

An encoded paging token for paginated calls that can be passed back to
retrieve the next page.


=head2 Realm => Str

The domain name that's associated with the group.


=head2 _request_id => Str


=cut

