
package Paws::ManagedBlockchainQuery::BatchGetTokenBalanceOutput;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::ManagedBlockchainQuery::BatchGetTokenBalanceErrorItem]', traits => ['NameInRequest'], request_name => 'errors', required => 1);
  has TokenBalances => (is => 'ro', isa => 'ArrayRef[Paws::ManagedBlockchainQuery::BatchGetTokenBalanceOutputItem]', traits => ['NameInRequest'], request_name => 'tokenBalances', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchainQuery::BatchGetTokenBalanceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::ManagedBlockchainQuery::BatchGetTokenBalanceErrorItem>]

An array of C<BatchGetTokenBalanceErrorItem> objects returned from the
request.


=head2 B<REQUIRED> TokenBalances => ArrayRef[L<Paws::ManagedBlockchainQuery::BatchGetTokenBalanceOutputItem>]

An array of C<BatchGetTokenBalanceOutputItem> objects returned by the
response.


=head2 _request_id => Str


=cut

