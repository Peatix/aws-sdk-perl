
package Paws::SupplyChain::UpdateDataIntegrationFlowResponse;
  use Moose;
  has Flow => (is => 'ro', isa => 'Paws::SupplyChain::DataIntegrationFlow', traits => ['NameInRequest'], request_name => 'flow', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::UpdateDataIntegrationFlowResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Flow => L<Paws::SupplyChain::DataIntegrationFlow>

The details of the updated DataIntegrationFlow.


=head2 _request_id => Str


=cut

