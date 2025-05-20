
package Paws::SecretsManager::PutSecretValueResponse;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');
  has VersionStages => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::PutSecretValueResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The ARN of the secret.


=head2 Name => Str

The name of the secret.


=head2 VersionId => Str

The unique identifier of the version of the secret.


=head2 VersionStages => ArrayRef[Str|Undef]

The list of staging labels that are currently attached to this version
of the secret. Secrets Manager uses staging labels to track a version
as it progresses through the secret rotation process.


=head2 _request_id => Str


=cut

1;