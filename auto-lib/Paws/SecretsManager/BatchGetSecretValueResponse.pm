
package Paws::SecretsManager::BatchGetSecretValueResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::SecretsManager::APIErrorType]');
  has NextToken => (is => 'ro', isa => 'Str');
  has SecretValues => (is => 'ro', isa => 'ArrayRef[Paws::SecretsManager::SecretValueEntry]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::BatchGetSecretValueResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::SecretsManager::APIErrorType>]

A list of errors Secrets Manager encountered while attempting to
retrieve individual secrets.


=head2 NextToken => Str

Secrets Manager includes this value if there's more output available
than what is included in the current response. This can occur even when
the response includes no values at all, such as when you ask for a
filtered view of a long list. To get the next results, call
C<BatchGetSecretValue> again with this value.


=head2 SecretValues => ArrayRef[L<Paws::SecretsManager::SecretValueEntry>]

A list of secret values.


=head2 _request_id => Str


=cut

1;