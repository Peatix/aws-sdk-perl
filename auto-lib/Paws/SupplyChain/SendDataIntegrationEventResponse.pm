
package Paws::SupplyChain::SendDataIntegrationEventResponse;
  use Moose;
  has EventId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::SendDataIntegrationEventResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventId => Str

The unique event identifier.


=head2 _request_id => Str


=cut

