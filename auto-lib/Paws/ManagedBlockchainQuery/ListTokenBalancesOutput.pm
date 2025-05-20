
package Paws::ManagedBlockchainQuery::ListTokenBalancesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TokenBalances => (is => 'ro', isa => 'ArrayRef[Paws::ManagedBlockchainQuery::TokenBalance]', traits => ['NameInRequest'], request_name => 'tokenBalances', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchainQuery::ListTokenBalancesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 B<REQUIRED> TokenBalances => ArrayRef[L<Paws::ManagedBlockchainQuery::TokenBalance>]

An array of C<TokenBalance> objects. Each object contains details about
the token balance.


=head2 _request_id => Str


=cut

