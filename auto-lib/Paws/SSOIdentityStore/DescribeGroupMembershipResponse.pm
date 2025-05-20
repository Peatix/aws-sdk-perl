
package Paws::SSOIdentityStore::DescribeGroupMembershipResponse;
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityStoreId => (is => 'ro', isa => 'Str', required => 1);
  has MemberId => (is => 'ro', isa => 'Paws::SSOIdentityStore::MemberId', required => 1);
  has MembershipId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOIdentityStore::DescribeGroupMembershipResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupId => Str

The identifier for a group in the identity store.


=head2 B<REQUIRED> IdentityStoreId => Str

The globally unique identifier for the identity store.


=head2 B<REQUIRED> MemberId => L<Paws::SSOIdentityStore::MemberId>




=head2 B<REQUIRED> MembershipId => Str

The identifier for a C<GroupMembership> in an identity store.


=head2 _request_id => Str


=cut

1;