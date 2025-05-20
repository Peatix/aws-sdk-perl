
package Paws::SupplyChain::ListDataIntegrationFlowExecutionsResponse;
  use Moose;
  has FlowExecutions => (is => 'ro', isa => 'ArrayRef[Paws::SupplyChain::DataIntegrationFlowExecution]', traits => ['NameInRequest'], request_name => 'flowExecutions', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::ListDataIntegrationFlowExecutionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowExecutions => ArrayRef[L<Paws::SupplyChain::DataIntegrationFlowExecution>]

The list of flow executions.


=head2 NextToken => Str

The pagination token to fetch next page of flow executions.


=head2 _request_id => Str


=cut

