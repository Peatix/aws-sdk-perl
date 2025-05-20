
package Paws::SecretsManager::ListSecretsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SecretList => (is => 'ro', isa => 'ArrayRef[Paws::SecretsManager::SecretListEntry]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::ListSecretsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Secrets Manager includes this value if there's more output available
than what is included in the current response. This can occur even when
the response includes no values at all, such as when you ask for a
filtered view of a long list. To get the next results, call
C<ListSecrets> again with this value.


=head2 SecretList => ArrayRef[L<Paws::SecretsManager::SecretListEntry>]

A list of the secrets in the account.


=head2 _request_id => Str


=cut

1;