
package Paws::QLDB::CreateLedgerResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationDateTime => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has KmsKeyArn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has PermissionsMode => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::CreateLedgerResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) for the ledger.


=head2 CreationDateTime => Str

The date and time, in epoch time format, when the ledger was created.
(Epoch time format is the number of seconds elapsed since 12:00:00 AM
January 1, 1970 UTC.)


=head2 DeletionProtection => Bool

Specifies whether the ledger is protected from being deleted by any
user. If not defined during ledger creation, this feature is enabled
(C<true>) by default.

If deletion protection is enabled, you must first disable it before you
can delete the ledger. You can disable it by calling the
C<UpdateLedger> operation to set this parameter to C<false>.


=head2 KmsKeyArn => Str

The ARN of the customer managed KMS key that the ledger uses for
encryption at rest. If this parameter is undefined, the ledger uses an
Amazon Web Services owned KMS key for encryption.


=head2 Name => Str

The name of the ledger.


=head2 PermissionsMode => Str

The permissions mode of the ledger that you created.

Valid values are: C<"ALLOW_ALL">, C<"STANDARD">
=head2 State => Str

The current status of the ledger.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"DELETED">
=head2 _request_id => Str


=cut

