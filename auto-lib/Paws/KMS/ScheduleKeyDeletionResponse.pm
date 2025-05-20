
package Paws::KMS::ScheduleKeyDeletionResponse;
  use Moose;
  has DeletionDate => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');
  has KeyState => (is => 'ro', isa => 'Str');
  has PendingWindowInDays => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ScheduleKeyDeletionResponse

=head1 ATTRIBUTES


=head2 DeletionDate => Str

The date and time after which KMS deletes the KMS key.

If the KMS key is a multi-Region primary key with replica keys, this
field does not appear. The deletion date for the primary key isn't
known until its last replica key is deleted.


=head2 KeyId => Str

The Amazon Resource Name (key ARN
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN))
of the KMS key whose deletion is scheduled.


=head2 KeyState => Str

The current status of the KMS key.

For more information about how key state affects the use of a KMS key,
see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

Valid values are: C<"Creating">, C<"Enabled">, C<"Disabled">, C<"PendingDeletion">, C<"PendingImport">, C<"PendingReplicaDeletion">, C<"Unavailable">, C<"Updating">
=head2 PendingWindowInDays => Int

The waiting period before the KMS key is deleted.

If the KMS key is a multi-Region primary key with replicas, the waiting
period begins when the last of its replica keys is deleted. Otherwise,
the waiting period begins immediately.


=head2 _request_id => Str


=cut

1;