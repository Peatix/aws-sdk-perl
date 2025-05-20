
package Paws::SecretsManager::GetSecretValue;
  use Moose;
  has SecretId => (is => 'ro', isa => 'Str', required => 1);
  has VersionId => (is => 'ro', isa => 'Str');
  has VersionStage => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSecretValue');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::GetSecretValueResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::GetSecretValue - Arguments for method GetSecretValue on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSecretValue on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method GetSecretValue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSecretValue.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
    # To retrieve the encrypted secret value of a secret
    # The following example shows how to retrieve a secret string value.
    my $GetSecretValueResponse =
      $secretsmanager->GetSecretValue( 'SecretId' => 'MyTestDatabaseSecret' );

    # Results:
    my $ARN           = $GetSecretValueResponse->ARN;
    my $CreatedDate   = $GetSecretValueResponse->CreatedDate;
    my $Name          = $GetSecretValueResponse->Name;
    my $SecretString  = $GetSecretValueResponse->SecretString;
    my $VersionId     = $GetSecretValueResponse->VersionId;
    my $VersionStages = $GetSecretValueResponse->VersionStages;

    # Returns a L<Paws::SecretsManager::GetSecretValueResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/GetSecretValue>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecretId => Str

The ARN or name of the secret to retrieve. To retrieve a secret from
another account, you must use an ARN.

For an ARN, we recommend that you specify a complete ARN rather than a
partial ARN. See Finding a secret from a partial ARN
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen).



=head2 VersionId => Str

The unique identifier of the version of the secret to retrieve. If you
include both this parameter and C<VersionStage>, the two parameters
must refer to the same secret version. If you don't specify either a
C<VersionStage> or C<VersionId>, then Secrets Manager returns the
C<AWSCURRENT> version.

This value is typically a UUID-type
(https://wikipedia.org/wiki/Universally_unique_identifier) value with
32 hexadecimal digits.



=head2 VersionStage => Str

The staging label of the version of the secret to retrieve.

Secrets Manager uses staging labels to keep track of different versions
during the rotation process. If you include both this parameter and
C<VersionId>, the two parameters must refer to the same secret version.
If you don't specify either a C<VersionStage> or C<VersionId>, Secrets
Manager returns the C<AWSCURRENT> version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSecretValue in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

