
package Paws::ManagedBlockchainQuery::ListTransactions;
  use Moose;
  has Address => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'address', required => 1);
  has ConfirmationStatusFilter => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::ConfirmationStatusFilter', traits => ['NameInRequest'], request_name => 'confirmationStatusFilter');
  has FromBlockchainInstant => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::BlockchainInstant', traits => ['NameInRequest'], request_name => 'fromBlockchainInstant');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has Network => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'network', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Sort => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::ListTransactionsSort', traits => ['NameInRequest'], request_name => 'sort');
  has ToBlockchainInstant => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::BlockchainInstant', traits => ['NameInRequest'], request_name => 'toBlockchainInstant');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTransactions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-transactions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchainQuery::ListTransactionsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchainQuery::ListTransactions - Arguments for method ListTransactions on L<Paws::ManagedBlockchainQuery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTransactions on the
L<Amazon Managed Blockchain Query|Paws::ManagedBlockchainQuery> service. Use the attributes of this class
as arguments to method ListTransactions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTransactions.

=head1 SYNOPSIS

    my $managedblockchain-query = Paws->service('ManagedBlockchainQuery');
    my $ListTransactionsOutput = $managedblockchain -query->ListTransactions(
      Address                  => 'MyChainAddress',
      Network                  => 'ETHEREUM_MAINNET',
      ConfirmationStatusFilter => {
        Include => [
          'FINAL', ...    # values: FINAL, NONFINAL
        ],    # min: 1

      },    # OPTIONAL
      FromBlockchainInstant => {
        Time => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      Sort       => {
        SortBy =>
          'TRANSACTION_TIMESTAMP',    # values: TRANSACTION_TIMESTAMP; OPTIONAL
        SortOrder => 'ASCENDING',     # values: ASCENDING, DESCENDING; OPTIONAL
      },    # OPTIONAL
      ToBlockchainInstant => {
        Time => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListTransactionsOutput->NextToken;
    my $Transactions = $ListTransactionsOutput->Transactions;

    # Returns a L<Paws::ManagedBlockchainQuery::ListTransactionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query/ListTransactions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Address => Str

The address (either a contract or wallet), whose transactions are being
requested.



=head2 ConfirmationStatusFilter => L<Paws::ManagedBlockchainQuery::ConfirmationStatusFilter>

This filter is used to include transactions in the response that
haven't reached I<finality>
(https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality).
Transactions that have reached finality are always part of the
response.



=head2 FromBlockchainInstant => L<Paws::ManagedBlockchainQuery::BlockchainInstant>





=head2 MaxResults => Int

The maximum number of transactions to list.

Default: C<100>

Even if additional results can be retrieved, the request can return
less results than C<maxResults> or an empty array of results.

To retrieve the next set of results, make another request with the
returned C<nextToken> value. The value of C<nextToken> is C<null> when
there are no more results to return



=head2 B<REQUIRED> Network => Str

The blockchain network where the transactions occurred.

Valid values are: C<"ETHEREUM_MAINNET">, C<"ETHEREUM_SEPOLIA_TESTNET">, C<"BITCOIN_MAINNET">, C<"BITCOIN_TESTNET">

=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.



=head2 Sort => L<Paws::ManagedBlockchainQuery::ListTransactionsSort>

The order by which the results will be sorted.



=head2 ToBlockchainInstant => L<Paws::ManagedBlockchainQuery::BlockchainInstant>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTransactions in L<Paws::ManagedBlockchainQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

