
package Paws::ManagedBlockchainQuery::GetAssetContractOutput;
  use Moose;
  has ContractIdentifier => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::ContractIdentifier', traits => ['NameInRequest'], request_name => 'contractIdentifier', required => 1);
  has DeployerAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deployerAddress', required => 1);
  has Metadata => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::ContractMetadata', traits => ['NameInRequest'], request_name => 'metadata');
  has TokenStandard => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tokenStandard', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchainQuery::GetAssetContractOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContractIdentifier => L<Paws::ManagedBlockchainQuery::ContractIdentifier>

Contains the blockchain address and network information about the
contract.


=head2 B<REQUIRED> DeployerAddress => Str

The address of the deployer of contract.


=head2 Metadata => L<Paws::ManagedBlockchainQuery::ContractMetadata>




=head2 B<REQUIRED> TokenStandard => Str

The token standard of the contract requested.

Valid values are: C<"ERC20">, C<"ERC721">, C<"ERC1155">
=head2 _request_id => Str


=cut

