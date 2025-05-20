
package Paws::SecretsManager::GetSecretValueResponse;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SecretBinary => (is => 'ro', isa => 'Str');
  has SecretString => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');
  has VersionStages => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::GetSecretValueResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The ARN of the secret.


=head2 CreatedDate => Str

The date and time that this version of the secret was created. If you
don't specify which version in C<VersionId> or C<VersionStage>, then
Secrets Manager uses the C<AWSCURRENT> version.


=head2 Name => Str

The friendly name of the secret.


=head2 SecretBinary => Str

The decrypted secret value, if the secret value was originally provided
as binary data in the form of a byte array. When you retrieve a
C<SecretBinary> using the HTTP API, the Python SDK, or the Amazon Web
Services CLI, the value is Base64-encoded. Otherwise, it is not
encoded.

If the secret was created by using the Secrets Manager console, or if
the secret value was originally provided as a string, then this field
is omitted. The secret value appears in C<SecretString> instead.

Sensitive: This field contains sensitive information, so the service
does not include it in CloudTrail log entries. If you create your own
log entries, you must also avoid logging the information in this field.


=head2 SecretString => Str

The decrypted secret value, if the secret value was originally provided
as a string or through the Secrets Manager console.

If this secret was created by using the console, then Secrets Manager
stores the information as a JSON structure of key/value pairs.

Sensitive: This field contains sensitive information, so the service
does not include it in CloudTrail log entries. If you create your own
log entries, you must also avoid logging the information in this field.


=head2 VersionId => Str

The unique identifier of this version of the secret.


=head2 VersionStages => ArrayRef[Str|Undef]

A list of all of the staging labels currently attached to this version
of the secret.


=head2 _request_id => Str


=cut

1;