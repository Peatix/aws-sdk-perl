
package Paws::ManagedBlockchainQuery::ListTransactionsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Transactions => (is => 'ro', isa => 'ArrayRef[Paws::ManagedBlockchainQuery::TransactionOutputItem]', traits => ['NameInRequest'], request_name => 'transactions', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchainQuery::ListTransactionsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 B<REQUIRED> Transactions => ArrayRef[L<Paws::ManagedBlockchainQuery::TransactionOutputItem>]

The array of transactions returned by the request.


=head2 _request_id => Str


=cut

