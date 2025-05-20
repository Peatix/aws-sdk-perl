
package Paws::SSOIdentityStore::CreateUserResponse;
  use Moose;
  has IdentityStoreId => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOIdentityStore::CreateUserResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityStoreId => Str

The globally unique identifier for the identity store.


=head2 B<REQUIRED> UserId => Str

The identifier of the newly created user in the identity store.


=head2 _request_id => Str


=cut

1;