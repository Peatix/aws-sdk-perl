
package Paws::SecretsManager::UpdateSecretResponse;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::UpdateSecretResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The ARN of the secret that was updated.


=head2 Name => Str

The name of the secret that was updated.


=head2 VersionId => Str

If Secrets Manager created a new version of the secret during this
operation, then C<VersionId> contains the unique identifier of the new
version.


=head2 _request_id => Str


=cut

1;