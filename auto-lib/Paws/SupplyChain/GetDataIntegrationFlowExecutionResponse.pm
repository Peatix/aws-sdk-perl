
package Paws::SupplyChain::GetDataIntegrationFlowExecutionResponse;
  use Moose;
  has FlowExecution => (is => 'ro', isa => 'Paws::SupplyChain::DataIntegrationFlowExecution', traits => ['NameInRequest'], request_name => 'flowExecution', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::GetDataIntegrationFlowExecutionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowExecution => L<Paws::SupplyChain::DataIntegrationFlowExecution>

The flow execution details.


=head2 _request_id => Str


=cut

