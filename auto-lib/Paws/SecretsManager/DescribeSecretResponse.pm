
package Paws::SecretsManager::DescribeSecretResponse;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has DeletedDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LastAccessedDate => (is => 'ro', isa => 'Str');
  has LastChangedDate => (is => 'ro', isa => 'Str');
  has LastRotatedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has NextRotationDate => (is => 'ro', isa => 'Str');
  has OwningService => (is => 'ro', isa => 'Str');
  has PrimaryRegion => (is => 'ro', isa => 'Str');
  has ReplicationStatus => (is => 'ro', isa => 'ArrayRef[Paws::SecretsManager::ReplicationStatusType]');
  has RotationEnabled => (is => 'ro', isa => 'Bool');
  has RotationLambdaARN => (is => 'ro', isa => 'Str');
  has RotationRules => (is => 'ro', isa => 'Paws::SecretsManager::RotationRulesType');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SecretsManager::Tag]');
  has VersionIdsToStages => (is => 'ro', isa => 'Paws::SecretsManager::SecretVersionsToStagesMapType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::DescribeSecretResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The ARN of the secret.


=head2 CreatedDate => Str

The date the secret was created.


=head2 DeletedDate => Str

The date the secret is scheduled for deletion. If it is not scheduled
for deletion, this field is omitted. When you delete a secret, Secrets
Manager requires a recovery window of at least 7 days before deleting
the secret. Some time after the deleted date, Secrets Manager deletes
the secret, including all of its versions.

If a secret is scheduled for deletion, then its details, including the
encrypted secret value, is not accessible. To cancel a scheduled
deletion and restore access to the secret, use RestoreSecret.


=head2 Description => Str

The description of the secret.


=head2 KmsKeyId => Str

The key ID or alias ARN of the KMS key that Secrets Manager uses to
encrypt the secret value. If the secret is encrypted with the Amazon
Web Services managed key C<aws/secretsmanager>, this field is omitted.
Secrets created using the console use an KMS key ID.


=head2 LastAccessedDate => Str

The date that the secret was last accessed in the Region. This field is
omitted if the secret has never been retrieved in the Region.


=head2 LastChangedDate => Str

The last date and time that this secret was modified in any way.


=head2 LastRotatedDate => Str

The last date and time that Secrets Manager rotated the secret. If the
secret isn't configured for rotation or rotation has been disabled,
Secrets Manager returns null.


=head2 Name => Str

The name of the secret.


=head2 NextRotationDate => Str

The next rotation is scheduled to occur on or before this date. If the
secret isn't configured for rotation or rotation has been disabled,
Secrets Manager returns null. If rotation fails, Secrets Manager
retries the entire rotation process multiple times. If rotation is
unsuccessful, this date may be in the past.

This date represents the latest date that rotation will occur, but it
is not an approximate rotation date. In some cases, for example if you
turn off automatic rotation and then turn it back on, the next rotation
may occur much sooner than this date.


=head2 OwningService => Str

The ID of the service that created this secret. For more information,
see Secrets managed by other Amazon Web Services services
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/service-linked-secrets.html).


=head2 PrimaryRegion => Str

The Region the secret is in. If a secret is replicated to other
Regions, the replicas are listed in C<ReplicationStatus>.


=head2 ReplicationStatus => ArrayRef[L<Paws::SecretsManager::ReplicationStatusType>]

A list of the replicas of this secret and their status:

=over

=item *

C<Failed>, which indicates that the replica was not created.

=item *

C<InProgress>, which indicates that Secrets Manager is in the process
of creating the replica.

=item *

C<InSync>, which indicates that the replica was created.

=back



=head2 RotationEnabled => Bool

Specifies whether automatic rotation is turned on for this secret. If
the secret has never been configured for rotation, Secrets Manager
returns null.

To turn on rotation, use RotateSecret. To turn off rotation, use
CancelRotateSecret.


=head2 RotationLambdaARN => Str

The ARN of the Lambda function that Secrets Manager invokes to rotate
the secret.


=head2 RotationRules => L<Paws::SecretsManager::RotationRulesType>

The rotation schedule and Lambda function for this secret. If the
secret previously had rotation turned on, but it is now turned off,
this field shows the previous rotation schedule and rotation function.
If the secret never had rotation turned on, this field is omitted.


=head2 Tags => ArrayRef[L<Paws::SecretsManager::Tag>]

The list of tags attached to the secret. To add tags to a secret, use
TagResource. To remove tags, use UntagResource.


=head2 VersionIdsToStages => L<Paws::SecretsManager::SecretVersionsToStagesMapType>

A list of the versions of the secret that have staging labels attached.
Versions that don't have staging labels are considered deprecated and
Secrets Manager can delete them.

Secrets Manager uses staging labels to indicate the status of a secret
version during rotation. The three staging labels for rotation are:

=over

=item *

C<AWSCURRENT>, which indicates the current version of the secret.

=item *

C<AWSPENDING>, which indicates the version of the secret that contains
new secret information that will become the next current version when
rotation finishes.

During rotation, Secrets Manager creates an C<AWSPENDING> version ID
before creating the new secret version. To check if a secret version
exists, call GetSecretValue.

=item *

C<AWSPREVIOUS>, which indicates the previous current version of the
secret. You can use this as the I<last known good> version.

=back

For more information about rotation and staging labels, see How
rotation works
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html).


=head2 _request_id => Str


=cut

1;