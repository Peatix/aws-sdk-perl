
package Paws::SecretsManager::DeleteSecret;
  use Moose;
  has ForceDeleteWithoutRecovery => (is => 'ro', isa => 'Bool');
  has RecoveryWindowInDays => (is => 'ro', isa => 'Int');
  has SecretId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSecret');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::DeleteSecretResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::DeleteSecret - Arguments for method DeleteSecret on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSecret on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method DeleteSecret.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSecret.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
# To delete a secret
# The following example shows how to delete a secret. The secret stays in your
# account in a deprecated and inaccessible state until the recovery window ends.
# After the date and time in the DeletionDate response field has passed, you can
# no longer recover this secret with restore-secret.
    my $DeleteSecretResponse = $secretsmanager->DeleteSecret(
      'RecoveryWindowInDays' => 7,
      'SecretId'             => 'MyTestDatabaseSecret1'
    );

    # Results:
    my $ARN          = $DeleteSecretResponse->ARN;
    my $DeletionDate = $DeleteSecretResponse->DeletionDate;
    my $Name         = $DeleteSecretResponse->Name;

    # Returns a L<Paws::SecretsManager::DeleteSecretResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/DeleteSecret>

=head1 ATTRIBUTES


=head2 ForceDeleteWithoutRecovery => Bool

Specifies whether to delete the secret without any recovery window. You
can't use both this parameter and C<RecoveryWindowInDays> in the same
call. If you don't use either, then by default Secrets Manager uses a
30 day recovery window.

Secrets Manager performs the actual deletion with an asynchronous
background process, so there might be a short delay before the secret
is permanently deleted. If you delete a secret and then immediately
create a secret with the same name, use appropriate back off and retry
logic.

If you forcibly delete an already deleted or nonexistent secret, the
operation does not return C<ResourceNotFoundException>.

Use this parameter with caution. This parameter causes the operation to
skip the normal recovery window before the permanent deletion that
Secrets Manager would normally impose with the C<RecoveryWindowInDays>
parameter. If you delete a secret with the
C<ForceDeleteWithoutRecovery> parameter, then you have no opportunity
to recover the secret. You lose the secret permanently.



=head2 RecoveryWindowInDays => Int

The number of days from 7 to 30 that Secrets Manager waits before
permanently deleting the secret. You can't use both this parameter and
C<ForceDeleteWithoutRecovery> in the same call. If you don't use
either, then by default Secrets Manager uses a 30 day recovery window.



=head2 B<REQUIRED> SecretId => Str

The ARN or name of the secret to delete.

For an ARN, we recommend that you specify a complete ARN rather than a
partial ARN. See Finding a secret from a partial ARN
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSecret in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

