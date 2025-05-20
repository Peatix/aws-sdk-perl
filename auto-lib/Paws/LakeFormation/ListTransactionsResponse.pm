
package Paws::LakeFormation::ListTransactionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Transactions => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::TransactionDescription]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::ListTransactionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token indicating whether additional data is available.


=head2 Transactions => ArrayRef[L<Paws::LakeFormation::TransactionDescription>]

A list of transactions. The record for each transaction is a
C<TransactionDescription> object.


=head2 _request_id => Str


=cut

