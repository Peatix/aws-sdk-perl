
package Paws::ManagedBlockchain::CreateAccessorOutput;
  use Moose;
  has AccessorId => (is => 'ro', isa => 'Str');
  has BillingToken => (is => 'ro', isa => 'Str');
  has NetworkType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::CreateAccessorOutput

=head1 ATTRIBUTES


=head2 AccessorId => Str

The unique identifier of the accessor.


=head2 BillingToken => Str

The billing token is a property of the Accessor. Use this token to when
making calls to the blockchain network. The billing token is used to
track your accessor token for billing requests.


=head2 NetworkType => Str

The blockchain network that the accessor token is created for.

Valid values are: C<"ETHEREUM_GOERLI">, C<"ETHEREUM_MAINNET">, C<"ETHEREUM_MAINNET_AND_GOERLI">, C<"POLYGON_MAINNET">, C<"POLYGON_MUMBAI">
=head2 _request_id => Str


=cut

