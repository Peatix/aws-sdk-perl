
package Paws::SecretsManager::PutSecretValue;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has RotationToken => (is => 'ro', isa => 'Str');
  has SecretBinary => (is => 'ro', isa => 'Str');
  has SecretId => (is => 'ro', isa => 'Str', required => 1);
  has SecretString => (is => 'ro', isa => 'Str');
  has VersionStages => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutSecretValue');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::PutSecretValueResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::PutSecretValue - Arguments for method PutSecretValue on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutSecretValue on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method PutSecretValue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutSecretValue.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
    # To store a secret value in a new version of a secret
    # The following example shows how to create a new version of the secret.
    # Alternatively, you can use the update-secret command.
    my $PutSecretValueResponse = $secretsmanager->PutSecretValue(
      'ClientRequestToken' => 'EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE',
      'SecretId'           => 'MyTestDatabaseSecret',
      'SecretString' => '{"username":"david","password":"EXAMPLE-PASSWORD"}'
    );

    # Results:
    my $ARN           = $PutSecretValueResponse->ARN;
    my $Name          = $PutSecretValueResponse->Name;
    my $VersionId     = $PutSecretValueResponse->VersionId;
    my $VersionStages = $PutSecretValueResponse->VersionStages;

    # Returns a L<Paws::SecretsManager::PutSecretValueResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/PutSecretValue>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique identifier for the new version of the secret.

If you use the Amazon Web Services CLI or one of the Amazon Web
Services SDKs to call this operation, then you can leave this parameter
empty. The CLI or SDK generates a random UUID for you and includes it
as the value for this parameter in the request.

If you generate a raw HTTP request to the Secrets Manager service
endpoint, then you must generate a C<ClientRequestToken> and include it
in the request.

This value helps ensure idempotency. Secrets Manager uses this value to
prevent the accidental creation of duplicate versions if there are
failures and retries during a rotation. We recommend that you generate
a UUID-type (https://wikipedia.org/wiki/Universally_unique_identifier)
value to ensure uniqueness of your versions within the specified
secret.

=over

=item *

If the C<ClientRequestToken> value isn't already associated with a
version of the secret then a new version of the secret is created.

=item *

If a version with this value already exists and that version's
C<SecretString> or C<SecretBinary> values are the same as those in the
request then the request is ignored. The operation is idempotent.

=item *

If a version with this value already exists and the version of the
C<SecretString> and C<SecretBinary> values are different from those in
the request, then the request fails because you can't modify a secret
version. You can only create new versions to store new secret values.

=back

This value becomes the C<VersionId> of the new version.



=head2 RotationToken => Str

A unique identifier that indicates the source of the request. For
cross-account rotation (when you rotate a secret in one account by
using a Lambda rotation function in another account) and the Lambda
rotation function assumes an IAM role to call Secrets Manager, Secrets
Manager validates the identity with the rotation token. For more
information, see How rotation works
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets.html).

Sensitive: This field contains sensitive information, so the service
does not include it in CloudTrail log entries. If you create your own
log entries, you must also avoid logging the information in this field.



=head2 SecretBinary => Str

The binary data to encrypt and store in the new version of the secret.
To use this parameter in the command-line tools, we recommend that you
store your binary data in a file and then pass the contents of the file
as a parameter.

You must include C<SecretBinary> or C<SecretString>, but not both.

You can't access this value from the Secrets Manager console.

Sensitive: This field contains sensitive information, so the service
does not include it in CloudTrail log entries. If you create your own
log entries, you must also avoid logging the information in this field.



=head2 B<REQUIRED> SecretId => Str

The ARN or name of the secret to add a new version to.

For an ARN, we recommend that you specify a complete ARN rather than a
partial ARN. See Finding a secret from a partial ARN
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen).

If the secret doesn't already exist, use C<CreateSecret> instead.



=head2 SecretString => Str

The text to encrypt and store in the new version of the secret.

You must include C<SecretBinary> or C<SecretString>, but not both.

We recommend you create the secret string as JSON key/value pairs, as
shown in the example.

Sensitive: This field contains sensitive information, so the service
does not include it in CloudTrail log entries. If you create your own
log entries, you must also avoid logging the information in this field.



=head2 VersionStages => ArrayRef[Str|Undef]

A list of staging labels to attach to this version of the secret.
Secrets Manager uses staging labels to track versions of a secret
through the rotation process.

If you specify a staging label that's already associated with a
different version of the same secret, then Secrets Manager removes the
label from the other version and attaches it to this version. If you
specify C<AWSCURRENT>, and it is already attached to another version,
then Secrets Manager also moves the staging label C<AWSPREVIOUS> to the
version that C<AWSCURRENT> was removed from.

If you don't include C<VersionStages>, then Secrets Manager
automatically moves the staging label C<AWSCURRENT> to this version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutSecretValue in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

