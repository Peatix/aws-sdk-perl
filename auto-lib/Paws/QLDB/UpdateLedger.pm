
package Paws::QLDB::UpdateLedger;
  use Moose;
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has KmsKey => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLedger');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ledgers/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QLDB::UpdateLedgerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::UpdateLedger - Arguments for method UpdateLedger on L<Paws::QLDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLedger on the
L<Amazon QLDB|Paws::QLDB> service. Use the attributes of this class
as arguments to method UpdateLedger.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLedger.

=head1 SYNOPSIS

    my $qldb = Paws->service('QLDB');
    my $UpdateLedgerResponse = $qldb->UpdateLedger(
      Name               => 'MyLedgerName',
      DeletionProtection => 1,                # OPTIONAL
      KmsKey             => 'MyKmsKey',       # OPTIONAL
    );

    # Results:
    my $Arn                   = $UpdateLedgerResponse->Arn;
    my $CreationDateTime      = $UpdateLedgerResponse->CreationDateTime;
    my $DeletionProtection    = $UpdateLedgerResponse->DeletionProtection;
    my $EncryptionDescription = $UpdateLedgerResponse->EncryptionDescription;
    my $Name                  = $UpdateLedgerResponse->Name;
    my $State                 = $UpdateLedgerResponse->State;

    # Returns a L<Paws::QLDB::UpdateLedgerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qldb/UpdateLedger>

=head1 ATTRIBUTES


=head2 DeletionProtection => Bool

Specifies whether the ledger is protected from being deleted by any
user. If not defined during ledger creation, this feature is enabled
(C<true>) by default.

If deletion protection is enabled, you must first disable it before you
can delete the ledger. You can disable it by calling the
C<UpdateLedger> operation to set this parameter to C<false>.



=head2 KmsKey => Str

The key in Key Management Service (KMS) to use for encryption of data
at rest in the ledger. For more information, see Encryption at rest
(https://docs.aws.amazon.com/qldb/latest/developerguide/encryption-at-rest.html)
in the I<Amazon QLDB Developer Guide>.

Use one of the following options to specify this parameter:

=over

=item *

C<AWS_OWNED_KMS_KEY>: Use an KMS key that is owned and managed by
Amazon Web Services on your behalf.

=item *

B<Undefined>: Make no changes to the KMS key of the ledger.

=item *

B<A valid symmetric customer managed KMS key>: Use the specified
symmetric encryption KMS key in your account that you create, own, and
manage.

Amazon QLDB does not support asymmetric keys. For more information, see
Using symmetric and asymmetric keys
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
in the I<Key Management Service Developer Guide>.

=back

To specify a customer managed KMS key, you can use its key ID, Amazon
Resource Name (ARN), alias name, or alias ARN. When using an alias
name, prefix it with C<"alias/">. To specify a key in a different
Amazon Web Services account, you must use the key ARN or alias ARN.

For example:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Alias name: C<alias/ExampleAlias>

=item *

Alias ARN: C<arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias>

=back

For more information, see Key identifiers (KeyId)
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id)
in the I<Key Management Service Developer Guide>.



=head2 B<REQUIRED> Name => Str

The name of the ledger.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLedger in L<Paws::QLDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

