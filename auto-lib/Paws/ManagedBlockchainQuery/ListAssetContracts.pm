
package Paws::ManagedBlockchainQuery::ListAssetContracts;
  use Moose;
  has ContractFilter => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::ContractFilter', traits => ['NameInRequest'], request_name => 'contractFilter', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssetContracts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-asset-contracts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchainQuery::ListAssetContractsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchainQuery::ListAssetContracts - Arguments for method ListAssetContracts on L<Paws::ManagedBlockchainQuery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssetContracts on the
L<Amazon Managed Blockchain Query|Paws::ManagedBlockchainQuery> service. Use the attributes of this class
as arguments to method ListAssetContracts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssetContracts.

=head1 SYNOPSIS

    my $managedblockchain-query = Paws->service('ManagedBlockchainQuery');
    my $ListAssetContractsOutput =
      $managedblockchain -query->ListAssetContracts(
      ContractFilter => {
        DeployerAddress => 'MyChainAddress',
        Network         => 'ETHEREUM_MAINNET'
        , # values: ETHEREUM_MAINNET, ETHEREUM_SEPOLIA_TESTNET, BITCOIN_MAINNET, BITCOIN_TESTNET
        TokenStandard => 'ERC20',    # values: ERC20, ERC721, ERC1155

      },
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $Contracts = $ListAssetContractsOutput->Contracts;
    my $NextToken = $ListAssetContractsOutput->NextToken;

   # Returns a L<Paws::ManagedBlockchainQuery::ListAssetContractsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query/ListAssetContracts>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContractFilter => L<Paws::ManagedBlockchainQuery::ContractFilter>

Contains the filter parameter for the request.



=head2 MaxResults => Int

The maximum number of contracts to list.

Default: C<100>

Even if additional results can be retrieved, the request can return
less results than C<maxResults> or an empty array of results.

To retrieve the next set of results, make another request with the
returned C<nextToken> value. The value of C<nextToken> is C<null> when
there are no more results to return



=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssetContracts in L<Paws::ManagedBlockchainQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

