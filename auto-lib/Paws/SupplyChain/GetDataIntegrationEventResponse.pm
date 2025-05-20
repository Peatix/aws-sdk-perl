
package Paws::SupplyChain::GetDataIntegrationEventResponse;
  use Moose;
  has Event => (is => 'ro', isa => 'Paws::SupplyChain::DataIntegrationEvent', traits => ['NameInRequest'], request_name => 'event', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::GetDataIntegrationEventResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Event => L<Paws::SupplyChain::DataIntegrationEvent>

The details of the DataIntegrationEvent returned.


=head2 _request_id => Str


=cut

