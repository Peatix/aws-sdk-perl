
package Paws::SupplyChain::ListDataIntegrationEventsResponse;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::SupplyChain::DataIntegrationEvent]', traits => ['NameInRequest'], request_name => 'events', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::ListDataIntegrationEventsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Events => ArrayRef[L<Paws::SupplyChain::DataIntegrationEvent>]

The list of data integration events.


=head2 NextToken => Str

The pagination token to fetch the next page of the
ListDataIntegrationEvents.


=head2 _request_id => Str


=cut

