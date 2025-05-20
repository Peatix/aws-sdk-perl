
package Paws::SecretsManager::UpdateSecret;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has SecretBinary => (is => 'ro', isa => 'Str');
  has SecretId => (is => 'ro', isa => 'Str', required => 1);
  has SecretString => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSecret');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::UpdateSecretResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::UpdateSecret - Arguments for method UpdateSecret on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSecret on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method UpdateSecret.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSecret.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
    # To update the description of a secret
    # The following example shows how to modify the description of a secret.
    my $UpdateSecretResponse = $secretsmanager->UpdateSecret(
      'ClientRequestToken' => 'EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE',
      'Description'        => 'This is a new description for the secret.',
      'SecretId'           => 'MyTestDatabaseSecret'
    );

    # Results:
    my $ARN  = $UpdateSecretResponse->ARN;
    my $Name = $UpdateSecretResponse->Name;

   # Returns a L<Paws::SecretsManager::UpdateSecretResponse> object.
   # To update the KMS key associated with a secret
   # This example shows how to update the KMS customer managed key (CMK) used to
   # encrypt the secret value. The KMS CMK must be in the same region as the
   # secret.
    my $UpdateSecretResponse = $secretsmanager->UpdateSecret(
      'KmsKeyId' =>
'arn:aws:kms:us-west-2:123456789012:key/EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE',
      'SecretId' => 'MyTestDatabaseSecret'
    );

    # Results:
    my $ARN  = $UpdateSecretResponse->ARN;
    my $Name = $UpdateSecretResponse->Name;

    # Returns a L<Paws::SecretsManager::UpdateSecretResponse> object.
    # To create a new version of the encrypted secret value
    # The following example shows how to create a new version of the secret by
    # updating the SecretString field. Alternatively, you can use the
    # put-secret-value operation.
    my $UpdateSecretResponse = $secretsmanager->UpdateSecret(
      'SecretId'     => 'MyTestDatabaseSecret',
      'SecretString' => '{JSON STRING WITH CREDENTIALS}'
    );

    # Results:
    my $ARN       = $UpdateSecretResponse->ARN;
    my $Name      = $UpdateSecretResponse->Name;
    my $VersionId = $UpdateSecretResponse->VersionId;

    # Returns a L<Paws::SecretsManager::UpdateSecretResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/UpdateSecret>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

If you include C<SecretString> or C<SecretBinary>, then Secrets Manager
creates a new version for the secret, and this parameter specifies the
unique identifier for the new version.

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



=head2 Description => Str

The description of the secret.



=head2 KmsKeyId => Str

The ARN, key ID, or alias of the KMS key that Secrets Manager uses to
encrypt new secret versions as well as any existing versions with the
staging labels C<AWSCURRENT>, C<AWSPENDING>, or C<AWSPREVIOUS>. If you
don't have C<kms:Encrypt> permission to the new key, Secrets Manager
does not re-encrypt existing secret versions with the new key. For more
information about versions and staging labels, see Concepts: Version
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version).

A key alias is always prefixed by C<alias/>, for example
C<alias/aws/secretsmanager>. For more information, see About aliases
(https://docs.aws.amazon.com/kms/latest/developerguide/alias-about.html).

If you set this to an empty string, Secrets Manager uses the Amazon Web
Services managed key C<aws/secretsmanager>. If this key doesn't already
exist in your account, then Secrets Manager creates it for you
automatically. All users and roles in the Amazon Web Services account
automatically have access to use C<aws/secretsmanager>. Creating
C<aws/secretsmanager> can result in a one-time significant delay in
returning the result.

You can only use the Amazon Web Services managed key
C<aws/secretsmanager> if you call this operation using credentials from
the same Amazon Web Services account that owns the secret. If the
secret is in a different account, then you must use a customer managed
key and provide the ARN of that KMS key in this field. The user making
the call must have permissions to both the secret and the KMS key in
their respective accounts.



=head2 SecretBinary => Str

The binary data to encrypt and store in the new version of the secret.
We recommend that you store your binary data in a file and then pass
the contents of the file as a parameter.

Either C<SecretBinary> or C<SecretString> must have a value, but not
both.

You can't access this parameter in the Secrets Manager console.

Sensitive: This field contains sensitive information, so the service
does not include it in CloudTrail log entries. If you create your own
log entries, you must also avoid logging the information in this field.



=head2 B<REQUIRED> SecretId => Str

The ARN or name of the secret.

For an ARN, we recommend that you specify a complete ARN rather than a
partial ARN. See Finding a secret from a partial ARN
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen).



=head2 SecretString => Str

The text data to encrypt and store in the new version of the secret. We
recommend you use a JSON structure of key/value pairs for your secret
value.

Either C<SecretBinary> or C<SecretString> must have a value, but not
both.

Sensitive: This field contains sensitive information, so the service
does not include it in CloudTrail log entries. If you create your own
log entries, you must also avoid logging the information in this field.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSecret in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

