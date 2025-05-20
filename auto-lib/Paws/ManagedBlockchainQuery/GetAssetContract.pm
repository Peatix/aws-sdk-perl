
package Paws::ManagedBlockchainQuery::GetAssetContract;
  use Moose;
  has ContractIdentifier => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::ContractIdentifier', traits => ['NameInRequest'], request_name => 'contractIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAssetContract');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-asset-contract');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchainQuery::GetAssetContractOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchainQuery::GetAssetContract - Arguments for method GetAssetContract on L<Paws::ManagedBlockchainQuery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAssetContract on the
L<Amazon Managed Blockchain Query|Paws::ManagedBlockchainQuery> service. Use the attributes of this class
as arguments to method GetAssetContract.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAssetContract.

=head1 SYNOPSIS

    my $managedblockchain-query = Paws->service('ManagedBlockchainQuery');
    my $GetAssetContractOutput = $managedblockchain -query->GetAssetContract(
      ContractIdentifier => {
        ContractAddress => 'MyChainAddress',
        Network         => 'ETHEREUM_MAINNET'
        , # values: ETHEREUM_MAINNET, ETHEREUM_SEPOLIA_TESTNET, BITCOIN_MAINNET, BITCOIN_TESTNET

      },

    );

    # Results:
    my $ContractIdentifier = $GetAssetContractOutput->ContractIdentifier;
    my $DeployerAddress    = $GetAssetContractOutput->DeployerAddress;
    my $Metadata           = $GetAssetContractOutput->Metadata;
    my $TokenStandard      = $GetAssetContractOutput->TokenStandard;

    # Returns a L<Paws::ManagedBlockchainQuery::GetAssetContractOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query/GetAssetContract>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContractIdentifier => L<Paws::ManagedBlockchainQuery::ContractIdentifier>

Contains the blockchain address and network information about the
contract.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAssetContract in L<Paws::ManagedBlockchainQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

