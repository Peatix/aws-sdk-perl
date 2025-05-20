
package Paws::SecretsManager::UpdateSecretVersionStage;
  use Moose;
  has MoveToVersionId => (is => 'ro', isa => 'Str');
  has RemoveFromVersionId => (is => 'ro', isa => 'Str');
  has SecretId => (is => 'ro', isa => 'Str', required => 1);
  has VersionStage => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSecretVersionStage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::UpdateSecretVersionStageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::UpdateSecretVersionStage - Arguments for method UpdateSecretVersionStage on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSecretVersionStage on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method UpdateSecretVersionStage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSecretVersionStage.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
  # To add a staging label attached to a version of a secret
  # The following example shows you how to add a staging label to a version of a
  # secret. You can review the results by running the operation
  # ListSecretVersionIds and viewing the VersionStages response field for the
  # affected version.
    my $UpdateSecretVersionStageResponse =
      $secretsmanager->UpdateSecretVersionStage(
      'MoveToVersionId' => 'EXAMPLE1-90ab-cdef-fedc-ba987SECRET1',
      'SecretId'        => 'MyTestDatabaseSecret',
      'VersionStage'    => 'STAGINGLABEL1'
      );

    # Results:
    my $ARN  = $UpdateSecretVersionStageResponse->ARN;
    my $Name = $UpdateSecretVersionStageResponse->Name;

# Returns a L<Paws::SecretsManager::UpdateSecretVersionStageResponse> object.
# To delete a staging label attached to a version of a secret
# The following example shows you how to delete a staging label that is attached
# to a version of a secret. You can review the results by running the operation
# ListSecretVersionIds and viewing the VersionStages response field for the
# affected version.
    my $UpdateSecretVersionStageResponse =
      $secretsmanager->UpdateSecretVersionStage(
      'RemoveFromVersionId' => 'EXAMPLE1-90ab-cdef-fedc-ba987SECRET1',
      'SecretId'            => 'MyTestDatabaseSecret',
      'VersionStage'        => 'STAGINGLABEL1'
      );

    # Results:
    my $ARN  = $UpdateSecretVersionStageResponse->ARN;
    my $Name = $UpdateSecretVersionStageResponse->Name;

 # Returns a L<Paws::SecretsManager::UpdateSecretVersionStageResponse> object.
 # To move a staging label from one version of a secret to another
 # The following example shows you how to move a staging label that is attached
 # to one version of a secret to a different version. You can review the results
 # by running the operation ListSecretVersionIds and viewing the VersionStages
 # response field for the affected version.
    my $UpdateSecretVersionStageResponse =
      $secretsmanager->UpdateSecretVersionStage(
      'MoveToVersionId'     => 'EXAMPLE2-90ab-cdef-fedc-ba987SECRET2',
      'RemoveFromVersionId' => 'EXAMPLE1-90ab-cdef-fedc-ba987SECRET1',
      'SecretId'            => 'MyTestDatabaseSecret',
      'VersionStage'        => 'AWSCURRENT'
      );

    # Results:
    my $ARN  = $UpdateSecretVersionStageResponse->ARN;
    my $Name = $UpdateSecretVersionStageResponse->Name;

   # Returns a L<Paws::SecretsManager::UpdateSecretVersionStageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/UpdateSecretVersionStage>

=head1 ATTRIBUTES


=head2 MoveToVersionId => Str

The ID of the version to add the staging label to. To remove a label
from a version, then do not specify this parameter.

If the staging label is already attached to a different version of the
secret, then you must also specify the C<RemoveFromVersionId>
parameter.



=head2 RemoveFromVersionId => Str

The ID of the version that the staging label is to be removed from. If
the staging label you are trying to attach to one version is already
attached to a different version, then you must include this parameter
and specify the version that the label is to be removed from. If the
label is attached and you either do not specify this parameter, or the
version ID does not match, then the operation fails.



=head2 B<REQUIRED> SecretId => Str

The ARN or the name of the secret with the version and staging labelsto
modify.

For an ARN, we recommend that you specify a complete ARN rather than a
partial ARN. See Finding a secret from a partial ARN
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen).



=head2 B<REQUIRED> VersionStage => Str

The staging label to add to this version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSecretVersionStage in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

