
package Paws::SSOIdentityStore::GetGroupMembershipIdResponse;
  use Moose;
  has IdentityStoreId => (is => 'ro', isa => 'Str', required => 1);
  has MembershipId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOIdentityStore::GetGroupMembershipIdResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityStoreId => Str

The globally unique identifier for the identity store.


=head2 B<REQUIRED> MembershipId => Str

The identifier for a C<GroupMembership> in an identity store.


=head2 _request_id => Str


=cut

1;