
package Paws::ManagedBlockchainQuery::ListFilteredTransactionEvents;
  use Moose;
  has AddressIdentifierFilter => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::AddressIdentifierFilter', traits => ['NameInRequest'], request_name => 'addressIdentifierFilter', required => 1);
  has ConfirmationStatusFilter => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::ConfirmationStatusFilter', traits => ['NameInRequest'], request_name => 'confirmationStatusFilter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has Network => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'network', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Sort => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::ListFilteredTransactionEventsSort', traits => ['NameInRequest'], request_name => 'sort');
  has TimeFilter => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::TimeFilter', traits => ['NameInRequest'], request_name => 'timeFilter');
  has VoutFilter => (is => 'ro', isa => 'Paws::ManagedBlockchainQuery::VoutFilter', traits => ['NameInRequest'], request_name => 'voutFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFilteredTransactionEvents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-filtered-transaction-events');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchainQuery::ListFilteredTransactionEventsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchainQuery::ListFilteredTransactionEvents - Arguments for method ListFilteredTransactionEvents on L<Paws::ManagedBlockchainQuery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFilteredTransactionEvents on the
L<Amazon Managed Blockchain Query|Paws::ManagedBlockchainQuery> service. Use the attributes of this class
as arguments to method ListFilteredTransactionEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFilteredTransactionEvents.

=head1 SYNOPSIS

    my $managedblockchain-query = Paws->service('ManagedBlockchainQuery');
    my $ListFilteredTransactionEventsOutput =
      $managedblockchain -query->ListFilteredTransactionEvents(
      AddressIdentifierFilter => {
        TransactionEventToAddress => [ 'MyChainAddress', ... ], # min: 1, max: 1

      },
      Network                  => 'MyString',
      ConfirmationStatusFilter => {
        Include => [
          'FINAL', ...    # values: FINAL, NONFINAL
        ],    # min: 1

      },    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      Sort       => {
        SortBy    => 'blockchainInstant',  # values: blockchainInstant; OPTIONAL
        SortOrder => 'ASCENDING',    # values: ASCENDING, DESCENDING; OPTIONAL
      },    # OPTIONAL
      TimeFilter => {
        From => {
          Time => '1970-01-01T01:00:00',    # OPTIONAL
        },    # OPTIONAL
        To => {
          Time => '1970-01-01T01:00:00',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      VoutFilter => {
        VoutSpent => 1,

      },    # OPTIONAL
      );

    # Results:
    my $Events    = $ListFilteredTransactionEventsOutput->Events;
    my $NextToken = $ListFilteredTransactionEventsOutput->NextToken;

# Returns a L<Paws::ManagedBlockchainQuery::ListFilteredTransactionEventsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query/ListFilteredTransactionEvents>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddressIdentifierFilter => L<Paws::ManagedBlockchainQuery::AddressIdentifierFilter>

This is the unique public address on the blockchain for which the
transaction events are being requested.



=head2 ConfirmationStatusFilter => L<Paws::ManagedBlockchainQuery::ConfirmationStatusFilter>





=head2 MaxResults => Int

The maximum number of transaction events to list.

Default: C<100>

Even if additional results can be retrieved, the request can return
less results than C<maxResults> or an empty array of results.

To retrieve the next set of results, make another request with the
returned C<nextToken> value. The value of C<nextToken> is C<null> when
there are no more results to return



=head2 B<REQUIRED> Network => Str

The blockchain network where the transaction occurred.

Valid Values: C<BITCOIN_MAINNET> | C<BITCOIN_TESTNET>



=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.



=head2 Sort => L<Paws::ManagedBlockchainQuery::ListFilteredTransactionEventsSort>

The order by which the results will be sorted.



=head2 TimeFilter => L<Paws::ManagedBlockchainQuery::TimeFilter>

This container specifies the time frame for the transaction events
returned in the response.



=head2 VoutFilter => L<Paws::ManagedBlockchainQuery::VoutFilter>

This container specifies filtering attributes related to BITCOIN_VOUT
event types




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFilteredTransactionEvents in L<Paws::ManagedBlockchainQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

