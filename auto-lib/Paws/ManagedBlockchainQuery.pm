package Paws::ManagedBlockchainQuery;
  use Moose;
  sub service { 'managedblockchain-query' }
  sub signing_name { 'managedblockchain-query' }
  sub version { '2023-05-04' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchGetTokenBalance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchainQuery::BatchGetTokenBalance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssetContract {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchainQuery::GetAssetContract', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTokenBalance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchainQuery::GetTokenBalance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransaction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchainQuery::GetTransaction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssetContracts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchainQuery::ListAssetContracts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFilteredTransactionEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchainQuery::ListFilteredTransactionEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTokenBalances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchainQuery::ListTokenBalances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTransactionEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchainQuery::ListTransactionEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTransactions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchainQuery::ListTransactions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAssetContracts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssetContracts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssetContracts(@_, nextToken => $next_result->nextToken);
        push @{ $result->contracts }, @{ $next_result->contracts };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'contracts') foreach (@{ $result->contracts });
        $result = $self->ListAssetContracts(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'contracts') foreach (@{ $result->contracts });
    }

    return undef
  }
  sub ListAllFilteredTransactionEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFilteredTransactionEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFilteredTransactionEvents(@_, nextToken => $next_result->nextToken);
        push @{ $result->events }, @{ $next_result->events };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'events') foreach (@{ $result->events });
        $result = $self->ListFilteredTransactionEvents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'events') foreach (@{ $result->events });
    }

    return undef
  }
  sub ListAllTokenBalances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTokenBalances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTokenBalances(@_, nextToken => $next_result->nextToken);
        push @{ $result->tokenBalances }, @{ $next_result->tokenBalances };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'tokenBalances') foreach (@{ $result->tokenBalances });
        $result = $self->ListTokenBalances(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'tokenBalances') foreach (@{ $result->tokenBalances });
    }

    return undef
  }
  sub ListAllTransactionEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTransactionEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTransactionEvents(@_, nextToken => $next_result->nextToken);
        push @{ $result->events }, @{ $next_result->events };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'events') foreach (@{ $result->events });
        $result = $self->ListTransactionEvents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'events') foreach (@{ $result->events });
    }

    return undef
  }
  sub ListAllTransactions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTransactions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTransactions(@_, nextToken => $next_result->nextToken);
        push @{ $result->transactions }, @{ $next_result->transactions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'transactions') foreach (@{ $result->transactions });
        $result = $self->ListTransactions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'transactions') foreach (@{ $result->transactions });
    }

    return undef
  }


  sub operations { qw/BatchGetTokenBalance GetAssetContract GetTokenBalance GetTransaction ListAssetContracts ListFilteredTransactionEvents ListTokenBalances ListTransactionEvents ListTransactions / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchainQuery - Perl Interface to AWS Amazon Managed Blockchain Query

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ManagedBlockchainQuery');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Managed Blockchain (AMB) Query provides you with convenient
access to multi-blockchain network data, which makes it easier for you
to extract contextual data related to blockchain activity. You can use
AMB Query to read data from public blockchain networks, such as Bitcoin
Mainnet and Ethereum Mainnet. You can also get information such as the
current and historical balances of addresses, or you can get a list of
blockchain transactions for a given time period. Additionally, you can
get details of a given transaction, such as transaction events, which
you can further analyze or use in business logic for your applications.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 BatchGetTokenBalance

=over

=item [GetTokenBalanceInputs => ArrayRef[L<Paws::ManagedBlockchainQuery::BatchGetTokenBalanceInputItem>]]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchainQuery::BatchGetTokenBalance>

Returns: a L<Paws::ManagedBlockchainQuery::BatchGetTokenBalanceOutput> instance

Gets the token balance for a batch of tokens by using the
C<BatchGetTokenBalance> action for every token in the request.

Only the native tokens BTC and ETH, and the ERC-20, ERC-721, and ERC
1155 token standards are supported.


=head2 GetAssetContract

=over

=item ContractIdentifier => L<Paws::ManagedBlockchainQuery::ContractIdentifier>


=back

Each argument is described in detail in: L<Paws::ManagedBlockchainQuery::GetAssetContract>

Returns: a L<Paws::ManagedBlockchainQuery::GetAssetContractOutput> instance

Gets the information about a specific contract deployed on the
blockchain.

=over

=item *

The Bitcoin blockchain networks do not support this operation.

=item *

Metadata is currently only available for some C<ERC-20> contracts.
Metadata will be available for additional contracts in the future.

=back



=head2 GetTokenBalance

=over

=item OwnerIdentifier => L<Paws::ManagedBlockchainQuery::OwnerIdentifier>

=item TokenIdentifier => L<Paws::ManagedBlockchainQuery::TokenIdentifier>

=item [AtBlockchainInstant => L<Paws::ManagedBlockchainQuery::BlockchainInstant>]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchainQuery::GetTokenBalance>

Returns: a L<Paws::ManagedBlockchainQuery::GetTokenBalanceOutput> instance

Gets the balance of a specific token, including native tokens, for a
given address (wallet or contract) on the blockchain.

Only the native tokens BTC and ETH, and the ERC-20, ERC-721, and ERC
1155 token standards are supported.


=head2 GetTransaction

=over

=item Network => Str

=item [TransactionHash => Str]

=item [TransactionId => Str]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchainQuery::GetTransaction>

Returns: a L<Paws::ManagedBlockchainQuery::GetTransactionOutput> instance

Gets the details of a transaction.

This action will return transaction details for all transactions that
are I<confirmed> on the blockchain, even if they have not reached
finality
(https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality).


=head2 ListAssetContracts

=over

=item ContractFilter => L<Paws::ManagedBlockchainQuery::ContractFilter>

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchainQuery::ListAssetContracts>

Returns: a L<Paws::ManagedBlockchainQuery::ListAssetContractsOutput> instance

Lists all the contracts for a given contract type deployed by an
address (either a contract address or a wallet address).

The Bitcoin blockchain networks do not support this operation.


=head2 ListFilteredTransactionEvents

=over

=item AddressIdentifierFilter => L<Paws::ManagedBlockchainQuery::AddressIdentifierFilter>

=item Network => Str

=item [ConfirmationStatusFilter => L<Paws::ManagedBlockchainQuery::ConfirmationStatusFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sort => L<Paws::ManagedBlockchainQuery::ListFilteredTransactionEventsSort>]

=item [TimeFilter => L<Paws::ManagedBlockchainQuery::TimeFilter>]

=item [VoutFilter => L<Paws::ManagedBlockchainQuery::VoutFilter>]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchainQuery::ListFilteredTransactionEvents>

Returns: a L<Paws::ManagedBlockchainQuery::ListFilteredTransactionEventsOutput> instance

Lists all the transaction events for an address on the blockchain.

This operation is only supported on the Bitcoin networks.


=head2 ListTokenBalances

=over

=item TokenFilter => L<Paws::ManagedBlockchainQuery::TokenFilter>

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OwnerFilter => L<Paws::ManagedBlockchainQuery::OwnerFilter>]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchainQuery::ListTokenBalances>

