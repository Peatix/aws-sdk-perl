
package Paws::ManagedBlockchainQuery::GetTransaction;
  use Moose;
  has Network => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'network', required => 1);
  has TransactionHash => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'transactionHash');
  has TransactionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'transactionId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTransaction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-transaction');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchainQuery::GetTransactionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchainQuery::GetTransaction - Arguments for method GetTransaction on L<Paws::ManagedBlockchainQuery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTransaction on the
L<Amazon Managed Blockchain Query|Paws::ManagedBlockchainQuery> service. Use the attributes of this class
as arguments to method GetTransaction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTransaction.

=head1 SYNOPSIS

    my $managedblockchain-query = Paws->service('ManagedBlockchainQuery');
    my $GetTransactionOutput = $managedblockchain -query->GetTransaction(
      Network         => 'ETHEREUM_MAINNET',
      TransactionHash => 'MyQueryTransactionHash',    # OPTIONAL
      TransactionId   => 'MyQueryTransactionId',      # OPTIONAL
    );

    # Results:
    my $Transaction = $GetTransactionOutput->Transaction;

    # Returns a L<Paws::ManagedBlockchainQuery::GetTransactionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query/GetTransaction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Network => Str

The blockchain network where the transaction occurred.

Valid values are: C<"ETHEREUM_MAINNET">, C<"ETHEREUM_SEPOLIA_TESTNET">, C<"BITCOIN_MAINNET">, C<"BITCOIN_TESTNET">

=head2 TransactionHash => Str

The hash of a transaction. It is generated when a transaction is
created.



=head2 TransactionId => Str

The identifier of a Bitcoin transaction. It is generated when a
transaction is created.

C<transactionId> is only supported on the Bitcoin networks.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTransaction in L<Paws::ManagedBlockchainQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

