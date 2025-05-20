
package Paws::SSOIdentityStore::GetUserIdResponse;
  use Moose;
  has IdentityStoreId => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOIdentityStore::GetUserIdResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityStoreId => Str

The globally unique identifier for the identity store.


=head2 B<REQUIRED> UserId => Str

The identifier for a user in the identity store.


=head2 _request_id => Str


=cut

1;