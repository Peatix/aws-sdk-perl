
package Paws::SecretsManager::CreateSecret;
  use Moose;
  has AddReplicaRegions => (is => 'ro', isa => 'ArrayRef[Paws::SecretsManager::ReplicaRegionType]');
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ForceOverwriteReplicaSecret => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SecretBinary => (is => 'ro', isa => 'Str');
  has SecretString => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SecretsManager::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSecret');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::CreateSecretResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::CreateSecret - Arguments for method CreateSecret on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSecret on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method CreateSecret.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSecret.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
 # To create a basic secret
 # The following example shows how to create a secret. The credentials stored in
 # the encrypted secret value are retrieved from a file on disk named
 # mycreds.json.
    my $CreateSecretResponse = $secretsmanager->CreateSecret(
      'ClientRequestToken' => 'EXAMPLE1-90ab-cdef-fedc-ba987SECRET1',
      'Description'        => 'My test database secret created with the CLI',
      'Name'               => 'MyTestDatabaseSecret',
      'SecretString' => '{"username":"david","password":"EXAMPLE-PASSWORD"}'
    );

    # Results:
    my $ARN       = $CreateSecretResponse->ARN;
    my $Name      = $CreateSecretResponse->Name;
    my $VersionId = $CreateSecretResponse->VersionId;

    # Returns a L<Paws::SecretsManager::CreateSecretResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/CreateSecret>

=head1 ATTRIBUTES


=head2 AddReplicaRegions => ArrayRef[L<Paws::SecretsManager::ReplicaRegionType>]

A list of Regions and KMS keys to replicate secrets.



=head2 ClientRequestToken => Str

If you include C<SecretString> or C<SecretBinary>, then Secrets Manager
creates an initial version for the secret, and this parameter specifies
the unique identifier for the new version.

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

If a version with this value already exists and the version
C<SecretString> and C<SecretBinary> values are the same as those in the
request, then the request is ignored.

=item *

If a version with this value already exists and that version's
C<SecretString> and C<SecretBinary> values are different from those in
the request, then the request fails because you cannot modify an
existing version. Instead, use PutSecretValue to create a new version.

=back

This value becomes the C<VersionId> of the new version.



=head2 Description => Str

The description of the secret.



=head2 ForceOverwriteReplicaSecret => Bool

Specifies whether to overwrite a secret with the same name in the
destination Region. By default, secrets aren't overwritten.



=head2 KmsKeyId => Str

The ARN, key ID, or alias of the KMS key that Secrets Manager uses to
encrypt the secret value in the secret. An alias is always prefixed by
C<alias/>, for example C<alias/aws/secretsmanager>. For more
information, see About aliases
(https://docs.aws.amazon.com/kms/latest/developerguide/alias-about.html).

To use a KMS key in a different account, use the key ARN or the alias
ARN.

If you don't specify this value, then Secrets Manager uses the key
C<aws/secretsmanager>. If that key doesn't yet exist, then Secrets
Manager creates it for you automatically the first time it encrypts the
secret value.

If the secret is in a different Amazon Web Services account from the
credentials calling the API, then you can't use C<aws/secretsmanager>
to encrypt the secret, and you must create and use a customer managed
KMS key.



=head2 B<REQUIRED> Name => Str

The name of the new secret.

The secret name can contain ASCII letters, numbers, and the following
characters: /_+=.@-

Do not end your secret name with a hyphen followed by six characters.
If you do so, you risk confusion and unexpected results when searching
for a secret by partial ARN. Secrets Manager automatically adds a
hyphen and six random characters after the secret name at the end of
the ARN.



=head2 SecretBinary => Str

The binary data to encrypt and store in the new version of the secret.
We recommend that you store your binary data in a file and then pass
the contents of the file as a parameter.

Either C<SecretString> or C<SecretBinary> must have a value, but not
both.

This parameter is not available in the Secrets Manager console.

Sensitive: This field contains sensitive information, so the service
does not include it in CloudTrail log entries. If you create your own
log entries, you must also avoid logging the information in this field.



=head2 SecretString => Str

The text data to encrypt and store in this new version of the secret.
We recommend you use a JSON structure of key/value pairs for your
secret value.

Either C<SecretString> or C<SecretBinary> must have a value, but not
both.

If you create a secret by using the Secrets Manager console then
Secrets Manager puts the protected secret text in only the
C<SecretString> parameter. The Secrets Manager console stores the
information as a JSON structure of key/value pairs that a Lambda
rotation function can parse.

Sensitive: This field contains sensitive information, so the service
does not include it in CloudTrail log entries. If you create your own
log entries, you must also avoid logging the information in this field.



=head2 Tags => ArrayRef[L<Paws::SecretsManager::Tag>]

A list of tags to attach to the secret. Each tag is a key and value
pair of strings in a JSON text string, for example:

C<[{"Key":"CostCenter","Value":"12345"},{"Key":"environment","Value":"production"}]>

Secrets Manager tag key names are case sensitive. A tag with the key
"ABC" is a different tag from one with key "abc".

If you check tags in permissions policies as part of your security
strategy, then adding or removing a tag can change permissions. If the
completion of this operation would result in you losing your
permissions for this secret, then Secrets Manager blocks the operation
and returns an C<Access Denied> error. For more information, see
Control access to secrets using tags
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#tag-secrets-abac)
and Limit access to identities with tags that match secrets' tags
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#auth-and-access_tags2).

For information about how to format a JSON parameter for the various
command line tool environments, see Using JSON for Parameters
(https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json).
If your command-line tool or SDK requires quotation marks around the
parameter, you should use single quotes to avoid confusion with the
double quotes required in the JSON text.

For tag quotas and naming restrictions, see Service quotas for Tagging
(https://docs.aws.amazon.com/general/latest/gr/arg.html#taged-reference-quotas)
in the I<Amazon Web Services General Reference guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSecret in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

