
package Paws::LakeFormation::DescribeTransactionResponse;
  use Moose;
  has TransactionDescription => (is => 'ro', isa => 'Paws::LakeFormation::TransactionDescription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::DescribeTransactionResponse

=head1 ATTRIBUTES


=head2 TransactionDescription => L<Paws::LakeFormation::TransactionDescription>

Returns a C<TransactionDescription> object containing information about
the transaction.


=head2 _request_id => Str


=cut

