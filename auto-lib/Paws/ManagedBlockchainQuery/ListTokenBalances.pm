
package Paws::ManagedBlockchainQuery::ListTokenBalances;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has OwnerFilter => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::OwnerFilter', traits => ['NameInRequest'], request_name => 'ownerFilter');
  has TokenFilter => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::TokenFilter', traits => ['NameInRequest'], request_name => 'tokenFilter', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTokenBalances');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-token-balances');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchainQuery::ListTokenBalancesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchainQuery::ListTokenBalances - Arguments for method ListTokenBalances on L<Paws::ManagedBlockchainQuery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTokenBalances on the
L<Amazon Managed Blockchain Query|Paws::ManagedBlockchainQuery> service. Use the attributes of this class
as arguments to method ListTokenBalances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTokenBalances.

=head1 SYNOPSIS

    my $managedblockchain-query = Paws->service('ManagedBlockchainQuery');
    my $ListTokenBalancesOutput = $managedblockchain -query->ListTokenBalances(
      TokenFilter => {
        Network => 'ETHEREUM_MAINNET'
        , # values: ETHEREUM_MAINNET, ETHEREUM_SEPOLIA_TESTNET, BITCOIN_MAINNET, BITCOIN_TESTNET
        ContractAddress => 'MyChainAddress',    # OPTIONAL
        TokenId         => 'MyQueryTokenId',    # OPTIONAL
      },
      MaxResults  => 1,                         # OPTIONAL
      NextToken   => 'MyNextToken',             # OPTIONAL
      OwnerFilter => {
        Address => 'MyChainAddress',            # OPTIONAL

      },    # OPTIONAL
    );

    # Results:
    my $NextToken     = $ListTokenBalancesOutput->NextToken;
    my $TokenBalances = $ListTokenBalancesOutput->TokenBalances;

    # Returns a L<Paws::ManagedBlockchainQuery::ListTokenBalancesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query/ListTokenBalances>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of token balances to return.

Default: C<100>

Even if additional results can be retrieved, the request can return
less results than C<maxResults> or an empty array of results.

To retrieve the next set of results, make another request with the
returned C<nextToken> value. The value of C<nextToken> is C<null> when
there are no more results to return



=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.



=head2 OwnerFilter => L<Paws::ManagedBlockchainQuery::OwnerFilter>

The contract or wallet address on the blockchain network by which to
filter the request. You must specify the C<address> property of the
C<ownerFilter> when listing balances of tokens owned by the address.



=head2 B<REQUIRED> TokenFilter => L<Paws::ManagedBlockchainQuery::TokenFilter>

The contract address or a token identifier on the blockchain network by
which to filter the request. You must specify the C<contractAddress>
property of this container when listing tokens minted by a contract.

You must always specify the network property of this container when
using this operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTokenBalances in L<Paws::ManagedBlockchainQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