Returns: a L<Paws::ManagedBlockchainQuery::ListTokenBalancesOutput> instance

This action returns the following for a given blockchain network:

=over

=item *

Lists all token balances owned by an address (either a contract address
or a wallet address).

=item *

Lists all token balances for all tokens created by a contract.

=item *

Lists all token balances for a given token.

=back

You must always specify the network property of the C<tokenFilter> when
using this operation.


=head2 ListTransactionEvents

=over

=item Network => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransactionHash => Str]

=item [TransactionId => Str]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchainQuery::ListTransactionEvents>

Returns: a L<Paws::ManagedBlockchainQuery::ListTransactionEventsOutput> instance

Lists all the transaction events for a transaction

This action will return transaction details for all transactions that
are I<confirmed> on the blockchain, even if they have not reached
finality
(https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality).


=head2 ListTransactions

=over

=item Address => Str

=item Network => Str

=item [ConfirmationStatusFilter => L<Paws::ManagedBlockchainQuery::ConfirmationStatusFilter>]

=item [FromBlockchainInstant => L<Paws::ManagedBlockchainQuery::BlockchainInstant>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sort => L<Paws::ManagedBlockchainQuery::ListTransactionsSort>]

=item [ToBlockchainInstant => L<Paws::ManagedBlockchainQuery::BlockchainInstant>]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchainQuery::ListTransactions>

