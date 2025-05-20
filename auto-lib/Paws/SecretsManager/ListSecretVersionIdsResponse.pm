
package Paws::SecretsManager::ListSecretVersionIdsResponse;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has Versions => (is => 'ro', isa => 'ArrayRef[Paws::SecretsManager::SecretVersionsListEntry]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::ListSecretVersionIdsResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The ARN of the secret.


=head2 Name => Str

The name of the secret.


=head2 NextToken => Str

Secrets Manager includes this value if there's more output available
than what is included in the current response. This can occur even when
the response includes no values at all, such as when you ask for a
filtered view of a long list. To get the next results, call
C<ListSecretVersionIds> again with this value.


=head2 Versions => ArrayRef[L<Paws::SecretsManager::SecretVersionsListEntry>]

A list of the versions of the secret.


=head2 _request_id => Str


=cut

1;