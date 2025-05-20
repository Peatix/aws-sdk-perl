
package Paws::ManagedBlockchainQuery::BatchGetTokenBalance;
  use Moose;
  has GetTokenBalanceInputs => (is => 'ro', isa => 'ArrayRef[Paws::ManagedBlockchainQuery::BatchGetTokenBalanceInputItem]', traits => ['NameInRequest'], request_name => 'getTokenBalanceInputs');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetTokenBalance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/batch-get-token-balance');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchainQuery::BatchGetTokenBalanceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchainQuery::BatchGetTokenBalance - Arguments for method BatchGetTokenBalance on L<Paws::ManagedBlockchainQuery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetTokenBalance on the
L<Amazon Managed Blockchain Query|Paws::ManagedBlockchainQuery> service. Use the attributes of this class
as arguments to method BatchGetTokenBalance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetTokenBalance.

=head1 SYNOPSIS

    my $managedblockchain-query = Paws->service('ManagedBlockchainQuery');
    my $BatchGetTokenBalanceOutput =
      $managedblockchain -query->BatchGetTokenBalance(
      GetTokenBalanceInputs => [
        {
          OwnerIdentifier => {
            Address => 'MyChainAddress',

          },
          TokenIdentifier => {
            Network => 'ETHEREUM_MAINNET'
            , # values: ETHEREUM_MAINNET, ETHEREUM_SEPOLIA_TESTNET, BITCOIN_MAINNET, BITCOIN_TESTNET
            ContractAddress => 'MyChainAddress',
            TokenId         => 'MyQueryTokenId',    # OPTIONAL
          },
          AtBlockchainInstant => {
            Time => '1970-01-01T01:00:00',          # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $Errors        = $BatchGetTokenBalanceOutput->Errors;
    my $TokenBalances = $BatchGetTokenBalanceOutput->TokenBalances;

 # Returns a L<Paws::ManagedBlockchainQuery::BatchGetTokenBalanceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query/BatchGetTokenBalance>

=head1 ATTRIBUTES


=head2 GetTokenBalanceInputs => ArrayRef[L<Paws::ManagedBlockchainQuery::BatchGetTokenBalanceInputItem>]

An array of C<BatchGetTokenBalanceInputItem> objects whose balance is
being requested.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetTokenBalance in L<Paws::ManagedBlockchainQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

