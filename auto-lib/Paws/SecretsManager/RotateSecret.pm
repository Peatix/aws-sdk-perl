
package Paws::SecretsManager::RotateSecret;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has RotateImmediately => (is => 'ro', isa => 'Bool');
  has RotationLambdaARN => (is => 'ro', isa => 'Str');
  has RotationRules => (is => 'ro', isa => 'Paws::SecretsManager::RotationRulesType');
  has SecretId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RotateSecret');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::RotateSecretResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::RotateSecret - Arguments for method RotateSecret on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RotateSecret on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method RotateSecret.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RotateSecret.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
# To configure rotation for a secret
# The following example configures rotation for a secret using a cron
# expression. The first rotation happens immediately after the changes are
# stored in the secret. The rotation schedule is the first and 15th day of every
# month. The rotation window begins at 4:00 PM UTC and ends at 6:00 PM.
    my $RotateSecretResponse = $secretsmanager->RotateSecret(
      'RotationLambdaARN' =>
'arn:aws:lambda:us-west-2:123456789012:function:MyTestDatabaseRotationLambda',
      'RotationRules' => {
        'Duration'           => '2h',
        'ScheduleExpression' => 'cron(0 16 1,15 * ? *)'
      },
      'SecretId' => 'MyTestDatabaseSecret'
    );

    # Results:
    my $ARN       = $RotateSecretResponse->ARN;
    my $Name      = $RotateSecretResponse->Name;
    my $VersionId = $RotateSecretResponse->VersionId;

 # Returns a L<Paws::SecretsManager::RotateSecretResponse> object.
 # To request an immediate rotation for a secret
 # The following example requests an immediate invocation of the secret's Lambda
 # rotation function. It assumes that the specified secret already has rotation
 # configured. The rotation function runs asynchronously in the background.
    my $RotateSecretResponse =
      $secretsmanager->RotateSecret( 'SecretId' => 'MyTestDatabaseSecret' );

    # Results:
    my $ARN       = $RotateSecretResponse->ARN;
    my $Name      = $RotateSecretResponse->Name;
    my $VersionId = $RotateSecretResponse->VersionId;

    # Returns a L<Paws::SecretsManager::RotateSecretResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/RotateSecret>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique identifier for the new version of the secret. You only need to
specify this value if you implement your own retry logic and you want
to ensure that Secrets Manager doesn't attempt to create a secret
version twice.

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



=head2 RotateImmediately => Bool

Specifies whether to rotate the secret immediately or wait until the
next scheduled rotation window. The rotation schedule is defined in
RotateSecretRequest$RotationRules.

For secrets that use a Lambda rotation function to rotate, if you don't
immediately rotate the secret, Secrets Manager tests the rotation
configuration by running the C<testSecret> step
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_lambda-functions.html#rotate-secrets_lambda-functions-code)
of the Lambda rotation function. The test creates an C<AWSPENDING>
version of the secret and then removes it.

By default, Secrets Manager rotates the secret immediately.



=head2 RotationLambdaARN => Str

For secrets that use a Lambda rotation function to rotate, the ARN of
the Lambda rotation function.

For secrets that use I<managed rotation>, omit this field. For more
information, see Managed rotation
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_managed.html)
in the I<Secrets Manager User Guide>.



=head2 RotationRules => L<Paws::SecretsManager::RotationRulesType>

A structure that defines the rotation configuration for this secret.



=head2 B<REQUIRED> SecretId => Str

The ARN or name of the secret to rotate.

For an ARN, we recommend that you specify a complete ARN rather than a
partial ARN. See Finding a secret from a partial ARN
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RotateSecret in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

