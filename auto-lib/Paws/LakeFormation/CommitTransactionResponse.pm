
package Paws::LakeFormation::CommitTransactionResponse;
  use Moose;
  has TransactionStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::CommitTransactionResponse

=head1 ATTRIBUTES


=head2 TransactionStatus => Str

The status of the transaction.

Valid values are: C<"ACTIVE">, C<"COMMITTED">, C<"ABORTED">, C<"COMMIT_IN_PROGRESS">
=head2 _request_id => Str


=cut

