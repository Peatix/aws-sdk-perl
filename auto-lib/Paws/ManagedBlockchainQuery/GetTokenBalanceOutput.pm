
package Paws::ManagedBlockchainQuery::GetTokenBalanceOutput;
  use Moose;
  has AtBlockchainInstant => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::BlockchainInstant', traits => ['NameInRequest'], request_name => 'atBlockchainInstant', required => 1);
  has Balance => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'balance', required => 1);
  has LastUpdatedTime => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::BlockchainInstant', traits => ['NameInRequest'], request_name => 'lastUpdatedTime');
  has OwnerIdentifier => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::OwnerIdentifier', traits => ['NameInRequest'], request_name => 'ownerIdentifier');
  has TokenIdentifier => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::TokenIdentifier', traits => ['NameInRequest'], request_name => 'tokenIdentifier');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchainQuery::GetTokenBalanceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AtBlockchainInstant => L<Paws::ManagedBlockchainQuery::BlockchainInstant>




=head2 B<REQUIRED> Balance => Str

The container for the token balance.


=head2 LastUpdatedTime => L<Paws::ManagedBlockchainQuery::BlockchainInstant>




=head2 OwnerIdentifier => L<Paws::ManagedBlockchainQuery::OwnerIdentifier>




=head2 TokenIdentifier => L<Paws::ManagedBlockchainQuery::TokenIdentifier>




=head2 _request_id => Str


=cut