Returns: a L<Paws::ManagedBlockchainQuery::ListTransactionsOutput> instance

Lists all the transaction events for a transaction.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAssetContracts(sub { },ContractFilter => L<Paws::ManagedBlockchainQuery::ContractFilter>, [MaxResults => Int, NextToken => Str])

=head2 ListAllAssetContracts(ContractFilter => L<Paws::ManagedBlockchainQuery::ContractFilter>, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - contracts, passing the object as the first parameter, and the string 'contracts' as the second parameter 

If not, it will return a a L<Paws::ManagedBlockchainQuery::ListAssetContractsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFilteredTransactionEvents(sub { },AddressIdentifierFilter => L<Paws::ManagedBlockchainQuery::AddressIdentifierFilter>, Network => Str, [ConfirmationStatusFilter => L<Paws::ManagedBlockchainQuery::ConfirmationStatusFilter>, MaxResults => Int, NextToken => Str, Sort => L<Paws::ManagedBlockchainQuery::ListFilteredTransactionEventsSort>, TimeFilter => L<Paws::ManagedBlockchainQuery::TimeFilter>, VoutFilter => L<Paws::ManagedBlockchainQuery::VoutFilter>])

=head2 ListAllFilteredTransactionEvents(AddressIdentifierFilter => L<Paws::ManagedBlockchainQuery::AddressIdentifierFilter>, Network => Str, [ConfirmationStatusFilter => L<Paws::ManagedBlockchainQuery::ConfirmationStatusFilter>, MaxResults => Int, NextToken => Str, Sort => L<Paws::ManagedBlockchainQuery::ListFilteredTransactionEventsSort>, TimeFilter => L<Paws::ManagedBlockchainQuery::TimeFilter>, VoutFilter => L<Paws::ManagedBlockchainQuery::VoutFilter>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - events, passing the object as the first parameter, and the string 'events' as the second parameter 

If not, it will return a a L<Paws::ManagedBlockchainQuery::ListFilteredTransactionEventsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTokenBalances(sub { },TokenFilter => L<Paws::ManagedBlockchainQuery::TokenFilter>, [MaxResults => Int, NextToken => Str, OwnerFilter => L<Paws::ManagedBlockchainQuery::OwnerFilter>])

=head2 ListAllTokenBalances(TokenFilter => L<Paws::ManagedBlockchainQuery::TokenFilter>, [MaxResults => Int, NextToken => Str, OwnerFilter => L<Paws::ManagedBlockchainQuery::OwnerFilter>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tokenBalances, passing the object as the first parameter, and the string 'tokenBalances' as the second parameter 

If not, it will return a a L<Paws::ManagedBlockchainQuery::ListTokenBalancesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTransactionEvents(sub { },Network => Str, [MaxResults => Int, NextToken => Str, TransactionHash => Str, TransactionId => Str])

=head2 ListAllTransactionEvents(Network => Str, [MaxResults => Int, NextToken => Str, TransactionHash => Str, TransactionId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - events, passing the object as the first parameter, and the string 'events' as the second parameter 

If not, it will return a a L<Paws::ManagedBlockchainQuery::ListTransactionEventsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTransactions(sub { },Address => Str, Network => Str, [ConfirmationStatusFilter => L<Paws::ManagedBlockchainQuery::ConfirmationStatusFilter>, FromBlockchainInstant => L<Paws::ManagedBlockchainQuery::BlockchainInstant>, MaxResults => Int, NextToken => Str, Sort => L<Paws::ManagedBlockchainQuery::ListTransactionsSort>, ToBlockchainInstant => L<Paws::ManagedBlockchainQuery::BlockchainInstant>])

=head2 ListAllTransactions(Address => Str, Network => Str, [ConfirmationStatusFilter => L<Paws::ManagedBlockchainQuery::ConfirmationStatusFilter>, FromBlockchainInstant => L<Paws::ManagedBlockchainQuery::BlockchainInstant>, MaxResults => Int, NextToken => Str, Sort => L<Paws::ManagedBlockchainQuery::ListTransactionsSort>, ToBlockchainInstant => L<Paws::ManagedBlockchainQuery::BlockchainInstant>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - transactions, passing the object as the first parameter, and the string 'transactions' as the second parameter 

If not, it will return a a L<Paws::ManagedBlockchainQuery::ListTransactionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

