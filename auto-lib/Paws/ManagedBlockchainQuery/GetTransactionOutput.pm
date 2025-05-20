
package Paws::ManagedBlockchainQuery::GetTransactionOutput;
  use Moose;
  has Transaction => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::Transaction', traits => ['NameInRequest'], request_name => 'transaction', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchainQuery::GetTransactionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Transaction => L<Paws::ManagedBlockchainQuery::Transaction>

Contains the details of the transaction.


=head2 _request_id => Str


=cut

