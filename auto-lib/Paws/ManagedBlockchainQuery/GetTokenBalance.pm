
package Paws::ManagedBlockchainQuery::GetTokenBalance;
  use Moose;
  has AtBlockchainInstant => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::BlockchainInstant', traits => ['NameInRequest'], request_name => 'atBlockchainInstant');
  has OwnerIdentifier => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::OwnerIdentifier', traits => ['NameInRequest'], request_name => 'ownerIdentifier', required => 1);
  has TokenIdentifier => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::TokenIdentifier', traits => ['NameInRequest'], request_name => 'tokenIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTokenBalance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-token-balance');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchainQuery::GetTokenBalanceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchainQuery::GetTokenBalance - Arguments for method GetTokenBalance on L<Paws::ManagedBlockchainQuery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTokenBalance on the
L<Amazon Managed Blockchain Query|Paws::ManagedBlockchainQuery> service. Use the attributes of this class
as arguments to method GetTokenBalance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTokenBalance.

=head1 SYNOPSIS

    my $managedblockchain-query = Paws->service('ManagedBlockchainQuery');
    my $GetTokenBalanceOutput = $managedblockchain -query->GetTokenBalance(
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
    );

    # Results:
    my $AtBlockchainInstant = $GetTokenBalanceOutput->AtBlockchainInstant;
    my $Balance             = $GetTokenBalanceOutput->Balance;
    my $LastUpdatedTime     = $GetTokenBalanceOutput->LastUpdatedTime;
    my $OwnerIdentifier     = $GetTokenBalanceOutput->OwnerIdentifier;
    my $TokenIdentifier     = $GetTokenBalanceOutput->TokenIdentifier;

    # Returns a L<Paws::ManagedBlockchainQuery::GetTokenBalanceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query/GetTokenBalance>

=head1 ATTRIBUTES


=head2 AtBlockchainInstant => L<Paws::ManagedBlockchainQuery::BlockchainInstant>

The time for when the TokenBalance is requested or the current time if
a time is not provided in the request.

This time will only be recorded up to the second.



=head2 B<REQUIRED> OwnerIdentifier => L<Paws::ManagedBlockchainQuery::OwnerIdentifier>

The container for the identifier for the owner.



=head2 B<REQUIRED> TokenIdentifier => L<Paws::ManagedBlockchainQuery::TokenIdentifier>

The container for the identifier for the token, including the unique
token ID and its blockchain network.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTokenBalance in L<Paws::ManagedBlockchainQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

