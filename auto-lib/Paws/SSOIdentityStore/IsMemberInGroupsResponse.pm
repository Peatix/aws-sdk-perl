
package Paws::SSOIdentityStore::IsMemberInGroupsResponse;
  use Moose;
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::SSOIdentityStore::GroupMembershipExistenceResult]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOIdentityStore::IsMemberInGroupsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Results => ArrayRef[L<Paws::SSOIdentityStore::GroupMembershipExistenceResult>]

A list containing the results of membership existence checks.


=head2 _request_id => Str


=cut

1;