
package Paws::ManagedBlockchainQuery::ListTransactionEvents;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has Network => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'network', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TransactionHash => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'transactionHash');
  has TransactionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'transactionId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTransactionEvents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-transaction-events');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchainQuery::ListTransactionEventsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchainQuery::ListTransactionEvents - Arguments for method ListTransactionEvents on L<Paws::ManagedBlockchainQuery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTransactionEvents on the
L<Amazon Managed Blockchain Query|Paws::ManagedBlockchainQuery> service. Use the attributes of this class
as arguments to method ListTransactionEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTransactionEvents.

=head1 SYNOPSIS

    my $managedblockchain-query = Paws->service('ManagedBlockchainQuery');
    my $ListTransactionEventsOutput =
      $managedblockchain -query->ListTransactionEvents(
      Network         => 'ETHEREUM_MAINNET',
      MaxResults      => 1,                           # OPTIONAL
      NextToken       => 'MyNextToken',               # OPTIONAL
      TransactionHash => 'MyQueryTransactionHash',    # OPTIONAL
      TransactionId   => 'MyQueryTransactionId',      # OPTIONAL
      );

    # Results:
    my $Events    = $ListTransactionEventsOutput->Events;
    my $NextToken = $ListTransactionEventsOutput->NextToken;

# Returns a L<Paws::ManagedBlockchainQuery::ListTransactionEventsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query/ListTransactionEvents>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of transaction events to list.

Default: C<100>

Even if additional results can be retrieved, the request can return
less results than C<maxResults> or an empty array of results.

To retrieve the next set of results, make another request with the
returned C<nextToken> value. The value of C<nextToken> is C<null> when
there are no more results to return



=head2 B<REQUIRED> Network => Str

The blockchain network where the transaction events occurred.

Valid values are: C<"ETHEREUM_MAINNET">, C<"ETHEREUM_SEPOLIA_TESTNET">, C<"BITCOIN_MAINNET">, C<"BITCOIN_TESTNET">

=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.



=head2 TransactionHash => Str

The hash of a transaction. It is generated when a transaction is
created.



=head2 TransactionId => Str

The identifier of a Bitcoin transaction. It is generated when a
transaction is created.

C<transactionId> is only supported on the Bitcoin networks.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTransactionEvents in L<Paws::ManagedBlockchainQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

