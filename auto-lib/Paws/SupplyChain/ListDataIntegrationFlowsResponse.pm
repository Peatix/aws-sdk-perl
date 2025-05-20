
package Paws::SupplyChain::ListDataIntegrationFlowsResponse;
  use Moose;
  has Flows => (is => 'ro', isa => 'ArrayRef[Paws::SupplyChain::DataIntegrationFlow]', traits => ['NameInRequest'], request_name => 'flows', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::ListDataIntegrationFlowsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Flows => ArrayRef[L<Paws::SupplyChain::DataIntegrationFlow>]

The response parameters for ListDataIntegrationFlows.


=head2 NextToken => Str

The pagination token to fetch the next page of the
DataIntegrationFlows.


=head2 _request_id => Str


=cut

