
package Paws::ManagedBlockchainQuery::ListFilteredTransactionEventsOutput;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::ManagedBlockchainQuery::TransactionEvent]', traits => ['NameInRequest'], request_name => 'events', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchainQuery::ListFilteredTransactionEventsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Events => ArrayRef[L<Paws::ManagedBlockchainQuery::TransactionEvent>]

The transaction events returned by the request.


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut

